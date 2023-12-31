.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 50
cmp.i.v GTE
bf [6]

:[1]
pushi.e -1
pop.v.i self.con
pushi.e -1
pop.v.i self.leavecon
pushi.e -1
pop.v.i self.boxcon
pushi.e -1
pop.v.i self.boxon
pushi.e 1
pop.v.i self.image_index
pushi.e -5
pushi.e 212
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [5]

:[2]
pushi.e 2
pop.v.i self.image_index
pushi.e 219
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[5]
b [7]

:[6]
pushi.e 331
conv.i.v
pushi.e 120
conv.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.groundblock
pushi.e 2
push.v self.groundblock
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.leavecon
pushi.e 0
pop.v.i self.boxcon
pushi.e 0
pop.v.i self.boxon

:[7]
pushi.e 0
pop.v.i self.image_speed

:[end]