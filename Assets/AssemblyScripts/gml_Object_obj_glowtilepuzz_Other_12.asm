.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.funbuffer
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 220
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.stepped
pushi.e -1
pop.v.i self.stepbuffer
pushi.e 238
pop.v.i self.sprite_index

:[2]
popenv [1]
push.v self.wonamt
push.v self.wonmax
cmp.v.v LT
bf [end]

:[3]
push.v self.wonamt
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 2
pop.v.i self.choice1
pushi.e 2
pop.v.i self.choice2
pushi.e 1
pop.v.i self.funtotal

:[5]
push.v self.wonamt
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.choice1
pushi.e 1
pop.v.i self.choice2
pushi.e 2
pop.v.i self.funtotal

:[7]
push.v self.wonamt
pushi.e 2
cmp.i.v GTE
bf [9]

:[8]
pushi.e 1
pop.v.i self.choice1
pushi.e 2
pop.v.i self.choice2
pushi.e 2
pop.v.i self.funtotal

:[9]
push.v self.choice1
pop.v.v self.choice3
pushbltn.v self.room
pushi.e 57
cmp.i.v EQ
bf [18]

:[10]
push.v self.wonamt
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 3
pop.v.i self.choice1
pushi.e 3
pop.v.i self.choice2
pushi.e 3
pop.v.i self.choice3
pushi.e 1
pop.v.i self.funtotal

:[12]
push.v self.wonamt
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 2
pop.v.i self.choice1
pushi.e 2
pop.v.i self.choice2
pushi.e 1
pop.v.i self.choice3
pushi.e 2
pop.v.i self.funtotal

:[14]
push.v self.wonamt
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
pushi.e 2
pop.v.i self.choice1
pushi.e 3
pop.v.i self.choice2
pushi.e 4
pop.v.i self.choice3
pushi.e 3
pop.v.i self.funtotal

:[16]
push.v self.wonamt
pushi.e 3
cmp.i.v GTE
bf [18]

:[17]
pushi.e 1
pop.v.i self.choice1
pushi.e 0
pop.v.i self.choice2
pushi.e 4
pop.v.i self.choice3
pushi.e 3
pop.v.i self.funtotal

:[18]
pushi.e -1
push.v self.choice1
conv.v.i
push.v [array]self.tileid
conv.v.i
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.active
pushi.e 243
pop.v.i self.sprite_index

:[20]
popenv [19]
pushi.e -1
push.v self.choice2
conv.v.i
push.v [array]self.tileid
conv.v.i
pushenv [22]

:[21]
pushi.e 1
pop.v.i self.active
pushi.e 243
pop.v.i self.sprite_index

:[22]
popenv [21]
pushi.e -1
push.v self.choice3
conv.v.i
push.v [array]self.tileid
conv.v.i
pushenv [24]

:[23]
pushi.e 1
pop.v.i self.active
pushi.e 243
pop.v.i self.sprite_index

:[24]
popenv [23]

:[end]