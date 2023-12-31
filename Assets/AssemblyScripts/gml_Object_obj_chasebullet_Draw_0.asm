.localvar 0 arguments

:[0]
push.v self.dont
pushi.e 0
cmp.i.v EQ
bf [13]

:[1]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.futuredir
pushi.e 1
push.v self.image_alpha
sub.v.i
push.i 16777215
conv.i.v
push.v self.futuredir
pushi.e 3
push.v self.image_alpha
pushi.e 2
mul.i.v
sub.v.i
pushi.e 3
push.v self.image_alpha
pushi.e 2
mul.i.v
sub.v.i
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 417
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
push.v self.image_alpha
push.d 0.08
add.d.v
pop.v.v self.image_alpha
b [5]

:[4]
pushi.e 4
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pop.v.v self.futuredir
pushi.e 1
pop.v.i self.active
push.d -0.1
pop.v.d self.friction

:[5]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.futuredir
pushi.e 2
push.v self.image_alpha
sub.v.i
pushi.e 2
push.v self.image_alpha
sub.v.i
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
sub.i.v
cmp.v.v LT
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 680
add.i.v
cmp.v.v GT
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
sub.i.v
cmp.v.v LT
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 520
add.i.v
cmp.v.v GT
bf [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
pushi.e 0
pop.v.i self.dont

:[end]