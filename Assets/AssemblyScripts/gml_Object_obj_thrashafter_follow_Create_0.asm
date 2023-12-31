.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i self.followcon
pushi.e 0
pop.v.i self.followtimer
pushi.e 0
pop.v.i self.followbuffer
pushi.e 0
pop.v.i self.treecon
pushi.e 0
pop.v.i self.speclaugh
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e -5
pushi.e 229
push.v [array]global.flag
pushi.e 99
cmp.i.v GTE
bf [2]

:[1]
pushi.e 999
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[2]
pushbltn.v self.room
pushi.e 99
cmp.i.v EQ
bf [8]

:[3]
pushi.e 703
conv.i.v
pushi.e 72
conv.i.v
pushi.e 440
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.tree
pushi.e -5
pushi.e 229
push.v [array]global.flag
pushi.e 6
cmp.i.v GTE
bf [5]

:[4]
pushi.e 1
push.v self.tree
conv.v.i
pop.v.i [stacktop]self.image_index

:[5]
push.v self.tree
conv.v.i
pushenv [7]

:[6]
push.i 400000
pop.v.i self.depth

:[7]
popenv [6]

:[8]
pushbltn.v self.room
pushi.e 101
cmp.i.v EQ
bf [end]

:[9]
pushi.e 134
conv.i.v
pushi.e 0
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bg
push.v self.bg
conv.v.i
pushenv [11]

:[10]
pushi.e 700
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
push.d 0.5
pop.v.d self.ss
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[11]
popenv [10]
pushi.e 326
pushenv [13]

:[12]
pushi.e 1
pop.v.i self.bg

:[13]
popenv [12]

:[end]