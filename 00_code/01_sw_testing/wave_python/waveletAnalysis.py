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

# Geração do sinal
N = 1024
fractional_len = 8
fs = 8000  # Frequência de amostragem
duration = N / fs  # Duração para obter exatamente 1024 amostras
t = np.arange(0, duration, 1/fs)  # Vetor de tempo para gerar 1024 amostras a 8 kHz
f0 = 300  # Frequência da primeira onda senoidal
f1 = 700  # Frequência da segunda onda senoidal

# Dois sinais senoidais
x = np.sin(2 * np.pi * f0 * t) + np.sin(2 * np.pi * f1 * t)

# Sinal chirp
# x = chirp(t, f0, duration, f1, method='quadratic')
x = np.cos(2 * np.pi * t * (f0 + (f1 - f0) * t**2 / (3 * duration**2)))
x = np.round(x * (2 ** fractional_len))
x = x.astype(complex)

# Parâmetros da Wavelet
dt = 1 / fs
pad = 0  # Preencher a série temporal com zeros (recomendado)
omega = 6.0  # Parâmetro da wavelet para MORLET
mother = 'MORLET'
no = 4  # Número de oitavas
vpo = 16  # Vozes por oitava
s0_ind = 2  # Aumentar s0_ind fará a wavelet começar em frequências mais baixas
s0 = s0_ind * dt
J1 = no * vpo

# Transformada Wavelet
from waveletFunctions import wavelet
wt, period, scale, freq, coi, daughter = wavelet(x, fs, no, vpo, s0, mother, omega, pad, fractional_len)

# Ajuste da filha da wavelet
daughter_fix = np.round(daughter * (2 ** fractional_len)) * (2 ** -fractional_len)
rel_error(daughter, daughter_fix)

# Plotar o escalograma
rep_scale = 'log2'
plot_cwt(t, freq, wt, coi, fs, rep_scale, N, J1)
plt.title(f'Scalogram and Instantaneous Frequencies in {rep_scale} scale: no={no}; vpo={vpo}; s0={s0_ind:.2f}*dt')
plt.show()

# Salvar os dados de entrada e saída em arquivos
filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/input.txt"
fprint_vector(np.real(x).reshape(1, -1), 1, filename, 'w')

filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_re.txt"
fprint_vector(np.real(wt), J1, filename, 'w')

filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_im.txt"
fprint_vector(np.imag(wt), J1, filename, 'w')

# Salvar a filha da wavelet em arquivo
dwavelet_filename = "/home/fernandes/thesis/00_code/matlab/cwt/daughter_wavelet/dwavelet.txt"
fprint_vector(daughter, J1, dwavelet_filename, 'w')

# Converter .txt para .COE
os.chdir("/home/fernandes/thesis/00_code/matlab/cwt/daughter_wavelet/")
os.system("./coe_dump.sh dwavelet.txt 10")
os.chdir("..")

# Ler os dados de saída do FPGA
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

# Plotar o escalograma dos dados do FPGA
plot_cwt(t, freq, cwt_fpga, coi, fs, rep_scale, N, J1)
plt.title('Scalogram from FPGA Output')
plt.show()