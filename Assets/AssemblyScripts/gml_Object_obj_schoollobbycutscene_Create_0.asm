.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.ran
pushi.e 0
pop.v.i self.dex
pushi.e 0
pop.v.i self.tsouth
pushi.e 0
pop.v.i self.teast
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.type
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i global.facing

:[2]
pushglb.v global.plot
pushi.e 2
cmp.i.v LT
bf [8]

:[3]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 326
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]
pushi.e 95
conv.i.v
pushi.e 360
conv.i.v
pushi.e 460
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.t
push.v self.t
conv.v.i
pushenv [7]

:[6]
pushi.e -2
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed
pushi.e 10000
pop.v.i self.depth

:[7]
popenv [6]
pushi.e 85
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i self.type

:[8]
pushglb.v global.plot
pushi.e 3
cmp.i.v EQ
bf [18]

:[9]
pushi.e 2
pop.v.i self.type
pushi.e 326
pushenv [11]

:[10]
pushi.e 0
pop.v.i self.visible
push.v 105.x
pop.v.v self.x
push.v 105.y
pop.v.v self.y

:[11]
popenv [10]
pushi.e 837
conv.i.v
push.v 326.y
push.v 326.x
call.i scr_marker(argc=3)
pop.v.v self.k
push.v self.k
conv.v.i
pushenv [13]

:[12]
call.i scr_depth(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 174
conv.i.v
pushi.e 192
conv.i.v
pushi.e 240
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.s
push.v self.s
conv.v.i
pushenv [15]

:[14]
call.i scr_depth(argc=0)
popz.v
push.v self.depth
pushi.e 5
sub.i.v
pop.v.v self.depth

:[15]
popenv [14]
pushi.e 1
pop.v.i global.interact
pushi.e 90
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]
pushi.e 336
conv.i.v
pushi.e 200
conv.i.v
pushi.e 110
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.doorsolid
push.d 0.1
pop.v.d self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[18]
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [23]

:[19]
pushi.e 106
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.sunset
push.v self.sunset
conv.v.i
pushenv [21]

:[20]
push.d 0.4
pop.v.d self.image_alpha
pushi.e 2000
pop.v.i self.depth

:[21]
popenv [20]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_is_playing(argc=1)
conv.v.b
not.b
bf [23]

:[22]
push.s "mus_birdnoise.ogg"@3694
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
push.d 0.7
conv.d.v
push.d 0.6
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong

:[23]
pushglb.v global.plot
pushi.e 251
cmp.i.v GTE
bf [end]

:[24]
pushi.e 4
pop.v.i self.type

:[end]