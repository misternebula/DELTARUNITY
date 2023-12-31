.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 185
conv.i.v
pushi.e 200
conv.i.v
pushi.e 400
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s
pushi.e 209
conv.i.v
pushi.e 200
conv.i.v
pushi.e 300
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.r
pushi.e 78
pushenv [3]

:[2]
call.i scr_depth(argc=0)
popz.v
pushi.e 12
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[3]
popenv [2]
pushi.e 2
pop.v.i self.con

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[5]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v 326.x
pushi.e 100
cmp.i.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [14]

:[9]
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.con
pushi.e 14
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
push.v self.dmax
cmp.v.v LT
bf [14]

:[11]
pushi.e 618
conv.i.v
pushi.e -100
conv.i.v
pushi.e 400
push.v self.i
pushi.e 120
mul.i.v
add.v.i
call.i scr_dark_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.d
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.d
conv.v.i
pushenv [13]

:[12]
pushi.e 10
pop.v.i self.vspeed
call.i scr_depth(argc=0)
popz.v

:[13]
popenv [12]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [10]

:[14]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [21]

:[15]
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
push.v self.dmax
cmp.v.v LT
bf [20]

:[17]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.d
conv.v.i
pushenv [19]

:[18]
call.i scr_halt(argc=0)
popz.v

:[19]
popenv [18]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [16]

:[20]
pushi.e 5
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[21]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [23]

:[22]
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "obj_lancerchase2_slash_Step_0_gml_43_0"@4388
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerchase2_slash_Step_0_gml_44_0"@4389
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 7
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.doo
pushi.e 1
push.v self.doo
conv.v.i
pop.v.i [stacktop]self.side

:[23]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [25]

:[24]
call.i d_ex(argc=0)
conv.v.b
not.b
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 0
pop.v.i global.interact
pushi.e 181
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 8
pop.v.i self.con

:[28]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [32]

:[29]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 0
pop.v.i self.i

:[30]
push.v self.i
push.v self.dmax
cmp.v.v LT
bf [32]

:[31]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.d
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.v self.siner
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.i.v [stacktop]self.x
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [30]

:[32]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [38]

:[33]
pushi.e 0
pop.v.i self.dtimer
pushi.e 0
pop.v.i self.dsiner
push.v 326.y
pushi.e 2640
cmp.i.v LTE
bf [38]

:[34]
pushi.e 0
pop.v.i self.i

:[35]
push.v self.i
pushi.e 19
cmp.i.v LT
bf [37]

:[36]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.dactive
push.v self.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dsiner
pushi.e 618
conv.i.v
pushi.e 20
push.v self.i
pushi.e 140
mul.i.v
add.v.i
pushi.e -100
conv.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dl
pushi.e 618
conv.i.v
pushi.e 20
push.v self.i
pushi.e 140
mul.i.v
add.v.i
pushi.e 660
conv.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dr
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [35]

:[37]
pushi.e 21
pop.v.i self.con

:[38]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [end]

:[39]
push.v self.dtimer
pushi.e 1
add.i.v
pop.v.v self.dtimer
pushi.e 0
pop.v.i self.i

:[40]
push.v self.i
pushi.e 19
cmp.i.v LT
bf [end]

:[41]
push.v 326.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dl
conv.v.i
push.v [stacktop]self.y
pushi.e 80
add.i.v
cmp.v.v LT
bf [43]

:[42]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.dactive

:[43]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dactive
pushi.e 1
cmp.i.v EQ
bf [47]

:[44]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dsiner
pushi.e 140
cmp.i.v LT
bf [46]

:[45]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.dsiner
pushi.e 10
add.i.v
pop.i.v [array]self.dsiner

:[46]
pushi.e -100
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dsiner
add.v.i
push.v self.dtimer
push.v self.i
pushi.e 6
mul.i.v
add.v.v
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dl
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 660
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dsiner
sub.v.i
push.v self.dtimer
push.v self.i
pushi.e 6
mul.i.v
add.v.v
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dr
conv.v.i
pop.v.v [stacktop]self.x

:[47]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [40]

:[end]