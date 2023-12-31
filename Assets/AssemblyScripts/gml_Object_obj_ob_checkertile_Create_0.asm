.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.timer
pushi.e -5
pushi.e 1
push.v [array]global.maxhp
pushi.e 6
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.damage
pushi.e 3
pop.v.i self.target
pushbltn.v self.room
pushi.e 65
cmp.i.v EQ
bf [end]

:[1]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.x

:[end]