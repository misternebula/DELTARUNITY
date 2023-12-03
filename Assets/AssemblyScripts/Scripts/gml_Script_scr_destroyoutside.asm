.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
push.v self.sprite_width
sub.v.v
cmp.v.v LT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 640
add.i.v
push.v self.sprite_width
add.v.v
cmp.v.v GT
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
push.v self.sprite_height
sub.v.v
cmp.v.v LT
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 480
add.i.v
push.v self.sprite_height
add.v.v
cmp.v.v GT
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]