.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.rot
pushi.e 0
pop.v.i self.xscale
pushi.e 0
pop.v.i self.yscale
pushi.e 320
pop.v.i self.xcen
pushi.e 240
pop.v.i self.ycen
pushi.e 360
pop.v.i self.radius
push.d 0.1
conv.d.v
push.i 4210752
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.dkblue
push.d 0.5
conv.d.v
push.i 4210752
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.dkblue2
push.d 0.5
conv.d.v
push.i 4210752
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.dkblue3
push.d 0.2
conv.d.v
pushi.e 0
conv.i.v
push.v self.dkblue3
call.i merge_color(argc=3)
pop.v.v self.dkblue3
pushi.e 0
pop.v.i self.bgx
pushi.e 0
pop.v.i self.rotcounter
pushi.e 1
pop.v.i self.rotfps
pushi.e 0
pop.v.i self.rotspeed
pushi.e 0
pop.v.i self.bgx
pushi.e 0
pop.v.i self.check
pushi.e 0
pop.v.i self.on
pushi.e 0
pop.v.i self.bgalpha

:[end]