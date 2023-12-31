.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.eye_angle
pushi.e 0
pop.v.i self.eye_radius
pushi.e 0
pop.v.i self.draw_eye
pushi.e 0
pop.v.i self.fadecon
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
bf [end]

:[1]
pushi.e 99
pop.v.i self.con

:[end]