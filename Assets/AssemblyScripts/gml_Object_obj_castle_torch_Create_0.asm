.localvar 0 arguments

:[0]
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushbltn.v self.room
pushi.e 114
cmp.i.v GTE
bf [end]

:[1]
pushi.e 694
pop.v.i self.sprite_index

:[end]