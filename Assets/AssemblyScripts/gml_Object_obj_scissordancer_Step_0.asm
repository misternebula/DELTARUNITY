.localvar 0 arguments

:[0]
push.v self.dancetimer
pushi.e 1
add.i.v
pop.v.v self.dancetimer
push.v self.dancetimer
pushi.e 30
cmp.i.v GTE
bf [2]

:[1]
push.v self.dancetimer
pushi.e 75
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.image_index
push.d 0.25
add.d.v
pop.v.v self.image_index

:[5]
push.v self.dancetimer
pushi.e 112
cmp.i.v GTE
bf [7]

:[6]
push.v self.dancetimer
pushi.e 157
cmp.i.v LTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.image_index
push.d 0.25
sub.d.v
pop.v.v self.image_index

:[10]
push.v self.dancetimer
pushi.e 166
cmp.i.v GTE
bf [12]

:[11]
pushi.e 0
pop.v.i self.dancetimer

:[12]
push.v self.specturn
pushi.e 1
cmp.i.v EQ
bf [24]

:[13]
push.v self.x
push.v self.xstart
pushi.e 170
add.i.v
cmp.v.v GTE
bf [15]

:[14]
push.v self.y
push.v self.ystart
pushi.e 10
add.i.v
cmp.v.v LTE
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
push.v self.direction
pushi.e 90
sub.i.v
pop.v.v self.direction
push.v self.xstart
pushi.e 169
add.i.v
pop.v.v self.x

:[18]
push.v self.y
push.v self.ystart
pushi.e 160
add.i.v
cmp.v.v GTE
bf [20]

:[19]
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
push.v self.direction
pushi.e 90
sub.i.v
pop.v.v self.direction
push.v self.ystart
pushi.e 159
add.i.v
pop.v.v self.y

:[20]
push.v self.x
push.v self.xstart
cmp.v.v LTE
bf [22]

:[21]
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
push.v self.direction
pushi.e 90
sub.i.v
pop.v.v self.direction
push.v self.xstart
pushi.e 1
add.i.v
pop.v.v self.x

:[22]
push.v self.y
push.v self.ystart
cmp.v.v LTE
bf [24]

:[23]
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
push.v self.direction
pushi.e 90
sub.i.v
pop.v.v self.direction
push.v self.ystart
pushi.e 1
add.i.v
pop.v.v self.y

:[24]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.v self.sndcon
pushi.e 0
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 1
pop.v.i self.sndcon
pushi.e 0
pop.v.i self.myinteract
b [30]

:[29]
pushi.e 2
pop.v.i self.myinteract

:[30]
push.v self.sndcon
pushi.e 1
cmp.i.v GTE
bf [32]

:[31]
push.v self.sndcon
pushi.e 5
cmp.i.v LTE
b [33]

:[32]
push.e 0

:[33]
bf [36]

:[34]
push.v self.sndtimer
pushi.e 1
sub.i.v
pop.v.v self.sndtimer
push.v self.sndtimer
pushi.e 0
cmp.i.v LTE
bf [36]

:[35]
push.d 0.5
push.d 0.7
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.p
pushi.e 26
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.b
push.v self.p
push.v self.b
call.i snd_pitch(argc=2)
popz.v
push.v self.sndcon
pushi.e 1
add.i.v
pop.v.v self.sndcon
pushi.e 3
pop.v.i self.sndtimer

:[36]
push.v self.sndcon
pushi.e 6
cmp.i.v EQ
bf [39]

:[37]
push.v self.sndtimer
pushi.e 1
add.i.v
pop.v.v self.sndtimer
push.v self.sndtimer
pushi.e 15
cmp.i.v GTE
bf [39]

:[38]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.sndcon
pushi.e 0
pop.v.i self.sndtimer

:[39]
call.i scr_depth(argc=0)
popz.v
push.v self.bullet
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[40]
push.v self.x
push.v self.hspeed
add.v.v
push.v self.bullet
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.vspeed
add.v.v
push.v self.bullet
conv.v.i
pop.v.v [stacktop]self.y

:[end]