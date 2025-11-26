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
N -60 -210 -30 -210 {lab=#net3}
N -620 -220 -620 -140 {lab=GND}
N -620 -310 -620 -280 {lab=#net4}
N -540 -220 -540 -140 {lab=GND}
N -540 -290 -540 -280 {lab=#net5}
N -450 -290 -450 -210 {lab=#net5}
N -180 -140 60 -140 {lab=GND}
N 20 -200 60 -200 {lab=#net6}
N 20 -200 20 -190 {lab=#net6}
N -60 -190 20 -190 {lab=#net6}
N -620 -310 -490 -310 {lab=#net4}
N -430 -310 -360 -310 {lab=#net7}
N -370 -210 -360 -210 {lab=#net8}
N -450 -210 -430 -210 {lab=#net5}
N -540 -290 -450 -290 {lab=#net5}
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
.options abstol=1e-19 gmin=1e-18 reltol=1e-6 vntol=1e-9
.param VDD=3.3
.control
save all
dc Vguard 1.64 1.66 0.1m
plot i(Vpadcurr)
plot i(Vsensecurr)
plot i(v.x1.vmeasdintovdd)
plot i(v.x1.vmeasdintovss)
plot i(v.x1.vmeasdoutovdd)
plot i(v.x1.vmeasdoutovss)
write abcde.raw
.endc
"}
C {vsource.sym} -740 -250 0 0 {name=VDD value=3.3 savecurrent=false}
C {noconn.sym} -30 -310 2 0 {name=l1}
C {noconn.sym} -30 -210 2 0 {name=l2}
C {vsource.sym} -620 -250 0 0 {name=Vsense value=\{VDD/2\} savecurrent=false}
C {vsource.sym} -540 -250 0 0 {name=Vpad value=\{VDD/2\} savecurrent=false}
C {vsource.sym} 60 -170 0 0 {name=Vguard value=\{VDD/2\} savecurrent=false}
C {gnd.sym} -270 -140 0 0 {name=l3 lab=GND}
C {ammeter.sym} -460 -310 3 0 {name=Vsensecurr savecurrent=true spice_ignore=0}
C {ammeter.sym} -400 -210 3 0 {name=Vpadcurr savecurrent=true spice_ignore=0}
C {gf180mcu_liplib__asig_guard_sense_5p0_dev.sym} -200 -260 0 0 {name=x1}
