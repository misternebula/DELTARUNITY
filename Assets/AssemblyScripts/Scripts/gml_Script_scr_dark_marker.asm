.localvar 0 arguments

:[0]
pushi.e 78
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i instance_create(argc=3)
pop.v.v self.thismarker
push.v self.thismarker
conv.v.i
pushenv [2]

:[1]
pushbltn.v self.argument2
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[2]
popenv [1]
push.v self.thismarker
ret.v

:[end]