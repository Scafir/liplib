# LIPlib - Low Leakage I/O Pad Library

Ultra-low-leakage pads are essential in ASICs designed for measuring currents
in the femtoampere to picoampere range, where even tiny parasitic currents from
the I/O structures can overwhelm or distort the signal of interest. Standard
pad cells typically include ESD networks, routing geometries, and junction
areas that introduce leakage paths far larger than the measurable current
itself. By using specialized guarded pad architectures—with minimized junction
area, controlled surface leakage, optional sense lines, and carefully designed
ESD protection—we can preserve signal integrity and enable accurate
measurements in demanding applications such as radiation detection, plasma
diagnostics, biosensing, precision metrology, and nanoscale instrumentation.
This repository provides a reusable set of such low-leakage pads to support the
development of high-sensitivity analog and mixed-signal ASICs.

# Approaches

## Classic analog pad

The classic approach for ESD protection is depicted below.
A set of large diodes is connected at the input, followed by a resistor and another set of smaller diodes.

![A classic analog pad ESD protection](./images/classic_pad.svg)

The input diodes (to bondpad) are sometimes referred to as the Human Body Model (HBM) diodes, and the resistor + to pad diodes as the Charge Device Model (CDM) protection circuitry.
An important thing to note is that the current noise due to the diodes will depend on the current going through them, but the actual leakage experience at the input
is the sum of both upper and lower diodes.

## Guarded Analog Pad

A known approach to reduce leakage is to add a guard in place of the VDD and VSS supplies. [1][2]
If the input offset buffer driving the guard voltage is low enough, then the ESD diodes touching the input are zero volt biased, causing negligible leakage.
This can be seen as a mitigation, as the diodes will still be leaking and still be asymmetric in their leakage, but reduces their amplitude by orders of magnitude.

It may not be possible to implement this pad in all technologies, as the lower diode going from the pad to guard requires its anode to be isolated from VSS. This restricts its application to deep N-Well capable technologies.

[1] 10.1109/ISCAS51556.2021.9401369

[2] https://www.analog.com/en/products/ada4530-1.html

## Guarded Sense Analog Pad

While the guarded analog pad is a significant improvement of the classic one, it can still be subject to significant leakage at large temperatures, and the overall circuit is still susceptible to leakage that occurs outside of the esd diodes, such as on the ASIC silicon itself, in the package or through the PCB/cable.

The temperature can be particularly bad, as stable leakage would then require climate controlled conditions, with long initial power on times.

This can be avoided by adding a twin of the input: the sense line.
By having it mirror exactly the input (including output pad), the leakage sensed on the sense line
can be compensated on the input, by means of changing the guard voltage.

This approach again requires deep N-well capable technology, as well as designing custom ESD diodes to allow proper interleaving/matching of the input and sense line.


