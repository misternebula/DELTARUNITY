.localvar 0 arguments

:[0]
push.v self.facealpha
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.facealpha
push.d 0.2
add.d.v
pop.v.v self.facealpha

:[2]
push.v self.facealpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.facealpha
call.i draw_set_alpha(argc=1)
popz.v
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [4]

:[3]
push.v self.type
pushi.e 3
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
push.s "main"@1558
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
push.v self.mycolor
call.i draw_set_color(argc=1)
popz.v
push.v self.mystring
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 70
add.i.v
call.i draw_text(argc=3)
popz.v

:[7]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [10]

:[8]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.getrid
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.s "main"@1558
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
push.v self.mycolor
call.i draw_set_color(argc=1)
popz.v
push.v self.mystring
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 15
add.i.v
push.v self.x
pushi.e 70
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
pop.v.i self.finished

:[13]
push.v self.type
pushi.e 2
cmp.i.v EQ
bt [15]

:[14]
push.v self.type
pushi.e 4
cmp.i.v EQ
b [16]

:[15]
push.e 1

:[16]
bf [22]

:[17]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [22]

:[18]
push.s "main"@1558
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
push.v self.mycolor
call.i draw_set_color(argc=1)
popz.v
push.v self.finished
pushi.e 0
cmp.i.v EQ
bf [21]

:[19]
push.v self.partstring
push.v self.part
push.v self.mystring
call.i string_char_at(argc=2)
add.v.v
pop.v.v self.partstring
push.v self.part
pushi.e 1
add.i.v
pop.v.v self.part
push.v self.part
push.v self.mystring
call.i string_length(argc=1)
pushi.e 1
add.i.v
cmp.v.v GTE
bf [21]

:[20]
pushi.e 1
pop.v.i self.finished

:[21]
push.v self.partstring
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 15
add.i.v
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 70
add.i.v
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v

:[22]
push.v self.writergod
call.i instance_exists(argc=1)
conv.v.b
bf [32]

:[23]
push.v self.finished
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.v self.getrid
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [31]

:[27]
push.v self.writergod
conv.v.i
pushenv [30]

:[28]
push.v self.halt
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i self.halt

:[30]
popenv [28]
pushi.e 2
pop.v.i self.finished

:[31]
b [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
push.v self.getrid
pushi.e 1
cmp.i.v EQ
bf [39]

:[34]
push.v self.nowdir
neg.v
pop.v.v self.direction
push.v self.speed
pushi.e 2
add.i.v
pop.v.v self.speed
push.v self.type
pushi.e 3
cmp.i.v EQ
bt [36]

:[35]
push.v self.type
pushi.e 4
cmp.i.v EQ
b [37]

:[36]
push.e 1

:[37]
bf [39]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[39]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]