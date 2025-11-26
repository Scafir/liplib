v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -740 -220 -740 -150 {lab=GND}
N -740 -150 -740 -140 {lab=GND}
N -740 -140 -180 -140 {lab=GND}
N -740 -380 -740 -280 {lab=#net1}
N -740 -380 -220 -380 {lab=#net1}
N -220 -380 -180 -380 {lab=#net1}
N -60 -310 -30 -310 {lab=#net2}
N -60 -210 -30 -210 {lab=vout}
N -620 -220 -620 -140 {lab=GND}
N -620 -310 -620 -280 {lab=#net3}
N -180 -140 60 -140 {lab=GND}
N 20 -200 60 -200 {lab=#net4}
N 20 -200 20 -190 {lab=#net4}
N -430 -310 -360 -310 {lab=#net5}
N -370 -210 -360 -210 {lab=#net6}
N -450 -210 -430 -210 {lab=vin}
N -550 -240 -510 -240 {lab=vc}
N -450 -230 -450 -210 {lab=vin}
N -450 -240 -450 -230 {lab=vin}
N -620 -310 -590 -310 {lab=#net3}
N -530 -310 -490 -310 {lab=#net7}
N 0 -190 20 -190 {lab=#net4}
N -30 -210 130 -210 {lab=vout}
N 130 -150 130 -140 {lab=GND}
N 60 -140 130 -140 {lab=GND}
C {devices/code_shown.sym} -180 20 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 170 -230 0 0 {name=NGSPICE only_toplevel=true
value="
.param VDD=3.3
.ic v(vc)=1500
.control
save all
op
tran 1n 1u
plot i(Vpadcurr)
plot v(vin)
plot v(vout)

write abcde.raw
.endc
"}
C {vsource.sym} -740 -250 0 0 {name=VDD value=3.3 savecurrent=false}
C {noconn.sym} -30 -310 2 0 {name=l1}
C {vsource.sym} -620 -250 0 0 {name=Vsense value=\{VDD/2\} savecurrent=false}
C {vsource.sym} 60 -170 0 0 {name=Vguard value=\{VDD/2\} savecurrent=false}
C {gnd.sym} -270 -140 0 0 {name=l3 lab=GND}
C {ammeter.sym} -460 -310 3 0 {name=Vsensecurr savecurrent=true spice_ignore=0}
C {ammeter.sym} -400 -210 3 0 {name=Vpadcurr savecurrent=true spice_ignore=0}
C {gf180mcu_liplib__asig_guard_sense_5p0_dev.sym} -200 -260 0 0 {name=x1}
C {lab_pin.sym} -450 -210 0 0 {name=p4 sig_type=std_logic lab=vin}
C {capa.sym} -550 -210 0 0 {name=C2
m=1
value="100p"
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -550 -180 0 0 {name=l5 lab=GND
value=1.2}
C {res.sym} -480 -240 3 0 {name=R1
value=330
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -550 -240 1 0 {name=p9 sig_type=std_logic lab=vc
value=1.2}
C {lab_pin.sym} -50 -210 1 0 {name=p1 sig_type=std_logic lab=vout}
C {res.sym} -560 -310 3 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} -30 -190 1 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} 130 -180 0 0 {name=C1
m=1
value="10p"
footprint=1206
device="ceramic capacitor"}
