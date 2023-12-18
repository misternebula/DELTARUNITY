.localvar 0 arguments

:[0]
push.v self.target
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.target
conv.v.i
push.v [stacktop]self.image_index
pop.v.v self.image_index
push.v self.target
conv.v.i
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index

:[2]
push.v self.siner
push.v self.flashspeed
add.v.v
pop.v.v self.siner
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.flashcolor
pushi.e 1
conv.i.v
call.i d3d_set_fog(argc=4)
popz.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i d3d_set_fog(argc=4)
popz.v
push.v self.siner
pushi.e 4
cmp.i.v GT
bf [4]

:[3]
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 0
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]