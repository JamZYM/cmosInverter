v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 10 -50 10 {
lab=Vgs}
N -10 10 20 10 {
lab=GND}
N 20 10 20 40 {
lab=GND}
N -10 40 20 40 {
lab=GND}
N -10 -20 120 -20 {
lab=Vds}
N 120 -20 120 10 {
lab=Vds}
N -10 40 -10 70 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -30 10 0 0 {name=M1
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
C {devices/vsource.sym} -110 40 0 0 {name=Vgs value=0 savecurrent=false}
C {devices/vsource.sym} 120 40 0 0 {name=Vds value=1.8 savecurrent=false}
C {devices/gnd.sym} -110 70 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -10 70 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 120 70 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -110 10 0 0 {name=p1 sig_type=std_logic lab=Vgs}
C {devices/lab_pin.sym} 120 -20 0 1 {name=p2 sig_type=std_logic lab=Vds}
C {devices/code_shown.sym} -610 -240 0 0 {name=lib only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"}
C {devices/code_shown.sym} -610 -150 0 0 {name=dc_simulation1 only_toplevel=false value="
.dc Vgs 0 2.2 1m
.save all
.end
"}
