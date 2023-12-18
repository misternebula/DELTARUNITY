.localvar 0 arguments

:[0]
push.v self.con
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
call.i draw_self(argc=0)
popz.v

:[2]
push.v self.con
pushi.e 2
cmp.i.v GTE
bf [end]

:[3]
push.v self.explodedraw
pushi.e 1
add.i.v
pop.v.v self.explodedraw
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 1.5
push.v self.explodedraw
pushi.e 10
conv.i.d
div.d.v
sub.v.d
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.explodedraw
pushi.e 2
mul.i.v
add.v.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]