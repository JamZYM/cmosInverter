v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -70 130 -70 {
lab=#net1}
N -80 -10 -20 -10 {
lab=vgs}
N 20 -10 50 -10 {
lab=#net1}
N -80 -70 20 -70 {
lab=#net1}
N 20 -70 20 -40 {
lab=#net1}
N 50 -70 50 -10 {
lab=#net1}
N 20 20 20 60 {
lab=GND}
N 20 60 130 60 {
lab=GND}
N 130 -10 130 60 {
lab=GND}
C {devices/vsource.sym} -80 -40 0 0 {name=Vgs value=0 savecurrent=false}
C {devices/vsource.sym} 130 -40 0 0 {name=Vds value=0 savecurrent=false}
C {devices/gnd.sym} 20 60 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -440 -210 0 0 {name=lib only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"}
C {devices/code_shown.sym} -440 -120 0 0 {name=dc_simulation1 only_toplevel=false value="
.dc Vgs 0 1.8 1m Vds 0 1.8 0.3
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
