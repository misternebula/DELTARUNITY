.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [5]

:[1]
push.v 326.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [3]

:[2]
pushi.e 0
pop.v.i self.sidechoice

:[3]
push.v 326.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [5]

:[4]
pushi.e 1
pop.v.i self.sidechoice

:[5]
pushbltn.v self.room
pushi.e 94
cmp.i.v EQ
bf [12]

:[6]
push.v 326.x
pushi.e 100
cmp.i.v GTE
bf [8]

:[7]
pushi.e 2
pop.v.i self.sidechoice

:[8]
push.v 326.x
pushi.e 260
cmp.i.v GTE
bf [10]

:[9]
pushi.e 3
pop.v.i self.sidechoice

:[10]
push.v 326.x
pushi.e 420
cmp.i.v GTE
bf [12]

:[11]
pushi.e 4
pop.v.i self.sidechoice

:[12]
pushi.e 91
pop.v.i self.roomchoice
pushbltn.v self.room
pushi.e 94
cmp.i.v EQ
bf [14]

:[13]
pushi.e 94
pop.v.i self.roomchoice

:[14]
push.v self.sidechoice
push.v self.proper_choice
cmp.v.v EQ
bf [23]

:[15]
pushi.e -5
pushi.e 291
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 292
pop.v.i [array]global.flag
pushi.e -5
pushi.e 291
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [19]

:[16]
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [18]

:[17]
pushi.e 93
pop.v.i self.roomchoice
b [19]

:[18]
pushi.e 5
pushi.e -5
pushi.e 291
pop.v.i [array]global.flag
pushi.e 94
pop.v.i self.roomchoice

:[19]
pushi.e -5
pushi.e 291
push.v [array]global.flag
pushi.e 9
cmp.i.v EQ
bf [22]

:[20]
pushi.e 96
pop.v.i self.roomchoice
pushglb.v global.plot
pushi.e 120
cmp.i.v LT
bf [22]

:[21]
pushi.e 120
pop.v.i global.plot

:[22]
b [30]

:[23]
pushi.e -5
pushi.e 291
push.v [array]global.flag
pop.v.v self.rem291
pushi.e 0
pushi.e -5
pushi.e 291
pop.v.i [array]global.flag
pushi.e -5
pushi.e 292
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e -5
pushi.e 293
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [25]

:[24]
pushi.e 3
pushi.e -5
pushi.e 292
pop.v.i [array]global.flag

:[25]
pushbltn.v self.room
pushi.e 94
cmp.i.v EQ
bf [27]

:[26]
pushi.e 3
pushi.e -5
pushi.e 292
pop.v.i [array]global.flag

:[27]
pushi.e -5
pushi.e 292
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [30]

:[28]
pushi.e 0
pushi.e -5
pushi.e 292
pop.v.i [array]global.flag
pushi.e 92
pop.v.i self.roomchoice
push.v self.rem291
pushi.e 5
cmp.i.v GTE
bf [30]

:[29]
pushi.e 5
pushi.e -5
pushi.e 291
pop.v.i [array]global.flag
pushi.e 95
pop.v.i self.roomchoice

:[30]
push.v self.roomchoice
call.i room_goto(argc=1)
popz.v

:[end]