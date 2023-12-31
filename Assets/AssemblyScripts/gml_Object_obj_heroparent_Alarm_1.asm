.localvar 0 arguments

:[0]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.faceaction
push.v self.myself
call.i scr_retarget(argc=1)
popz.v
push.v self.cancelattack
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 304
conv.i.v
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.monstery
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.hittarget
pushi.e 20
mul.i.v
sub.v.v
pushi.e 20
add.i.v
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.monsterx
call.i instance_create(argc=3)
pop.v.v self.dm
push.v self.char
pushi.e 1
sub.i.v
push.v self.dm
conv.v.i
pop.v.v [stacktop]self.type
pushi.e 8
push.v self.dm
conv.v.i
pop.v.i [stacktop]self.delay
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.battleat
push.v self.points
mul.v.v
pushi.e 20
conv.i.d
div.d.v
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.monsterdf
pushi.e 3
mul.i.v
sub.v.v
call.i round(argc=1)
pop.v.v self.damage
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.monstertype
pushi.e 19
cmp.i.v EQ
bf [3]

:[2]
push.v self.damage
push.d 0.3
mul.d.v
call.i ceil(argc=1)
pop.v.v self.damage

:[3]
push.v self.damage
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
pushi.e 0
pop.v.i self.damage

:[5]
push.v self.damage
pushi.e 0
cmp.i.v EQ
bf [13]

:[6]
pushi.e 2
push.v self.dm
conv.v.i
pop.v.i [stacktop]self.delay
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [12]

:[7]
push.v self.hurttimer
pushi.e 15
cmp.i.v LTE
bf [9]

:[8]
push.v self.candodge
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 0
pop.v.i self.dodgetimer
pushi.e 4
pop.v.i self.state

:[12]
popenv [7]

:[13]
push.v self.damage
push.v self.dm
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
dup.i 1
push.v [array]global.hittarget
pushi.e 1
add.i.v
pop.i.v [array]global.hittarget
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
dup.i 1
push.v [array]global.monsterhp
push.v self.damage
sub.v.v
pop.i.v [array]global.monsterhp
push.v self.is_auto_susie
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.monsterhp
pushi.e 0
cmp.i.v LTE
b [16]

:[15]
push.e 0

:[16]
bf [20]

:[17]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
pushenv [19]

:[18]
pushi.e 5
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.i [array]global.flag

:[19]
popenv [18]

:[20]
push.v self.damage
pushi.e 0
cmp.i.v GT
bf [35]

:[21]
pushi.e -5
pushi.e 0
push.v [array]global.monstertype
pushi.e 20
cmp.i.v NEQ
bf [23]

:[22]
push.v self.points
pushi.e 10
conv.i.d
div.d.v
call.i round(argc=1)
call.i scr_tensionheal(argc=1)
popz.v

:[23]
pushi.e -5
pushi.e 0
push.v [array]global.monstertype
pushi.e 20
cmp.i.v EQ
bf [25]

:[24]
push.v self.points
pushi.e 15
conv.i.d
div.d.v
call.i round(argc=1)
call.i scr_tensionheal(argc=1)
popz.v

:[25]
pushi.e 186
conv.i.v
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.monstery
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.monsterx
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.attack
push.v self.object_index
pushi.e 203
cmp.i.v EQ
bf [27]

:[26]
pushi.e 411
push.v self.attack
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.attack
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 4
push.v self.attack
conv.v.i
pop.v.i [stacktop]self.maxindex
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[27]
push.v self.object_index
pushi.e 204
cmp.i.v EQ
bf [29]

:[28]
pushi.e 412
push.v self.attack
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 4
push.v self.attack
conv.v.i
pop.v.i [stacktop]self.maxindex
push.d 0.5
push.v self.attack
conv.v.i
pop.v.d [stacktop]self.image_speed

:[29]
push.v self.points
pushi.e 150
cmp.i.v EQ
bf [31]

:[30]
push.d 2.5
push.v self.attack
conv.v.i
pop.v.d [stacktop]self.image_xscale
push.d 2.5
push.v self.attack
conv.v.i
pop.v.d [stacktop]self.image_yscale

:[31]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [33]

:[32]
pushi.e 9
pop.v.i self.shakex
pushi.e 3
pop.v.i self.state
pushi.e 30
pop.v.i self.hurttimer

:[33]
popenv [32]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.monsterinstance
call.i instance_exists(argc=1)
conv.v.b
bf [35]

:[34]
push.v self.damage
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pop.v.v [stacktop]self.hurtamt

:[35]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.monsterhp
pushi.e 0
cmp.i.v LTE
bf [end]

:[36]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [38]

:[37]
call.i scr_monsterdefeat(argc=0)
popz.v

:[38]
popenv [37]

:[end]