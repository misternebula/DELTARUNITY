.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 0
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.sus

:[2]
pushi.e -5
pushi.e 1
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.sus

:[4]
pushi.e -5
pushi.e 2
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2
pop.v.i self.sus

:[6]
pushi.e 0
pop.v.i self.techwon
call.i scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.techwon

:[8]
push.v self.techwon
pushi.e 0
cmp.i.v EQ
bf [60]

:[9]
call.i scr_battlecursor_memory_reset(argc=0)
popz.v
pushi.e 0
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.bmenuno
pushi.e 0
pop.v.i global.charturn
pushi.e 0
pop.v.i self.skip
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [24]

:[11]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [13]

:[12]
pushi.e 0
pop.v.i self.tu

:[13]
popenv [12]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pop.v.v self.hptarget
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [15]

:[14]
pushi.e -5
push.v self.hptarget
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v LTE
b [16]

:[15]
push.e 0

:[16]
bf [23]

:[17]
pushi.e -5
push.v self.hptarget
conv.v.i
push.v [array]global.maxhp
pushi.e 8
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.healamt
pushi.e 304
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.myheight
add.v.v
pushi.e 24
sub.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.dmgwr
push.v self.dmgwr
conv.v.i
pushenv [19]

:[18]
pushi.e 1
pop.v.i self.delay
pushi.e 3
pop.v.i self.type

:[19]
popenv [18]
push.v self.healamt
push.v self.i
call.i scr_heal(argc=2)
push.v self.dmgwr
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e -5
push.v self.hptarget
conv.v.i
push.v [array]global.hp
pushi.e 1
cmp.i.v GTE
bf [23]

:[20]
push.v self.dmgwr
conv.v.i
pushenv [22]

:[21]
pushi.e 4
pop.v.i self.specialmessage

:[22]
popenv [21]

:[23]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [10]

:[24]
pushi.e -5
pushi.e 0
push.v [array]global.charmove
pushi.e 0
cmp.i.v EQ
bt [26]

:[25]
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]global.char
conv.v.i
push.v [array]global.charauto
pushi.e 1
cmp.i.v EQ
b [27]

:[26]
push.e 1

:[27]
bf [29]

:[28]
pushi.e 1
pop.v.i global.charturn

:[29]
pushglb.v global.charturn
pushi.e 1
cmp.i.v EQ
bf [35]

:[30]
pushi.e -5
pushi.e 1
push.v [array]global.charmove
pushi.e 0
cmp.i.v EQ
bt [32]

:[31]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.char
conv.v.i
push.v [array]global.charauto
pushi.e 1
cmp.i.v EQ
b [33]

:[32]
push.e 1

:[33]
bf [35]

:[34]
pushi.e 2
pop.v.i global.charturn

:[35]
pushglb.v global.charturn
pushi.e 2
cmp.i.v EQ
bf [41]

:[36]
pushi.e -5
pushi.e 2
push.v [array]global.charmove
pushi.e 0
cmp.i.v EQ
bt [38]

:[37]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.char
conv.v.i
push.v [array]global.charauto
pushi.e 1
cmp.i.v EQ
b [39]

:[38]
push.e 1

:[39]
bf [41]

:[40]
pushi.e 1
pop.v.i self.skip

:[41]
pushi.e 0
pop.v.i self.i

:[42]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [44]

:[43]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.acting
pushglb.v global.tension
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.temptension
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.charspecial
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.targeted
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.charaction
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.faceaction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [42]

:[44]
pushi.e 234
pushenv [46]

:[45]
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.acting

:[46]
popenv [45]
push.v self.skip
pushi.e 1
cmp.i.v EQ
bf [53]

:[47]
pushi.e -5
pushi.e 0
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [49]

:[48]
pushi.e -5
pushi.e 2
push.v [array]global.charauto
pushi.e 1
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.acting
pushi.e 3
pop.v.i global.myfight

:[52]
call.i scr_endturn(argc=0)
popz.v

:[53]
pushi.e 0
pop.v.i self.i

:[54]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [59]

:[55]
pushi.e 0
pop.v.i self.j

:[56]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [58]

:[57]
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
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [56]

:[58]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [54]

:[59]
b [end]

:[60]
call.i scr_wincombat(argc=0)
popz.v

:[end]