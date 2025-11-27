v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Inspired from 
https://incompliancemag.com/simulating-small-device-cdm-using-spice/
https://minotaurlabs.com/wp-content/uploads/2024/05/Conformity-FI-CDM-What-Really-Happens.pdf
10.1109/EOSESD.2007.4401763} 310 -110 0 0 0.2 0.2 {}
N -0 260 0 280 {lab=#net1}
N 0 -140 200 -140 {lab=GND}
N 160 -80 160 -60 {lab=vprobe}
N -0 180 200 180 {lab=#net2}
N 260 60 320 60 {lab=VDUT}
N -0 40 0 200 {lab=#net2}
N -0 -140 0 -20 {lab=GND}
N 260 -40 260 100 {lab=VDUT}
N 260 -140 260 -100 {lab=GND}
N -80 -140 -0 -140 {lab=GND}
N -80 -140 -80 340 {lab=GND}
N -80 340 -0 340 {lab=GND}
N 0 340 260 340 {lab=GND}
N 200 -140 260 -140 {lab=GND}
N 200 180 260 180 {lab=#net2}
N 260 160 260 180 {lab=#net2}
N 160 60 160 90 {lab=VDISCHARGE}
N 160 90 320 90 {lab=VDISCHARGE}
N 160 0 160 60 {lab=VDISCHARGE}
C {ind.sym} 160 -30 0 0 {name=L1
m=1
value=9n
footprint=1206
device=inductor}
C {res.sym} 160 -110 0 0 {name=R1
value=27
footprint=1206
device=resistor
m=1}
C {capa.sym} 260 -70 0 0 {name=CDG
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 0 10 0 0 {name=CFG
m=1
value=16.1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 0 230 2 0 {name=R2
value=100Meg
footprint=1206
device=resistor
m=1}
C {vsource.sym} 0 310 0 0 {name=V1 value=500 savecurrent=false}
C {iopin.sym} 320 60 0 0 {name=p1 lab=VDUT}
C {iopin.sym} 260 340 0 0 {name=p2 lab=GND}
C {capa.sym} 260 130 0 0 {name=C1
m=1
value=55.3p
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} 320 90 0 0 {name=p3 lab=VDISCHARGE}
C {lab_pin.sym} 160 -70 0 0 {name=p4 sig_type=std_logic lab=vprobe}
