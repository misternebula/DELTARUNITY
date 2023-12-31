.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.con
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.xpos
pushi.e -8
pop.v.i self.ypos
pushi.e 5
pop.v.i self.fallspeed
pushi.e 0
pop.v.i self.falltimer
pushi.e 0
pop.v.i self.halt

:[end]