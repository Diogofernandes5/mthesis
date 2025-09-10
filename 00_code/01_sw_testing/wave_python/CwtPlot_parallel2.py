import numpy as np
import matplotlib.pyplot as plt
import os
import time
from datetime import datetime
from util import plot_cwt, configure_scale
from multiprocessing import Process, Pipe

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

def read_cwt_data(re_fn, im_fn, J1, N):
    try:
        cwt_re = np.loadtxt(re_fn).reshape(J1, N)
        cwt_im = np.loadtxt(im_fn).reshape(J1, N)
    except Exception as e:
        print("Error reading file:", e)
        return None, None
    return cwt_re, cwt_im

def worker(re_fn, im_fn, J1, N, child_conn):
    while True:
        try:
            # Read the updated CWT data
            cwt_re, cwt_im = read_cwt_data(re_fn, im_fn, J1, N)
            if cwt_re is not None and cwt_im is not None:
                cfs = cwt_re + 1j * cwt_im
                child_conn.send(('data', cfs))  # Send data to the main process
        except Exception as e:
            print("Worker error:", e)
        time.sleep(0.1)  # Throttle the worker

# Create a pipe for inter-process communication
parent_conn, child_conn = Pipe()

# Start the worker process
worker_process = Process(target=worker, args=(re_fn, im_fn, J1, N, child_conn))
worker_process.start()

# Initialize the plot
first_time = 1
contour = None
cbar = None

# BlitManager class
class BlitManager:
    def __init__(self, canvas, animated_artists=()):
        self.canvas = canvas
        self._bg = None
        self._artists = []

        for a in animated_artists:
            self.add_artist(a)
        # grab the background on every draw
        self.cid = canvas.mpl_connect("draw_event", self.on_draw)

    def on_draw(self, event):
        """Callback to register with 'draw_event'."""
        cv = self.canvas
        if event is not None:
            if event.canvas != cv:
                raise RuntimeError
        self._bg = cv.copy_from_bbox(cv.figure.bbox)
        self._draw_animated()

    def add_artist(self, art):
        """
        Add an artist to be managed.
        """
        if art.figure != self.canvas.figure:
            raise RuntimeError
        art.set_animated(True)
        self._artists.append(art)

    def _draw_animated(self):
        """Draw all of the animated artists."""
        fig = self.canvas.figure
        for a in self._artists:
            fig.draw_artist(a)

    def update(self):
        """Update the screen with animated artists."""
        cv = self.canvas
        fig = cv.figure
        # paranoia in case we missed the draw event,
        if self._bg is None:
            self.on_draw(None)
        else:
            # restore the background
            cv.restore_region(self._bg)
            # draw all of the animated artists
            self._draw_animated()
            # update the GUI state
            cv.blit(fig.bbox)
        # let the GUI event loop process anything it has to do
        cv.flush_events()

# Create the BlitManager
bm = BlitManager(fig.canvas)

# Main loop for continuous monitoring and plotting
last_mod_time = os.path.getmtime(re_fn)

while True:
    try:
        # Check if the file has been modified
        current_mod_time = os.path.getmtime(re_fn)
        if current_mod_time != last_mod_time:
            start_time_total = time.perf_counter()

            # Check for new data from the worker process
            if parent_conn.poll():  # Check if data is available in the pipe
                message, cfs = parent_conn.recv()  # Receive data from the worker
                if message == 'data':
                    start_time_compute = time.perf_counter()

                    if first_time:
                        # Configure the scale and set y-axis ticks
                        f, ticks, labels = configure_scale(freq, fs, opt)

                        # Create the initial contourf object
                        contour = ax.contourf(t, f, np.abs(cfs), levels=20, cmap='jet', extend='both')
                        cbar = plt.colorbar(contour, ax=ax, label='Magnitude')

                        # Set y-axis ticks and labels
                        ax.set_yticks(ticks)
                        ax.set_yticklabels(labels)

                        ax.set_title('Continuous Wavelet Transform (CWT) - Live Update')
                        ax.set_xlabel('Time [s]')
                        ax.set_ylabel('Freq [Hz]')

                        # Add the contourf artist to the BlitManager
                        bm.add_artist(contour)

                        first_time = 0
                    else:
                        # Remove the existing contours
                        for coll in ax.collections:
                            coll.remove()

                        # Redraw the contours with updated data
                        contour = ax.contourf(t, f, np.abs(cfs), levels=20, cmap='jet', extend='both')

                        # Update the BlitManager with the new contourf artist
                        bm.add_artist(contour)

                    # Update the plot using BlitManager
                    bm.update()

                    stop_time_compute = time.perf_counter()
                    elapsed_time_compute = stop_time_compute - start_time_compute
                    print("Compute file time: ", elapsed_time_compute)

            last_mod_time = current_mod_time  # Update the last modification time

            stop_time_total = time.perf_counter()
            elapsed_time_total = stop_time_total - start_time_total
            print("Total time: ", elapsed_time_total)

        # Wait for a short time before checking again
        time.sleep(0.1)  # Check for updates every second

    except KeyboardInterrupt:
        print("Stopping live update...")
        break

# Clean up the worker process
worker_process.terminate()
worker_process.join()

plt.show()