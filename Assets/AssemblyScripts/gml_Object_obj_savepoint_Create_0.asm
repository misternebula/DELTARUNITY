.localvar 0 arguments

:[0]
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
push.l 3478247328
pop.v.l self.mydialoguer
call.i scr_depth(argc=0)
popz.v
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[2]
pushbltn.v self.room
pushi.e 126
cmp.i.v EQ
bf [end]

:[3]
pushglb.v global.plot
pushi.e 240
cmp.i.v GTE
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]