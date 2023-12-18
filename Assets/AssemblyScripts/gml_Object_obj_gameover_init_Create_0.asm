.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.visible
pushglb.v global.screenshot
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.bg
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.Z_COUNT

:[end]