.localvar 0 arguments

:[0]
push.v self.hcon
pushi.e 1
cmp.i.v EQ
bf [7]

:[1]
pushi.e 326
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[2]
push.v 326.x
pushi.e 220
cmp.i.v GTE
bf [4]

:[3]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.hcon
pushi.e 140
pop.v.i global.msc
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[7]
push.v self.hcon
pushi.e 2
cmp.i.v EQ
bf [12]

:[8]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
bf [12]

:[9]
pushglb.v global.plot
pushi.e 32
cmp.i.v LT
bf [11]

:[10]
pushi.e 32
pop.v.i global.plot

:[11]
pushi.e 3
pop.v.i self.hcon
pushi.e 0
pop.v.i global.interact

:[12]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [19]

:[13]
pushi.e 326
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[14]
push.v 326.y
pushi.e 200
cmp.i.v LTE
bf [16]

:[15]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i mus_volume(argc=3)
popz.v
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[19]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [23]

:[20]
pushi.e 326
pushenv [22]

:[21]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[22]
popenv [21]

:[23]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [27]

:[24]
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[25]
pushi.e 4
pop.v.i self.con
b [27]

:[26]
pushi.e 20
pop.v.i self.con

:[27]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [33]

:[28]
pushi.e 206
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.r
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]
push.v self.r
conv.v.i
pushenv [32]

:[31]
push.d 0.25
pop.v.d self.image_speed
pushi.e 20
conv.i.v
push.v 326.y
pushi.e 10
sub.i.v
pushi.e 420
conv.i.v
call.i scr_move_to_point_over_time(argc=3)
popz.v

:[32]
popenv [31]
pushi.e 5
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[33]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [37]

:[34]
push.v self.r
conv.v.i
pushenv [36]

:[35]
call.i scr_halt(argc=0)
popz.v
pushi.e 204
pop.v.i self.sprite_index

:[36]
popenv [35]
pushi.e 7
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[37]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [41]

:[38]
push.v self.r
conv.v.i
pushenv [40]

:[39]
pushi.e 0
pop.v.i self.visible

:[40]
popenv [39]
pushi.e 20
pop.v.i self.con

:[41]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [43]

:[42]
pushi.e 1
pop.v.i self.image_index
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 21
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[43]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [45]

:[44]
call.i snd_free_all(argc=0)
popz.v
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.f
push.d 0.025
push.v self.f
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 23
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[45]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [end]

:[46]
pushi.e 33
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 49
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]