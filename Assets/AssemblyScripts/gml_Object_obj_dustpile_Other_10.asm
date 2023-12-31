.localvar 0 arguments

:[0]
push.v self.bust
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 113
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 6
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.bust
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [end]

:[3]
pushi.e 150
conv.i.v
push.v self.y
pushi.e 20
add.i.v
pushi.e 25
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 20
add.i.v
push.v self.i
pushi.e 6
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[end]