import numpy as np
import matplotlib.pyplot as plt
import os
import time
from datetime import datetime
from util import plot_cwt, configure_scale
import mmap

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

# Initialize the plot
plt.ion()
fig, ax = plt.subplots(figsize=(10, 6))
# fig.colorbar(im, ax=ax)
ax.set_title('Continuous Wavelet Transform (CWT) - Live Update')
ax.set_xlabel('Time [s]')
ax.set_ylabel('Scale')

start_time = 0

# Function to read CWT data from file
# def read_cwt_data(re_fn, im_fn, J1, N):
#     cwt_re = np.zeros((J1, N))
#     cwt_im = np.zeros((J1, N))

#     with open(re_fn, 'r') as f_re, open(im_fn, 'r') as f_im:
#         for i in range(J1):
#             for j in range(N):
#                 line_re = f_re.readline()
#                 line_im = f_im.readline()
#                 if line_re != '\n' and line_re != '' and line_re != '-' and line_im != '\n' and line_im != '' and line_im != '-':
#                     cwt_re[i, j] = line_re
#                     cwt_im[i, j] = line_im

#     f_re.close()
#     f_im.close()

#     return cwt_re, cwt_im

def read_cwt_data(re_fn, im_fn, J1, N):
    # try:
    cwt_re = np.loadtxt(re_fn).reshape(J1, N)
    cwt_im = np.loadtxt(im_fn).reshape(J1, N)
    # except ValueError:
    #     print("Incomplete file detected. Skipping this update.")
    #     return None, None

    return cwt_re, cwt_im

# Main loop for continuous monitoring and plotting
last_mod_time = os.path.getmtime(re_fn)
# start_time = time.perf_counter()
first_time = 1
while True:
    try:
        current_mod_time = os.path.getmtime(re_fn)
        if current_mod_time != last_mod_time:
            start_time_total = time.perf_counter()
            # ax.clear()
            time.sleep(0.06)     

            # Read the updated CWT data
            # start_time_read = time.perf_counter()
            
            cwt_re, cwt_im = read_cwt_data(re_fn, im_fn, J1, N)

            # stop_time_read = time.perf_counter()
            # elapsed_time_read = stop_time_read - start_time_read
            # print("Read file time: ", elapsed_time_read)

            if cwt_re is not None and cwt_im is not None:
                cfs = cwt_re + 1j * cwt_im
                # cfs_reshaped = np.abs(cfs).reshape(64, 1024)  # Adjust dimensions as needed

                f, ticks, labels = configure_scale(freq, fs, opt)

                # im = ax.imshow(cfs_reshaped, aspect='auto', cmap='jet')
                # im = ax.imshow(np.abs(cfs), aspect='auto', origin='upper', cmap='jet', extent=[t[0], t[-1], f[-1], f[0]])

                if first_time:
                    # Configure the scale and set y-axis ticks
                    freq_transformed, ticks, labels = configure_scale(freq, fs, opt)

                    # Create the initial imshow object
                    im = ax.imshow(np.abs(cfs), aspect='auto', cmap='jet', extent=[t[0], t[-1], f[-1], f[0]])
                    plt.colorbar(im, ax=ax, label='Magnitude')

                    # Set y-axis ticks and labels
                    ax.set_yticks(ticks)
                    ax.set_yticklabels(labels)

                    first_time = 0
                else:
                    # Update the imshow data
                    im.set_data(np.abs(cfs))
                    im.set_extent([t[0], t[-1], f[-1], f[0]])  # Update the extent if needed

                plt.pause(0.01)  # Pause to allow the plot to update

                # ax.set_yticks(ticks)
                # ax.set_yticklabels(labels)

                # # Configure the scale and set y-axis ticks
                # if first_time:
                #     plt.colorbar(im, ax=ax, label='Magnitude')

                first_time = 0

            last_mod_time = current_mod_time

            stop_time_total = time.perf_counter()
            elapsed_time_total = stop_time_total - start_time_total
            print("Total time: ", elapsed_time_total)

        time.sleep(0.1)  # Throttle the loop

    except KeyboardInterrupt:
        print("Stopping live update...")
        break

plt.ioff()
plt.show()