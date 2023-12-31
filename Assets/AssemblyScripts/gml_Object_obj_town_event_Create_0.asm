.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.choicetimer
pushi.e 0
pop.v.i self.flush
pushi.e 0
pop.v.i self.con
pushbltn.v self.room
pushi.e 11
cmp.i.v EQ
bf [4]

:[1]
pushi.e -5
pushi.e 271
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 85
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bnpc
pushi.e 276
push.v self.bnpc
conv.v.i
pop.v.i [stacktop]self.sprite_index
b [4]

:[3]
pushi.e 84
conv.i.v
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 7
add.i.v
call.i instance_create(argc=3)
pop.v.v self.bnpc
pushi.e 280
push.v self.bnpc
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[4]
pushbltn.v self.room
pushi.e 13
cmp.i.v EQ
bf [8]

:[5]
pushi.e 306
conv.i.v
pushi.e 57
conv.i.v
pushi.e 292
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.policewindow
push.v self.policewindow
conv.v.i
pushenv [7]

:[6]
push.i 940000
pop.v.i self.depth

:[7]
popenv [6]

:[8]
pushbltn.v self.room
pushi.e 16
cmp.i.v EQ
bf [end]

:[9]
pushi.e 134
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.overlay
pushi.e 326
pushenv [11]

:[10]
pushi.e 1
pop.v.i self.bg

:[11]
popenv [10]
push.v self.overlay
conv.v.i
pushenv [13]

:[12]
push.d 0.4
pop.v.d self.image_alpha
push.d 0.1
pop.v.d self.ss
pushi.e 856
pop.v.i self.sprite_index
pushi.e 1000
pop.v.i self.depth

:[13]
popenv [12]

:[end]