.localvar 0 arguments

:[0]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
push.v self.chaosdance
pushi.e 1
add.i.v
pop.v.v self.chaosdance
push.v self.chaosdance
pushi.e 9
cmp.i.v GTE
bf [3]

:[2]
pushi.e 0
pop.v.i self.chaosdance

:[3]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pop.v.v self.remat
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterat
push.v self.pfactor
mul.v.v
pop.i.v [array]global.monsterat
push.v self.jattack
pushi.e 0
cmp.i.v EQ
bf [7]

:[4]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 70
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.body
conv.v.i
pushenv [6]

:[5]
pushi.e 2
pop.v.i self.condition

:[6]
popenv [5]

:[7]
push.v self.jattack
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 3
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e 65
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage

:[9]
push.v self.jattack
pushi.e 2
cmp.i.v EQ
bf [13]

:[10]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 49
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 4
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 3
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
push.v self.body
conv.v.i
pushenv [12]

:[11]
pushi.e 2
pop.v.i self.condition

:[12]
popenv [11]

:[13]
push.v self.jattack
pushi.e 3
cmp.i.v EQ
bf [17]

:[14]
push.v self.body
conv.v.i
push.v [stacktop]self.condition
pushi.e 4
cmp.i.v LT
bf [16]

:[15]
pushi.e 5
push.v self.body
conv.v.i
pop.v.i [stacktop]self.condition

:[16]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 3
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e 75
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 6
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage

:[17]
push.v self.jattack
pushi.e 4
cmp.i.v EQ
bf [19]

:[18]
push.s "snd_joker_anything"@3395
conv.s.v
call.i scr_84_get_sound(argc=1)
call.i snd_play(argc=1)
popz.v
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 62
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 20
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.inv
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 2
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints

:[19]
push.v self.jattack
pushi.e 5
cmp.i.v EQ
bf [23]

:[20]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 3
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e 50
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 4
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 300
pop.v.i global.turntimer
push.v self.body
conv.v.i
pushenv [22]

:[21]
pushi.e 2
pop.v.i self.condition

:[22]
popenv [21]

:[23]
push.v self.jattack
pushi.e 6
cmp.i.v EQ
bf [25]

:[24]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 73
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage

:[25]
push.v self.jattack
pushi.e 7
cmp.i.v EQ
bf [27]

:[26]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 68
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage

:[27]
push.v self.jattack
pushi.e 8
cmp.i.v EQ
bf [29]

:[28]
push.s "snd_joker_anything"@3395
conv.s.v
call.i scr_84_get_sound(argc=1)
call.i snd_play(argc=1)
popz.v
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 20
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.inv
pushi.e 61
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 3
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 240
pop.v.i global.turntimer

:[29]
push.v self.jattack
pushi.e 9
cmp.i.v EQ
bf [33]

:[30]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 48
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 4
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 4
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e 270
pop.v.i global.turntimer
push.v self.body
conv.v.i
pushenv [32]

:[31]
pushi.e 2
pop.v.i self.condition

:[32]
popenv [31]

:[33]
push.v self.jattack
pushi.e 10
cmp.i.v EQ
bf [35]

:[34]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 72
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage

:[35]
push.v self.jattack
pushi.e 11
cmp.i.v EQ
bf [39]

:[36]
push.v self.body
conv.v.i
push.v [stacktop]self.condition
pushi.e 4
cmp.i.v LT
bf [38]

:[37]
pushi.e 5
push.v self.body
conv.v.i
pop.v.i [stacktop]self.condition

:[38]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 76
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 3
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 6
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage

:[39]
push.v self.jattack
pushi.e 12
cmp.i.v EQ
bf [43]

:[40]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 71
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 2
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
push.v self.body
conv.v.i
pushenv [42]

:[41]
pushi.e 2
pop.v.i self.condition

:[42]
popenv [41]

:[43]
push.v self.jattack
pushi.e 13
cmp.i.v EQ
bf [47]

:[44]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 46
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 4
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 4
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e 330
pop.v.i global.turntimer
push.v self.body
conv.v.i
pushenv [46]

:[45]
pushi.e 2
pop.v.i self.condition

:[46]
popenv [45]

:[47]
push.v self.jattack
pushi.e 14
cmp.i.v EQ
bf [49]

:[48]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 74
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 4
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage

:[49]
push.v self.jattack
pushi.e 15
cmp.i.v EQ
bf [52]

:[50]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 77
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 4
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 1500
pop.v.i global.turntimer
push.v self.body
conv.v.i
push.v [stacktop]self.condition
pushi.e 4
cmp.i.v LT
bf [52]

:[51]
pushi.e 5
push.v self.body
conv.v.i
pop.v.i [stacktop]self.condition

:[52]
push.v self.jattack
pushi.e 99
cmp.i.v EQ
bf [56]

:[53]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 47
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 4
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 300
pop.v.i global.turntimer
push.v self.body
conv.v.i
pushenv [55]

:[54]
pushi.e 2
pop.v.i self.condition

:[55]
popenv [54]

:[56]
push.v self.jattack
pushi.e 999
cmp.i.v EQ
bf [58]

:[57]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 25
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 4
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 300
pop.v.i global.turntimer

:[58]
pushi.e 233
pushenv [60]

:[59]
pushi.e 1
pop.v.i self.joker

:[60]
popenv [59]
pushi.e 1
pop.v.i self.pfactor
push.v self.remat
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monsterat
pushi.e 1
pop.v.i self.attacked

:[end]