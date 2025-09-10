import matplotlib.pylab as plt
import matplotlib.ticker as ticker
from matplotlib.gridspec import GridSpec

import numpy as np

# from mpl_toolkits.axes_grid1 import make_axes_locatable

import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import chirp
import os

from util import rel_error, fprint_vector, plot_cwt

# Signal generation
N = 1024
fractional_len = 8
fs = 8000  # Sampling frequency
duration = N / fs  # Duration to get exactly 1024 samples
t = np.arange(0, duration, 1/fs)  # Time vector to generate 1024 samples at 8 kHz
f0 = 300  # Frequency of the first sine wave
f1 = 700  # Frequency of the second sine wave

# Two sinusoidal signals
x = np.sin(2 * np.pi * f0 * t) + np.sin(2 * np.pi * f1 * t)

# Chirp signal
# x = chirp(t, f0, duration, f1, method='quadratic')
x = np.cos(2 * np.pi * t * (f0 + (f1 - f0) * t**2 / (3 * duration**2)))
x = np.round(x * (2 ** fractional_len))
x = x.astype(complex)

# Wavelet parameters
dt = 1 / fs
pad = 0  # Pad the time series with zero
omega = 6.0  # Wavelet parameter for MORLET
mother = 'MORLET'
no = 4  # Number of octaves
vpo = 16  # Voices per octave
s0_ind = 2  # Increasing s0_ind will make the wavelet start at lower frequencies
s0 = s0_ind * dt
J1 = no * vpo

# Wavelet transform
from waveletFunctions import wavelet
wt, period, scale, freq, coi, daughter = wavelet(x, fs, no, vpo, s0, mother, omega, pad, fractional_len)

# Adjust the daughter wavelet
daughter_fix = np.round(daughter * (2 ** fractional_len)) * (2 ** -fractional_len)
rel_error(daughter, daughter_fix)

# Plot the scalogram
rep_scale = 'log2'
plt.figure(1, figsize=(10, 6))
plot_cwt(t, freq, wt, coi, fs, rep_scale, N, J1)
plt.title(f'Scalogram and Instantaneous Frequencies in {rep_scale} scale: no={no}; vpo={vpo}; s0={s0_ind:.2f}*dt')

# Save input and output data to files
filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/input.txt"
fprint_vector(np.real(x).reshape(1, -1), 1, filename, 'w')

filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_re.txt"
fprint_vector(np.real(wt), J1, filename, 'w')

filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_im.txt"
fprint_vector(np.imag(wt), J1, filename, 'w')

# Save the daughter wavelet to a file
dwavelet_filename = "/home/fernandes/thesis/00_code/matlab/cwt/daughter_wavelet/dwavelet.txt"
fprint_vector(daughter, J1, dwavelet_filename, 'w')

# Convert .txt to .COE
os.chdir("/home/fernandes/thesis/00_code/matlab/cwt/daughter_wavelet/")
os.system("./coe_dump.sh dwavelet.txt 10")
os.chdir("..")

# Read FPGA output data
cwt_re_output = np.zeros((J1, N))
output_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/output_re.txt"
with open(output_filename, 'r') as f:
    for i in range(J1):
        vector = np.array([float(val) for val in f.readline().split()])
        cwt_re_output[i, :] = vector

cwt_im_output = np.zeros((J1, N))
output_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/output_im.txt"
with open(output_filename, 'r') as f:
    for i in range(J1):
        vector = np.array([float(val) for val in f.readline().split()])
        cwt_im_output[i, :] = vector

cwt_fpga = cwt_re_output + 1j * cwt_im_output

# Plot the scalogram of FPGA data
plt.figure(2, figsize=(10, 6))
plot_cwt(t, freq, cwt_fpga, coi, fs, rep_scale, N, J1)
plt.title('Scalogram from FPGA Output')

plt.show()