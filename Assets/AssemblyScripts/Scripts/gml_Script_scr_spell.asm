.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pop.v.v self.spell
pushbltn.v self.argument1
pop.v.v self.caster
pushi.e -5
pushbltn.v self.argument1
conv.v.i
push.v [array]global.chartarget
pop.v.v self.star
pushi.e 10
pop.v.i global.spelldelay
push.v self.spell
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [25]

:[1]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [26]

:[2]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [33]

:[3]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [42]

:[4]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [56]

:[5]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [63]

:[6]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [70]

:[7]
dup.v 0
pushi.e 100
cmp.i.v EQ
bt [82]

:[8]
dup.v 0
pushi.e 200
cmp.i.v EQ
bt [96]

:[9]
dup.v 0
pushi.e 201
cmp.i.v EQ
bt [97]

:[10]
dup.v 0
pushi.e 202
cmp.i.v EQ
bt [98]

:[11]
dup.v 0
pushi.e 203
cmp.i.v EQ
bt [101]

:[12]
dup.v 0
pushi.e 204
cmp.i.v EQ
bt [102]

:[13]
dup.v 0
pushi.e 205
cmp.i.v EQ
bt [103]

:[14]
dup.v 0
pushi.e 206
cmp.i.v EQ
bt [104]

:[15]
dup.v 0
pushi.e 207
cmp.i.v EQ
bt [105]

:[16]
dup.v 0
pushi.e 208
cmp.i.v EQ
bt [106]

:[17]
dup.v 0
pushi.e 209
cmp.i.v EQ
bt [107]

:[18]
dup.v 0
pushi.e 210
cmp.i.v EQ
bt [108]

:[19]
dup.v 0
pushi.e 211
cmp.i.v EQ
bt [109]

:[20]
dup.v 0
pushi.e 212
cmp.i.v EQ
bt [110]

:[21]
dup.v 0
pushi.e 213
cmp.i.v EQ
bt [117]

:[22]
dup.v 0
pushi.e 214
cmp.i.v EQ
bt [124]

:[23]
dup.v 0
pushi.e 215
cmp.i.v EQ
bt [125]

:[24]
b [126]

:[25]
b [126]

:[26]
pushi.e 0
pop.v.i self.cancelattack
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
call.i scr_retarget_spell(argc=0)
popz.v

:[28]
push.v self.cancelattack
pushi.e 0
cmp.i.v EQ
bf [32]

:[29]
pushi.e -5
pushbltn.v self.argument1
conv.v.i
push.v [array]global.battleat
pushi.e 10
mul.i.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monsterdf
pushi.e 3
mul.i.v
sub.v.v
call.i ceil(argc=1)
pop.v.v self.damage
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.automiss
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 0
pop.v.i self.damage

:[31]
push.v self.damage
push.v self.star
call.i scr_damage_enemy(argc=2)
popz.v
pushi.e 186
conv.i.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monstery
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monsterx
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.attack
pushi.e 410
push.v self.attack
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 8
push.v self.dm
conv.v.i
pop.v.i [stacktop]self.delay

:[32]
pushi.e 30
pop.v.i global.spelldelay
b [126]

:[33]
pushi.e -5
pushbltn.v self.argument1
conv.v.i
push.v [array]global.battlemag
pushi.e 5
mul.i.v
pop.v.v self.healnum
push.v self.healnum
push.v self.star
call.i scr_heal(argc=2)
popz.v
push.v self.healnum
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.charinstance
conv.v.i
pop.v.v [stacktop]self.healnum
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [41]

:[34]
pushi.e 293
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ha
push.v self.id
push.v self.ha
conv.v.i
pop.v.v [stacktop]self.target
call.i scr_dmgwriter_selfchar(argc=0)
pop.v.v self.dmgwr
push.v self.dmgwr
conv.v.i
pushenv [36]

:[35]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type

:[36]
popenv [35]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.maxhp
cmp.v.v GTE
bf [40]

:[37]
push.v self.dmgwr
conv.v.i
pushenv [39]

:[38]
pushi.e 3
pop.v.i self.specialmessage

:[39]
popenv [38]

:[40]
push.v self.healnum
push.v self.dmgwr
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.tu
pushi.e 1
add.i.v
pop.v.v self.tu

:[41]
popenv [34]
pushi.e 15
pop.v.i global.spelldelay
b [126]

:[42]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
call.i scr_retarget_spell(argc=0)
popz.v

:[44]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [55]

:[45]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [54]

:[46]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [53]

:[47]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 19
cmp.i.v NEQ
bf [49]

:[48]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 3
cmp.i.v NEQ
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 3
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.i [array]global.flag
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v
call.i scr_monsterdefeat(argc=0)
popz.v
b [53]

:[52]
pushi.e 1
pop.v.i self.pacifycon
pushi.e 999
pop.v.i global.spelldelay

:[53]
popenv [47]
b [55]

:[54]
pushi.e 290
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self._pspell
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monsterinstance
push.v self._pspell
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 1
push.v self._pspell
conv.v.i
pop.v.i [stacktop]self.fail

:[55]
pushi.e 20
pop.v.i global.spelldelay
b [126]

:[56]
pushi.e 0
pop.v.i self.cancelattack
pushi.e 30
pop.v.i global.spelldelay
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
call.i scr_retarget_spell(argc=0)
popz.v

:[58]
push.v self.cancelattack
pushi.e 0
cmp.i.v EQ
bf [62]

:[59]
pushi.e 70
pop.v.i global.spelldelay
pushi.e -5
pushbltn.v self.argument1
conv.v.i
push.v [array]global.battlemag
pushi.e 5
mul.i.v
pushi.e -5
pushbltn.v self.argument1
conv.v.i
push.v [array]global.battleat
pushi.e 11
mul.i.v
add.v.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monsterdf
pushi.e 3
mul.i.v
sub.v.v
call.i ceil(argc=1)
pop.v.v self.damage
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.automiss
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushi.e 0
pop.v.i self.damage

:[61]
pushi.e 295
conv.i.v
push.v 203.y
push.v 203.x
call.i instance_create(argc=3)
pop.v.v self.attack
push.v self.damage
push.v self.attack
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.star
push.v self.attack
conv.v.i
pop.v.v [stacktop]self.star
push.v self.caster
push.v self.attack
conv.v.i
pop.v.v [stacktop]self.caster
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monsterinstance
push.v self.attack
conv.v.i
pop.v.v [stacktop]self.target

:[62]
b [126]

:[63]
pushi.e 0
pop.v.i self.cancelattack
pushi.e 30
pop.v.i global.spelldelay
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
call.i scr_retarget_spell(argc=0)
popz.v

:[65]
push.v self.cancelattack
pushi.e 0
cmp.i.v EQ
bf [69]

:[66]
pushi.e 70
pop.v.i global.spelldelay
pushi.e -5
pushbltn.v self.argument1
conv.v.i
push.v [array]global.battlemag
pushi.e 6
mul.i.v
pushi.e -5
pushbltn.v self.argument1
conv.v.i
push.v [array]global.battleat
pushi.e 13
mul.i.v
add.v.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monsterdf
pushi.e 6
mul.i.v
sub.v.v
call.i ceil(argc=1)
pop.v.v self.damage
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.automiss
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
pushi.e 0
pop.v.i self.damage

:[68]
pushi.e 295
conv.i.v
push.v 203.y
push.v 203.x
call.i instance_create(argc=3)
pop.v.v self.attack
push.v self.damage
push.v self.attack
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.star
push.v self.attack
conv.v.i
pop.v.v [stacktop]self.star
push.v self.caster
push.v self.attack
conv.v.i
pop.v.v [stacktop]self.caster
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monsterinstance
push.v self.attack
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 1
push.v self.attack
conv.v.i
pop.v.i [stacktop]self.red

:[69]
b [126]

:[70]
pushi.e -5
pushbltn.v self.argument1
conv.v.i
push.v [array]global.battlemag
pushi.e 4
mul.i.v
pop.v.v self.healnum
pushi.e 0
pop.v.i self.i

:[71]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [81]

:[72]
push.v self.healnum
push.v self.i
call.i scr_heal(argc=2)
popz.v
push.v self.healnum
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
pop.v.v [stacktop]self.healnum
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [80]

:[73]
pushi.e 293
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ha
push.v self.id
push.v self.ha
conv.v.i
pop.v.v [stacktop]self.target
call.i scr_dmgwriter_selfchar(argc=0)
pop.v.v self.dmgwr
push.v self.dmgwr
conv.v.i
pushenv [75]

:[74]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type

:[75]
popenv [74]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.maxhp
cmp.v.v GTE
bf [79]

:[76]
push.v self.dmgwr
conv.v.i
pushenv [78]

:[77]
pushi.e 3
pop.v.i self.specialmessage

:[78]
popenv [77]

:[79]
push.v self.healnum
push.v self.dmgwr
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.tu
pushi.e 1
add.i.v
pop.v.v self.tu

:[80]
popenv [73]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [71]

:[81]
pushi.e 15
pop.v.i global.spelldelay
b [126]

:[82]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [84]

:[83]
call.i scr_retarget_spell(argc=0)
popz.v

:[84]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [95]

:[85]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.mercymod
pushi.e 100
cmp.i.v GTE
bf [94]

:[86]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monstertype
pushi.e 3
cmp.i.v NEQ
bf [90]

:[87]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [89]

:[88]
pushi.e 2
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.i [array]global.flag
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v
call.i scr_monsterdefeat(argc=0)
popz.v

:[89]
popenv [88]
b [93]

:[90]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [92]

:[91]
pushi.e 1
pop.v.i self.sparecon

:[92]
popenv [91]

:[93]
b [95]

:[94]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.sparepoint
push.v self.star
call.i scr_mercyadd(argc=2)
popz.v
pushi.e 290
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self._pspell
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monsterinstance
push.v self._pspell
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 1
push.v self._pspell
conv.v.i
pop.v.i [stacktop]self.fail
push.i 65535
push.v self._pspell
conv.v.i
pop.v.i [stacktop]self.flashcolor

:[95]
pushi.e 0
pop.v.i global.spelldelay
b [126]

:[96]
b [126]

:[97]
pushi.e 40
conv.i.v
call.i scr_healitemspell(argc=1)
popz.v
b [126]

:[98]
pushi.e -5
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.maxhp
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.reviveamt
pushi.e -5
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v LTE
bf [100]

:[99]
pushi.e -5
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.maxhp
call.i ceil(argc=1)
pushi.e -5
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.hp
call.i abs(argc=1)
add.v.v
pop.v.v self.reviveamt

:[100]
push.v self.reviveamt
call.i scr_healitemspell(argc=1)
popz.v
b [126]

:[101]
b [126]

:[102]
b [126]

:[103]
pushi.e 20
conv.i.v
call.i scr_healitemspell(argc=1)
popz.v
b [126]

:[104]
pushi.e 160
conv.i.v
call.i scr_healallitemspell(argc=1)
popz.v
b [126]

:[105]
pushi.e 80
conv.i.v
call.i scr_healallitemspell(argc=1)
popz.v
b [126]

:[106]
pushi.e 70
conv.i.v
call.i scr_healitemspell(argc=1)
popz.v
b [126]

:[107]
pushi.e 50
conv.i.v
call.i scr_healitemspell(argc=1)
popz.v
b [126]

:[108]
pushi.e 4
conv.i.v
call.i scr_healitemspell(argc=1)
popz.v
b [126]

:[109]
pushi.e 30
conv.i.v
call.i scr_healallitemspell(argc=1)
popz.v
b [126]

:[110]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.char
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
pushi.e 10
conv.i.v
call.i scr_healitemspell(argc=1)
popz.v

:[112]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [114]

:[113]
pushi.e 90
conv.i.v
call.i scr_healitemspell(argc=1)
popz.v

:[114]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [116]

:[115]
pushi.e 60
conv.i.v
call.i scr_healitemspell(argc=1)
popz.v

:[116]
b [126]

:[117]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.char
pushi.e 1
cmp.i.v EQ
bf [119]

:[118]
pushi.e 80
conv.i.v
call.i scr_healitemspell(argc=1)
popz.v

:[119]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [121]

:[120]
pushi.e 30
conv.i.v
call.i scr_healitemspell(argc=1)
popz.v

:[121]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [123]

:[122]
pushi.e 30
conv.i.v
call.i scr_healitemspell(argc=1)
popz.v

:[123]
b [126]

:[124]
pushi.e 500
conv.i.v
call.i scr_healitemspell(argc=1)
popz.v
b [126]

:[125]
pushi.e 60
conv.i.v
call.i scr_healitemspell(argc=1)
popz.v
b [126]

:[126]
popz.v

:[end]