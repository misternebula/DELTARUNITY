.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.grazed
pushi.e 5
pop.v.i self.grazepoints
pushi.e 5
pop.v.i self.timepoints
pushi.e 0
pop.v.i self.target
pushi.e 1
pop.v.i self.dont
pushi.e 120
pop.v.i self.inv
pushi.e 1
pop.v.i self.damage
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.image_alpha
push.v self.y
pushi.e 50
cmp.i.v LT
bf [2]

:[1]
pushi.e 50
pop.v.i self.y

:[2]
pushi.e 184
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 647
push.v self.g
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 1.4
push.v self.g
conv.v.i
pop.v.d [stacktop]self.image_alpha
push.d 0.25
push.v self.g
conv.v.i
pop.v.d [stacktop]self.xrate
push.d 0.25
push.v self.g
conv.v.i
pop.v.d [stacktop]self.yrate
pushi.e 0
push.v self.g
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 0
push.v self.g
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.special
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]