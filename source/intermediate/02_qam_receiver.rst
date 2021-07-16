4-QAM receiver
===============
**Assignment 02**

The goal of this task is to implement a 4-QAM receiver. You are free to choose the method of implementation. 
The input signal needs to be demodulated and converted into a bitstream.


The provided input samples represent a segment of a 4-QAM modulated signal which is 784 seconds long. Other parameters of the modulated signal can be obtained from the given input for this task. Signal is represented using real numbers. Additionally, a small amount of white noise is added to the signal.

QAM symbols are mapped as seen in the Modulations section of the Basic Level, as well as in the accompanying example.

The bitstream obtained by 4-QAM demodulation represents an ASCII-coded message (8 bits per character), each character stored with its most significant bit (MSB) first. The wanted output of this task is the file *receivedQAMMessage.txt*, which includes lyrics of a romantic song coded in the input 4-QAM signal.

Input Files
^^^^^^^^^^^^

Source files in :download:`02_qam_receiver.zip <files/02_qam_receiver.zip>`

QAM4_samples.csv
   Samples in floating point format (%1.6f).

Output Files
^^^^^^^^^^^^

receivedQAMMessage.txt
   The decoded message contained in the input stream.

Your solution as a MATLAB or Python script.

Evaluation and Grading
^^^^^^^^^^^^^^^^^^^^^^^^
A valid solution should produce a text message which is identical to message constructed on the transmitting end.
