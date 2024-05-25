v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 -840 0 -840 {
lab=OUT}
N 0 -840 -0 -810 {
lab=OUT}
N 0 -750 0 -690 {
lab=#net1}
N -0 -630 -0 -570 {
lab=#net2}
N 0 -510 0 -450 {
lab=#net3}
N -0 -390 0 -330 {
lab=#net4}
N 0 -270 0 -210 {
lab=#net5}
N -0 -150 0 -90 {
lab=#net6}
N 0 -30 -0 20 {
lab=#net7}
N -60 -0 -0 -0 {
lab=#net7}
N -60 -120 0 -120 {
lab=#net6}
N -60 -240 -0 -240 {
lab=#net5}
N -60 -360 0 -360 {
lab=#net4}
N -60 -480 -0 -480 {
lab=#net3}
N -60 -720 0 -720 {
lab=#net1}
N -60 -600 -0 -600 {
lab=#net2}
N -180 -840 -120 -840 {
lab=b7}
N -180 -720 -120 -720 {
lab=b6}
N -180 -600 -120 -600 {
lab=b5}
N -180 -480 -120 -480 {
lab=b4}
N -180 -360 -120 -360 {
lab=b3}
N -180 -240 -120 -240 {
lab=b2}
N -180 -120 -120 -120 {
lab=b1}
N -180 -0 -120 -0 {
lab=b0}
N -180 120 0 120 {
lab=GND}
N 0 80 -0 120 {
lab=GND}
N -0 -840 120 -840 {
lab=OUT}
N -40 -780 -20 -780 {
lab=GND}
N -40 -780 -40 120 {
lab=GND}
N -40 -660 -20 -660 {
lab=GND}
N -40 -540 -20 -540 {
lab=GND}
N -40 -420 -20 -420 {
lab=GND}
N -40 -300 -20 -300 {
lab=GND}
N -40 -180 -20 -180 {
lab=GND}
N -40 -60 -20 -60 {
lab=GND}
N -40 50 -20 50 {
lab=GND}
N -90 -60 -90 -20 {
lab=GND}
N -90 -60 -40 -60 {
lab=GND}
N -90 -180 -90 -140 {
lab=GND}
N -90 -180 -40 -180 {
lab=GND}
N -90 -300 -90 -260 {
lab=GND}
N -90 -300 -40 -300 {
lab=GND}
N -90 -420 -90 -380 {
lab=GND}
N -90 -420 -40 -420 {
lab=GND}
N -90 -540 -90 -500 {
lab=GND}
N -90 -540 -40 -540 {
lab=GND}
N -90 -660 -90 -620 {
lab=GND}
N -90 -660 -40 -660 {
lab=GND}
N -90 -780 -90 -740 {
lab=GND}
N -90 -780 -40 -780 {
lab=GND}
N -90 -890 -90 -860 {
lab=GND}
N -90 -890 -40 -890 {
lab=GND}
N -40 -890 -40 -780 {
lab=GND}
C {devices/ipin.sym} -180 -840 0 0 {name=p1 lab=b7}
C {devices/ipin.sym} -180 -720 0 0 {name=p2 lab=b6}
C {devices/ipin.sym} -180 -600 0 0 {name=p3 lab=b5}
C {devices/ipin.sym} -180 -480 0 0 {name=p4 lab=b4}
C {devices/ipin.sym} -180 -360 0 0 {name=p5 lab=b3}
C {devices/ipin.sym} -180 -240 0 0 {name=p6 lab=b2}
C {devices/ipin.sym} -180 -120 0 0 {name=p7 lab=b1}
C {devices/ipin.sym} -180 0 0 0 {name=p8 lab=b0}
C {devices/ipin.sym} -180 120 0 0 {name=p9 lab=GND}
C {devices/opin.sym} 120 -840 0 0 {name=p10 lab=OUT}
C {sky130_fd_pr/res_high_po_0p35.sym} -90 -840 1 0 {name=R16
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} -90 -720 1 0 {name=R2
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} -90 -600 1 0 {name=R3
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} -90 -480 1 0 {name=R4
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} -90 -360 1 0 {name=R5
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} -90 -240 1 0 {name=R6
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} -90 -120 1 0 {name=R7
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} -90 0 1 0 {name=R8
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 0 50 0 0 {name=R1
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 0 -60 0 0 {name=R9
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 0 -180 0 0 {name=R10
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 0 -300 0 0 {name=R11
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 0 -420 0 0 {name=R12
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 0 -540 0 0 {name=R13
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 0 -660 0 0 {name=R14
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 0 -780 0 0 {name=R15
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
