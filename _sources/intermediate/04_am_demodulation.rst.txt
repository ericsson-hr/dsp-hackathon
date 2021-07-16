AM demodulation using DSP
==========================
**Assignment 04**

An unknown audio signal, modulated using amplitude modulation (AM), is sent over the air. You want to listen the transmitted sound from the other part of the hill. You have a digital radio in you pocket and you use it to record a sequence. 
Unfortunately, when you get home, you discover that your digital radio is broken, and it's only working part is the ADC. That is why your receiver only gives you the discretized samples of the original signal sent over the air. 
So, your task is to develop an offline software model of the remaining part of the receiver and preform the AM demodulation. 

As input, you are given the *AM_ADC_samples.bin* file, which contains the samples at the output of the ADC of your digital radio. The following facts are known about the ADC:

- ADC has one input,
- resolution of ADC is 16 bits,
- ADC outputs samples in 2's complement,
- ADC's power supply has limits +/- 1 V,
- ADC's sampling rate is 768 kSPS.

In this assignment you need to generate a wav file *demodAM.wav* that contains the demodulated signal.
The sample rate of the audio is 48 kSPS.

**Suggestion**

We suggest to convert ADC results from binary (16 bit) format to a floating-point representation which corresponds to ADC's input voltage level. At the certain point, downsampling of the signal will be needed to come down from ACD sample rate to the output sample rate. For filtering, it is suggested to use a FIR filter up to 151-th order.

Input Files
^^^^^^^^^^^^

Source files in :download:`04_am_demodulation.zip <files/04_am_demodulation.zip>`

AM_ADC_samples.bin
   The samples from the ADC.

Output Files
^^^^^^^^^^^^

demodAM.wav
   The demodulated signal.

Your solution as a MATLAB or Python script.

Evaluation and Grading
^^^^^^^^^^^^^^^^^^^^^^^^

To evaluate if your solution is correct, we will look at the amplitude spectrums of the originally transmitted audio file and your demodulated audio stream. The maximum absolute difference between any component of the normalized spectra shall not exceed 0.001. Normalization is performed to the peak spectral component.
