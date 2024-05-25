v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 570 130 1370 530 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-10
x2=0.000256
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vout}
N -560 640 -560 680 {
lab=GND}
N -500 580 -500 660 {
lab=GND}
N -560 660 -500 660 {
lab=GND}
N -440 520 -440 660 {
lab=GND}
N -500 660 -440 660 {
lab=GND}
N -380 460 -380 660 {
lab=GND}
N -440 660 -380 660 {
lab=GND}
N -320 400 -320 660 {
lab=GND}
N -380 660 -320 660 {
lab=GND}
N -260 340 -260 660 {
lab=GND}
N -320 660 -260 660 {
lab=GND}
N -200 280 -200 660 {
lab=GND}
N -260 660 -200 660 {
lab=GND}
N -140 220 -140 660 {
lab=GND}
N -200 660 -140 660 {
lab=GND}
N 180 220 180 660 {
lab=GND}
N -140 660 180 660 {
lab=GND}
N -140 140 -140 160 {
lab=Vb0}
N -140 140 -0 140 {
lab=Vb0}
N -200 100 -0 100 {
lab=Vb1}
N -200 100 -200 220 {
lab=Vb1}
N -260 60 0 60 {
lab=Vb2}
N -260 60 -260 280 {
lab=Vb2}
N -320 20 -0 20 {
lab=Vb3}
N -320 20 -320 340 {
lab=Vb3}
N -380 -20 -0 -20 {
lab=Vb4}
N -380 -20 -380 400 {
lab=Vb4}
N -440 -60 -0 -60 {
lab=Vb5}
N -440 -60 -440 460 {
lab=Vb5}
N -500 -100 -0 -100 {
lab=Vb6}
N -500 -100 -500 520 {
lab=Vb6}
N -560 -140 -560 580 {
lab=Vb7}
N -560 -140 -0 -140 {
lab=Vb7}
N 570 0 610 0 {
lab=Vout}
N 610 0 650 0 {
lab=Vout}
N 440 0 510 -0 {
lab=#net1}
C {r2rdac.sym} 120 0 0 0 {name=X1}
C {devices/vsource.sym} -320 370 0 0 {name=V1 value="pulse(0 1.8 0 0 0 8u 16u)" savecurrent=false}
C {devices/vsource.sym} -260 310 0 0 {name=V2 value="pulse(0 1.8 0 0 0 4u 8u)" savecurrent=false}
C {devices/vsource.sym} -200 250 0 0 {name=V3 value="pulse(0 1.8 0 0 0 2u 4u)" savecurrent=false}
C {devices/vsource.sym} -140 190 0 0 {name=V4 value="pulse(0 1.8 0 0 0 1u 2u)" savecurrent=false}
C {devices/vsource.sym} -560 610 0 0 {name=V5 value="pulse(0 1.8 0 0 0 128u 256u)" savecurrent=false}
C {devices/gnd.sym} -560 680 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -500 550 0 0 {name=V6 value="pulse(0 1.8 0 0 0 64u 128u)" savecurrent=false}
C {devices/vsource.sym} -440 490 0 0 {name=V7 value="pulse(0 1.8 0 0 0 32u 64u)" savecurrent=false}
C {devices/vsource.sym} -380 430 0 0 {name=V8 value="pulse(0 1.8 0 0 0 16u 32u)" savecurrent=false}
C {devices/lab_pin.sym} 650 0 2 0 {name=p5 sig_type=std_logic lab=Vout}
C {devices/res.sym} 540 0 1 0 {name=R1
value=500R
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 610 30 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 610 60 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -140 140 0 0 {name=p1 sig_type=std_logic lab=Vb0}
C {devices/lab_pin.sym} -200 100 0 0 {name=p2 sig_type=std_logic lab=Vb1}
C {devices/lab_pin.sym} -260 60 0 0 {name=p3 sig_type=std_logic lab=Vb2}
C {devices/lab_pin.sym} -320 20 0 0 {name=p4 sig_type=std_logic lab=Vb3}
C {devices/lab_pin.sym} -380 -20 0 0 {name=p6 sig_type=std_logic lab=Vb4}
C {devices/lab_pin.sym} -440 -60 0 0 {name=p7 sig_type=std_logic lab=Vb5}
C {devices/lab_pin.sym} -500 -100 0 0 {name=p8 sig_type=std_logic lab=Vb6}
C {devices/lab_pin.sym} -560 -140 0 0 {name=p9 sig_type=std_logic lab=Vb7}
C {devices/launcher.sym} 340 480 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/r2rdac_tb.raw tran"
}
C {devices/code.sym} 410 260 0 0 {name=SIMULATION
only_toplevel=false 
value="
* .options filetype=ascii
.control
tran 10n 256u uic
write r2rdac_tb.raw
.endc
.end
"}
C {sky130_fd_pr/corner.sym} 270 260 0 0 {name=CORNER only_toplevel=true corner=tt}
