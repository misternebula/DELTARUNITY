.localvar 0 arguments

:[0]
pushi.e 326
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 326
conv.i.v
call.i distance_to_object(argc=1)
pop.v.v self.distance
b [3]

:[2]
pushi.e 999
pop.v.i self.distance

:[3]
push.v self.holecon
pushi.e 0
cmp.i.v EQ
bf [6]

:[4]
push.v self.distance
push.v self.maxdist
cmp.v.v LTE
bf [6]

:[5]
pushi.e 1
pop.v.i self.holecon
pushi.e 0
pop.v.i self.image_index
pushi.e 528
pop.v.i self.sprite_index

:[6]
push.v self.holecon
pushi.e 1
cmp.i.v EQ
bf [13]

:[7]
push.v self.distance
push.v self.maxdist
pushi.e 20
add.i.v
cmp.v.v LTE
bf [11]

:[8]
push.v self.image_index
push.d 0.5
add.d.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 10
cmp.i.v GTE
bf [10]

:[9]
pushi.e 0
pop.v.i self.image_index
pushi.e -1
push.v self.type
conv.v.i
push.v [array]self.sprite_type
pop.v.v self.sprite_index
pushi.e 2
pop.v.i self.holecon

:[10]
b [13]

:[11]
push.v self.image_index
push.d 0.5
sub.d.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 0
cmp.i.v LTE
bf [13]

:[12]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.holecon

:[13]
push.v self.holecon
pushi.e 2
cmp.i.v EQ
bf [end]

:[14]
push.v self.image_index
push.d 0.334
add.d.v
pop.v.v self.image_index
push.v self.distance
push.v self.maxdist
pushi.e 10
add.i.v
cmp.v.v GT
bf [end]

:[15]
pushi.e 528
pop.v.i self.sprite_index
pushi.e 10
pop.v.i self.image_index
pushi.e 1
pop.v.i self.holecon

:[end]