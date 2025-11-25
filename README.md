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
