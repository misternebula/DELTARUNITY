.localvar 0 arguments

:[0]
call.i draw_self(argc=0)
popz.v
call.i button1_p(argc=0)
conv.v.b
bf [2]

:[1]
call.i scr_debug(argc=0)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [22]

:[4]
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [13]

:[5]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 13
add.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[7]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 13
sub.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[9]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
sub.i.v
push.v self.y
pushi.e 28
add.i.v
push.v self.x
pushi.e 4
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[11]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 5
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
sub.i.v
push.v self.x
pushi.e 3
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[13]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [22]

:[14]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 26
add.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[16]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 26
sub.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[18]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 30
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 8
sub.i.v
push.v self.y
pushi.e 56
add.i.v
push.v self.x
pushi.e 4
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[20]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 10
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 10
sub.i.v
push.v self.x
pushi.e 3
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[22]
push.v self.battlemode
pushi.e 1
cmp.i.v EQ
bf [26]

:[23]
pushi.e 1
pop.v.i self.becamebattle
push.v self.battlealpha
push.d 0.8
cmp.d.v LT
bf [25]

:[24]
push.v self.battlealpha
push.d 0.04
add.d.v
pop.v.v self.battlealpha

:[25]
push.v self.x
pushi.e 12
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
sub.v.v
pop.v.v global.heartx
push.v self.y
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
sub.v.v
pop.v.v global.hearty
b [28]

:[26]
push.v self.battlealpha
pushi.e 0
cmp.i.v GT
bf [28]

:[27]
push.v self.battlealpha
push.d 0.08
sub.d.v
pop.v.v self.battlealpha

:[28]
push.v self.battlealpha
push.v self.battleheart
conv.v.i
pop.v.v [stacktop]self.image_alpha
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [38]

:[29]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
push.v self.battlealpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 822
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[31]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
push.v self.battlealpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 826
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[33]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
push.v self.battlealpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 824
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[35]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [37]

:[36]
push.v self.battlealpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 825
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[37]
b [40]

:[38]
push.v self.sprite_index
pushi.e 832
cmp.i.v EQ
bf [40]

:[39]
push.v self.battlealpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 823
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[40]
push.v self.battlealpha
pushi.e 2
mul.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 12
add.i.v
pushi.e 0
conv.i.v
pushi.e 812
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.x
pushi.e 12
add.i.v
push.v self.battleheart
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
pushi.e 40
add.i.v
push.v self.battleheart
conv.v.i
pop.v.v [stacktop]self.y
push.v self.battlemode
pushi.e 4
cmp.i.v EQ
bf [42]

:[41]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 27
add.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.y
pushi.e 57
add.i.v
push.v self.x
pushi.e 19
add.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i draw_line(argc=4)
popz.v
push.v self.y
pushi.e 57
add.i.v
push.v self.x
pushi.e 19
add.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 26
add.i.v
call.i draw_line(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[42]
call.i scr_debug(argc=0)
conv.v.b
bf [end]

:[43]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[end]