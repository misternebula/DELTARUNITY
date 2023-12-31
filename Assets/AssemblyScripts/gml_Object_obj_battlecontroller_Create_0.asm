.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 9
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.batmusic
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.batmusic

:[2]
pushi.e 0
pop.v.i self.victory
pushi.e 0
pop.v.i self.victoried
pushi.e 0
pop.v.i self.skipvictory
pushi.e 0
pop.v.i global.battleend
push.i 19212912
pop.v.i self.battlewriter
push.i 1913918291
pop.v.i self.myface
pushi.e 0
pop.v.i self.lbuffer
pushi.e 0
pop.v.i self.rbuffer
pushi.e 0
pop.v.i self.onebuffer
pushi.e 0
pop.v.i self.twobuffer
pushi.e 1
pop.v.i global.darkzone
pushi.e 1
pop.v.i global.fighting
pushi.e 0
pop.v.i global.fe
pushi.e 0
pop.v.i global.fc
pushi.e 4
pop.v.i global.typer
pushi.e 4
pop.v.i global.battletyper
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.bmenuno
pushi.e 0
pop.v.i global.attacking
pushi.e 0
pop.v.i global.acting
pushi.e 0
pop.v.i global.tension
pushi.e 10
pop.v.i global.spelldelay
call.i scr_spellinfo_all(argc=0)
popz.v
pushi.e 0
pop.v.i global.tensionselect
pushi.e 0
pop.v.i self.j

:[3]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [8]

:[4]
pushglb.v global.tension
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]global.temptension
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 13
cmp.i.v LT
bf [7]

:[6]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.item
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
pop.v.v [array]self.tempitem
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [3]

:[8]
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [14]

:[10]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.charcond
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.automiss
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [12]

:[11]
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.charmove
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.charcantarget
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.chardead
b [13]

:[12]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.charmove
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.charcantarget

:[13]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[14]
pushi.e 0
pop.v.i self.itempage
pushi.e 0
pushi.e -5
pushi.e 50
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 51
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 52
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 53
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [20]

:[16]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monster
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monsterx
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monstery
push.s " "@24
pushi.e -5
push.v self.i
conv.v.i
pop.v.s [array]global.monstername
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monstermaxhp
push.l 12913921839
pushi.e -5
push.v self.i
conv.v.i
pop.v.l [array]global.monsterinstance
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.hittarget
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.mercymax
push.s " "@24
pushi.e -5
push.v self.i
conv.v.i
pop.v.s [array]global.monstercomment
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monsterstatus
pushi.e 0
pop.v.i self.j

:[17]
push.v self.j
pushi.e 6
cmp.i.v LT
bf [19]

:[18]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.act
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s " "@24
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.s [array]global.actname
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.acttype
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.actspell
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s " "@24
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.s [array]global.actdesc
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.actcost
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [17]

:[19]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[20]
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.monstergold
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.monsterexp
pushi.e 0
pop.v.i self.i

:[21]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [27]

:[22]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monstertype
pushi.e 0
cmp.i.v GT
bf [26]

:[23]
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monster
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monsterinstancetype
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monstermakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monstermakex
call.i instance_create(argc=3)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.monsterinstance
push.v self.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pop.v.v [stacktop]self.myself
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [25]

:[24]
pushi.e 12
conv.i.v
call.i event_user(argc=1)
popz.v

:[25]
popenv [24]

:[26]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [21]

:[27]
pushi.e 0
pop.v.i global.charturn
pushi.e 0
pop.v.i self.i

:[28]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [30]

:[29]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.acting
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.charaction
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.charspecial
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.chartarget
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.rembmenuno
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.targeted
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.at
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemat
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.itemat
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.itemat
add.v.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.battleat
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.df
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.battledf
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.mag
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemmag
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.itemmag
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.itemmag
add.v.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.battlemag
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [28]

:[30]
pushi.e 0
pop.v.i self.i

:[31]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [36]

:[32]
pushi.e 0
pop.v.i self.j

:[33]
push.v self.j
pushi.e 20
cmp.i.v LT
bf [35]

:[34]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.bmenucoord
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [33]

:[35]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [31]

:[36]
pushi.e 0
pop.v.i self.movenoise
pushi.e 0
pop.v.i self.selnoise
pushi.e 0
pop.v.i self.laznoise
pushi.e 0
pop.v.i self.damagenoise
pushi.e 0
pop.v.i self.grazenoise
push.d 0.7
conv.d.v
pushi.e 0
conv.i.v
push.i 8388736
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.bcolor
push.d 0.5
conv.d.v
push.i 4210752
conv.i.v
push.v self.bcolor
call.i merge_color(argc=3)
pop.v.v self.bcolor
pushi.e 0
pop.v.i self.tp
pushi.e 50
pop.v.i self.tpy
pushi.e 0
pop.v.i self.bp
pushi.e 152
pop.v.i self.bpy
pushi.e 1
pop.v.i self.intro
pushi.e 0
pop.v.i self.chartotal
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.charpos
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.charpos
pushi.e -1
pushi.e -1
pushi.e 2
pop.v.i [array]self.charpos
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.havechar
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.havechar
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.havechar
push.i 12129292
pushi.e -5
pushi.e 0
pop.v.i [array]global.charinstance
push.i 12129292
pushi.e -5
pushi.e 1
pop.v.i [array]global.charinstance
push.i 12129292
pushi.e -5
pushi.e 2
pop.v.i [array]global.charinstance
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
pushenv [38]

:[37]
pushi.e 0
pop.v.i self.myself

:[38]
popenv [37]
pushi.e -5
pushi.e 1
push.v [array]global.charinstance
conv.v.i
pushenv [40]

:[39]
pushi.e 1
pop.v.i self.myself

:[40]
popenv [39]
pushi.e -5
pushi.e 2
push.v [array]global.charinstance
conv.v.i
pushenv [42]

:[41]
pushi.e 2
pop.v.i self.myself

:[42]
popenv [41]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.mmy
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.mmy
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.mmy
pushi.e 0
pop.v.i self.i

:[43]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [53]

:[44]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [46]

:[45]
push.v self.chartotal
pushi.e 1
add.i.v
pop.v.v self.chartotal

:[46]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.havechar
push.v self.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.charpos
pushi.e 202
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.heromakex
call.i instance_create(argc=3)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.charinstance
push.v self.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
pop.v.v [stacktop]self.myself
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
pop.v.i [stacktop]self.char
pushi.e 200
push.v self.i
pushi.e 20
mul.i.v
sub.v.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
pop.v.v [stacktop]self.depth

:[48]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.havechar
push.v self.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.charpos
pushi.e 203
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.heromakex
call.i instance_create(argc=3)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.charinstance
push.v self.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
pop.v.v [stacktop]self.myself
pushi.e 2
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
pop.v.i [stacktop]self.char
pushi.e 200
push.v self.i
pushi.e 20
mul.i.v
sub.v.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
pop.v.v [stacktop]self.depth

:[50]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.havechar
push.v self.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.charpos
pushi.e 204
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.heromakex
call.i instance_create(argc=3)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.charinstance
push.v self.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
pop.v.v [stacktop]self.myself
pushi.e 3
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
pop.v.i [stacktop]self.char
pushi.e 200
push.v self.i
pushi.e 20
mul.i.v
sub.v.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
pop.v.v [stacktop]self.depth

:[52]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [43]

:[53]
pushi.e 0
pop.v.i self.slmxx
pushi.e 0
pop.v.i self.slmyy
pushi.e 0
pop.v.i self.s_siner
pushi.e 212
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.reset
pushi.e 1
pop.v.i self.timeron
pushi.e 0
pop.v.i self.noreturn
push.i 16776960
pushi.e -1
pushi.e 0
pop.v.i [array]self.hpcolor
push.i 16711935
pushi.e -1
pushi.e 1
pop.v.i [array]self.hpcolor
push.i 65280
pushi.e -1
pushi.e 2
pop.v.i [array]self.hpcolor

:[end]