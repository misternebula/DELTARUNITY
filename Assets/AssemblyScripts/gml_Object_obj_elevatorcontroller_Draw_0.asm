.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
push.v self.cur_bg_c
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1001
conv.i.v
call.i draw_background_ext(argc=8)
popz.v
push.v self.rectcon
pushi.e 1
cmp.i.v GTE
bf [4]

:[1]
pushi.e 1
push.v self.rect_alpha
sub.v.i
pushi.e 0
conv.i.v
push.v self.cur_bg_c
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
conv.i.v
pushi.e -60
push.v self.recty
add.v.i
push.v self.i
push.v self.rectspacing
mul.v.v
add.v.v
pushi.e 180
conv.i.v
pushi.e -100
push.v self.recty
add.v.i
push.v self.i
push.v self.rectspacing
mul.v.v
add.v.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e -60
push.v self.recty
add.v.i
push.v self.i
push.v self.rectspacing
mul.v.v
add.v.v
pushi.e 460
conv.i.v
pushi.e -100
push.v self.recty
add.v.i
push.v self.i
push.v self.rectspacing
mul.v.v
add.v.v
pushi.e 640
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
push.v self.doorx
pushi.e 0
cmp.i.v GT
bf [end]

:[5]
pushi.e 1
conv.i.v
push.v self.cur_bg_c
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 352
conv.i.v
pushi.e 302
push.v self.doorx
sub.v.i
pushi.e 0
conv.i.v
pushi.e 349
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.cur_bg_c
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 352
conv.i.v
pushi.e 318
push.v self.doorx
add.v.i
pushi.e 1
conv.i.v
pushi.e 349
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 500
conv.i.v
pushi.e 318
push.v self.doorx
add.v.i
pushi.e 352
conv.i.v
pushi.e 318
push.v self.doorx
sub.v.i
call.i draw_rectangle(argc=5)
popz.v

:[end]