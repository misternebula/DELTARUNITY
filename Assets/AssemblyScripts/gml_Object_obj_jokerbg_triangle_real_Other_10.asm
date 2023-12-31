.localvar 0 arguments

:[0]
push.v self.rot
pushi.e 360
conv.i.d
push.v self.trimax
div.v.d
push.v self.i
mul.v.v
add.v.v
push.v self.radius
call.i lengthdir_x(argc=2)
pop.v.v self.newx1
push.v self.rot
pushi.e 360
conv.i.d
push.v self.trimax
div.v.d
push.v self.i
mul.v.v
add.v.v
push.v self.radius
pushi.e 2
conv.i.d
div.d.v
call.i lengthdir_y(argc=2)
pop.v.v self.newy1
push.v self.rot
pushi.e 360
conv.i.d
push.v self.trimax
div.v.d
push.v self.i
pushi.e 1
add.i.v
mul.v.v
add.v.v
push.v self.radius
call.i lengthdir_x(argc=2)
pop.v.v self.newx2
push.v self.rot
pushi.e 360
conv.i.d
push.v self.trimax
div.v.d
push.v self.i
pushi.e 1
add.i.v
mul.v.v
add.v.v
push.v self.radius
pushi.e 2
conv.i.d
div.d.v
call.i lengthdir_y(argc=2)
pop.v.v self.newy2
push.v self.newy1
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
push.v self.newy1
push.d 0.6
mul.d.v
pop.v.v self.newy1

:[2]
push.v self.newy2
pushi.e 0
cmp.i.v LTE
bf [4]

:[3]
push.v self.newy2
push.d 0.6
mul.d.v
pop.v.v self.newy2

:[4]
push.v self.blackon
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.dkblue
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
pop.v.i self.blackon
b [end]

:[6]
pushi.e 0
pop.v.i self.blackon
push.v self.dkblue2
call.i draw_set_color(argc=1)
popz.v

:[end]