import numpy as np
import matplotlib.pyplot as plt
import os
import time
from util import plot_cwt  # Assuming plot_cwt is defined in util.py

# Parameters
filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_re.txt"  # File to monitor

N = 1024  # Number of samples

vpo = 16
no = 4
J1 = vpo*no  # Number of scales
fs = 8000  # Sampling frequency

duration = N / fs;              
t = np.arange(0, duration - 1/fs, 1/fs)

s0_ind = 2  # Increasing s0_ind will make the wavelet start at lower frequencies
s0 = s0_ind / fs  # Smallest scale

a0 = 2 ** (1 / vpo)  # Base for scale progression
ind = np.arange(J1)  # Indices for scales
scale = s0 * (a0 ** ind)  # Array of scales

k0 = 6.0  # Wavelet parameter for Morlet

# Fourier factor
fourier_factor = (4 * np.pi) / (k0 + np.sqrt(2 + k0**2))

# Frequency calculation
freq = 1 / (fourier_factor * scale)

coi = np.column_stack((np.linspace(0.1, 0.5, N), np.linspace(0.5, 0.1, N)))  # Cone of influence (example)

# Initialize the plot
plt.ion()  # Turn on interactive mode
fig, ax = plt.subplots(figsize=(10, 6))
cfs = np.zeros((J1, N))  # Placeholder for CWT coefficients

# Function to read one point at a time from the file
def read_next_point(filename, file_pointer):
    with open(filename, 'r') as f:
        f.seek(file_pointer)  # Move to the last read position
        char = ''
        value = ''
        
        # Read until a space or newline is encountered
        while char not in {' ', '\n', ''}:
            char = f.read(1)  # Read one character at a time
            if char in {' ', '\n', ''}:
                break
            value += char
        
        if value:
            file_pointer = f.tell()  # Update the file pointer
            return float(value), file_pointer
        else:
            return None, file_pointer  # No more data

# Main loop for continuous monitoring and plotting
file_pointer = 0  # Initialize the file pointer
row, col = 0, 0  # Initialize indices for the CWT matrix
while True:
    try:
        # Read the next point from the file
        value, file_pointer = read_next_point(filename, file_pointer)

        if value is not None:
            # Update the CWT matrix
            cfs[row, col] = value

            # Move to the next position in the matrix
            col += 1
            if col >= N:
                col = 0
                row += 1
                if row >= J1:
                    row = 0  # Reset if the matrix is filled

            # Shift the data to the left (oscilloscope-like behavior)
            if col == N - 1:  # When the last column is reached
                cfs[:, :-1] = cfs[:, 1:]  # Shift all columns to the left
                cfs[:, -1] = 0  # Clear the last column for new data

            # Update the plot
            ax.clear()
            plot_cwt(t, freq, cfs, coi, fs, 'log2', N, J1)
            plt.title('Continuous Wavelet Transform (CWT) - Oscilloscope View')
            plt.draw()
            plt.pause(0.01)  # Pause to allow the plot to update

        # Wait for a short time before checking again
        time.sleep(0.01)  # Check for updates every 0.01 seconds

    except KeyboardInterrupt:
        print("Stopping live update...")
        break

# Turn off interactive mode after the loop
plt.ioff()
plt.show()