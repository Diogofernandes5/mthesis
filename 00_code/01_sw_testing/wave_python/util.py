import numpy as np

import matplotlib.pyplot as plt

def rel_error(inputArg1,inputArg2):

    lenght = len(inputArg1)

    if(lenght != len(inputArg2) and lenght != 0) :
        error('Arg1 and Arg2 must have the same size and different from 0!')

    max_error = 0

    # for i = 1:len
    for i in range(lenght) :
        abs_error = max(np.abs(inputArg1[i] - inputArg2[i]))

        if abs_error > max_error :
            max_error = abs_error

    max_error = max_error * 100

    # fprintf("Max relative error is: %.2f%%\n\r", max_error)
    print("Max relative error is:", max_error)

    return max_error

# Função para salvar vetores em arquivos
def fprint_vector(vector, rows, filename, mode='w'):
    with open(filename, mode) as f:
        for i in range(rows):
            np.savetxt(f, vector[i].reshape(1, -1), fmt='%f')

def plot_cwt(t, f, cfs, coi, fs, opt, N, J1, first_time):
    """
    Plota o escalograma da Transformada Wavelet Contínua (CWT).

    Parâmetros:
        t (numpy array): Vetor de tempo.
        f (numpy array): Vetor de frequências.
        cfs (numpy array): Coeficientes da CWT (complexos).
        coi (numpy array): Cone de influência.
        fs (float): Frequência de amostragem.
        opt (str): Opção de escala ('lin', 'log2', 'log10').
        N (int): Número de amostras no tempo.
        J1 (int): Número de escalas.
    """

    # Plotagem dos coeficientes da CWT
    plt.contourf(t, f, np.abs(cfs), levels=20, cmap='jet')#, extend='both')
    plt.pause(0.01)  # Pause to allow the plot to update

    if first_time:
        plt.colorbar(label='Magnitude')

    # # Ajuste dos ticks do eixo Y
    # if any(ticks):
    #     plt.yticks(ticks, labels)

    # Propriedades do gráfico
    # plt.title("Scalogram and Instantaneous Frequencies")
    # plt.xlabel("Time (Seconds)")
    # plt.ylabel("Frequency (Hz)")

    # Plotagem do Cone de Influência (COI)
    # L = coi[:, 0]  # Lado esquerdo do COI
    # R = coi[:, 1]  # Lado direito do COI

    # Cria os valores para o eixo y
    # y_values = np.concatenate(([f[0] - 1], f))  # [f(1)-1, f]

    # Plotagem do Cone de Influência (COI)
    # plt.plot(np.concatenate(([L[0]], L)) / fs, y_values, '--w', linewidth=1.5, label='COI')
    # plt.plot(np.concatenate(([R[0]], R)) / fs, y_values, '--w', linewidth=1.5)
    # plt.legend()

    # plt.show()

    # Salvar os coeficientes da CWT em arquivos
    # golden_re_filename = "/home/fernandes/thesis/00_code/matlab/cwt/golden_vectors/cfs_re.txt"
    # golden_im_filename = "/home/fernandes/thesis/00_code/matlab/cwt/golden_vectors/cfs_im.txt"

    # with open(golden_re_filename, 'w') as fp:
    #     for i in range(J1):
    #         fp.write(" ".join(map(str, np.real(cfs[i, :]))) + "\n")

    # with open(golden_im_filename, 'w') as fp:
    #     for i in range(J1):
    #         fp.write(" ".join(map(str, np.imag(cfs[i, :]))) + "\n")

def configure_scale(f, fs, opt):
    """
    Configure the scale for the y-axis (log2, log10, or linear).

    Parameters:
        f (numpy array): Frequency vector.
        fs (float): Sampling frequency.
        opt (str): Scale option ('lin', 'log2', or 'log10').

    Returns:
        f (numpy array): Transformed frequency vector.
        ticks (numpy array): Tick positions for the y-axis.
        labels (list): Tick labels for the y-axis.
    """
    tickmin = np.min(f)
    tickmax = fs / 2

    # Configuração da escala (log2, log10 ou linear)
    if 'log2' in opt.lower():
        f = np.log2(f)
        numticks = int(np.ceil(np.log2(tickmax) - np.log2(tickmin)))
        ticks = np.zeros(numticks)
        labels = []

        for tick in range(numticks):
            ticks[tick] = 2 ** (tick + np.ceil(np.log2(tickmin)))
            labels.append(str(ticks[tick]))

        ticks = np.log2(ticks)

    elif 'log10' in opt.lower():
        f = np.log10(f)
        numticks = int(np.ceil(np.log10(tickmax) - np.log10(tickmin + 1e-7)))
        ticks = np.zeros(numticks)
        labels = []

        for tick in range(numticks):
            ticks[tick] = 10 ** (tick + int(np.log10(tickmin + 1e-7)))
            labels.append(str(ticks[tick]))

        ticks = np.log10(ticks)

    elif 'lin' in opt.lower():
        ticks = []
        labels = []
    else:
        raise ValueError("ERROR: opt must be 'lin', 'log2', or 'log10'.")

    return f, ticks, labels