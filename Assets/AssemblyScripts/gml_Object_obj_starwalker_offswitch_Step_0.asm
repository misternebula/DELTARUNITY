.localvar 0 arguments

:[0]
push.v self.loc_check
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1
pop.v.i self.loc_check
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [4]

:[2]
push.v 326.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [4]

:[3]
pushi.e 240
pop.v.i self.x

:[4]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [8]

:[5]
pushi.e 0
pop.v.i self.myinteract
pushi.e 326
pushenv [7]

:[6]
pushi.e 5
pop.v.i self.onebuffer

:[7]
popenv [6]

:[8]
push.v self.bellcon
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
push.v self.belltimer
pushi.e 1
add.i.v
pop.v.v self.belltimer
push.v self.belltimer
pushi.e 30
cmp.i.v GTE
bf [end]

:[10]
pushi.e 0
pop.v.i self.belltimer
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.bellcon
pushi.e 0
pop.v.i self.image_index

:[end]