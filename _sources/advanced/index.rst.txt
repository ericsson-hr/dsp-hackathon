Advanced Level
===============

Welcome to the Advanced Level of the DSP Hackathon!

You are given a single assignment.

Digital Radio Receiver
-----------------------

Your goal in this task is to design the digital part of a radio receiver. Based on the signal received on the ADC, you will need to determine the content of a secretly coded sound signal. As an input, you are given the file `RX_ADC_samples.bin`, which represents the samples at the output of the ADC.

Following facts are known about the ADC:

- ADC has one input 
- Resolution of the ADC is 8 bits 
- ADC represents its result (sample) in two's complement format
- ADC's power supply has limits +/- 1V
- ADC sampling's rate is 491.52 MSPS

Since you are going to develop an *offline* software model of the radio receiver, it is always good to simplify your model. The first simplification is to use a floating-point format instead of an integer format. For that, you will need to convert ADC results from binary (8 bit) format to a floating-point format which represents ADC's input voltage level. Any further calculation should be done on the ADC's input signal in floating-point/voltage level representation.

Regarding the structure of the received signal, LTE (4G) standard is used as Radio Access Technology. However, the person who designed the radio transmitter used to generate this signal changed some of the standard characteristics, so that you would not have an easy job of decoding the information. However, the following characteristics are the same as in the LTE standard:

1. Sampling frequency of the LTE carrier
2. Used FFT size
3. Mapping of occupied sub-carriers
4. Length of the cyclic prefix (Long Cyclic Prefix is used)

For information about LTE standard, we suggest looking into the following `link <https://home.zhaw.ch/kunr/NTM1/literatur/LTE%20in%20a%20Nutshell%20-%20Physical%20Layer.pdf>`_. There, you will find useful information in Table 1.

Note that all decoding should be done on the Physical layer. There are no *special* OFDM symbols, as in the LTE standard. Every OFDM symbol has the same number and same positions of data, pilot and "DC" subcarriers. All pilot subcarriers on the transmitter side have the same amplitude and zero phase. 

In order to decode the received information, your radio receiver must have at least the following blocks:

1. "First OFDM Symbol" start detector
2. 1 FIR filter with a maximum of 35 real coefficients
3. Sound (wav) file generator - Generates sound file in *wav* format from a bitstream stored in a *bin* file, where sound samples are reproduced with sampling frequency f=8192 SPS.
4. An FFT block
5. Demodulated data serializer - bitstream (*bin* file) generator
6. 1 downsampling block - Only integer downsampling factors can be used. Antialiasing filter is not included here.
7. Cyclic prefix remover
8. 1 Complex mixer (NCO)
9. N-QAM demodulator - Choose N as you best see fit.
10. Channel compensation block - Amplitude/phase adjustment of data subcarriers due to channel effects.

Your task is to use recommended blocks above in order to decode information (generate received bitstream as *bin* file and sound as *wav* file). Blocks presented here are independent part of Radio receiver functionality, you can implement it in any software form you like. All blocks can work on complex I/Q data, or real data, it is up to you to decide when/what is best fitting.

Regarding components 1, 3, 5 and 9 additional information is needed:

- The "First OFDM symbol" start detector is based on recognizing the cyclic prefix pattern of an OFDM symbol. You can use any signal processing technique which you find most appropriate to implement it. 
- N-QAM demodulation is performed based on constellation diagrams presented in the Basic level material.
- Demodulated data serializer works intuitively, where bitstream can be represented as long 1-D sequence of '0's and '1's. In each iteration of data subcarrier demodulation, next *Nbit=log2(N)* decoded bits are added at the end of the currently generated bitstream. Generated bitstream represents a sequence of bytes (8-bit chunks of data), where the first bit in each byte is most significant. These bytes must be sequentially stored in the *bin* file.
- To convert the *bin* file to a *wav*-formatted sound, you are given example scripts *wavFileGenerator.py* and *wavFileGenerator.m* with example binary file *exampleSamples.bin* as an input. You can use these scripts as they are for your solution as well.

Input and Supplement Files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Source files in :download:`01_radio_receiver.zip <files/01_radio_receiver.zip>`

RX_ADC_samples.bin
   The OFDM signal, as received by the ADC.

exampleSamples.bin
   A sample bitstream, as demodulated by a functional digital radio receiver.

wavFileGenerator.m and wavFileGenerator.py
   Scripts for converting the `exampleSamples.bin` file to an audio stream.

Output Files
^^^^^^^^^^^^^

As a result of this task, you will need to generate the following files:

*raw_samples.bin*
   Binary file with *uint8* data, created from the generated bitstream.

*sound.wav*
   The received sound signal.

Your solution as a MATLAB or Python script.

Evaluation and Grading
^^^^^^^^^^^^^^^^^^^^^^^

The criteria for passing this task is 

- Bit Error Rate (BER) less then 1%, measured based on the bitstream in *raw_samples.bin*
- wav file which qualitatively plays expected sound

That would be all, we wish you good luck and happy coding :)
