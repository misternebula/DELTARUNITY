.localvar 0 arguments
.localvar 1 str 4228
.localvar 2 width 4229

:[0]
push.s "main"@1558
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e 10
push.v self.fadebuffer
sub.v.i
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.xfade
push.v self.xfade
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.xfade

:[2]
push.v self.TYPE
pushi.e 2
cmp.i.v LTE
bf [18]

:[3]
push.v self.DRAWHEART
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.d 0.6
push.v self.xfade
mul.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.HEARTY
push.v self.yoff
add.v.v
push.v self.HEARTX
push.v self.xoff
add.v.v
pushi.e 0
conv.i.v
pushi.e 906
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v self.xfade
call.i draw_set_alpha(argc=1)
popz.v
push.v self.TYPE
pushi.e 2
cmp.i.v LT
bf [11]

:[6]
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
push.v self.XMAX
cmp.v.v LTE
bf [11]

:[8]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.CURX
push.v self.i
cmp.v.v EQ
bf [10]

:[9]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[10]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]self.NAME
call.i string_hash_to_newline(argc=1)
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]self.NAMEY
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]self.NAMEX
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[11]
push.v self.TYPE
pushi.e 2
cmp.i.v EQ
bf [17]

:[12]
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
push.v self.YMAX
cmp.v.v LTE
bf [17]

:[14]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.CURY
push.v self.i
cmp.v.v EQ
bf [16]

:[15]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[16]
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]self.NAME
call.i string_hash_to_newline(argc=1)
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]self.NAMEY
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]self.NAMEX
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [13]

:[17]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[18]
push.v self.TYPE
pushi.e 3
cmp.i.v EQ
bf [end]

:[19]
push.v self.DRAWHEART
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.d 0.5
push.v self.xfade
mul.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.HEARTY
push.v self.HEARTX
pushi.e 0
conv.i.v
pushi.e 906
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[21]
push.v self.xfade
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i self.j

:[22]
push.v self.j
push.v self.YMAX
cmp.v.v LTE
bf [42]

:[23]
pushi.e 0
pop.v.i self.i

:[24]
push.v self.i
push.v self.XMAX
cmp.v.v LTE
bf [41]

:[25]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.CURX
push.v self.i
cmp.v.v EQ
bf [27]

:[26]
push.v self.CURY
push.v self.j
cmp.v.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[30]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.NAME
call.i string_hash_to_newline(argc=1)
pop.v.v local.str
pushi.e 1
conv.i.v
pushloc.v local.str
call.i string_char_at(argc=2)
push.s "("@9525
cmp.s.v EQ
bf [32]

:[31]
pushloc.v local.str
call.i string_length(argc=1)
pushi.e 3
cmp.i.v GT
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushloc.v local.str
call.i string_length(argc=1)
pushi.e 3
sub.i.v
pushi.e 4
conv.i.v
pushloc.v local.str
call.i string_copy(argc=3)
pop.v.v local.str

:[35]
pushloc.v local.str
push.s "<"@9516
cmp.s.v NEQ
bf [37]

:[36]
pushloc.v local.str
push.s ">"@9515
cmp.s.v NEQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushloc.v local.str
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.NAMEY
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.NAMEX
call.i draw_text(argc=3)
popz.v

:[40]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [24]

:[41]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [22]

:[42]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.NAMESTRING
call.i string_length(argc=1)
push.v self.STRINGMAX
cmp.v.v EQ
bf [44]

:[43]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[44]
push.v self.NAMESTRING
call.i string_width(argc=1)
pop.v.v local.width
push.v self.NAMESTRING
call.i string_hash_to_newline(argc=1)
push.v self.PLAYERNAMEY
pushi.e 320
pushloc.v local.width
sub.v.i
pushi.e 2
conv.i.d
div.d.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]