.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 215
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [3]

:[2]
pushi.e 331
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.pwall
pushi.e 3
push.v self.pwall
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[3]
pushi.e 0
pop.v.i self.lecturecon
pushglb.v global.plot
pushi.e 42
cmp.i.v GTE
bt [5]

:[4]
pushi.e -5
pushi.e 211
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
pushi.e 100
pop.v.i self.lecturecon

:[8]
call.i scr_depth(argc=0)
popz.v

:[end]