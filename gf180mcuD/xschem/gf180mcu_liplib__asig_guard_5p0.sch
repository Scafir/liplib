v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -200 160 -200 {lab=DVDD}
N 160 -200 160 -180 {lab=DVDD}
N 160 -120 160 -80 {lab=pad_guard}
N 160 -20 160 20 {lab=pad}
N 160 80 160 120 {lab=pad_guard}
N 160 190 160 200 {lab=DVSS}
N -0 200 160 200 {lab=DVSS}
N 0 0 160 -0 {lab=pad}
N -0 -100 160 -100 {lab=pad_guard}
N 20 -100 20 100 {lab=pad_guard}
N 20 100 160 100 {lab=pad_guard}
N 160 -0 240 -0 {lab=pad}
N 160 200 270 200 {lab=DVSS}
N 160 180 160 190 {lab=DVSS}
N 300 0 360 0 {lab=pad_res}
N 440 -20 440 20 {lab=pad_res}
N 360 -0 440 -0 {lab=pad_res}
N 160 100 440 100 {lab=pad_guard}
N 440 80 440 100 {lab=pad_guard}
N 160 -100 440 -100 {lab=pad_guard}
N 440 0 540 -0 {lab=pad_res}
N 440 -100 440 -80 {lab=pad_guard}
N 280 200 760 200 {lab=DVSS}
N 780 30 780 200 {lab=DVSS}
N 780 -200 780 -30 {lab=DVDD}
N 160 -200 780 -200 {lab=DVDD}
N 270 200 280 200 {lab=DVSS}
N 270 -200 270 -20 {lab=DVDD}
N 770 200 900 200 {lab=DVSS}
N 900 30 900 200 {lab=DVSS}
N 900 -200 900 -30 {lab=DVDD}
N 780 -200 900 -200 {lab=DVDD}
N 760 200 770 200 {lab=DVSS}
C {iopin.sym} 0 0 2 0 {name=p1 lab=pad}
C {iopin.sym} 0 -100 2 0 {name=p2 lab=pad_guard}
C {iopin.sym} 0 -200 2 0 {name=p3 lab=DVDD}
C {iopin.sym} 0 200 2 0 {name=p4 lab=DVSS}
C {symbols/diode_nd2ps_06v0.sym} 160 50 2 0 {name=D1
model=diode_nd2ps_06v0
r_w=3u
r_l=50u
m=8}
C {symbols/diode_nd2ps_06v0.sym} 160 150 2 0 {name=D2
model=diode_nd2ps_06v0
r_w=3u
r_l=50u
m=8}
C {symbols/diode_pd2nw_06v0.sym} 160 -50 2 0 {name=D3
model=diode_pd2nw_06v0
r_w=3u
r_l=50u
m=8}
C {symbols/diode_pd2nw_06v0.sym} 160 -150 2 0 {name=D4
model=diode_pd2nw_06v0
r_w=3u
r_l=50u
m=8}
C {symbols/ppolyf_u_1k.sym} 270 0 1 0 {name=R1
W=2e-6
L=2e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/diode_pd2nw_06v0.sym} 440 -50 2 0 {name=D5
model=diode_pd2nw_06v0
r_w=5u
r_l=5u
m=1}
C {symbols/diode_nd2ps_06v0.sym} 440 50 2 0 {name=D6
model=diode_nd2ps_06v0
r_w=5u
r_l=5u
m=1}
C {iopin.sym} 540 0 0 0 {name=p5 lab=pad_res}
C {symbols/diode_nd2ps_06v0.sym} 780 0 2 0 {name=D7
model=diode_nd2ps_06v0
r_w=3.48u
r_l=50.48u
m=4}
C {symbols/cap_nmos_06v0.sym} 900 0 0 0 {name=C1
W=15e-6
L=15e-6
model=cap_nmos_06v0
spiceprefix=X
m=22}
C {iopin.sym} 0 -240 2 0 {name=p6 lab=VDD
}
C {iopin.sym} 0 260 2 0 {name=p7 lab=VSS
}
