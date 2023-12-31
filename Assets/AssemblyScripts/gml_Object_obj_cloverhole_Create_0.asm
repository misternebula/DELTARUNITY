.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.holecon
pushi.e 0
pop.v.i self.image_speed
pushi.e 9999
pop.v.i self.distance
pushi.e 0
pop.v.i self.type
pushi.e 80
pop.v.i self.maxdist
pushbltn.v self.room
pushi.e 81
cmp.i.v EQ
bf [7]

:[1]
push.v self.x
pushi.e 600
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i self.type
b [5]

:[3]
pushi.e 1
pop.v.i self.type
push.v self.x
pushi.e 1000
cmp.i.v GTE
bf [5]

:[4]
pushi.e 2
pop.v.i self.type

:[5]
pushglb.v global.plot
pushi.e 75
cmp.i.v GTE
bf [7]

:[6]
pushi.e 999
pop.v.i self.holecon

:[7]
pushi.e 529
pushi.e -1
pushi.e 0
pop.v.i [array]self.sprite_type
pushi.e 531
pushi.e -1
pushi.e 1
pop.v.i [array]self.sprite_type
pushi.e 530
pushi.e -1
pushi.e 2
pop.v.i [array]self.sprite_type

:[end]