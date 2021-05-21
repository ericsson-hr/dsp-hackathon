Assignments
=====================

Demo examples
--------------

.. _a-sampled-spectrum:

1. A Sampled Spectrum

   .. code-block::

      Source files in `basic/spectrum_sampling`

   Just as a time-domain signal, a discrete spectrum can be over- or undersampled. DFT method inherently produces a sampled (i.e. discrete) spectrum, the continuous analog of which would be found with the use of discrete-time Fourier transform (DTFT).

   Examine the program that demonstrates spectrum undersampling and how the signal is interpolated to densen the spectrum.


.. _mixing-example:

2. Real and complex mixing

   .. code-block::

      Source files in `basic/mixing`

   In this example, we will demonstrate the concept of frequency upconversion/downconversion with an NCO in digital domain. Example illustrates how input signal and end-result of downconversion/upconversion look like in time and frequency domain.

.. _filtering-example:

3. Filtering

   .. code-block::

      Source files in `basic/filtering`

   We demonstrate basic types of FIR filters: low-pass, high-pass and band-pass. The filters and signals they operate on are presented in time and frequency domain.

.. _multirate-example:

4. Multirate processing

   .. code-block::

      Source files in `basic/multirate`

   In this example, effects of signal decimation and interpolation are presented in time and frequency domain.

.. _qam-example:

5. 4-QAM modulator

   .. code-block::

      Source files in `basic/modulations`

   This example demonstrates 4-QAM modulation using a sine-wave carrier. The modulated signal is presented in time and frequency domain.

.. _ofdm-generator:

6. OFDM symbol generator

   .. code-block::

      Source files in `basic/ofdm_tx`

   In this example, we will demonstrate how the OFDM symbol is generated on transmitter side. Example illustrates how input bitstream is coded with QAM16 and incorporated into OFDM subcarriers

.. _antennas-example:

7. From Antennas to Arrays

   .. code-block::

      Source files in `basic/antennas`
   
   To explain the design of antenna arrays, we look at how we start off from a current distribution (a line source) to get the array factor. We then discretize it to get the beamforming coefficients for each antenna element.

Self-study assignments
------------------------

.. _quantization-task:

**Assignment 01**: 
A Quantized Ode

.. code-block::

   Source files in `basic/quantization`

You are given an audio file which is oversampled and overquantized. This means it can be reduced to a lower sample rate and a smaller number of bits per sample, while retaining all the data and not reducing SNR.

Produce a program which optimizes the given audio file.

.. note:: Consider the cutoff frequency to be the one at which FFT spectrogram shows -60 dB intensity.

Input Files
   - :code:`odeToJoy_oversampled.wav` - The input audio file.

Output Files
   - :code:`odeToJoy_optimized.wav` - The optimized audio file.
   - Your solution as a MATLAB or Python script.

.. _ofdm-demodulator:

**Assignment 02**: 
OFDM symbol demodulator 

.. code-block::

   Source files in `basic/ofdm_rx`

You are provided with ``I_samples.csv`` and ``Q_samples.csv`` files, in which I and Q time domain samples are stored in floating-point format. These I/Q samples are the result of OFDM symbol generation, done as presented in *OFDM symbol generator* demo example.

Your task is to perform OFDM demodulation and obtain 16-QAM symbols encoded in the OFDM symbol. Your solution must be stored in a ``rx_symbols.bit``  binary file, where each 16-QAM symbol is stored as a uint8 value.

Input Files
   - :code:`I_samples.csv` - In-phase time-domain input samples.
   - :code:`Q_samples.csv` - Quadrature-phase time-domain input samples.

Output Files
   - :code:`rx_symbols.bit` - Recovered 16-QAM symbols.
   - Your solution as a MATLAB or Python script.
