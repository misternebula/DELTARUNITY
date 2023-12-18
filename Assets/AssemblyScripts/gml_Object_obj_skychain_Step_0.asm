.localvar 0 arguments

:[0]
push.v self.direction
pop.v.v self.image_angle
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 2
cmp.i.v GTE
bf [3]

:[2]
push.v self.sons
pushi.e 1
add.i.v
pop.v.v self.sons
pushi.e 242
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.sons
conv.v.i
pop.v.v [array]self.son
push.v self.image_angle
pushi.e -1
push.v self.sons
conv.v.i
push.v [array]self.son
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.direction
pushi.e -1
push.v self.sons
conv.v.i
push.v [array]self.son
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.speed
push.d 2.5
div.d.v
pushi.e -1
push.v self.sons
conv.v.i
push.v [array]self.son
conv.v.i
pop.v.v [stacktop]self.speed
pushi.e 1
pushi.e -1
push.v self.sons
conv.v.i
push.v [array]self.son
conv.v.i
pop.v.i [stacktop]self.active
pushi.e 10
pushi.e -1
push.v self.sons
conv.v.i
push.v [array]self.son
conv.v.i
pop.v.i [stacktop]self.damage
pushi.e -1
push.v self.sons
conv.v.i
push.v [array]self.son
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 0
pop.v.i self.timer

:[3]
push.v self.sons
pushi.e 30
cmp.i.v GTE
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]