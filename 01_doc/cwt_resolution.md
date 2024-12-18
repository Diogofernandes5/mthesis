### Why the CWT has a lower resolution with higher frequencies?

The continuous wavelet transform (CWT) is designed to have varying time and frequency resolution, which is one of its strengths. The CWT provides high frequency resolution at low frequencies and high time resolution at high frequencies. This difference in resolution is because wavelets have a scaling property: as the frequency increases, the window in which the transform analyzes the signal becomes narrower.

For lower frequencies (like 500 Hz), the CWT uses a broader window, giving better frequency resolution. For higher frequencies (like 3000 Hz), the window narrows, improving time resolution but reducing frequency resolution. This trade-off is inherent in wavelet analysis and follows the Heisenberg uncertainty principle, where a high precision in one domain (time or frequency) results in lower precision in the other.

If you need better frequency resolution at higher frequencies, you may want to consider using different wavelets or increasing the sampling rate, but keep in mind that there will always be some resolution trade-off in CWT.