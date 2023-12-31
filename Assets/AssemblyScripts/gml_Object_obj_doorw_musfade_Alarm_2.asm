.localvar 0 arguments

:[0]
pushi.e 23
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
pushi.e 114
cmp.i.v EQ
bf [2]

:[1]
pushi.e 110
conv.i.v
call.i room_goto(argc=1)
popz.v
pushi.e 1
pushi.e -5
pushi.e 239
pop.v.i [array]global.flag

:[2]
pushbltn.v self.room
pushi.e 123
cmp.i.v EQ
bf [4]

:[3]
pushi.e 110
conv.i.v
call.i room_goto(argc=1)
popz.v
pushi.e 2
pushi.e -5
pushi.e 239
pop.v.i [array]global.flag

:[4]
pushbltn.v self.room
pushi.e 110
cmp.i.v EQ
bf [9]

:[5]
pushi.e -5
pushi.e 239
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 114
conv.i.v
call.i room_goto(argc=1)
popz.v

:[7]
pushi.e -5
pushi.e 239
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 123
conv.i.v
call.i room_goto(argc=1)
popz.v

:[9]
pushbltn.v self.room
pushi.e 104
cmp.i.v EQ
bf [11]

:[10]
pushi.e 113
conv.i.v
call.i room_goto(argc=1)
popz.v

:[11]
pushbltn.v self.room
pushi.e 113
cmp.i.v EQ
bf [end]

:[12]
pushi.e 104
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]