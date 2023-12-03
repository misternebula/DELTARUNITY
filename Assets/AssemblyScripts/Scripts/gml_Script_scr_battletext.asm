.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
pushglb.v global.fc
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 6
conv.i.v
push.v self.yy
pushi.e 376
add.i.v
push.v self.xx
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.battlewriter

:[2]
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 6
conv.i.v
push.v self.yy
pushi.e 376
add.i.v
push.v self.xx
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.battlewriter

:[4]
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.xx
pushi.e 26
add.i.v
call.i instance_create(argc=3)
pop.v.v self.myface
push.v self.battlewriter
conv.v.i
pushenv [10]

:[5]
pushi.e 1
pop.v.i self.dialoguer
pushi.e 1
pop.v.i self.facer
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.originalcharline
pushi.e 33
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 26
pop.v.i self.charline

:[10]
popenv [5]
push.v self.battlewriter
ret.v

:[end]