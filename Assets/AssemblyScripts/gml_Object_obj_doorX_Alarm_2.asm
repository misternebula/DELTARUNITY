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
pushi.e 13
cmp.i.v EQ
bf [6]

:[5]
pushi.e 26
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v self.room
pushi.e 26
cmp.i.v EQ
bf [8]

:[7]
pushi.e 13
conv.i.v
call.i room_goto(argc=1)
popz.v

:[8]
pushbltn.v self.room
pushi.e 15
cmp.i.v EQ
bf [10]

:[9]
pushi.e 23
conv.i.v
call.i room_goto(argc=1)
popz.v

:[10]
pushbltn.v self.room
pushi.e 23
cmp.i.v EQ
bf [12]

:[11]
pushi.e 15
conv.i.v
call.i room_goto(argc=1)
popz.v

:[12]
pushbltn.v self.room
pushi.e 29
cmp.i.v EQ
bf [14]

:[13]
pushi.e 14
conv.i.v
call.i room_goto(argc=1)
popz.v

:[14]
pushbltn.v self.room
pushi.e 14
cmp.i.v EQ
bf [16]

:[15]
pushi.e 29
conv.i.v
call.i room_goto(argc=1)
popz.v

:[16]
pushbltn.v self.room
pushi.e 11
cmp.i.v EQ
bf [18]

:[17]
pushi.e 22
conv.i.v
call.i room_goto(argc=1)
popz.v

:[18]
pushbltn.v self.room
pushi.e 22
cmp.i.v EQ
bf [20]

:[19]
pushi.e 11
conv.i.v
call.i room_goto(argc=1)
popz.v

:[20]
pushbltn.v self.room
pushi.e 9
cmp.i.v EQ
bf [22]

:[21]
pushi.e 24
conv.i.v
call.i room_goto(argc=1)
popz.v

:[22]
pushbltn.v self.room
pushi.e 24
cmp.i.v EQ
bf [24]

:[23]
pushi.e 9
conv.i.v
call.i room_goto(argc=1)
popz.v

:[24]
pushbltn.v self.room
pushi.e 106
cmp.i.v EQ
bf [26]

:[25]
pushi.e 105
conv.i.v
call.i room_goto(argc=1)
popz.v

:[26]
pushbltn.v self.room
pushi.e 105
cmp.i.v EQ
bf [28]

:[27]
pushi.e 106
conv.i.v
call.i room_goto(argc=1)
popz.v

:[28]
pushbltn.v self.room
pushi.e 86
cmp.i.v EQ
bf [30]

:[29]
pushi.e 85
conv.i.v
call.i room_goto(argc=1)
popz.v

:[30]
pushbltn.v self.room
pushi.e 85
cmp.i.v EQ
bf [32]

:[31]
pushi.e 86
conv.i.v
call.i room_goto(argc=1)
popz.v

:[32]
pushbltn.v self.room
pushi.e 96
cmp.i.v EQ
bf [34]

:[33]
pushi.e 90
conv.i.v
call.i room_goto(argc=1)
popz.v

:[34]
pushbltn.v self.room
pushi.e 90
cmp.i.v EQ
bf [38]

:[35]
pushglb.v global.plot
pushi.e 120
cmp.i.v LT
bf [37]

:[36]
pushi.e 91
conv.i.v
call.i room_goto(argc=1)
popz.v
b [38]

:[37]
pushi.e 96
conv.i.v
call.i room_goto(argc=1)
popz.v

:[38]
pushbltn.v self.room
pushi.e 93
cmp.i.v EQ
bf [42]

:[39]
push.v self.y
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [41]

:[40]
pushi.e 0
pushi.e -5
pushi.e 292
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 291
pop.v.i [array]global.flag
pushi.e 90
conv.i.v
call.i room_goto(argc=1)
popz.v
b [42]

:[41]
pushi.e 94
conv.i.v
call.i room_goto(argc=1)
popz.v

:[42]
pushbltn.v self.room
pushi.e 104
cmp.i.v EQ
bf [46]

:[43]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
bf [45]

:[44]
call.i room_goto_previous(argc=0)
popz.v
b [46]

:[45]
pushi.e 97
conv.i.v
call.i room_goto(argc=1)
popz.v

:[46]
pushbltn.v self.room
pushi.e 97
cmp.i.v EQ
bf [50]

:[47]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
bf [49]

:[48]
call.i room_goto_next(argc=0)
popz.v
b [50]

:[49]
pushi.e 104
conv.i.v
call.i room_goto(argc=1)
popz.v

:[50]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bt [52]

:[51]
pushbltn.v self.room
pushi.e 94
cmp.i.v EQ
b [53]

:[52]
push.e 1

:[53]
bf [end]

:[54]
push.v self.y
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [60]

:[55]
pushi.e 0
pushi.e -5
pushi.e 292
pop.v.i [array]global.flag
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [57]

:[56]
pushi.e 0
pushi.e -5
pushi.e 291
pop.v.i [array]global.flag
pushi.e 90
conv.i.v
call.i room_goto(argc=1)
popz.v

:[57]
pushbltn.v self.room
pushi.e 94
cmp.i.v EQ
bf [59]

:[58]
pushi.e 5
pushi.e -5
pushi.e 291
pop.v.i [array]global.flag
pushi.e 93
conv.i.v
call.i room_goto(argc=1)
popz.v

:[59]
b [end]

:[60]
pushi.e 215
pushenv [62]

:[61]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[62]
popenv [61]

:[end]