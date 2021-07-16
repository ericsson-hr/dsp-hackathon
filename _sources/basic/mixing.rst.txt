Frequency Translations 
==========================================

RF/IF Local Oscillator (Analog Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Radio-frequency (RF) or intermediate frequency (IF) local oscillator (mixer) is an active or passive analog device that converts a signal from one frequency to another. It can do frequency upconversion or downconversion of the input signal. A frequency mixer is a 3-port electronic circuit.
Two of the ports are “input” ports and the remaining port is an “output” port. These three ports are the radio frequency (RF) input, the local oscillator (LO) input (reference signal), and the intermediate frequency (IF) output. 

The ideal mixer “mixes” the two input signals such that the output signal frequency is either
the sum (or difference) frequency of the inputs, depending on if a signal is being up or downconverted.

.. math::
    f_{OUT} = f_{RF} \pm f_{LO}

Fundamentally, "mixing" of two input signals is done by their multiplication. From implementation perspective, multiplication of two signals is non-linear operation, and RF mixers cannot be realized by linear-time-invariant (LTI) components or circuits. Instead, the translation is achieved by either time varying or non-linear circuits, e.g., diodes.

But, let's keep on fundamentals and demonstrate "mixing" as simple math and some spectrum images. Assume we have input cosine signal with frequency :math:`\omega_{IN}` and LO cosine signal with frequency :math:`\omega_{LO}` 

.. figure:: _img/mixing/mixer.png

    Fig. 1. A block representation of a mixer

.. math::
    x_{IN}(t) = cos(\omega_{IN} t)

    x_{LO}(t) = cos(\omega_{LO} t)

Both input signals can be shown in frequency domain as 

.. figure:: _img/mixing/spectrum1.png

    Fig. 2. Original spectra of the two signals.

If we do multiplication of the input signals

.. math::
    y(t) = x_{LO}(t) x_{IN}(t)

and apply `product-to-sum identity <https://en.wikipedia.org/wiki/List_of_trigonometric_identities>`_ for trigonometric functions, we obtain output signal and its spectrum

.. math::
    y(t) = \frac{1}{2} cos((\omega_{LO}  - \omega_{IN})t) + \frac{1}{2} cos((\omega_{LO}  + \omega_{IN})t)

.. figure:: _img/mixing/spectrum2.png
    
    Fig. 3. Spectra after multiplication.

These two signal components are called the upper and lower sideband. Filtering out one of them, let's say the lower sideband, we get the signal transposed in frequency. And that's our final upconverted signal! Similar story you can do for downconversion, you can try it yourself :)

.. math::
    y_{trans}(t) = \frac{1}{2} {cos((\omega_{LO}  + \omega_{IN})t)}

.. figure:: _img/mixing/spectrum3.png
    
    Fig. 4. Filtering the spectrum.

Numerically Controlled Oscillator (Digital Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Numerically controlled oscillator (NCO) is component in digital domain that implements frequency downconversion and upconversion on discrete signals. The basic idea is quite simple, assume that we have analog signal for mixing

.. math::
    x(t) = A cos(\omega_0 t)

If this signal is sampled with frequency :math:`f_{s}=1/T_{s}`, we get discrete time slots with corresponding oscillator values

.. math::
    t=n T_s=n\frac{1}{f_s}=n\frac{2 \pi}{\omega_s}, n=0,1,2,...

    x[n] = A cos(\omega_0 n T_s) = A cos(2\pi\frac{\omega_0}{\omega_s}n) = A cos(2\pi\frac{f_0}{f_s}n)

Discrete values of signal :math:`x[n]` represent output samples of numerically controlled oscillator. Notice that in this case, we are limited with value for frequency translation :math:`f_0`, due to Nyquist-Shannon theorem, in the range :math:`[-f_{s}/2,f_{s}/2]`. Try to pick for example frequency translation value :math:`f_0=f_s`. What is the shape of signal :math:`x[n]` in that case?
Furthermore, in practical cases there is also need to do "complex mixing" of the digital signal. In that case, mixer signal has the form

.. math::
    x[n] = A {cos(2\pi\frac{f_0}{f_s}n) + j sin(2\pi\frac{f_0}{f_s}n)} = A e^{j 2\pi\frac{f_0}{f_s}n} 

Related Assignments
--------------------
This chapter is accompanied by a demo example :ref:`Real and complex mixing <mixing-example>`.
