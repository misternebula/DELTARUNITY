.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
push.d 0.3
pop.v.d self.image_alpha
pushi.e 0
pop.v.i self.timer
pushi.e 15
pop.v.i self.maxtimer
pushi.e 1
pop.v.i self.growcon
pushi.e 0
pop.v.i self.fullgrow
pushi.e 0
pop.v.i self.keep
pushi.e 0
pop.v.i self.megakeep
pushi.e 0
pop.v.i self.image_speed
push.d 0.5
conv.d.v
push.i 65280
conv.i.v
push.i 32768
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[end]