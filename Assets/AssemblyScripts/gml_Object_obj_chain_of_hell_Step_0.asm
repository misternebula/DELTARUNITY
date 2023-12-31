.localvar 0 arguments

:[0]
push.v self.chaincon
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.chaincon

:[2]
push.v self.chaincon
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
push.v self.path_hellchain_hor1
pop.v.v self.mypath1
push.v self.path_hellchain_hor2
pop.v.v self.mypath2
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.path_hellchain_a
pop.v.v self.mypath1
push.v self.path_hellchain_b
pop.v.v self.mypath2
pushi.e 8
pop.v.i self.factor

:[5]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.maxspeed
push.v self.mypath1
call.i path_start(argc=4)
popz.v
pushi.e 2
pop.v.i self.chaincon
pushi.e 0
pop.v.i self.chaintimer

:[6]
push.v self.chaincon
pushi.e 2
cmp.i.v EQ
bf [17]

:[7]
push.v self.direction
pop.v.v self.image_angle
push.v self.chaintimer
pushi.e 1
add.i.v
pop.v.v self.chaintimer
push.v self.chaintimer
push.v self.chainrate
cmp.v.v GTE
bf [9]

:[8]
pushi.e 241
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.chain_number
conv.v.i
pop.v.v [array]self.chain
push.v self.image_angle
pushi.e -1
push.v self.chain_number
conv.v.i
push.v [array]self.chain
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.chain_max
pushi.e 1
add.i.v
pop.v.v self.chain_max
push.v self.chain_number
pushi.e 1
add.i.v
pop.v.v self.chain_number
pushi.e 0
pop.v.i self.chaintimer

:[9]
push.v self.path_position
pushi.e 1
cmp.i.v GTE
bf [11]

:[10]
pushi.e 0
pop.v.i self.path_speed
pushi.e 12
pop.v.i self.shakeamt
push.v 305.x
pop.v.v self.remx
push.v 305.y
pop.v.v self.remy
push.v 303.x
pop.v.v self.remx_box
push.v 303.y
pop.v.v self.remy_box
push.d 2.1
pop.v.d self.chaincon

:[11]
push.v self.type
pushi.e 88
cmp.i.v EQ
bf [17]

:[12]
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 2
cmp.i.v GTE
bf [14]

:[13]
push.v self.path_position
push.d 0.8
cmp.d.v LTE
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=3)
pop.v.v self.cchoice
push.v self.image_angle
pushi.e 36
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.ychoice
push.v self.image_angle
pushi.e 36
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.xchoice
pushi.e 193
conv.i.v
push.v self.y
push.v self.ychoice
push.v self.cchoice
mul.v.v
add.v.v
push.v self.x
push.v self.xchoice
push.v self.cchoice
mul.v.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bul
pushi.e 1
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.active
pushi.e 679
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.image_angle
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e 0
pop.v.i self.btimer

:[17]
push.v self.chaincon
push.d 2.1
cmp.d.v EQ
bf [20]

:[18]
push.v self.remx
pop.v.v 305.x
push.v self.remy
pop.v.v 305.y
push.v self.remx_box
pop.v.v 303.x
push.v self.remy_box
pop.v.v 303.y
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.shakedir
push.v self.shakedir
push.v self.shakeamt
call.i lengthdir_x(argc=2)
pop.v.v self.xshake
push.v self.shakedir
push.v self.shakeamt
call.i lengthdir_y(argc=2)
pop.v.v self.yshake
push.v 305.x
push.v self.xshake
add.v.v
pop.v.v 305.x
push.v 305.y
push.v self.yshake
add.v.v
pop.v.v 305.y
push.v 303.x
push.v self.xshake
add.v.v
pop.v.v 303.x
push.v 303.y
push.v self.yshake
add.v.v
pop.v.v 303.y
push.v self.shakeamt
pushi.e 2
sub.i.v
pop.v.v self.shakeamt
push.v self.shakeamt
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
pushi.e 3
pop.v.i self.chaincon

:[20]
push.v self.chaincon
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
pushi.e 5
pop.v.i self.chaincon
pushi.e 1
pop.v.i self.smashtime
pushi.e 0
pop.v.i self.bullettimer

:[22]
push.v self.chaincon
pushi.e 5
cmp.i.v EQ
bf [25]

:[23]
push.v self.bullettimer
pushi.e 1
add.i.v
pop.v.v self.bullettimer
push.v self.bullettimer
pushi.e 30
cmp.i.v GTE
bf [25]

:[24]
pushi.e 6
pop.v.i self.chaincon

:[25]
push.v self.chaincon
pushi.e 6
cmp.i.v EQ
bf [35]

:[26]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.maxspeed
push.v self.factor
div.v.v
push.v self.mypath2
call.i path_start(argc=4)
popz.v
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [30]

:[27]
push.v self.maxspeed
pop.v.v 303.maxspeed
push.v self.mypath2
pop.v.v 303.mypath2
push.v self.factor
pop.v.v 303.factor
pushi.e 303
pushenv [29]

:[28]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.maxspeed
push.v self.factor
div.v.v
push.v self.mypath2
call.i path_start(argc=4)
popz.v

:[29]
popenv [28]

:[30]
push.v self.chain_number
pushi.e 1
sub.i.v
pop.v.v self.chain_number
push.v self.chain_max
pushi.e 1
sub.i.v
pop.v.v self.chain_max
pushi.e 0
pop.v.i self.framerule
push.v self.chainrate
pushi.e 1
cmp.i.v EQ
bf [34]

:[31]
pushi.e -1
push.v self.chain_number
conv.v.i
push.v [array]self.chain
conv.v.i
pushenv [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [32]
push.v self.chain_number
pushi.e 1
sub.i.v
pop.v.v self.chain_number
push.v self.chain_max
pushi.e 1
sub.i.v
pop.v.v self.chain_max

:[34]
pushi.e 10
pop.v.i self.chaincon

:[35]
push.v self.chaincon
pushi.e 10
cmp.i.v EQ
bf [47]

:[36]
push.v self.path_position
push.d 0.8
cmp.d.v GTE
bf [38]

:[37]
pushi.e 0
pop.v.i self.smashtime

:[38]
push.v self.framerule
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
push.v self.direction
pushi.e 180
add.i.v
pop.v.v self.image_angle

:[40]
pushi.e 1
pop.v.i self.framerule
push.v self.chaintimer
pushi.e 1
sub.i.v
pop.v.v self.chaintimer
push.v self.chaintimer
pushi.e 0
cmp.i.v LTE
bf [45]

:[41]
push.v self.chainrate
push.v self.factor
mul.v.v
pop.v.v self.chaintimer
push.v self.chain_number
pushi.e 0
cmp.i.v GTE
bf [45]

:[42]
pushi.e -1
push.v self.chain_number
conv.v.i
push.v [array]self.chain
conv.v.i
pushenv [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
popenv [43]
push.v self.chain_number
pushi.e 1
sub.i.v
pop.v.v self.chain_number
push.v self.chain_max
pushi.e 1
sub.i.v
pop.v.v self.chain_max

:[45]
push.v self.path_position
pushi.e 1
cmp.i.v GTE
bf [47]

:[46]
pushi.e 11
pop.v.i self.chaincon

:[47]
push.v self.chaincon
pushi.e 11
cmp.i.v EQ
bf [48]

:[48]
push.v self.smashtime
pushi.e 1
cmp.i.v EQ
bf [end]

:[49]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [end]

:[50]
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 10
cmp.i.v EQ
bf [54]

:[51]
pushi.e 0
pop.v.i self.i

:[52]
push.v self.i
pushi.e 1
cmp.i.v LT
bf [54]

:[53]
pushi.e 210
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
push.v self.i
pushi.e 120
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.regbul
pushi.e 2
push.v self.regbul
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 0.2
push.v self.regbul
conv.v.i
pop.v.d [stacktop]self.gravity
pushi.e 679
push.v self.regbul
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 270
push.v self.regbul
conv.v.i
pop.v.i [stacktop]self.image_angle
push.v self.regbul
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [52]

:[54]
push.v self.btimer
pushi.e 20
cmp.i.v GTE
bf [end]

:[55]
pushi.e 0
pop.v.i self.btimer
pushi.e 0
pop.v.i self.i

:[56]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [end]

:[57]
pushi.e 210
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 260
add.i.v
push.v self.i
pushi.e 120
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.regbul
pushi.e 2
push.v self.regbul
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 0.2
push.v self.regbul
conv.v.i
pop.v.d [stacktop]self.gravity
pushi.e 679
push.v self.regbul
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 270
push.v self.regbul
conv.v.i
pop.v.i [stacktop]self.image_angle
push.v self.regbul
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [56]

:[end]