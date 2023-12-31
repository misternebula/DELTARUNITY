.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.fighting
pushglb.v global.specialbattle
pushi.e 0
cmp.i.v EQ
bt [3]

:[1]
pushglb.v global.specialbattle
pushi.e 2
cmp.i.v EQ
bt [3]

:[2]
pushglb.v global.specialbattle
pushi.e 3
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [end]

:[5]
pushglb.v global.specialbattle
pushi.e 2
cmp.i.v EQ
bf [19]

:[6]
pushi.e 326
pushenv [8]

:[7]
pushi.e 1
pop.v.i self.cutscene
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.x
pop.v.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.y
pop.v.v self.y

:[8]
popenv [7]
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pushenv [10]

:[9]
pushi.e -5
pushi.e 1
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.x
pop.v.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.y
pop.v.v self.y

:[10]
popenv [9]
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
pushenv [12]

:[11]
pushi.e -5
pushi.e 2
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.x
pop.v.v self.x
pushi.e -5
pushi.e 2
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.y
pop.v.v self.y

:[12]
popenv [11]
pushi.e 165
pushenv [14]

:[13]
call.i scr_caterpillar_interpolate(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 30
conv.i.v
pushi.e 326
conv.i.v
call.i scr_pan_to_obj(argc=2)
popz.v
pushi.e 326
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.visible

:[16]
popenv [15]
pushi.e 165
pushenv [18]

:[17]
pushi.e 1
pop.v.i self.visible

:[18]
popenv [17]

:[19]
pushi.e 302
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 234
pushenv [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [20]
pushi.e 190
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]
pushi.e 205
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]
call.i instance_destroy(argc=0)
popz.v

:[end]