.localvar 0 arguments

:[0]
pushi.e 331
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.block
push.v self.image_xscale
push.v self.block
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.block
conv.v.i
pop.v.v [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.destroymarker
pushbltn.v self.room
pushi.e 89
cmp.i.v EQ
bf [end]

:[1]
pushi.e 80
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.talkto
push.v self.image_xscale
push.v self.talkto
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.talkto
conv.v.i
pop.v.v [stacktop]self.image_yscale
pushi.e 145
conv.i.v
push.v self.y
pushi.e 120
sub.i.v
push.v self.x
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.tree
push.v self.tree
conv.v.i
pushenv [3]

:[2]
call.i scr_depth(argc=0)
popz.v

:[3]
popenv [2]
pushi.e -5
pushi.e 237
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [end]

:[4]
push.v self.tree
conv.v.i
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
push.v self.block
conv.v.i
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]

:[end]