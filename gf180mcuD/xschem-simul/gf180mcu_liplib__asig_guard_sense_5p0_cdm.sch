v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -60 -310 -30 -310 {lab=#net1}
N -60 -210 -30 -210 {lab=vout}
N -370 -210 -360 -210 {lab=#net2}
N -450 -210 -430 -210 {lab=vin}
N -30 -210 130 -210 {lab=vout}
N 130 -150 130 -140 {lab=#net3}
N 60 -140 130 -140 {lab=#net3}
N -490 -40 -470 -40 {lab=vin}
N -490 -20 -460 -20 {lab=GND}
N -220 -140 -180 -140 {lab=#net3}
N -200 -140 -200 -120 {lab=#net3}
N -180 -140 60 -140 {lab=#net3}
N -220 -380 -180 -380 {lab=#net4}
N -200 -120 -200 -60 {lab=#net3}
N -480 -60 -200 -60 {lab=#net3}
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
.ic v(vin)=500 v(x2.vprobe)=500
.control
save all
tran 0.05ns 30ns
plot i(Vpadcurr)
plot v(vin)
plot v(vout)

.endc
"}
C {noconn.sym} -30 -310 2 0 {name=l1}
C {ammeter.sym} -400 -210 3 0 {name=Vpadcurr savecurrent=true spice_ignore=0}
C {gf180mcu_liplib__asig_guard_sense_5p0_dev.sym} -200 -260 0 0 {name=x1}
C {lab_pin.sym} -50 -210 1 0 {name=p1 sig_type=std_logic lab=vout}
C {capa.sym} 130 -180 0 0 {name=C1
m=1
value="10p"
footprint=1206
device="ceramic capacitor"}
C {cdm_tester.sym} -630 -40 0 0 {name=x2}
C {lab_pin.sym} -470 -40 2 0 {name=p2 sig_type=std_logic lab=vin}
C {gnd.sym} -460 -20 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -450 -210 0 0 {name=p3 sig_type=std_logic lab=vin}
