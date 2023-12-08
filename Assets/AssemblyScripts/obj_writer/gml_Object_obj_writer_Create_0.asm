.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.skipme
pushi.e 13
pop.v.i self.textsound
pushi.e 33
pop.v.i self.charline
push.v self.charline
pop.v.v self.originalcharline
pushi.e 8
pop.v.i self.hspace
pushi.e 18
pop.v.i self.vspace
pushi.e 1
pop.v.i self.rate
push.i 16777215
pop.v.i self.mycolor
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
pop.v.v self.myfont
pushi.e 0
pop.v.i self.shake
pushi.e 0
pop.v.i self.special
pushi.e 1
pop.v.i self.skippable
pushi.e 0
pop.v.i self.automash_timer
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.skippable

:[2]
pushi.e 1
pop.v.i self.f
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.f

:[4]
call.i scr_texttype(argc=0)
popz.v
pushi.e 1
pop.v.i self.autoaster
pushi.e 2
pop.v.i self.pos
pushi.e 0
pop.v.i self.lineno
pushi.e 0
pop.v.i self.aster
pushi.e 0
pop.v.i self.halt
pushi.e 0
pop.v.i self.xcolor
pushi.e 0
pop.v.i self.wxskip
pushi.e 0
pop.v.i self.msgno
pushi.e 0
pop.v.i self.first_alarm
pushi.e 0
pop.v.i self.firstnoise
pushi.e 0
pop.v.i self.noiseskip
pushi.e 0
pop.v.i self.formatted
pushi.e 0
pop.v.i self.colorchange
pushi.e 0
pop.v.i self.fontchange
pushi.e 0
pop.v.i self.sound_played
push.v self.x
pop.v.v self.writingx
push.v self.y
pop.v.v self.writingy
pushi.e 0
pop.v.i self.dialoguer
push.i 505050
pop.v.i self.smallface
pushi.e 0
pop.v.i self.faced
pushi.e 0
pop.v.i self.facedever
pushi.e 0
pop.v.i self.facer
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.specfade
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [7]

:[6]
push.v self.i
pushi.e 6
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.specx
push.v self.i
pushi.e 6
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.specy
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
pushi.e -5
pushi.e 0
push.v [array]global.msg
pop.v.v self.mystring
pushi.e 0
pop.v.i self.j

:[8]
push.v self.j
pushi.e 100
cmp.i.v LT
bf [10]

:[9]
pushi.e -5
push.v self.j
conv.v.i
push.v [array]global.msg
pushi.e -1
push.v self.j
conv.v.i
pop.v.v [array]self.nstring
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [8]

:[10]
push.v self.mystring
call.i string_length(argc=1)
pop.v.v self.length
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.rate
pushi.e 3
cmp.i.v LT
bf [12]

:[11]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
b [end]

:[12]
call.i scr_textsound(argc=0)
popz.v

:[end]