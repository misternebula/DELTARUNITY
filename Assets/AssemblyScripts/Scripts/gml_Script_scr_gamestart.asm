.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.darkzone
pushi.e 0
pop.v.i global.filechoice
pushi.e 0
pop.v.i global.plot
push.s ""@2240
pop.v.s global.truename
push.s ""@2240
pushi.e -5
pushi.e 0
pop.v.s [array]global.othername
push.s ""@2240
pushi.e -5
pushi.e 1
pop.v.s [array]global.othername
push.s ""@2240
pushi.e -5
pushi.e 2
pop.v.s [array]global.othername
push.s ""@2240
pushi.e -5
pushi.e 3
pop.v.s [array]global.othername
push.s ""@2240
pushi.e -5
pushi.e 4
pop.v.s [array]global.othername
push.s ""@2240
pushi.e -5
pushi.e 5
pop.v.s [array]global.othername
push.s ""@2240
pushi.e -5
pushi.e 6
pop.v.s [array]global.othername
pushi.e 0
pop.v.i global.time
pushi.e 0
pop.v.i global.fighting
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.char
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.char
pushi.e 0
pop.v.i global.gold
pushi.e 0
pop.v.i global.xp
pushi.e 1
pop.v.i global.lv
pushi.e 0
pop.v.i global.inv
pushi.e 1
pop.v.i global.invc
pushi.e -1
pop.v.i global.charselect
pushi.e 1
pop.v.i global.encounterno
pushi.e 0
pop.v.i global.specialbattle
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
pushi.e 100
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.heromakex
pushi.e 200
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.heromakey
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.charauto
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
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.chardead
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.invincible
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
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.charcond
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.charauto
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.charauto
pushi.e 1
pushi.e -5
pushi.e 2
pop.v.i [array]global.charauto
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.charauto
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [12]

:[5]
pushi.e 200
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.hp
pushi.e 250
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.maxhp
pushi.e 10
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.at
pushi.e 2
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.df
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.mag
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.guts
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.charweapon
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.chararmor1
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.chararmor2
push.s "scr_gamestart_slash_scr_gamestart_gml_69_0"@2611
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.weaponstyle
pushi.e 0
pop.v.i self.q

:[6]
push.v self.q
pushi.e 4
cmp.i.v LT
bf [8]

:[7]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.itemat
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.itemdf
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.itemmag
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.itembolts
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.itemgrazeamt
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.itemgrazesize
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.itemboltspeed
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.itemspecial
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q
b [6]

:[8]
pushi.e 0
pop.v.i self.j

:[9]
push.v self.j
pushi.e 12
cmp.i.v LT
bf [11]

:[10]
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
pop.v.i [array]global.spell
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [9]

:[11]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[12]
pushi.e 100
pop.v.i global.boltspeed
pushi.e 100
pop.v.i global.grazeamt
pushi.e 100
pop.v.i global.grazesize
push.s " "@24
pushi.e -5
pushi.e 0
pop.v.s [array]global.charname
push.s "scr_gamestart_slash_scr_gamestart_gml_98_0"@2617
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.charname
push.s "scr_gamestart_slash_scr_gamestart_gml_99_0"@2618
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.charname
push.s "scr_gamestart_slash_scr_gamestart_gml_100_0"@2619
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.charname
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.charweapon
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.chararmor1
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.chararmor2
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.hp
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.maxhp
pushi.e 90
pushi.e -5
pushi.e 1
pop.v.i [array]global.hp
pushi.e 90
pushi.e -5
pushi.e 1
pop.v.i [array]global.maxhp
pushi.e 10
pushi.e -5
pushi.e 1
pop.v.i [array]global.at
pushi.e 2
pushi.e -5
pushi.e 2
pop.v.i [array]global.charweapon
pushi.e 110
pushi.e -5
pushi.e 2
pop.v.i [array]global.hp
pushi.e 110
pushi.e -5
pushi.e 2
pop.v.i [array]global.maxhp
pushi.e 14
pushi.e -5
pushi.e 2
pop.v.i [array]global.at
pushi.e 1
pushi.e -5
pushi.e 2
pop.v.i [array]global.mag
pushi.e 3
pushi.e -5
pushi.e 3
pop.v.i [array]global.charweapon
pushi.e 70
pushi.e -5
pushi.e 3
pop.v.i [array]global.hp
pushi.e 70
pushi.e -5
pushi.e 3
pop.v.i [array]global.maxhp
pushi.e 8
pushi.e -5
pushi.e 3
pop.v.i [array]global.at
pushi.e 7
pushi.e -5
pushi.e 3
pop.v.i [array]global.mag
pushi.e 7
pushi.e -5
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.spell
pushi.e 4
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.spell
pushi.e 3
pushi.e -5
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.spell
pushi.e 2
pushi.e -5
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.spell
call.i scr_spellinfo_all(argc=0)
popz.v
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 4
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 5
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 6
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 7
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 8
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 9
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 10
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 11
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 12
pop.v.i [array]global.item
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.keyitem
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.keyitem
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.keyitem
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.keyitem
pushi.e 0
pushi.e -5
pushi.e 4
pop.v.i [array]global.keyitem
pushi.e 0
pushi.e -5
pushi.e 5
pop.v.i [array]global.keyitem
pushi.e 0
pushi.e -5
pushi.e 6
pop.v.i [array]global.keyitem
pushi.e 0
pushi.e -5
pushi.e 7
pop.v.i [array]global.keyitem
pushi.e 0
pushi.e -5
pushi.e 8
pop.v.i [array]global.keyitem
pushi.e 0
pushi.e -5
pushi.e 9
pop.v.i [array]global.keyitem
pushi.e 0
pushi.e -5
pushi.e 10
pop.v.i [array]global.keyitem
pushi.e 0
pushi.e -5
pushi.e 11
pop.v.i [array]global.keyitem
pushi.e 0
pushi.e -5
pushi.e 12
pop.v.i [array]global.keyitem
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.weapon
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.weapon
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.weapon
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.weapon
pushi.e 0
pushi.e -5
pushi.e 4
pop.v.i [array]global.weapon
pushi.e 0
pushi.e -5
pushi.e 5
pop.v.i [array]global.weapon
pushi.e 0
pushi.e -5
pushi.e 6
pop.v.i [array]global.weapon
pushi.e 0
pushi.e -5
pushi.e 7
pop.v.i [array]global.weapon
pushi.e 0
pushi.e -5
pushi.e 8
pop.v.i [array]global.weapon
pushi.e 0
pushi.e -5
pushi.e 9
pop.v.i [array]global.weapon
pushi.e 0
pushi.e -5
pushi.e 10
pop.v.i [array]global.weapon
pushi.e 0
pushi.e -5
pushi.e 11
pop.v.i [array]global.weapon
pushi.e 0
pushi.e -5
pushi.e 12
pop.v.i [array]global.weapon
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.armor
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.armor
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.armor
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.armor
pushi.e 0
pushi.e -5
pushi.e 4
pop.v.i [array]global.armor
pushi.e 0
pushi.e -5
pushi.e 5
pop.v.i [array]global.armor
pushi.e 0
pushi.e -5
pushi.e 6
pop.v.i [array]global.armor
pushi.e 0
pushi.e -5
pushi.e 7
pop.v.i [array]global.armor
pushi.e 0
pushi.e -5
pushi.e 8
pop.v.i [array]global.armor
pushi.e 0
pushi.e -5
pushi.e 9
pop.v.i [array]global.armor
pushi.e 0
pushi.e -5
pushi.e 10
pop.v.i [array]global.armor
pushi.e 0
pushi.e -5
pushi.e 11
pop.v.i [array]global.armor
pushi.e 0
pushi.e -5
pushi.e 12
pop.v.i [array]global.armor
call.i scr_iteminfo_all(argc=0)
popz.v
pushi.e 0
pop.v.i global.tension
pushi.e 250
pop.v.i global.maxtension
pushi.e 0
pop.v.i global.grazetotal
pushi.e 0
pop.v.i global.grazeturn
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [15]

:[14]
pushi.e 500
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monstermakex
pushi.e 240
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monstermakey
push.i 2283728
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monsterinstancetype
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monster
push.s "scr_gamestart_slash_scr_gamestart_gml_206_0"@2623
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.monstername
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monstertype
pushi.e 3
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 2
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 20
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 20
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.sparepoint
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [13]

:[15]
pushi.e 0
pop.v.i global.bmenuno
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [21]

:[17]
pushi.e 0
pop.v.i self.j

:[18]
push.v self.j
pushi.e 20
cmp.i.v LT
bf [20]

:[19]
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
b [18]

:[20]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [16]

:[21]
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.mnfight
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 5
pop.v.i global.typer
push.s " "@24
pop.v.s global.msg
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [24]

:[23]
pushi.e 38
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.writersnd
push.s "spr_btact"@1828
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.writerimg
pushi.e 90
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.smdir
pushi.e 2
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.smspeed
push.i 505050
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.smface
pushi.e 79
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.smsprite
pushi.e 20
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.smalarm
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.smtype
pushi.e 100
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.smxx
pushi.e 110
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.smyy
push.i 8388736
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.smcolor
push.s " "@24
pushi.e -5
push.v self.i
conv.v.i
pop.v.s [array]global.smstring
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [22]

:[24]
pushi.e 15
pushi.e -5
pushi.e 1
pop.v.i [array]global.smalarm
pushi.e 70
pushi.e -5
pushi.e 1
pop.v.i [array]global.smyy
pushi.e 700
pushi.e -5
pushi.e 1
pop.v.i [array]global.smxx
pushi.e 180
pushi.e -5
pushi.e 1
pop.v.i [array]global.smdir
pushi.e 40
pushi.e -5
pushi.e 1
pop.v.i [array]global.smspeed
pushi.e 3
pushi.e -5
pushi.e 1
pop.v.i [array]global.smtype
pushi.e 78
pushi.e -5
pushi.e 1
pop.v.i [array]global.smsprite
push.i 16777215
pushi.e -5
pushi.e 1
pop.v.i [array]global.smcolor
push.s " "@24
pushi.e -5
pushi.e 1
pop.v.s [array]global.smstring
pushi.e 0
pop.v.i self.i

:[25]
push.v self.i
pushi.e 100
cmp.i.v LT
bf [27]

:[26]
push.s "%%"@1081
pushi.e -5
push.v self.i
conv.v.i
pop.v.s [array]global.msg
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [25]

:[27]
push.s " "@24
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s " "@24
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
push.s " "@24
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
push.s " "@24
pushi.e -5
pushi.e 3
pop.v.s [array]global.msg
push.s " "@24
pushi.e -5
pushi.e 4
pop.v.s [array]global.msg
pushi.e 148
pushi.e -5
pushi.e 0
pop.v.i [array]global.currentsong
pushi.e 148
pushi.e -5
pushi.e 1
pop.v.i [array]global.currentsong
pushi.e 148
pushi.e -5
pushi.e 0
pop.v.i [array]global.batmusic
pushi.e 148
pushi.e -5
pushi.e 1
pop.v.i [array]global.batmusic
pushi.e 0
pop.v.i global.debug
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e -1
pop.v.i global.choice
pushi.e 0
pop.v.i global.seriousbattle
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.entrance
pushi.e 0
pop.v.i self.i

:[28]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [30]

:[29]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.litem
push.s ""@2240
pushi.e -5
push.v self.i
conv.v.i
pop.v.s [array]global.litemname
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.phone
push.s ""@2240
pushi.e -5
push.v self.i
conv.v.i
pop.v.s [array]global.phonename
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
bf [33]

:[32]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.menucoord
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [31]

:[33]
pushi.e 0
pop.v.i self.i

:[34]
push.v self.i
pushi.e 100
cmp.i.v LT
bf [36]

:[35]
push.s " "@24
pushi.e -5
push.v self.i
conv.v.i
pop.v.s [array]global.msg
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [34]

:[36]
push.s "scr_gamestart_slash_scr_gamestart_gml_325_0"@2639
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.choicemsg
push.s "scr_gamestart_slash_scr_gamestart_gml_326_0"@2640
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.choicemsg
push.s "scr_gamestart_slash_scr_gamestart_gml_327_0"@2641
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.choicemsg
push.s "scr_gamestart_slash_scr_gamestart_gml_328_0"@2642
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.choicemsg
pushi.e 0
pop.v.i self.i

:[37]
push.v self.i
pushi.e 9999
cmp.i.v LT
bf [39]

:[38]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.flag
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [37]

:[39]
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.litem
push.s " "@24
pushi.e -5
pushi.e 0
pop.v.s [array]global.litemname
pushi.e 201
pushi.e -5
pushi.e 0
pop.v.i [array]global.phone
push.s "scr_gamestart_slash_scr_gamestart_gml_343_0"@2643
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.phonename
push.s "scr_gamestart_slash_scr_gamestart_gml_345_0"@2644
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v global.lcharname
pushi.e 2
pop.v.i global.lweapon
pushi.e 3
pop.v.i global.larmor
pushi.e 0
pop.v.i global.lxp
pushi.e 1
pop.v.i global.llv
pushi.e 2
pop.v.i global.lgold
pushi.e 20
pop.v.i global.lhp
pushi.e 20
pop.v.i global.lmaxhp
pushi.e 10
pop.v.i global.lat
pushi.e 10
pop.v.i global.ldf
pushi.e 1
pop.v.i global.lwstrength
pushi.e 0
pop.v.i global.ladef
pushi.e 0
pop.v.i global.facing
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.i

:[40]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [end]

:[41]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_pressed
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_held
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_released
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [40]

:[end]