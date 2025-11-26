v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -20 -200 140 -200 {lab=DVDD}
N 140 -200 140 -180 {lab=DVDD}
N 140 -100 140 20 {lab=#net1}
N 140 180 140 200 {lab=pad}
N -20 500 140 500 {lab=DVSS}
N -20 180 140 180 {lab=pad}
N 140 180 220 180 {lab=pad}
N 140 500 920 500 {lab=DVSS}
N 140 480 140 500 {lab=DVSS}
N 420 180 420 200 {lab=pad_res}
N 420 260 420 280 {lab=#net2}
N 420 180 520 180 {lab=pad_res}
N 420 -100 420 20 {lab=pad_guard}
N 920 30 920 500 {lab=DVSS}
N 920 -200 920 -30 {lab=DVDD}
N 350 -200 920 -200 {lab=DVDD}
N 200 80 200 400 {lab=#net1}
N 480 0 480 20 {lab=sense_res}
N 480 80 480 400 {lab=pad_guard}
N 480 0 580 0 {lab=sense_res}
N 200 -100 200 -80 {lab=#net1}
N 420 -100 480 -100 {lab=pad_guard}
N 480 -100 480 -80 {lab=pad_guard}
N 330 -100 330 160 {lab=pad_guard}
N 140 400 140 420 {lab=#net1}
N -20 -0 200 0 {lab=sense}
N 200 0 260 0 {lab=sense}
N 370 -100 370 -20 {lab=pad_guard}
N 480 -100 510 -100 {lab=pad_guard}
N 510 -100 510 -80 {lab=pad_guard}
N 510 -80 880 -80 {lab=pad_guard}
N 510 -140 510 -100 {lab=pad_guard}
N 510 -140 900 -140 {lab=pad_guard}
N 200 0 200 20 {lab=sense}
N 200 -20 200 0 {lab=sense}
N 900 -140 900 -110 {lab=pad_guard}
N 1020 30 1020 500 {lab=VSS}
N 1020 -200 1020 -30 {lab=VDD}
N 1100 500 1160 500 {lab=VSS}
N 1160 30 1160 500 {lab=VSS}
N 1160 -200 1160 -30 {lab=VDD}
N 1100 -200 1160 -200 {lab=VDD}
N -20 -260 1100 -260 {lab=VDD}
N 1100 -260 1100 -200 {lab=VDD}
N -20 560 1100 560 {lab=VSS}
N 1100 500 1100 560 {lab=VSS}
N 140 80 140 100 {lab=#net3}
N 510 -80 510 400 {lab=pad_guard}
N 480 400 510 400 {lab=pad_guard}
N 510 400 540 400 {lab=pad_guard}
N 420 340 420 400 {lab=pad_guard}
N 420 80 420 100 {lab=#net4}
N 140 160 140 180 {lab=pad}
N 420 160 420 180 {lab=pad_res}
N 480 -20 480 0 {lab=sense_res}
N 140 -100 200 -100 {lab=#net1}
N 200 -100 250 -100 {lab=#net1}
N 140 400 200 400 {lab=#net1}
N 1020 -200 1100 -200 {lab=VDD}
N 1020 500 1100 500 {lab=VSS}
N 140 -200 350 -200 {lab=DVDD}
N 140 -120 140 -100 {lab=#net1}
N 420 400 480 400 {lab=pad_guard}
N 200 400 360 400 {lab=#net1}
N 400 -0 480 -0 {lab=sense_res}
N 360 180 420 180 {lab=pad_res}
N 260 0 340 -0 {lab=sense}
N 220 180 300 180 {lab=pad}
N 270 -100 270 400 {lab=#net1}
N 250 -100 270 -100 {lab=#net1}
N 330 -100 420 -100 {lab=pad_guard}
N 390 420 390 440 {lab=pad_guard}
N 390 440 460 440 {lab=pad_guard}
N 460 400 460 440 {lab=pad_guard}
N -20 340 80 340 {lab=#net1}
N 80 340 80 400 {lab=#net1}
N -20 400 140 400 {lab=#net1}
N 140 260 140 290 {lab=#net5}
N 140 350 140 400 {lab=#net1}
C {iopin.sym} -20 180 2 0 {name=p1 lab=pad}
C {iopin.sym} 540 400 0 0 {name=p2 lab=pad_guard}
C {iopin.sym} -20 -200 2 0 {name=p3 lab=DVDD}
C {iopin.sym} -20 500 2 0 {name=p4 lab=DVSS}
C {symbols/diode_nd2ps_06v0.sym} 140 230 2 0 {name=D1
model=diode_nd2ps_06v0
r_w=2.34u
r_l=45.68u
m=8}
C {symbols/diode_nd2ps_06v0.sym} 140 450 2 0 {name=D2
model=diode_nd2ps_06v0
r_w=3u
r_l=50u
m=8}
C {symbols/diode_pd2nw_06v0.sym} 140 130 2 0 {name=D3
model=diode_pd2nw_06v0
r_w=2.34u
r_l=45.68u
m=8}
C {symbols/diode_pd2nw_06v0.sym} 140 -150 2 0 {name=D4
model=diode_pd2nw_06v0
r_w=3u
r_l=50u
m=8}
C {symbols/ppolyf_u_1k.sym} 330 180 1 0 {name=R1
W=4e-6
L=4e-6
model=ppolyf_u_1k_6p0

spiceprefix=X
m=1}
C {symbols/diode_pd2nw_06v0.sym} 420 130 2 0 {name=D5
model=diode_pd2nw_06v0
r_w=0.58u
r_l=5.93u
m=4}
C {symbols/diode_nd2ps_06v0.sym} 420 230 2 0 {name=D6
model=diode_nd2ps_06v0
r_w=0.58u
r_l=5.93u
m=4}
C {iopin.sym} 520 180 0 0 {name=p5 lab=pad_res}
C {symbols/diode_nd2ps_06v0.sym} 920 0 2 0 {name=D7
model=diode_nd2ps_06v0
r_w=3.48u
r_l=50.48u
m=4}
C {iopin.sym} -20 0 2 0 {name=p6 lab=sense}
C {symbols/diode_nd2ps_06v0.sym} 200 50 2 0 {name=D8
model=diode_nd2ps_06v0
r_w=2.34u
r_l=45.68u
m=8}
C {symbols/diode_pd2nw_06v0.sym} 200 -50 2 0 {name=D9
model=diode_pd2nw_06v0
r_w=2.34u
r_l=45.68u
m=8
}
C {symbols/ppolyf_u_1k.sym} 370 0 1 0 {name=R2
W=4e-6
L=4e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/diode_pd2nw_06v0.sym} 480 -50 2 0 {name=D10
model=diode_pd2nw_06v0
r_w=0.58u
r_l=5.93u
m=4}
C {symbols/diode_nd2ps_06v0.sym} 480 50 2 0 {name=D11
model=diode_nd2ps_06v0
r_w=0.58u
r_l=5.93u
m=4}
C {iopin.sym} 580 0 0 0 {name=p7 lab=sense_res}
C {symbols/diode_pd2nw_06v0.sym} 700 -110 2 0 {name=D14
model=diode_nd2ps_06v0
r_w=0.58u
r_l=5.93u
m=2}
C {symbols/diode_pd2nw_06v0.sym} 780 -110 2 0 {name=D15
model=diode_pd2nw_06v0
r_w=0.58u
r_l=5.93u
m=2}
C {symbols/diode_nd2ps_06v0.sym} 40 370 2 0 {name=D12
model=diode_nd2ps_06v0
r_w=2.34u
r_l=45.68u
m=6}
C {symbols/diode_pd2nw_06v0.sym} -20 370 2 0 {name=D13
model=diode_pd2nw_06v0
r_w=2.34u
r_l=45.68u
m=6}
C {symbols/ppolyf_u_1k.sym} 880 -110 2 0 {name=R5
W=40e-6
L=2e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/cap_nmos_06v0.sym} 1020 0 0 0 {name=C1
W=6e-6
L=7e-6
model=cap_nmos_06v0
spiceprefix=X
m=448}
C {symbols/cap_nmos_06v0.sym} 1160 0 0 0 {name=C2
W=1.5e-6
L=1.5e-6
model=cap_nmos_06v0
spiceprefix=X
m=140}
C {iopin.sym} -20 -260 2 0 {name=p8 lab=VDD}
C {iopin.sym} -20 560 2 0 {name=p9 lab=VSS}
C {symbols/ppolyf_u_1k.sym} 390 400 3 0 {name=R3
W=8e-6
L=2e-6
model=ppolyf_u_1k_6p0

spiceprefix=X
m=1}
C {ammeter.sym} 140 320 2 0 {name=Vmeasdintovss savecurrent=true spice_ignore=0}
C {ammeter.sym} 140 50 2 0 {name=Vmeasdintovdd savecurrent=true spice_ignore=0}
C {ammeter.sym} 420 50 2 0 {name=Vmeasdoutovdd savecurrent=true spice_ignore=0}
C {ammeter.sym} 420 310 2 0 {name=Vmeasdoutovss savecurrent=true spice_ignore=0}
