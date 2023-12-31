.localvar 0 arguments

:[0]
push.v self.jumpsiner
pushi.e 1
add.i.v
pop.v.v self.jumpsiner
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.active
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
b [6]

:[5]
pushi.e 1
pop.v.i self.active

:[6]
push.v 188.y
push.v 188.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 20
sub.i.v
pop.v.v self.bottomy
push.v self.jumpsiner
push.v self.jumpspeed
div.v.v
call.i sin(argc=1)
push.v self.jumpheight
mul.v.v
pop.v.v self.jsine
push.v self.bottomy
push.v self.jsine
add.v.v
push.v self.jumpheight
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.image_index
push.v self.jsine
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
pushi.e 2
pop.v.i self.image_index

:[8]
push.v self.jsine
push.v self.jumpheight
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [10]

:[9]
pushi.e 0
pop.v.i self.image_index

:[10]
push.v self.x
push.v 188.x
push.v 188.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 40
sub.i.v
cmp.v.v LTE
bf [end]

:[11]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[end]