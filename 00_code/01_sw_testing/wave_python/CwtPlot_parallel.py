import numpy as np
import matplotlib.pyplot as plt
import os
import time
from datetime import datetime
from util import plot_cwt, configure_scale
from multiprocessing import Process, Queue

# Parameters
re_fn = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_re.txt"
im_fn = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_im.txt"
N = 1024  # Number of samples
vpo = 16
no = 4
J1 = vpo * no  # Number of scales
fs = 8000  # Sampling frequency
duration = N / fs
t = np.arange(0, duration - 1 / fs, 1 / fs)
s0_ind = 4  # Smallest scale
s0 = s0_ind / fs
a0 = 2 ** (1 / vpo)  # Base for scale progression
ind = np.arange(J1)  # Indices for scales
scale = s0 * (a0 ** ind)  # Array of scales
k0 = 6.0  # Wavelet parameter for Morlet
fourier_factor = (4 * np.pi) / (k0 + np.sqrt(2 + k0**2))
freq = 1 / (fourier_factor * scale)
coi = np.column_stack((np.linspace(0.1, 0.5, N), np.linspace(0.5, 0.1, N)))  # Cone of influence

opt = 'log2'

fig, ax = plt.subplots(1, figsize=(10, 6))
cfs = np.zeros((J1, N))  # Placeholder for CWT coefficients

# Queue for inter-process communication
data_queue = Queue()

def read_cwt_data(re_fn, im_fn, J1, N):
    try:
        cwt_re = np.loadtxt(re_fn).reshape(J1, N)
        cwt_im = np.loadtxt(im_fn).reshape(J1, N)
    except Exception as e:
        print("Error reading file:", e)
        return None, None
    return cwt_re, cwt_im

def read_file_proc(re_fn, im_fn, J1, N, queue):
    last_mod_time = os.path.getmtime(re_fn)
    while True:
        try:
            # Check if the file has been modified
            current_mod_time = os.path.getmtime(re_fn)
            if current_mod_time != last_mod_time:
                time.sleep(0.08)  # Throttle the worker
                # Read the updated CWT data
                cwt_re, cwt_im = read_cwt_data(re_fn, im_fn, J1, N)
                if cwt_re is not None and cwt_im is not None:
                    cfs = cwt_re + 1j * cwt_im
                    queue.put(('data', cfs))  # Send data to the main process

                last_mod_time = current_mod_time  # Update the last modification time

        except Exception as e:
            print("Worker error:", e)
        time.sleep(0.01)  # Throttle the worker

# Start the worker process
worker_process = Process(target=read_file_proc, args=(re_fn, im_fn, J1, N, data_queue))
worker_process.start()

# Main loop for continuous monitoring and plotting
first_time = 1

plt.show(block=False)

while True:
    try: 
        start_time_total = time.perf_counter()

        # Check for new data from the worker process
        if not data_queue.empty():
            message, cfs = data_queue.get()
            if message == 'data':
                start_time_compute = time.perf_counter()

                if first_time:
                    # Configure the scale and set y-axis ticks
                    f, ticks, labels = configure_scale(freq, fs, opt)

                    # Create the initial contourf object
                    contour = ax.contourf(t, f, np.abs(cfs), levels=20, cmap='jet', extend='both')
                    plt.colorbar(contour, ax=ax, label='Magnitude')

                    # Set y-axis ticks and labels
                    ax.set_yticks(ticks)
                    ax.set_yticklabels(labels)

                    ax.set_title('Continuous Wavelet Transform (CWT) - Live Update')
                    ax.set_xlabel('Time [s]')
                    ax.set_ylabel('Freq [Hz]')

                    first_time = 0
                else:
                    # Remove the existing contours
                    for coll in ax.collections:
                        coll.remove()

                    # Redraw the contours with updated data
                    contour = ax.contourf(t, f, np.abs(cfs), levels=20, cmap='jet', extend='both')
                    # contour.set_zdata(np.abs(cfs))
                    # contour.ax.z = np.abs(cfs);

                stop_time_compute = time.perf_counter()
                elapsed_time_compute = stop_time_compute - start_time_compute
                print("Compute file time: ", elapsed_time_compute)

                # Refresh the plot
                start_time_draw = time.perf_counter()
                
                # ax.draw_artist(ax.patch)
                # ax.draw_artist(contour)
                fig.canvas.draw_idle()
                fig.canvas.flush_events()

                stop_time_draw = time.perf_counter()
                elapsed_time_draw = stop_time_draw - start_time_draw
                print("Draw file time: ", elapsed_time_draw)

            stop_time_total = time.perf_counter()
            elapsed_time_total = stop_time_total - start_time_total
            print("Total time: ", elapsed_time_total)

        # # Wait for a short time before checking again
        # time.sleep(0.1)  # Check for updates every second

    except KeyboardInterrupt:
        print("Stopping live update...")
        break

# Clean up the worker process
worker_process.terminate()
worker_process.join()

plt.show()