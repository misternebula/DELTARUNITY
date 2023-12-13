.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.active
pushi.e 19
push.v self.f
mul.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
add.v.v
pop.v.v self.xx
pushi.e 20
push.v self.f
mul.v.i
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
add.v.v
pop.v.v self.yy
push.v self.xx
call.i round(argc=1)
pop.v.v self.xx
push.v self.yy
call.i round(argc=1)
pop.v.v self.yy
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 6
conv.i.v
push.v self.yy
pushi.e 5
push.v self.f
mul.v.i
sub.v.v
push.v self.xx
pushi.e 10
push.v self.f
mul.v.i
add.v.v
call.i instance_create(argc=3)
pop.v.v self.writer
call.i scr_facechoice(argc=0)
popz.v
push.v self.writer
conv.v.i
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.dialoguer

:[3]
popenv [2]

:[4]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
pushi.e 6
conv.i.v
push.v self.yy
pushi.e 150
push.v self.f
mul.v.i
add.v.v
push.v self.xx
pushi.e 10
push.v self.f
mul.v.i
add.v.v
call.i instance_create(argc=3)
pop.v.v self.writer
push.v self.skippable
push.v self.writer
conv.v.i
pop.v.v [stacktop]self.skippable
call.i scr_facechoice(argc=0)
popz.v
push.v self.writer
conv.v.i
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.dialoguer

:[7]
popenv [6]

:[8]
push.v self.writer
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
pushglb.v global.fc
pushi.e 0
cmp.i.v NEQ
b [11]

:[10]
push.e 0

:[11]
bf [end]

:[12]
push.v self.writer
conv.v.i
pushenv [15]

:[13]
pushi.e 1
pop.v.i self.dialoguer
push.v self.originalcharline
pushi.e 33
cmp.i.v EQ
bf [15]

:[14]
pushi.e 26
pop.v.i self.charline

:[15]
popenv [13]

:[end]