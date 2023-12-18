.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v GTE
bf [2]

:[1]
push.v self.wsiner
push.d 0.8
add.d.v
pop.v.v self.wsiner

:[2]
push.v self.animate
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.wsiner

:[4]
push.v self.wsiner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pop.v.v self.walkc
pushi.e 0
pop.v.i self.loop

:[5]
push.v self.loop
pushi.e 2
cmp.i.v LT
bf [25]

:[6]
push.v self.loop
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
conv.i.v
call.i draw_set_blend_mode(argc=1)
popz.v
push.v self.basecolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[8]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
conv.i.v
call.i draw_set_blend_mode(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.dcolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
pushi.e -1
pushi.e 1
push.v [array]self.dcolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
pushi.e -1
pushi.e 2
push.v [array]self.dcolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[10]
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pop.v.v self.walka
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
pop.v.v self.walkb
push.v self.bad
pushi.e 0
cmp.i.v EQ
bf [18]

:[11]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
pushi.e 19
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 11
push.v self.s
mul.v.i
sub.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
pushi.e 17
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 6
push.v self.s
mul.v.i
sub.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
conv.i.v
pushi.e 731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[15]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
pushi.e 21
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 8
push.v self.s
mul.v.i
sub.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 4
conv.i.v
pushi.e 731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[17]
b [24]

:[18]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 19
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 11
push.v self.s
mul.v.i
sub.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
push.s "spr_thrashfoot_b"@3390
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[20]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 17
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 6
push.v self.s
mul.v.i
sub.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
conv.i.v
push.s "spr_thrashfoot_b"@3390
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[22]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [24]

:[23]
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 21
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 8
push.v self.s
mul.v.i
sub.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 4
conv.i.v
push.s "spr_thrashfoot_b"@3390
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[24]
push.v self.loop
pushi.e 1
add.i.v
pop.v.v self.loop
b [5]

:[25]
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 0
cmp.i.v GTE
bf [37]

:[26]
pushi.e 0
pop.v.i self.loop

:[27]
push.v self.loop
pushi.e 2
cmp.i.v LT
bf [37]

:[28]
push.v self.loop
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
conv.i.v
call.i draw_set_blend_mode(argc=1)
popz.v
push.v self.basecolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[30]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
conv.i.v
call.i draw_set_blend_mode(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.dcolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
pushi.e -1
pushi.e 1
push.v [array]self.dcolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
pushi.e -1
pushi.e 2
push.v [array]self.dcolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[32]
push.v self.bad
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
push.v self.a
pushi.e -1
pushi.e 0
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
push.v self.s
push.v self.walkc
mul.v.v
add.v.v
push.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 730
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[34]
push.v self.bad
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
push.v self.a
pushi.e -1
pushi.e 0
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
push.v self.s
push.v self.walkc
mul.v.v
add.v.v
push.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.part
push.s "spr_thrashbody_b"@3389
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[36]
push.v self.loop
pushi.e 1
add.i.v
pop.v.v self.loop
b [27]

:[37]
pushi.e 0
pop.v.i self.loop

:[38]
push.v self.loop
pushi.e 2
cmp.i.v LT
bf [62]

:[39]
push.v self.loop
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
pushi.e 0
conv.i.v
call.i draw_set_blend_mode(argc=1)
popz.v
push.v self.basecolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[41]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
pushi.e 1
conv.i.v
call.i draw_set_blend_mode(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.dcolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
pushi.e -1
pushi.e 1
push.v [array]self.dcolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
pushi.e -1
pushi.e 2
push.v [array]self.dcolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[43]
push.v self.bad
pushi.e 0
cmp.i.v EQ
bf [53]

:[44]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
pushi.e 6
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 8
push.v self.s
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 741
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[46]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
pushi.e 6
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 10
push.v self.s
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 742
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[48]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
pushi.e 5
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
push.v self.s
pushi.e 4
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[50]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [52]

:[51]
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
pushi.e 3
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 8
push.v self.s
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 739
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[52]
b [61]

:[53]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 6
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 8
push.v self.s
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 738
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[55]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 6
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 10
push.v self.s
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 737
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[57]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [59]

:[58]
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 5
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
push.v self.s
pushi.e 4
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 736
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[59]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [61]

:[60]
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
pushi.e 3
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 8
push.v self.s
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 739
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[61]
push.v self.loop
pushi.e 1
add.i.v
pop.v.v self.loop
b [38]

:[62]
pushi.e 0
pop.v.i self.loop

:[63]
push.v self.loop
pushi.e 2
cmp.i.v LT
bf [87]

:[64]
push.v self.loop
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
pushi.e 0
conv.i.v
call.i draw_set_blend_mode(argc=1)
popz.v
push.v self.basecolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[66]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1
conv.i.v
call.i draw_set_blend_mode(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.dcolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
pushi.e -1
pushi.e 1
push.v [array]self.dcolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
pushi.e -1
pushi.e 2
push.v [array]self.dcolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[68]
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.walka
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pop.v.v self.walkb
push.v self.bad
pushi.e 0
cmp.i.v EQ
bf [78]

:[69]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [71]

:[70]
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
pushi.e 20
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 5
push.v self.s
mul.v.i
sub.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[71]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
pushi.e 18
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
conv.i.v
pushi.e 731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[73]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [75]

:[74]
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
pushi.e 18
push.v self.s
mul.v.i
add.v.v
push.v self.xx
pushi.e 15
push.v self.s
mul.v.i
sub.v.v
pushi.e 2
conv.i.v
pushi.e 731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[75]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [77]

:[76]
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.walka
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pop.v.v self.walkb
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
pushi.e 22
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 3
conv.i.v
pushi.e 731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[77]
b [86]

:[78]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [80]

:[79]
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 20
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 5
push.v self.s
mul.v.i
sub.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
push.s "spr_thrashfoot_b"@3390
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[80]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 18
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
conv.i.v
push.s "spr_thrashfoot_b"@3390
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[82]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [84]

:[83]
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 18
push.v self.s
mul.v.i
add.v.v
push.v self.xx
pushi.e 15
push.v self.s
mul.v.i
sub.v.v
pushi.e 2
conv.i.v
push.s "spr_thrashfoot_b"@3390
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[84]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [86]

:[85]
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.walka
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pop.v.v self.walkb
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
pushi.e 22
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 3
conv.i.v
pushi.e 731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[86]
push.v self.loop
pushi.e 1
add.i.v
pop.v.v self.loop
b [63]

:[87]
pushi.e 0
conv.i.v
call.i draw_set_blend_mode(argc=1)
popz.v
push.v self.dbselect
pushi.e 1
cmp.i.v EQ
bf [end]

:[88]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [91]

:[89]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.part
pushi.e 1
add.i.v
pop.i.v [array]self.part
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 4
cmp.i.v GTE
bf [91]

:[90]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.part

:[91]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [94]

:[92]
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.part
pushi.e 1
add.i.v
pop.i.v [array]self.part
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 4
cmp.i.v GTE
bf [94]

:[93]
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.part

:[94]
pushi.e 16
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [97]

:[95]
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.part
pushi.e 1
add.i.v
pop.i.v [array]self.part
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 4
cmp.i.v GTE
bf [97]

:[96]
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.part

:[97]
pushi.e 32
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [99]

:[98]
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.wsiner
pushi.e 2
mul.i.v
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.dcolor
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.wsiner
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.dcolor
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.wsiner
pushi.e 2
conv.i.d
div.d.v
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.dcolor

:[99]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[100]
push.v self.s
pushi.e 1
add.i.v
pop.v.v self.s
push.v self.s
pushi.e 5
cmp.i.v GTE
bf [end]

:[101]
pushi.e 1
pop.v.i self.s

:[end]