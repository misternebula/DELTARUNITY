.localvar 0 arguments

:[0]
push.v self.dont
pushi.e 0
cmp.i.v EQ
bf [18]

:[1]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [11]

:[2]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
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
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [6]

:[3]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 3
pop.v.i self.vspeed
push.d -0.5
pop.v.d self.gravity

:[5]
b [11]

:[6]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [10]

:[7]
push.v 305.y
pushi.e 8
add.i.v
push.v self.y
cmp.v.v LT
bf [9]

:[8]
pushi.e 1
pop.v.i self.vspeed
push.d -0.2
pop.v.d self.gravity
b [10]

:[9]
pushi.e -2
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.gravity

:[10]
pushi.e 1
pop.v.i self.active

:[11]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
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
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [14]

:[12]
push.v self.speed
pushi.e 8
cmp.i.v GT
bf [14]

:[13]
pushi.e 8
pop.v.i self.speed

:[14]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 500
add.i.v
cmp.v.v GT
bf [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
sub.i.v
cmp.v.v LT
bf [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
pushi.e 0
pop.v.i self.dont

:[end]