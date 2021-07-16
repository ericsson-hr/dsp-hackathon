Irritating sound
=================
**Assignment 01**

You are given a wav file *irritating_handel.wav*, where you can hear the beautiful "Hallelujah" sung by a choir, but also an irritating sound which can remind you of the sound of a fire alarm. Since there is no fire around you, your task is to generate a *corrected_handel.wav* file in an attempt to remove the irritating parts from the original file.

Input Files
^^^^^^^^^^^^

Source files in :download:`01_audio_filtering.zip <files/01_audio_filtering.zip>`

irritating_handel.wav
   The corrupted audio file.

Output Files
^^^^^^^^^^^^

corrected_handel.wav
   A cleaned-up audio file.

Your solution as a MATLAB or Python script.

Evaluation and Grading
^^^^^^^^^^^^^^^^^^^^^^^^

Pass criteria is that the amplitude level of irritating components is at least 40 dB lower comparing to highest component of *useful* sound.
