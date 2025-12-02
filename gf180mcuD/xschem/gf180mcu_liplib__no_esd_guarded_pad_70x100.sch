v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -200 60 -200 {lab=DVDD}
N 0 -100 60 -100 {lab=pad_guard}
N 0 0 60 0 {lab=pad}
N 0 200 60 200 {lab=DVSS}
N 0 260 60 260 {lab=VSS}
N 60 260 260 260 {lab=VSS}
N 260 30 260 260 {lab=VSS}
N 260 -240 260 -30 {lab=VDD}
N 0 -240 260 -240 {lab=VDD}
C {iopin.sym} 0 0 2 0 {name=p1 lab=pad}
C {iopin.sym} 0 -100 2 0 {name=p2 lab=pad_guard}
C {iopin.sym} 0 -200 2 0 {name=p3 lab=DVDD}
C {iopin.sym} 0 200 2 0 {name=p4 lab=DVSS}
C {iopin.sym} 0 -240 2 0 {name=p6 lab=VDD
}
C {iopin.sym} 0 260 2 0 {name=p7 lab=VSS
}
C {noconn.sym} 60 -200 2 0 {name=l2}
C {noconn.sym} 60 -100 2 0 {name=l3}
C {noconn.sym} 60 0 2 0 {name=l4}
C {noconn.sym} 60 200 2 0 {name=l5}
C {symbols/cap_nmos_06v0.sym} 260 0 0 0 {name=C1
W=1.5e-6
L=1.5e-6
model=cap_nmos_06v0
spiceprefix=X
m=140}
