.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.offx
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [2]

:[1]
pushi.e 863
pop.v.i self.sprite_index

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 180
add.i.v
push.v self.offx
sub.v.v
pop.v.v self.x
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 100
add.i.v
pop.v.v self.y
pushi.e 326
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.bg

:[4]
popenv [3]

:[end]