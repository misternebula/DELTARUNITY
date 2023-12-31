.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e -5
pushi.e 229
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 84
conv.i.v
push.v self.y
pushi.e 80
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.npc
pushi.e 211
push.v self.npc
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 999
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]