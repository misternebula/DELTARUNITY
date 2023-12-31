.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 1
pop.v.i self.active
pushi.e 1
pop.v.i self.visible
push.v self.image_alpha
push.d 0.15
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [3]

:[2]
pushi.e 2
pop.v.i self.con

:[3]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[4]
push.v self.falltimer
pushi.e 1
add.i.v
pop.v.v self.falltimer
push.v self.falltimer
push.v self.fallspeed
cmp.v.v GTE
bf [12]

:[5]
push.v self.ypos
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 274
conv.i.v
push.v self.y
push.v self.sprite_height
push.d 1.5
mul.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_point(argc=5)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.ypos
pushi.e 1
add.i.v
pop.v.v self.ypos
b [11]

:[10]
pushi.e 1
pop.v.i self.halt

:[11]
pushi.e 0
pop.v.i self.falltimer

:[12]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.con

:[14]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [18]

:[15]
push.v self.image_alpha
push.d 0.2
cmp.d.v LTE
bf [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha

:[18]
pushi.e 188
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[19]
push.v 188.x
push.v 188.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 8
add.i.v
pop.v.v self.lx
push.v self.lx
push.v self.xpos
push.v self.sprite_width
mul.v.v
add.v.v
pop.v.v self.x
push.v 188.y
push.v 188.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 3
sub.i.v
push.v self.sprite_height
sub.v.v
pop.v.v self.yx
push.v self.yx
push.v self.ypos
push.v self.sprite_height
mul.v.v
add.v.v
pop.v.v self.y

:[20]
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [end]

:[21]
pushi.e 0
pop.v.i self.grazepoints
pushi.e 0
pop.v.i self.timepoints

:[end]