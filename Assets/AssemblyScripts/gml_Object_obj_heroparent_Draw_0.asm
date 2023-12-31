.localvar 0 arguments

:[0]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v GT
bf [97]

:[1]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.faceaction
pushi.e 6
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 6
pop.v.i self.state

:[6]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.hurt
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [26]

:[10]
pushi.e 0
pop.v.i self.acttimer
push.v self.idlesprite
pop.v.v self.thissprite
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.faceaction
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.attackreadysprite
pop.v.v self.thissprite

:[12]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.faceaction
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
push.v self.itemreadysprite
pop.v.v self.thissprite

:[14]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.faceaction
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
push.v self.spellreadysprite
pop.v.v self.thissprite

:[16]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.faceaction
pushi.e 6
cmp.i.v EQ
bf [18]

:[17]
push.v self.actreadysprite
pop.v.v self.thissprite

:[18]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.charcond
pushi.e 5
cmp.i.v EQ
bf [20]

:[19]
push.v self.defeatsprite
pop.v.v self.thissprite
pushi.e 9
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.faceaction

:[20]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.faceaction
pushi.e 4
cmp.i.v EQ
bf [24]

:[21]
push.v self.defendsprite
pop.v.v self.thissprite
push.v self.defendtimer
pop.v.v self.index
push.v self.defendtimer
push.v self.defendframes
cmp.v.v LT
bf [23]

:[22]
push.v self.defendtimer
push.d 0.5
add.d.v
pop.v.v self.defendtimer

:[23]
b [25]

:[24]
pushi.e 0
pop.v.i self.defendtimer
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pop.v.v self.index

:[25]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[26]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v self.hurt
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [46]

:[30]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [42]

:[31]
pushi.e 99
conv.i.v
call.i snd_stop(argc=1)
popz.v
push.v self.object_index
pushi.e 202
cmp.i.v EQ
bf [33]

:[32]
pushi.e 99
conv.i.v
call.i snd_play(argc=1)
popz.v

:[33]
push.v self.object_index
pushi.e 204
cmp.i.v EQ
bf [35]

:[34]
pushi.e 99
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.ls
push.d 1.15
conv.d.v
push.v self.ls
call.i snd_pitch(argc=2)
popz.v

:[35]
push.v self.object_index
pushi.e 203
cmp.i.v EQ
bf [37]

:[36]
pushi.e 99
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.ls
push.d 0.9
conv.d.v
push.v self.ls
call.i snd_pitch(argc=2)
popz.v

:[37]
push.v self.points
pushi.e 150
cmp.i.v EQ
bf [41]

:[38]
pushi.e 83
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 83
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [40]

:[39]
pushi.e 183
conv.i.v
push.v self.y
pushi.e 30
add.i.v
pushi.e 30
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
push.v self.mywidth
add.v.v
pushi.e 50
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.anim
pushi.e 861
push.v self.anim
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.anim
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e -20
push.v self.anim
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 2
push.v self.anim
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.anim
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 2
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.anim
conv.v.i
pop.v.v [stacktop]self.hspeed
push.d -0.25
push.v self.anim
conv.v.i
pop.v.d [stacktop]self.friction
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [39]

:[40]
popz.i

:[41]
pushi.e 1
pop.v.i self.attacked
pushi.e 10
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[42]
push.v self.attacktimer
push.v self.attackframes
cmp.v.v LT
bf [44]

:[43]
push.v self.attacktimer
pop.v.v self.image_index
b [45]

:[44]
push.v self.attackframes
pop.v.v self.image_index

:[45]
push.v self.attacksprite
pop.v.v self.thissprite
push.v self.image_index
pop.v.v self.index
push.v self.attacktimer
push.v self.attackspeed
add.v.v
pop.v.v self.attacktimer

:[46]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [48]

:[47]
push.v self.hurt
pushi.e 0
cmp.i.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [58]

:[50]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.itemed
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1
pop.v.i self.itemed
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[52]
push.v self.attacktimer
push.v self.spellframes
cmp.v.v LT
bf [54]

:[53]
push.v self.attacktimer
pop.v.v self.image_index
b [55]

:[54]
push.v self.spellframes
pop.v.v self.image_index

:[55]
call.i scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [57]

:[56]
pushi.e 0
pop.v.i self.attacktimer

:[57]
push.v self.spellsprite
pop.v.v self.thissprite
push.v self.image_index
pop.v.v self.index
push.v self.attacktimer
push.d 0.5
add.d.v
pop.v.v self.attacktimer

:[58]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [60]

:[59]
push.v self.hurt
pushi.e 0
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [70]

:[62]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.itemed
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
pushi.e 1
pop.v.i self.itemed
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[64]
push.v self.attacktimer
push.v self.itemframes
cmp.v.v LT
bf [66]

:[65]
push.v self.attacktimer
pop.v.v self.image_index
b [67]

:[66]
push.v self.itemframes
pop.v.v self.image_index

:[67]
call.i scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
pushi.e 0
pop.v.i self.attacktimer

:[69]
push.v self.image_index
pop.v.v self.index
push.v self.itemsprite
pop.v.v self.thissprite
push.v self.attacktimer
push.d 0.5
add.d.v
pop.v.v self.attacktimer

:[70]
push.v self.state
pushi.e 6
cmp.i.v EQ
bf [78]

:[71]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [75]

:[72]
push.v self.acttimer
push.v self.actframes
cmp.v.v LT
bf [74]

:[73]
push.v self.acttimer
push.d 0.5
add.d.v
pop.v.v self.acttimer

:[74]
b [76]

:[75]
push.v self.acttimer
push.d 0.5
add.d.v
pop.v.v self.acttimer

:[76]
push.v self.actsprite
pop.v.v self.thissprite
push.v self.acttimer
pop.v.v self.index
push.v self.acttimer
push.v self.actreturnframes
cmp.v.v GTE
bf [78]

:[77]
pushi.e 0
pop.v.i self.acttimer
pushi.e 0
pop.v.i self.state
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.faceaction

:[78]
push.v self.state
pushi.e 7
cmp.i.v EQ
bf [82]

:[79]
pushi.e 0
pop.v.i self.hurt
pushi.e 0
pop.v.i self.hurttimer
push.v self.victoryanim
push.v self.victoryframes
cmp.v.v LT
bf [81]

:[80]
push.v self.victorysprite
pop.v.v self.thissprite
push.v self.victoryanim
pop.v.v self.index
push.v self.victoryanim
push.d 0.334
add.d.v
pop.v.v self.victoryanim
b [82]

:[81]
push.v self.normalsprite
pop.v.v self.thissprite
pushi.e 0
pop.v.i self.index

:[82]
push.v self.hurt
pushi.e 1
cmp.i.v EQ
bf [96]

:[83]
push.v self.hurttimer
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.hurtindex
push.v self.hurtindex
pushi.e 2
cmp.i.v GT
bf [85]

:[84]
pushi.e 2
pop.v.i self.hurtindex

:[85]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.charcond
pushi.e 5
cmp.i.v EQ
bf [87]

:[86]
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.faceaction
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.charmove
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.charcond

:[87]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.faceaction
pushi.e 0
cmp.i.v EQ
bf [89]

:[88]
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.faceaction

:[89]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.faceaction
pushi.e 4
cmp.i.v NEQ
bf [91]

:[90]
pushi.e 1
pop.v.i self.specdraw
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 20
sub.i.v
push.v self.hurtindex
pushi.e 10
mul.i.v
add.v.v
push.v self.hurtindex
push.v self.hurtsprite
call.i draw_sprite_ext(argc=9)
popz.v
b [92]

:[91]
pushi.e 1
pop.v.i self.specdraw
push.v self.defendsprite
pop.v.v self.thissprite
push.v self.defendtimer
pop.v.v self.index
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 20
sub.i.v
push.v self.hurtindex
pushi.e 10
mul.i.v
add.v.v
push.v self.defendtimer
push.v self.defendsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[92]
push.v self.hurttimer
pushi.e 15
cmp.i.v GT
bf [95]

:[93]
pushi.e 0
pop.v.i self.hurttimer
pushi.e 0
pop.v.i self.hurt
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.faceaction
pushi.e 5
cmp.i.v EQ
bf [95]

:[94]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.faceaction

:[95]
push.v self.hurttimer
pushi.e 1
add.i.v
pop.v.v self.hurttimer

:[96]
b [98]

:[97]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.charcond
pushi.e 0
pop.v.i self.hurttimer
pushi.e 0
pop.v.i self.hurt
push.v self.defeatsprite
pop.v.v self.thissprite
pushi.e 0
pop.v.i self.index
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[98]
push.v self.specdraw
pushi.e 0
cmp.i.v EQ
bf [101]

:[99]
push.v self.thissprite
pop.v.v self.sprite_index
push.v self.index
pop.v.v self.image_index
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.index
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
push.v self.fsiner
pushi.e 1
add.i.v
pop.v.v self.fsiner
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
call.i d3d_set_fog(argc=4)
popz.v
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.index
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i d3d_set_fog(argc=4)
popz.v

:[101]
pushi.e 0
pop.v.i self.specdraw
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [103]

:[102]
pushi.e 0
pop.v.i self.flash

:[103]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.targeted
pushi.e 1
cmp.i.v EQ
bf [107]

:[104]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [106]

:[105]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
pushi.e 415
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[106]
b [115]

:[107]
push.v self.combatdarken
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
pushi.e 195
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [110]

:[109]
push.e 0

:[110]
bf [115]

:[111]
push.v self.darkify
pushi.e 1
cmp.i.v EQ
bf [115]

:[112]
push.v self.darkentimer
pushi.e 15
cmp.i.v LT
bf [114]

:[113]
push.v self.darkentimer
pushi.e 1
add.i.v
pop.v.v self.darkentimer

:[114]
push.v self.darkentimer
pushi.e 30
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[115]
push.v self.darkify
pushi.e 0
cmp.i.v EQ
bf [119]

:[116]
push.v self.darkentimer
pushi.e 0
cmp.i.v GT
bf [118]

:[117]
push.v self.darkentimer
pushi.e 3
sub.i.v
pop.v.v self.darkentimer

:[118]
push.v self.darkentimer
pushi.e 30
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[119]
pushi.e 0
pop.v.i self.becomeflash

:[end]