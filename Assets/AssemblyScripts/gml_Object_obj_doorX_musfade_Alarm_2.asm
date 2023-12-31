.localvar 0 arguments

:[0]
pushi.e 24
pop.v.i global.entrance
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushbltn.v self.room
pushi.e 45
cmp.i.v EQ
bf [2]

:[1]
pushi.e 47
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushbltn.v self.room
pushi.e 47
cmp.i.v EQ
bf [4]

:[3]
pushi.e 45
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
pushbltn.v self.room
pushi.e 59
cmp.i.v EQ
bf [6]

:[5]
pushi.e 133
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v self.room
pushi.e 142
cmp.i.v EQ
bf [8]

:[7]
pushi.e 82
conv.i.v
call.i room_goto(argc=1)
popz.v

:[8]
pushbltn.v self.room
pushi.e 89
cmp.i.v EQ
bf [15]

:[9]
pushi.e 50
conv.i.v
call.i random(argc=1)
call.i ceil(argc=1)
pop.v.v self.ch
push.v self.ch
pushi.e 50
cmp.i.v EQ
bf [11]

:[10]
pushi.e -5
pushi.e 910
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 142
conv.i.v
call.i room_goto(argc=1)
popz.v
b [15]

:[14]
pushi.e 88
conv.i.v
call.i room_goto(argc=1)
popz.v

:[15]
pushbltn.v self.room
pushi.e 7
cmp.i.v EQ
bf [17]

:[16]
pushi.e 5
conv.i.v
call.i room_goto(argc=1)
popz.v

:[17]
pushbltn.v self.room
pushi.e 5
cmp.i.v EQ
bf [19]

:[18]
pushi.e 7
conv.i.v
call.i room_goto(argc=1)
popz.v

:[19]
pushbltn.v self.room
pushi.e 14
cmp.i.v EQ
bf [21]

:[20]
pushi.e 29
conv.i.v
call.i room_goto(argc=1)
popz.v

:[21]
pushbltn.v self.room
pushi.e 29
cmp.i.v EQ
bf [23]

:[22]
pushi.e 14
conv.i.v
call.i room_goto(argc=1)
popz.v

:[23]
pushbltn.v self.room
pushi.e 114
cmp.i.v EQ
bf [27]

:[24]
push.v self.x
pushi.e 1300
cmp.i.v GTE
bf [26]

:[25]
pushi.e 109
conv.i.v
call.i room_goto(argc=1)
popz.v
b [27]

:[26]
pushi.e 68
conv.i.v
call.i snd_play(argc=1)
popz.v

:[27]
pushbltn.v self.room
pushi.e 123
cmp.i.v EQ
bf [29]

:[28]
pushi.e 134
conv.i.v
call.i room_goto(argc=1)
popz.v

:[29]
pushbltn.v self.room
pushi.e 109
cmp.i.v EQ
bf [38]

:[30]
pushi.e -5
pushi.e 239
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e 107
conv.i.v
call.i room_goto(argc=1)
popz.v

:[32]
pushi.e -5
pushi.e 239
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 114
conv.i.v
call.i room_goto(argc=1)
popz.v

:[34]
pushi.e -5
pushi.e 239
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [36]

:[35]
pushi.e 123
conv.i.v
call.i room_goto(argc=1)
popz.v

:[36]
pushi.e -5
pushi.e 239
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [38]

:[37]
pushi.e 111
conv.i.v
call.i room_goto(argc=1)
popz.v

:[38]
pushbltn.v self.room
pushi.e 107
cmp.i.v EQ
bf [40]

:[39]
pushi.e 0
pushi.e -5
pushi.e 239
pop.v.i [array]global.flag
pushi.e 109
conv.i.v
call.i room_goto(argc=1)
popz.v

:[40]
pushbltn.v self.room
pushi.e 114
cmp.i.v EQ
bf [42]

:[41]
pushi.e 1
pushi.e -5
pushi.e 239
pop.v.i [array]global.flag
pushi.e 109
conv.i.v
call.i room_goto(argc=1)
popz.v

:[42]
pushbltn.v self.room
pushi.e 111
cmp.i.v EQ
bf [44]

:[43]
pushi.e 3
pushi.e -5
pushi.e 239
pop.v.i [array]global.flag
pushi.e 109
conv.i.v
call.i room_goto(argc=1)
popz.v

:[44]
pushbltn.v self.room
pushi.e 113
cmp.i.v EQ
bf [end]

:[45]
pushi.e 104
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]