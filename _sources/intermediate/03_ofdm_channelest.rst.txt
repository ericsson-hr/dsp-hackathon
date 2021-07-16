OFDM demodulator with communication channel effects
====================================================
**Assignment 03**

OFDM symbol is transmitted through a communication channel of unknown characteristics, the same way as was done in the *OFDM signal generator* Basic Level example. Input files contain time-domain I/Q samples of the received signal in floating-point format. Your task is to decode the received information.

The obtained bitstream represents ASCII-coded characters (8 bits per character), each character stored with its most significant bit (MSB) first. As an output, your solution must generate a file *receivedMessage.txt* with the decoded text message.

Input Files
^^^^^^^^^^^^

Source files in :download:`03_ofdm_channelest.zip <files/03_ofdm_channelest.zip>`

I_samples.csv
   Contains in-phase samples in floating point format (%1.6f).

Q_samples.csv
   Contains quadrature-phase samples in floating point format (%1.6f).

Output Files
^^^^^^^^^^^^

receivedMessage.txt
   The decoded message.

Your solution as a MATLAB or Python script.

Evaluation and Grading
^^^^^^^^^^^^^^^^^^^^^^^^

The received text message must be identical to the one constructed on the transmitting end.
