.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner
push.v self.siner2
pushi.e 1
add.i.v
pop.v.v self.siner2
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushbltn.v self.room_height
pushi.e 10
add.i.v
pushbltn.v self.room_width
pushi.e 10
add.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.destroy
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LTE
bf [3]

:[2]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[3]
push.v self.image_alpha
pushi.e 2
conv.i.d
div.d.v
push.v self.image_blend
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -100
push.v self.siner
add.v.i
call.i round(argc=1)
pushi.e -100
push.v self.siner
add.v.i
call.i round(argc=1)
pushi.e 1012
conv.i.v
call.i draw_background_tiled_ext(argc=7)
popz.v
push.v self.image_alpha
push.v self.image_blend
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -210
push.v self.siner2
sub.v.i
call.i round(argc=1)
pushi.e -200
push.v self.siner2
sub.v.i
call.i round(argc=1)
pushi.e 1012
conv.i.v
call.i draw_background_tiled_ext(argc=7)
popz.v
push.v self.siner
pushi.e 100
cmp.i.v GTE
bf [5]

:[4]
push.v self.siner
pushi.e 100
sub.i.v
pop.v.v self.siner

:[5]
push.v self.siner2
pushi.e 100
cmp.i.v GTE
bf [7]

:[6]
push.v self.siner2
pushi.e 100
sub.i.v
pop.v.v self.siner2

:[7]
push.v self.destroy
pushi.e 1
cmp.i.v EQ
bf [end]

:[8]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]