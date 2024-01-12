v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 -10 120 -10 {
lab=Vout}
N -90 20 -30 20 {
lab=Vin}
N 10 20 40 20 {
lab=GND}
N 40 20 40 50 {
lab=GND}
N 10 50 40 50 {
lab=GND}
N 10 -30 10 -10 {
lab=Vout}
N 10 -110 10 -90 {
lab=#net1}
N 10 50 10 140 {
lab=GND}
N 10 140 80 140 {
lab=GND}
N 80 140 120 140 {
lab=GND}
N 120 130 120 140 {
lab=GND}
N 120 -10 120 70 {
lab=Vout}
C {sky130_fd_pr/nfet_01v8.sym} -10 20 0 0 {name=M1
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
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -90 50 0 0 {name=Vin value="pulse(0 1.8 0 1ns 1ns 4ns 10ns)" savecurrent=false}
C {devices/vsource.sym} 40 -110 3 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/gnd.sym} -90 80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 80 140 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 70 -110 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -520 -230 0 0 {name=lib only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"}
C {devices/code_shown.sym} -520 -140 0 0 {name=dc_simulation1 only_toplevel=false value="
.tran 100ps 20ns
.save all
.end
"}
C {devices/lab_pin.sym} -90 20 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 120 -10 0 1 {name=p2 sig_type=std_logic lab=Vout}
C {devices/res.sym} 10 -60 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 120 100 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
