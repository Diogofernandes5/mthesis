#WAVELET  1D Wavelet transform with optional singificance testing
#
#   [cfs,PERIOD,SCALE,COI] = wavelet(Y,DT,PAD,DJ,S0,J1,MOTHER,PARAM)
#
#   Computes the wavelet transform of the vector Y (length N),
#   with sampling rate DT.
#
#   By default, the Morlet wavelet (k0=6) is used.
#   The wavelet basis is normalized to have total energy=1 at all scales.
#
#
# INPUTS:
#
#    Y = the time series of length N.
#    DT = amount of time between each Y value, i.e. the sampling time.
#
# OUTPUTS:
#
#    cfs is the WAVELET transform of Y. This is a complex array
#    of dimensions (N,J1+1). FLOAT(cfs) gives the WAVELET amplitude,
#    ATAN(IMAGINARY(cfs),FLOAT(cfs) gives the WAVELET phase.
#    The WAVELET power spectrum is ABS(cfs)^2.
#    Its units are sigma^2 (the time series variance).
#
#
# OPTIONAL INPUTS:
# 
# *** Note *** setting any of the following to -1 will cause the default
#               value to be used.
#       
#    NO = number of octaves.Each octave represents a specific frequency band 
#           where the higher part of the octave has a frequency range that is 
#           double that of the lower part. 
#
#    VPO = voices per octave - number of scales between each octave 
#          (the spacing between discrete scales). Default is 4.
#         A greater # will give better scale resolution, but be slower to plot.
#
#    S0 = the smallest scale of the wavelet.  Default is 2*DT.
#
#    J1 = the # of scales minus one. Scales range from S0 up to S0*2^(J1*DJ),
#        to give a total of (J1+1) scales. Default is J1 = (LOG2(N DT/S0))/DJ.
#
#    MOTHER = the mother wavelet function.
#             The choices are 'MORLET', 'PAUL', or 'DOG'
#
#    PARAM = the mother wavelet parameter.
#            For 'MORLET' this is k0 (wavenumber), default is 6.
#            For 'PAUL' this is m (order), default is 4.
#            For 'DOG' this is m (m-th derivative), default is 2.
#
#    PAD = if set to 1 (default is 0), pad time series with enough zeroes to get
#         N up to the next higher power of 2. This prevents wraparound
#         from the end of the time series to the beginning, and also
#         speeds up the FFT's used to do the wavelet transform.
#         This will not eliminate all edge effects (see COI below).
#
# OPTIONAL OUTPUTS:
#
#    PERIOD = the vector of "Fourier" periods (in time units) that corresponds
#           to the SCALEs.
#
#    SCALE = the vector of scale indices, given by S0*2^(J1*DJ), J1=0...J1
#            where J1+1 is the total # of scales.
#
#    FREQ = The vector of "Fourier" frequencies (Hz) converted from scales
#
#    COI = if specified, then return the Cone-of-Influence, which is a vector
#        of N points that contains the maximum period of useful information
#        at that particular time.
#        Periods greater than this are subject to edge effects.
#        This can be used to plot COI lines on a contour plot by doing:
#
#              contour(time,log(period),log(power))
#              plot(time,log(coi),'k')
#
#----------------------------------------------------------------------------

import numpy as np

from scipy.optimize import fminbound
from scipy.special._ufuncs import gamma, gammainc

def wavelet(Y, fs, no=-1, vpo=-1, s0=-1, mother=-1, param=-1, pad=-1, fractional_len=0):
    N = len(Y)

    if no == -1:
        no = 7
    if vpo == -1:
        vpo = 4
    if s0 == -1:
        s0 = 2 / fs
    if mother == -1:
        mother = 'MORLET'

    # Construct time series to analyze, pad if necessary
    x = np.array(Y, dtype=complex)
    n = len(x)

    # Compute FFT of the (padded) time series
    fft_o = np.fft.fft(x)  # [Eqn(3)]

    # Write output of fft module to file
    fft_re_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/golden_re.txt"
    fft_im_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/golden_im.txt"

    np.savetxt(fft_re_filename, np.real(fft_o), fmt='%f')
    np.savetxt(fft_im_filename, np.imag(fft_o), fmt='%f')

    # Construct wavenumber array used in transform [Eqn(5)]
    multiplier = (2 * (np.pi * fs)) / n
    kplus = np.arange(1, int(n / 2) + 1)
    kplus = (kplus * multiplier)
    kminus = np.arange(1, int((n - 1) / 2) + 1)
    kminus = np.sort(-kminus * multiplier)
    k = np.concatenate(([0.], kplus, kminus))

    # Construct SCALE array & empty PERIOD & WAVE arrays
    J1 = no * vpo
    a0 = 2 ** (1 / vpo)
    ind = np.arange(J1)
    scale = s0 * (a0 ** ind)

    period = scale  # declare the period array
    cfs = np.zeros((J1, n), dtype=complex)  # declare the coefficients array
    wavelet = np.zeros((J1, n), dtype=complex)  # declare the wavelet array

    # Write output of mul module to file
    mul_re_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/golden_re.txt"
    mul_im_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/golden_im.txt"

    with open(mul_re_filename, 'w') as fp_re, open(mul_im_filename, 'w') as fp_im:
        # Loop through all scales and compute transform
        for j in range(J1):
            daughter, fourier_factor, e_folding, dofmin = wave_bases(mother, k, scale[j], param, fs)
            daughter = np.round(daughter * (2 ** fractional_len))
            wavelet[j, :] = daughter
            mul = fft_o * daughter

            # print re output of mul to file
            np.savetxt(fp_re, np.real(mul).reshape(1, -1), fmt='%f')
            # print im output of mul to file
            np.savetxt(fp_im, np.imag(mul).reshape(1, -1), fmt='%f')

            mul = np.round(mul / 128)
            cfs[j, :] = np.fft.ifft(mul)  # wavelet transform[Eqn(4)]

    # Write output of ifft module to file
    ifft_re_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/golden_re.txt"
    ifft_im_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/golden_im.txt"

    np.savetxt(ifft_re_filename, np.real(cfs), fmt='%f')
    np.savetxt(ifft_im_filename, np.imag(cfs), fmt='%f')

    freq = 1.0 / (fourier_factor * scale)  # frequency conversion
    period = 1.0 / freq

    e_folding = e_folding * scale  # COI [Sec.3g]
    L = np.minimum(np.floor(N / 2), e_folding)
    R = np.maximum(np.ceil(N / 2), N - e_folding)
    coi = np.column_stack((L, R))

    return cfs, period, scale, freq, coi, wavelet

#WAVE_BASES  1D Wavelet functions Morlet, Paul, or DOG
#
#  [DAUGHTER,FOURIER_FACTOR,COI,DOFMIN] = ...
#      wave_bases(MOTHER,K,SCALE,PARAM);
#
#   Computes the wavelet function as a function of Fourier frequency,
#   used for the wavelet transform in Fourier space.
#   (This program is called automatically by WAVELET)
#
# INPUTS:
#
#    MOTHER = a string, equal to 'MORLET' or 'PAUL' or 'DOG'
#    K = a vector, the Fourier frequencies at which to calculate the wavelet
#    SCALE = a number, the wavelet scale
#    PARAM = the nondimensional parameter for the wavelet function
#
# OUTPUTS:
#
#    DAUGHTER = a vector, the wavelet function
#    FOURIER_FACTOR = the ratio of Fourier period to scale
#    COI = a number, the cone-of-influence size at the scale
#    DOFMIN = a number, degrees of freedom for each point in the wavelet power
#             (either 2 for Morlet and Paul, or 1 for the DOG)

import numpy as np
from scipy.special import factorial, gamma

def wave_bases(mother, k, scale, param, fs):
    """
    Computes the wavelet function as a function of Fourier frequency,
    used for the wavelet transform in Fourier space.

    Parameters:
        mother (str): Type of wavelet ('MORLET', 'PAUL', or 'DOG').
        k (numpy array): Fourier frequencies at which to calculate the wavelet.
        scale (float): Wavelet scale.
        param (float): Nondimensional parameter for the wavelet function.
        fs (float): Sampling frequency.

    Returns:
        daughter (numpy array): Wavelet function.
        fourier_factor (float): Ratio of Fourier period to scale.
        e_folding (float): Cone-of-influence size at the scale.
        dofmin (int): Degrees of freedom for each point in the wavelet power.
    """
    mother = mother.upper()
    n = len(k)

    if mother == 'MORLET':  # Morlet wavelet
        if param == -1:
            param = 6.0
        k0 = param

        expnt = -(scale * k - k0) ** 2 / 2
        norm = (np.pi ** -0.25) * np.sqrt(n)  # Total energy = N [Eqn(7)]
        daughter = norm * np.exp(expnt)
        daughter = daughter * (k > 0)  # Heaviside step function

        fourier_factor = (4 * np.pi) / (k0 + np.sqrt(2 + k0 ** 2))  # Scale --> Fourier [Sec.3h]
        e_folding = np.sqrt(2) * fs
        dofmin = 2  # Degrees of freedom

    elif mother == 'PAUL':  # Paul wavelet
        if param == -1:
            param = 4.0
        m = param

        expnt = -(scale * k)
        norm = (2 ** m) / np.sqrt(m * factorial(2 * m - 1))
        daughter = norm * ((scale * k) ** m) * np.exp(expnt)
        daughter = daughter * (k > 0)  # Heaviside step function

        fourier_factor = (4 * np.pi) / (2 * m + 1)
        e_folding = fs / np.sqrt(2)
        dofmin = 2

    elif mother == 'DOG':  # DOG wavelet
        if param == -1:
            param = 2.0
        m = param

        expnt = -(scale * k) ** 2 / 2.0
        norm = -((1j ** m) / np.sqrt(gamma(m + 0.5))) * (scale * k) ** m
        daughter = norm * np.exp(expnt)

        fourier_factor = 2 * np.pi * np.sqrt(2.0 / (2 * m + 1))
        e_folding = np.sqrt(2) * fs
        dofmin = 1

    else:
        raise ValueError("Mother must be one of 'MORLET', 'PAUL', or 'DOG'.")

    return daughter, fourier_factor, e_folding, dofmin


# --------------------------------------------------------------------------
# WAVE_SIGNIF  Significance testing for the 1D Wavelet transform WAVELET
#
#   SIGNIF = wave_signif(Y,DT,SCALE,SIGTEST,LAG1,SIGLVL,DOF,MOTHER,PARAM)
#
# INPUTS:
#
#    Y = the time series, or, the VARIANCE of the time series.
#        (If this is a single number, it is assumed to be the variance...)
#    DT = amount of time between each Y value, i.e. the sampling time.
#    SCALE = the vector of scale indices, from previous call to WAVELET.
#
#
# OUTPUTS:
#
#    SIGNIF = significance levels as a function of SCALE
#    FFT_THEOR = output theoretical red-noise spectrum as fn of PERIOD
#
#
# OPTIONAL INPUTS:
#    SIGTEST = 0, 1, or 2.    If omitted, then assume 0.
#
#         If 0 (the default), then just do a regular chi-square test,
#             i.e. Eqn (18) from Torrence & Compo.
#         If 1, then do a "time-average" test, i.e. Eqn (23).
#             In this case, DOF should be set to NA, the number
#             of local wavelet spectra that were averaged together.
#             For the Global Wavelet Spectrum, this would be NA=N,
#             where N is the number of points in your time series.
#         If 2, then do a "scale-average" test, i.e. Eqns (25)-(28).
#             In this case, DOF should be set to a
#             two-element vector [S1,S2], which gives the scale
#             range that was averaged together.
#             e.g. if one scale-averaged scales between 2 and 8,
#             then DOF=[2,8].
#
#    LAG1 = LAG 1 Autocorrelation, used for SIGNIF levels. Default is 0.0
#
#    SIGLVL = significance level to use. Default is 0.95
#
#    DOF = degrees-of-freedom for signif test.
#         IF SIGTEST=0, then (automatically) DOF = 2 (or 1 for MOTHER='DOG')
#         IF SIGTEST=1, then DOF = NA, the number of times averaged together.
#         IF SIGTEST=2, then DOF = [S1,S2], the range of scales averaged.
#
#       Note: IF SIGTEST=1, then DOF can be a vector (same length as SCALEs),
#            in which case NA is assumed to vary with SCALE.
#            This allows one to average different numbers of times
#            together at different scales, or to take into account
#            things like the Cone of Influence.
#            See discussion following Eqn (23) in Torrence & Compo.
#
#    GWS = global wavelet spectrum, a vector of the same length as scale.
#          If input then this is used as the theoretical background spectrum,
#          rather than white or red noise.

def wave_signif(Y, dt, scale, sigtest=0, lag1=0.0, siglvl=0.95,
                dof=None, mother='MORLET', param=None, gws=None):
    n1 = len(np.atleast_1d(Y))
    J1 = len(scale) - 1
    dj = np.log2(scale[1] / scale[0])

    if n1 == 1:
        variance = Y
    else:
        variance = np.std(Y) ** 2

    # get the appropriate parameters [see Table(2)]
    if mother == 'MORLET':  # ----------------------------------  Morlet
        empir = ([2., -1, -1, -1])
        if param is None:
            param = 6.
            empir[1:] = ([0.776, 2.32, 0.60])
        k0 = param
        # Scale-->Fourier [Sec.3h]
        fourier_factor = (4 * np.pi) / (k0 + np.sqrt(2 + k0 ** 2))
    elif mother == 'PAUL':
        empir = ([2, -1, -1, -1])
        if param is None:
            param = 4
            empir[1:] = ([1.132, 1.17, 1.5])
        m = param
        fourier_factor = (4 * np.pi) / (2 * m + 1)
    elif mother == 'DOG':  # -------------------------------------Paul
        empir = ([1., -1, -1, -1])
        if param is None:
            param = 2.
            empir[1:] = ([3.541, 1.43, 1.4])
        elif param == 6:  # --------------------------------------DOG
            empir[1:] = ([1.966, 1.37, 0.97])
        m = param
        fourier_factor = 2 * np.pi * np.sqrt(2. / (2 * m + 1))
    else:
        print('Mother must be one of MORLET, PAUL, DOG')

    period = scale * fourier_factor
    dofmin = empir[0]  # Degrees of freedom with no smoothing
    Cdelta = empir[1]  # reconstruction factor
    gamma_fac = empir[2]  # time-decorrelation factor
    dj0 = empir[3]  # scale-decorrelation factor

    freq = dt / period  # normalized frequency

    if gws is not None:   # use global-wavelet as background spectrum
        fft_theor = gws
    else:
        # [Eqn(16)]
        fft_theor = (1 - lag1 ** 2) / \
            (1 - 2 * lag1 * np.cos(freq * 2 * np.pi) + lag1 ** 2)
        fft_theor = variance * fft_theor  # include time-series variance

    signif = fft_theor
    if dof is None:
        dof = dofmin

    if sigtest == 0:  # no smoothing, DOF=dofmin [Sec.4]
        dof = dofmin
        chisquare = chisquare_inv(siglvl, dof) / dof
        signif = fft_theor * chisquare  # [Eqn(18)]
    elif sigtest == 1:  # time-averaged significance
        if len(np.atleast_1d(dof)) == 1:
            dof = np.zeros(J1) + dof
        dof[dof < 1] = 1
        # [Eqn(23)]
        dof = dofmin * np.sqrt(1 + (dof * dt / gamma_fac / scale) ** 2)
        dof[dof < dofmin] = dofmin   # minimum DOF is dofmin
        for a1 in range(0, J1 + 1):
            chisquare = chisquare_inv(siglvl, dof[a1]) / dof[a1]
            signif[a1] = fft_theor[a1] * chisquare
    elif sigtest == 2:  # time-averaged significance
        if len(dof) != 2:
            print('ERROR: DOF must be set to [S1,S2],'
                ' the range of scale-averages')
        if Cdelta == -1:
            print('ERROR: Cdelta & dj0 not defined'
                  ' for ' + mother + ' with param = ' + str(param))

        s1 = dof[0]
        s2 = dof[1]
        avg = np.logical_and(scale >= 2, scale < 8)  # scales between S1 & S2
        navg = np.sum(np.array(np.logical_and(scale >= 2, scale < 8),
            dtype=int))
        if navg == 0:
            print('ERROR: No valid scales between ' + s1 + ' and ' + s2)
        Savg = 1. / np.sum(1. / scale[avg])  # [Eqn(25)]
        Smid = np.exp((np.log(s1) + np.log(s2)) / 2.)  # power-of-two midpoint
        dof = (dofmin * navg * Savg / Smid) * \
            np.sqrt(1 + (navg * dj / dj0) ** 2)  # [Eqn(28)]
        fft_theor = Savg * np.sum(fft_theor[avg] / scale[avg])  # [Eqn(27)]
        chisquare = chisquare_inv(siglvl, dof) / dof
        signif = (dj * dt / Cdelta / Savg) * fft_theor * chisquare  # [Eqn(26)]
    else:
        print('ERROR: sigtest must be either 0, 1, or 2')

    return signif


# --------------------------------------------------------------------------
# CHISQUARE_INV  Inverse of chi-square cumulative distribution function (cdf).
#
#   X = chisquare_inv(P,V) returns the inverse of chi-square cdf with V
#   degrees of freedom at fraction P.
#   This means that P*100 percent of the distribution lies between 0 and X.
#
#   To check, the answer should satisfy:   P==gammainc(X/2,V/2)

# Uses FMIN and CHISQUARE_SOLVE

def chisquare_inv(P, V):

    if (1 - P) < 1E-4:
        print('P must be < 0.9999')

    if P == 0.95 and V == 2:  # this is a no-brainer
        X = 5.9915
        return X

    MINN = 0.01  # hopefully this is small enough
    MAXX = 1  # actually starts at 10 (see while loop below)
    X = 1
    TOLERANCE = 1E-4  # this should be accurate enough

    while (X + TOLERANCE) >= MAXX:  # should only need to loop thru once
        MAXX = MAXX * 10.
    # this calculates value for X, NORMALIZED by V
        X = fminbound(chisquare_solve, MINN, MAXX, args=(P, V), xtol=TOLERANCE)
        MINN = MAXX

    X = X * V  # put back in the goofy V factor

    return X  # end of code


# --------------------------------------------------------------------------
# CHISQUARE_SOLVE  Internal function used by CHISQUARE_INV
    #
    #   PDIFF=chisquare_solve(XGUESS,P,V)  Given XGUESS, a percentile P,
    #   and degrees-of-freedom V, return the difference between
    #   calculated percentile and P.

    # Uses GAMMAINC
    #
    # Written January 1998 by C. Torrence

    # extra factor of V is necessary because X is Normalized

def chisquare_solve(XGUESS, P, V):

    PGUESS = gammainc(V / 2, V * XGUESS / 2)  # incomplete Gamma function

    PDIFF = np.abs(PGUESS - P)            # error in calculated P

    TOL = 1E-4
    if PGUESS >= 1 - TOL:  # if P is very close to 1 (i.e. a bad guess)
        PDIFF = XGUESS   # then just assign some big number like XGUESS

    return PDIFF
