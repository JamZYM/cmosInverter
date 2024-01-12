v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -10 50 -10 {
lab=#net1}
N 20 20 20 60 {
lab=Vout}
N -90 -10 -20 -10 {
lab=Vin}
N 20 -90 20 -40 {
lab=#net1}
N 20 -90 110 -90 {
lab=#net1}
N 50 -40 50 -10 {
lab=#net1}
N 20 -40 50 -40 {
lab=#net1}
N 20 60 110 60 {
lab=Vout}
C {devices/vsource.sym} -90 20 0 0 {name=Vin value="pulse(0 1.8 0 1ns 1ns 4ns 10ns)" savecurrent=false}
C {devices/vsource.sym} 110 -60 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/gnd.sym} 20 120 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -440 -210 0 0 {name=lib only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"}
C {devices/code_shown.sym} -440 -120 0 0 {name=dc_simulation1 only_toplevel=false value="
.tran 100ps 20ns
.save all
.end
"}
C {sky130_fd_pr/pfet_01v8.sym} 0 -10 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/res.sym} 20 90 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 110 90 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 110 120 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -90 -10 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 110 60 2 0 {name=p2 sig_type=std_logic lab=Vout}
C {devices/gnd.sym} -90 50 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 110 -30 0 0 {name=l4 lab=GND}
