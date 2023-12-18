.localvar 0 arguments
.localvar 1 str1width 1231
.localvar 2 msg0right 1232
.localvar 3 msg1left 1233
.localvar 4 msg2width 1234
.localvar 5 msg3width 1235

:[0]
pushi.e -5
pushi.e 33
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
push.v self.canchoose
pushi.e 1
cmp.i.v EQ
bf [16]

:[1]
push.v self.mychoice
pushi.e 0
cmp.i.v GTE
bf [4]

:[2]
call.i button1_p(argc=0)
conv.v.b
bf [4]

:[3]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
push.v self.choiced
pushi.e 0
cmp.i.v EQ
bf [16]

:[5]
call.i left_h(argc=0)
conv.v.b
bf [7]

:[6]
pushi.e 0
pop.v.i self.mychoice

:[7]
push.v self.choicetotal
pushi.e 1
cmp.i.v GTE
bf [10]

:[8]
call.i right_h(argc=0)
conv.v.b
bf [10]

:[9]
pushi.e 1
pop.v.i self.mychoice

:[10]
push.v self.choicetotal
pushi.e 2
cmp.i.v GTE
bf [13]

:[11]
call.i up_h(argc=0)
conv.v.b
bf [13]

:[12]
pushi.e 2
pop.v.i self.mychoice

:[13]
push.v self.choicetotal
pushi.e 3
cmp.i.v GTE
bf [16]

:[14]
call.i down_h(argc=0)
conv.v.b
bf [16]

:[15]
pushi.e 3
pop.v.i self.mychoice

:[16]
push.v self.dar
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.s "main"@1558
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
b [19]

:[18]
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v

:[19]
push.v self.xx
pushi.e 30
push.v self.dar
mul.v.i
add.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.heartposx
push.v self.yy
pushi.e 34
push.v self.d_add
add.v.i
push.v self.dar
mul.v.v
add.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.heartposy
pushi.e -1
pushi.e 0
push.v [array]self.heartposx
pushi.e 16
push.v self.dar
mul.v.i
add.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.textposx
push.v self.yy
pushi.e 13
push.v self.d_add
add.v.i
push.v self.dar
mul.v.v
add.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.textposy
push.v self.choicetotal
pushi.e 1
cmp.i.v GTE
bf [21]

:[20]
pushi.e -5
pushi.e 1
push.v [array]global.choicemsg
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pop.v.v local.str1width
push.v self.xx
pushi.e 320
push.v self.dar
mul.v.i
add.v.v
pushi.e 30
push.v self.dar
mul.v.i
sub.v.v
pushloc.v local.str1width
sub.v.v
pushi.e 14
push.v self.dar
mul.v.i
sub.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.heartposx
push.v self.yy
pushi.e 34
push.v self.d_add
add.v.i
push.v self.dar
mul.v.v
add.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.heartposy
pushi.e -1
pushi.e 1
push.v [array]self.heartposx
pushi.e 16
push.v self.dar
mul.v.i
add.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.textposx
push.v self.yy
pushi.e 13
push.v self.d_add
add.v.i
push.v self.dar
mul.v.v
add.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.textposy

:[21]
push.v self.choicetotal
pushi.e 2
cmp.i.v GTE
bf [26]

:[22]
pushi.e -1
pushi.e 0
push.v [array]self.heartposx
pushi.e 16
push.v self.dar
mul.v.i
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.choicemsg
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
add.v.v
pop.v.v local.msg0right
pushi.e -1
pushi.e 1
push.v [array]self.heartposx
pop.v.v local.msg1left
pushi.e -5
pushi.e 2
push.v [array]global.choicemsg
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pushi.e 16
push.v self.dar
mul.v.i
add.v.v
pop.v.v local.msg2width
push.v self.choicetotal
pushi.e 3
cmp.i.v EQ
bf [25]

:[23]
pushi.e -5
pushi.e 3
push.v [array]global.choicemsg
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pushi.e 16
push.v self.dar
mul.v.i
add.v.v
pop.v.v local.msg3width
pushloc.v local.msg3width
pushloc.v local.msg2width
cmp.v.v GT
bf [25]

:[24]
pushloc.v local.msg3width
pop.v.v local.msg2width

:[25]
pushloc.v local.msg0right
pushloc.v local.msg1left
pushloc.v local.msg0right
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushloc.v local.msg2width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.heartposx
push.v self.yy
pushi.e 16
push.v self.d_add
add.v.i
push.v self.dar
mul.v.v
add.v.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.heartposy
pushi.e -1
pushi.e 2
push.v [array]self.heartposx
pushi.e 16
push.v self.dar
mul.v.i
add.v.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.textposx
push.v self.yy
pushi.e 13
push.v self.d_add
add.v.i
push.v self.dar
mul.v.v
add.v.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.textposy

:[26]
push.v self.choicetotal
pushi.e 3
cmp.i.v GTE
bf [28]

:[27]
pushi.e -1
pushi.e 2
push.v [array]self.heartposx
pushi.e -1
pushi.e 3
pop.v.v [array]self.heartposx
push.v self.yy
pushi.e 60
push.v self.d_add
add.v.i
push.v self.dar
mul.v.v
add.v.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.heartposy
pushi.e -1
pushi.e 3
push.v [array]self.heartposx
pushi.e 16
push.v self.dar
mul.v.i
add.v.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.textposx
push.v self.yy
pushi.e 56
push.v self.d_add
add.v.i
push.v self.dar
mul.v.v
add.v.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.textposy

:[28]
push.v self.mychoice
pushi.e 0
cmp.i.v GTE
bf [end]

:[29]
pushi.e -1
push.v self.mychoice
conv.v.i
push.v [array]self.heartposx
pop.v.v self.hx
pushi.e -1
push.v self.mychoice
conv.v.i
push.v [array]self.heartposy
pop.v.v self.hy

:[end]