.localvar 0 arguments

:[0]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.active
pushi.e 2
cmp.i.v EQ
bf [10]

:[3]
push.v self.target
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[4]
push.v self.frame
push.v self.framespeed
add.v.v
pop.v.v self.frame
push.v self.frame
push.v self.maxframe
pushi.e 1
sub.i.v
cmp.v.v GTE
bf [6]

:[5]
pushi.e 1
pop.v.i self.done
push.v self.maxframe
pushi.e 1
sub.i.v
pop.v.v self.frame

:[6]
push.v self.sprite_index
push.v self.target
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.frame
push.v self.target
conv.v.i
pop.v.v [stacktop]self.image_index
b [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.done
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[11]
push.v self.target
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[12]
push.v self.sprite_index
push.v self.target
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.target
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.target
conv.v.i
pop.v.i [stacktop]self.image_index
b [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
pushi.e 2
pop.v.i self.active

:[end]