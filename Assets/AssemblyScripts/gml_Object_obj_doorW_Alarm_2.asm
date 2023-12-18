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
pushi.e 13
cmp.i.v EQ
bf [2]

:[1]
pushi.e 18
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushbltn.v self.room
pushi.e 18
cmp.i.v EQ
bf [4]

:[3]
pushi.e 13
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
pushbltn.v self.room
pushi.e 11
cmp.i.v EQ
bf [6]

:[5]
pushi.e 27
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v self.room
pushi.e 27
cmp.i.v EQ
bf [8]

:[7]
pushi.e 11
conv.i.v
call.i room_goto(argc=1)
popz.v

:[8]
pushbltn.v self.room
pushi.e 9
cmp.i.v EQ
bf [10]

:[9]
pushi.e 10
conv.i.v
call.i room_goto(argc=1)
popz.v

:[10]
pushbltn.v self.room
pushi.e 10
cmp.i.v EQ
bf [end]

:[11]
pushi.e 9
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]