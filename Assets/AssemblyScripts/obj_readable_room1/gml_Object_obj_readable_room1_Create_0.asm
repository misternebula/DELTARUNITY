.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.read
pushi.e 0
pop.v.i self.tempvar
pushbltn.v self.room
pushi.e 38
cmp.i.v EQ
bf [end]

:[1]
pushi.e -5
pushi.e 100
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushi.e 800
conv.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.shine
push.d 0.1
push.v self.shine
conv.v.i
pop.v.d [stacktop]self.image_speed

:[end]