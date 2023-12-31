.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.hscroll
pushi.e 1
add.i.v
pop.v.v self.hscroll
push.v self.hscroll
pushi.e 240
cmp.i.v GT
bf [2]

:[1]
push.v self.hscroll
pushi.e 240
sub.i.v
pop.v.v self.hscroll

:[2]
push.v self.adjust
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 255
conv.i.v
pushi.e 160
push.v self.siner
pushi.e 32
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 60
mul.i.v
add.v.i
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i make_color_hsv(argc=3)
pop.v.v self.colcol
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
pushi.e 60
add.i.v
pushi.e 255
conv.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i make_color_hsv(argc=3)
call.i __background_set_colour(argc=1)
popz.v

:[4]
push.v self.adjust
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.d 0.06
conv.d.v
push.i 16777215
conv.i.v
push.v self.colcol
call.i merge_color(argc=3)
pop.v.v self.colcol
push.d 0.06
conv.d.v
pushi.e 0
conv.i.v
call.i __background_get_colour(argc=0)
call.i merge_color(argc=3)
call.i __background_set_colour(argc=1)
popz.v

:[6]
push.v self.adjust
pushi.e 2
cmp.i.v EQ
bf [10]

:[7]
push.v self.slowdown
pushi.e 1
cmp.i.v LT
bf [9]

:[8]
push.v self.slowdown
push.d 0.02
add.d.v
pop.v.v self.slowdown

:[9]
push.v self.siner
push.v self.slowdown
sub.v.v
pop.v.v self.siner
push.v self.bgsiner
push.v self.slowdown
pushi.e 16
conv.i.d
div.d.v
sub.v.v
pop.v.v self.bgsiner
push.d 0.03
conv.d.v
push.i 16777215
conv.i.v
call.i __background_get_colour(argc=0)
call.i merge_color(argc=3)
call.i __background_set_colour(argc=1)
popz.v

:[10]
push.v self.bgsiner
push.d 0.0625
add.d.v
pop.v.v self.bgsiner
push.v self.bgsiner
pushi.e 7
cmp.i.v GT
bf [12]

:[11]
push.v self.bgsiner
pushi.e 7
sub.i.v
pop.v.v self.bgsiner

:[12]
pushi.e 1010
pop.v.i self.bg
push.d 0.7
push.v self.eyebody
mul.v.d
push.v self.colcol
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
push.v self.siner
sub.v.i
pushi.e 0
push.v self.siner
sub.v.i
push.v self.bg
call.i draw_background_tiled_ext(argc=7)
popz.v
push.d 0.3
push.v self.eyebody
mul.v.d
push.v self.colcol
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
push.v self.siner
add.v.i
pushi.e -240
push.v self.hscroll
add.v.i
push.v self.bg
call.i draw_background_tiled_ext(argc=7)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 280
conv.i.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 280
conv.i.v
pushi.e 999
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
push.v self.colcol
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
push.v self.bgsiner
pushi.e 280
mul.i.v
pushi.e 7
conv.i.d
div.d.v
sub.v.i
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.colcol
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 280
push.v self.bgsiner
pushi.e 280
mul.i.v
pushi.e 7
conv.i.d
div.d.v
sub.v.i
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.5
conv.d.v
push.v self.colcol
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
push.v self.bgsiner
pushi.e 280
mul.i.v
pushi.e 7
conv.i.d
div.d.v
sub.v.i
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 12
mul.i.v
add.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.5
conv.d.v
push.v self.colcol
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 280
push.v self.bgsiner
pushi.e 280
mul.i.v
pushi.e 7
conv.i.d
div.d.v
sub.v.i
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 12
mul.i.v
add.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.5
conv.d.v
push.v self.colcol
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
push.v self.bgsiner
pushi.e 280
mul.i.v
pushi.e 7
conv.i.d
div.d.v
sub.v.i
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 12
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.5
conv.d.v
push.v self.colcol
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 280
push.v self.bgsiner
pushi.e 280
mul.i.v
pushi.e 7
conv.i.d
div.d.v
sub.v.i
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 12
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.3
conv.d.v
push.v self.colcol
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -8
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
add.v.i
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 786
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.5
conv.d.v
push.v self.colcol
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -4
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 786
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.colcol
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 786
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
call.i __background_get_colour(argc=0)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 280
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[end]