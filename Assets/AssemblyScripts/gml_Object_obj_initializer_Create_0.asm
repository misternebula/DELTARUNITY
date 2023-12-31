.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
push.s "0123456789"@7398
conv.s.v
pushi.e 677
conv.i.v
call.i font_add_sprite_ext(argc=4)
pop.v.v global.damagefont
pushi.e 0
pop.v.i global.fighting
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 2
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
pushi.e 0
pop.v.i global.inv
pushi.e 1
pop.v.i global.invc
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
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
bf [9]

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
pushi.e 0
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
pop.v.i self.j

:[6]
push.v self.j
pushi.e 12
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
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.spell
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [6]

:[8]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[9]
push.s " "@24
pushi.e -5
pushi.e 0
pop.v.s [array]global.charname
push.s "obj_initializer_slash_Create_0_gml_48_0"@7401
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.charname
push.s "obj_initializer_slash_Create_0_gml_49_0"@7402
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.charname
push.s "obj_initializer_slash_Create_0_gml_50_0"@7403
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.charname
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
pushi.e 120
pushi.e -5
pushi.e 2
pop.v.i [array]global.hp
pushi.e 120
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
pushi.e 12
pushi.e -5
pushi.e 3
pop.v.i [array]global.mag
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
pushi.e 2
pushi.e -5
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.spell
call.i scr_spellinfo_all(argc=0)
popz.v
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.item
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.item
pushi.e 1
pushi.e -5
pushi.e 2
pop.v.i [array]global.item
pushi.e 1
pushi.e -5
pushi.e 3
pop.v.i [array]global.item
pushi.e 1
pushi.e -5
pushi.e 4
pop.v.i [array]global.item
pushi.e 1
pushi.e -5
pushi.e 5
pop.v.i [array]global.item
pushi.e 1
pushi.e -5
pushi.e 6
pop.v.i [array]global.item
pushi.e 1
pushi.e -5
pushi.e 7
pop.v.i [array]global.item
pushi.e 1
pushi.e -5
pushi.e 8
pop.v.i [array]global.item
pushi.e 1
pushi.e -5
pushi.e 9
pop.v.i [array]global.item
pushi.e 1
pushi.e -5
pushi.e 10
pop.v.i [array]global.item
pushi.e 1
pushi.e -5
pushi.e 11
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 12
pop.v.i [array]global.item
call.i scr_iteminfo_all(argc=0)
popz.v
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.l_item
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.l_item
pushi.e 2
pushi.e -5
pushi.e 2
pop.v.i [array]global.l_item
pushi.e 2
pushi.e -5
pushi.e 3
pop.v.i [array]global.l_item
pushi.e 1
pushi.e -5
pushi.e 4
pop.v.i [array]global.l_item
pushi.e 1
pushi.e -5
pushi.e 5
pop.v.i [array]global.l_item
pushi.e 2
pushi.e -5
pushi.e 6
pop.v.i [array]global.l_item
pushi.e 2
pushi.e -5
pushi.e 7
pop.v.i [array]global.l_item
pushi.e 1
pushi.e -5
pushi.e 8
pop.v.i [array]global.l_item
pushi.e 1
pushi.e -5
pushi.e 9
pop.v.i [array]global.l_item
pushi.e 2
pushi.e -5
pushi.e 10
pop.v.i [array]global.l_item
pushi.e 1
pushi.e -5
pushi.e 11
pop.v.i [array]global.l_item
pushi.e 0
pushi.e -5
pushi.e 12
pop.v.i [array]global.l_item
pushi.e 500
pop.v.i global.tension
pushi.e 1000
pop.v.i global.maxtension
pushi.e 0
pop.v.i global.grazetotal
pushi.e 0
pop.v.i global.grazeturn
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [12]

:[11]
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monster
push.s "obj_initializer_slash_Create_0_gml_114_0"@7405
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
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [10]

:[12]
pushi.e 0
pop.v.i global.bmenuno
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [18]

:[14]
pushi.e 0
pop.v.i self.j

:[15]
push.v self.j
pushi.e 20
cmp.i.v LT
bf [17]

:[16]
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
b [15]

:[17]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [13]

:[18]
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.mnfight
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 3
pop.v.i global.typer
push.s " "@24
pop.v.s global.msg
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i global.darkzone
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [21]

:[20]
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
push.s "obj_initializer_slash_Create_0_gml_158_0"@7406
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.smstring
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [19]

:[21]
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
push.s "obj_initializer_slash_Create_0_gml_169_0"@7407
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.smstring
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 100
cmp.i.v LT
bf [24]

:[23]
push.s "%%"@1081
pushi.e -5
push.v self.i
conv.v.i
pop.v.s [array]global.msg
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [22]

:[24]
push.s "obj_initializer_slash_Create_0_gml_176_0"@7408
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_initializer_slash_Create_0_gml_179_0"@7409
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "%%"@1081
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
push.s "obj_initializer_slash_Create_0_gml_182_0"@7410
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_initializer_slash_Create_0_gml_183_0"@7411
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[end]