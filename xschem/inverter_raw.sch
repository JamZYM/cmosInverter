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
lab=#net1}
N -110 -20 -80 -20 {
lab=Vin}
N -10 -160 -10 -130 {
lab=Vdd}
N -10 80 -10 110 {
lab=Vss}
N -10 90 10 90 {
lab=Vss}
N -10 50 10 50 {
lab=Vss}
N 10 50 10 90 {
lab=Vss}
N -170 -20 -110 -20 {
lab=Vin}
N -10 -100 10 -100 {
lab=Vdd}
N 10 -130 10 -100 {
lab=Vdd}
N -10 -130 10 -130 {
lab=Vdd}
N -10 -20 70 -20 {
lab=#net1}
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
C {devices/lab_pin.sym} 70 -20 0 1 {name=p2 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -10 -160 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -10 110 0 0 {name=p3 sig_type=std_logic lab=Vss}
