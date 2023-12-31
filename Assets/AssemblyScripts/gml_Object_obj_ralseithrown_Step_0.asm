.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.con
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
push.v self.direction
pop.v.v self.image_angle

:[5]
push.v self.x
push.v self.xx
pushi.e 700
add.i.v
cmp.v.v GT
bt [7]

:[6]
push.v self.y
push.v self.yy
pushi.e 40
sub.i.v
cmp.v.v LT
b [8]

:[7]
push.e 1

:[8]
bf [11]

:[9]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.speed
push.v self.xx
pushi.e 40
sub.i.v
pop.v.v self.x
push.v 204.y
pop.v.v self.y
pushi.e 482
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_angle
pushi.e 20
pop.v.i self.hspeed
pushi.e 10
pop.v.i self.con

:[11]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [26]

:[12]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.x
push.v 204.x
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [26]

:[13]
push.v self.collided
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_ralseithrown_slash_Step_0_gml_23_0"@8285
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[15]
pushi.e 204
pushenv [17]

:[16]
pushi.e 1
pop.v.i self.visible

:[17]
popenv [16]
pushi.e 203
pushenv [19]

:[18]
pushi.e 1
pop.v.i self.visible

:[19]
popenv [18]
pushi.e 253
pushenv [21]

:[20]
pushi.e 1
pop.v.i self.actcon
pushi.e 1
pop.v.i self.visible

:[21]
popenv [20]
pushi.e 257
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]
pushi.e 256
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]
call.i instance_destroy(argc=0)
popz.v

:[26]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[27]
push.v self.x
push.v self.xx
pushi.e 40
sub.i.v
cmp.v.v LT
bt [29]

:[28]
push.v self.y
push.v self.yy
pushi.e 520
add.i.v
cmp.v.v GT
b [30]

:[29]
push.e 1

:[30]
bf [end]

:[31]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.speed
push.v self.xx
pushi.e 40
sub.i.v
pop.v.v self.x
push.v 204.y
pop.v.v self.y
pushi.e 482
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_angle
pushi.e 20
pop.v.i self.hspeed
pushi.e 10
pop.v.i self.con

:[end]