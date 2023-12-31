.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.fire
pushi.e 0
pop.v.i self.special
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.timer
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.type
pushi.e 100
pop.v.i self.damage
pushi.e 0
pop.v.i self.grazed
pushi.e 4
pop.v.i self.grazepoints
pushi.e 2
pop.v.i self.timepoints
pushi.e 60
pop.v.i self.inv
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
pop.v.i self.target
pushi.e 0
pop.v.i self.sndcon
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
add.v.v
cmp.v.v LT
bf [end]

:[1]
pushi.e 578
pop.v.i self.sprite_index

:[end]