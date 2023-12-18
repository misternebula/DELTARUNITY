.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 120
cmp.i.v EQ
bf [end]

:[1]
pushi.e -5
pushi.e 245
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushi.e 0
pop.v.i self.bluhtotal
pushi.e 143
pushenv [5]

:[3]
push.v self.bluh
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v 29.bluhtotal
pushi.e 1
add.i.v
pop.v.v 29.bluhtotal

:[5]
popenv [3]
push.v self.bluhtotal
pushi.e 3
cmp.i.v GTE
bf [end]

:[6]
pushi.e 15
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 86
conv.i.v
pushi.e 980
conv.i.v
pushi.e 480
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.chest
pushi.e 1
pushi.e -5
pushi.e 245
pop.v.i [array]global.flag

:[end]