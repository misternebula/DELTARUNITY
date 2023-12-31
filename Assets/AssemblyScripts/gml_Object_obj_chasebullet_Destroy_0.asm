.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 183
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.af
push.v self.sprite_index
push.v self.af
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.depth
push.v self.af
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.futuredir
push.v self.af
conv.v.i
pop.v.v [stacktop]self.image_angle

:[end]