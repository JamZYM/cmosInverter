v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 -100 -50 -100 {
lab=Vin}
N -80 50 -50 50 {
lab=Vin}
N -80 -100 -80 50 {
lab=Vin}
N -10 -70 -10 20 {
lab=Vout}
N -110 -20 -80 -20 {
lab=Vin}
N -10 -160 -10 -130 {
lab=Vdd}
N -10 80 -10 110 {
lab=GND}
N -10 90 10 90 {
lab=GND}
N -10 50 10 50 {
lab=GND}
N 10 50 10 90 {
lab=GND}
N -170 -20 -110 -20 {
lab=Vin}
N -10 -160 80 -160 {
lab=Vdd}
N -10 -20 220 -20 {
lab=Vout}
N 140 -20 140 10 {
lab=Vout}
N -10 -100 10 -100 {
lab=Vdd}
N 10 -130 10 -100 {
lab=Vdd}
N -10 -130 10 -130 {
lab=Vdd}
C {sky130_fd_pr/nfet_01v8.sym} -30 50 0 0 {name=M1
L=0.15
W=2
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
C {sky130_fd_pr/pfet_01v8.sym} -30 -100 0 0 {name=M2
L=0.15
W=5
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
C {devices/lab_pin.sym} -170 -20 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 220 -20 0 1 {name=p2 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -10 -160 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {devices/vsource.sym} 80 -130 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/vsource.sym} -170 10 0 0 {name=Vin value="pulse(0 1.8 0 1ns 1ns 4ns 10ns)" savecurrent=false}
C {devices/gnd.sym} -170 40 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 80 -100 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -10 110 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 140 40 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 140 70 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -910 -310 0 0 {name=lib only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"}
C {devices/code_shown.sym} -910 -220 0 0 {name=dc_simulation only_toplevel=false value="
.tran 100ps 20ns
.save all
.end
"}
