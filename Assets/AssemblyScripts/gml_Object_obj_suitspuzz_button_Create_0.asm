.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.press_timer
pushi.e 0
pop.v.i self.boss
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.d_index
push.v self.id
pushi.e 0
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
cmp.v.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.boss
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.image_index
push.v self.image_index
pop.v.v self.d_index

:[2]
push.v self.id
pushi.e 1
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
cmp.v.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.type
pushi.e 2
pop.v.i self.image_index
push.v self.image_index
pop.v.v self.d_index

:[4]
push.v self.id
pushi.e 2
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
cmp.v.v EQ
bf [end]

:[5]
pushi.e 2
pop.v.i self.type
pushi.e 4
pop.v.i self.image_index
push.v self.image_index
pop.v.v self.d_index

:[end]