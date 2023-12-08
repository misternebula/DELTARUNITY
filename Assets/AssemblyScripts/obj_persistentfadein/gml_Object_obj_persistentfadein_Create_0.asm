.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_blend
push.d -0.08
pop.v.d self.fadespeed
pushi.e 1
pop.v.i self.image_alpha
pushi.e 10
pushbltn.v self.room_width
pushi.e 4
conv.i.d
div.d.v
add.v.i
pop.v.v self.length
pushi.e 10
pushbltn.v self.room_height
pushi.e 4
conv.i.d
div.d.v
add.v.i
pop.v.v self.height
pushi.e -20
pop.v.i self.x
pushi.e -20
pop.v.i self.y

:[end]