.localvar 0 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.angledraw
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.throwready
pushi.e 1
cmp.i.v EQ
bf [8]

:[2]
push.v self.throwalpha
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
push.v self.throwalpha
push.d 0.125
add.d.v
pop.v.v self.throwalpha

:[4]
push.v self.throwalpha
call.i draw_set_alpha(argc=1)
popz.v
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 16711680
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [7]

:[6]
pushi.e 2
pop.v.i self.fr
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.v self.ry
push.v self.ly
push.v self.i
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
mul.v.v
add.v.v
pushi.e -1
push.v self.i
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
conv.v.i
push.v [array]self.ralyoff
add.v.v
pushi.e 20
sub.i.v
push.v self.rx
push.v self.lx
push.v self.i
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
mul.v.v
add.v.v
call.i draw_circle(argc=4)
popz.v
pushi.e 2
conv.i.v
push.v self.ry
push.v self.ly
push.v self.i
pushi.e 1
add.i.v
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
mul.v.v
add.v.v
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
conv.v.i
push.v [array]self.ralyoff
add.v.v
pushi.e 20
sub.i.v
push.v self.rx
push.v self.lx
push.v self.i
pushi.e 1
add.i.v
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
mul.v.v
add.v.v
push.v self.ry
push.v self.ly
push.v self.i
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
mul.v.v
add.v.v
pushi.e -1
push.v self.i
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
conv.v.i
push.v [array]self.ralyoff
add.v.v
pushi.e 20
sub.i.v
push.v self.rx
push.v self.lx
push.v self.i
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
mul.v.v
add.v.v
call.i draw_line_width(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 255
conv.i.v
push.v self.angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.ry
pushi.e 20
sub.i.v
push.v self.rx
pushi.e 0
conv.i.v
pushi.e 545
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[8]
push.v self.throwready
pushi.e 0
cmp.i.v EQ
bf [end]

:[9]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.ry
pushi.e 20
sub.i.v
push.v self.rx
pushi.e 0
conv.i.v
pushi.e 545
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]