.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.qualify
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [11]

:[1]
push.v 326.y
push.v self.y
pushi.e 200
add.i.v
cmp.v.v GTE
bf [3]

:[2]
push.v self.last_touched
pushi.e 1
cmp.i.v NEQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.qualify
pushi.e 1
pop.v.i self.last_touched

:[6]
push.v 326.y
push.v self.y
pushi.e 200
add.i.v
cmp.v.v LTE
bf [8]

:[7]
push.v self.last_touched
pushi.e 0
cmp.i.v NEQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1
pop.v.i self.qualify
pushi.e 0
pop.v.i self.last_touched

:[11]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v self.last_touched
pushi.e -1
cmp.i.v NEQ
b [14]

:[13]
push.e 0

:[14]
bf [25]

:[15]
push.v 326.x
push.v self.x
pushi.e 200
add.i.v
cmp.v.v GTE
bf [17]

:[16]
push.v self.last_touched
pushi.e 3
cmp.i.v NEQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.i self.qualify
pushi.e 3
pop.v.i self.last_touched

:[20]
push.v 326.x
push.v self.x
pushi.e 200
add.i.v
cmp.v.v LTE
bf [22]

:[21]
push.v self.last_touched
pushi.e 2
cmp.i.v NEQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
pop.v.i self.qualify
pushi.e 2
pop.v.i self.last_touched

:[25]
push.v self.qualify
pushi.e 1
cmp.i.v EQ
bf [end]

:[26]
push.v self.object_index
conv.v.i
pushenv [29]

:[27]
push.v self.last_touched
pushi.e -1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 4
pop.v.i self.last_touched

:[29]
popenv [27]
push.v 176.max_battlealpha
push.d 1.9
cmp.d.v LT
bf [end]

:[30]
pushi.e 25
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 176
pushenv [33]

:[31]
push.v self.max_battlealpha
push.d 0.12
add.d.v
pop.v.v self.max_battlealpha
push.v self.max_battlealpha
push.d 1.9
cmp.d.v GT
bf [33]

:[32]
push.d 1.9
pop.v.d self.max_battlealpha

:[33]
popenv [31]

:[end]