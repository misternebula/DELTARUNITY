.localvar 0 arguments
.localvar 1 debug_inv 237

:[0]
pushi.e 0
pop.v.i local.debug_inv
push.s "chemg_god_mode"@1648
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushglb.v global.chemg_god_mode
pop.v.v local.debug_inv

:[2]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
pushloc.v local.debug_inv
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
push.v self.target
pushi.e 3
cmp.i.v LT
bf [11]

:[7]
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v LTE
bf [11]

:[8]
call.i scr_randomtarget(argc=0)
popz.v
push.v self.mytarget
pop.v.v self.target
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [10]

:[9]
push.i 16777215
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.darkify

:[10]
popenv [9]

:[11]
pushi.e 3
pop.v.i self.chartarget
push.v self.damage
pop.v.v self.tdamage
push.v self.target
pushi.e 3
cmp.i.v LT
bf [16]

:[12]
push.v self.tdamage
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.battledf
pushi.e 3
mul.i.v
sub.v.v
call.i ceil(argc=1)
pop.v.v self.tdamage
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.char
pop.v.v self.chartarget
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.charaction
pushi.e 10
cmp.i.v EQ
bf [14]

:[13]
pushi.e 2
push.v self.tdamage
mul.v.i
pushi.e 3
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.tdamage

:[14]
push.v self.tdamage
pushi.e 1
cmp.i.v LT
bf [16]

:[15]
pushi.e 1
pop.v.i self.tdamage

:[16]
pushi.e 140
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [18]

:[17]
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[18]
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.hurt
pushi.e 0
pop.v.i self.hurttimer

:[20]
popenv [19]
push.v self.tdamage
pop.v.v self.hpdiff
pushi.e 304
pushenv [23]

:[21]
push.v self.delaytimer
pushi.e 1
cmp.i.v GTE
bf [23]

:[22]
pushi.e 1
pop.v.i self.killactive

:[23]
popenv [21]
pushi.e -1
pop.v.i self.doomtype
pushi.e 305
pushenv [25]

:[24]
pushi.e 1
pop.v.i self.dmgnoise

:[25]
popenv [24]
push.v self.target
pushi.e 3
cmp.i.v LT
bf [31]

:[26]
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v LTE
bf [28]

:[27]
pushi.e 4
pop.v.i self.doomtype
pushi.e -5
push.v self.chartarget
conv.v.i
dup.i 1
push.v [array]global.hp
push.v self.tdamage
pushi.e 4
conv.i.d
div.d.v
call.i round(argc=1)
sub.v.v
pop.i.v [array]global.hp
push.v self.tdamage
pushi.e 4
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v self.hpdiff
b [30]

:[28]
pushi.e -5
push.v self.chartarget
conv.v.i
dup.i 1
push.v [array]global.hp
push.v self.tdamage
sub.v.v
pop.i.v [array]global.hp
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v LTE
bf [30]

:[29]
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]global.hp
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]global.maxhp
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i abs(argc=1)
pop.v.v self.hpdiff
pushi.e 4
pop.v.i self.doomtype
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]global.maxhp
neg.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e -5
push.v self.chartarget
conv.v.i
pop.v.v [array]global.hp
push.v self.target
call.i scr_dead(argc=1)
popz.v

:[30]
pushi.e 304
conv.i.v
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.myheight
add.v.v
pushi.e 24
sub.i.v
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.dmgwriter
push.v self.hpdiff
push.v self.dmgwriter
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.doomtype
push.v self.dmgwriter
conv.v.i
pop.v.v [stacktop]self.type

:[31]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [41]

:[32]
pushi.e 0
pop.v.i self.hpi

:[33]
push.v self.hpi
pushi.e 3
cmp.i.v LT
bf [41]

:[34]
pushi.e -5
push.v self.hpi
conv.v.i
push.v [array]global.char
pop.v.v self.chartarget
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v GTE
bf [40]

:[35]
pushi.e -5
push.v self.hpi
conv.v.i
push.v [array]global.charaction
pushi.e 10
cmp.i.v EQ
bf [37]

:[36]
pushi.e -5
push.v self.chartarget
conv.v.i
dup.i 1
push.v [array]global.hp
push.v self.tdamage
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
sub.v.v
pop.i.v [array]global.hp
b [38]

:[37]
pushi.e -5
push.v self.chartarget
conv.v.i
dup.i 1
push.v [array]global.hp
push.v self.tdamage
sub.v.v
pop.i.v [array]global.hp

:[38]
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v LTE
bf [40]

:[39]
pushi.e -5
pushi.e 0
push.v [array]global.maxhp
neg.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e -5
push.v self.chartarget
conv.v.i
pop.v.v [array]global.hp

:[40]
push.v self.hpi
pushi.e 1
add.i.v
pop.v.v self.hpi
b [33]

:[41]
pushglb.v global.invc
pushi.e 40
mul.i.v
pop.v.v global.inv
pushi.e 1
pop.v.i self.gameover
pushi.e -5
pushi.e 0
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [43]

:[42]
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v GT
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 0
pop.v.i self.gameover

:[46]
pushi.e -5
pushi.e 1
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [48]

:[47]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v GT
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e 0
pop.v.i self.gameover

:[51]
pushi.e -5
pushi.e 2
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [53]

:[52]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v GT
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 0
pop.v.i self.gameover

:[56]
push.v self.gameover
pushi.e 1
cmp.i.v EQ
bf [end]

:[57]
call.i scr_gameover(argc=0)
popz.v

:[end]