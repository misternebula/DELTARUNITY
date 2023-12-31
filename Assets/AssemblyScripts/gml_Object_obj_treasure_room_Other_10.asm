.localvar 0 arguments

:[0]
pushi.e 166
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.charcon

:[2]
popenv [1]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 6
pop.v.i global.typer

:[4]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.image_index
push.s "obj_treasure_room_slash_Other_10_gml_14_0"@6372
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
push.v self.itemflag
conv.v.i
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [25]

:[5]
push.s "obj_treasure_room_slash_Other_10_gml_18_0"@6373
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 56
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_treasure_room_slash_Other_10_gml_19_0"@6374
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
pushbltn.v self.room
pushi.e 85
cmp.i.v EQ
bt [9]

:[8]
pushbltn.v self.room
pushi.e 120
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [22]

:[11]
pushi.e 3
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [13]

:[12]
push.v self.extratext
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.s "obj_treasure_room_slash_Other_10_gml_24_0"@6375
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_treasure_room_slash_Other_10_gml_26_0"@6376
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[16]
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [19]

:[17]
pushi.e 3
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [19]

:[18]
push.v self.extratext
pushi.e 1
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.s "obj_treasure_room_slash_Other_10_gml_31_0"@6377
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_treasure_room_slash_Other_10_gml_33_0"@6378
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 3
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_treasure_room_slash_Other_10_gml_35_0"@6379
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[22]
pushbltn.v self.room
pushi.e 80
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_treasure_room_slash_Other_10_gml_40_0"@6380
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
b [47]

:[25]
pushi.e 33
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_treasure_room_slash_Other_10_gml_48_0"@6381
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_49_0"@6382
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemtypename
push.v self.itemtype
push.s "armor"@167
cmp.s.v EQ
bf [27]

:[26]
push.v self.t_itemid
call.i scr_armorinfo(argc=1)
popz.v
push.v self.armornametemp
pop.v.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_54_0"@6384
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemtypename
push.v self.t_itemid
call.i scr_armorget(argc=1)
popz.v

:[27]
push.v self.itemtype
push.s "weapon"@166
cmp.s.v EQ
bf [29]

:[28]
push.v self.t_itemid
call.i scr_weaponinfo(argc=1)
popz.v
push.v self.weaponnametemp
pop.v.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_61_0"@6385
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemtypename
push.v self.t_itemid
call.i scr_weaponget(argc=1)
popz.v

:[29]
push.v self.itemtype
push.s "item"@103
cmp.s.v EQ
bf [31]

:[30]
push.v self.t_itemid
call.i scr_iteminfo(argc=1)
popz.v
push.v self.itemnameb
pop.v.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_68_0"@6386
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemtypename
push.v self.t_itemid
call.i scr_itemget(argc=1)
popz.v

:[31]
push.v self.itemtype
push.s "key"@6371
cmp.s.v EQ
bf [33]

:[32]
push.v self.t_itemid
call.i scr_keyiteminfo(argc=1)
popz.v
push.v self.tempkeyitemname
pop.v.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_75_0"@6387
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemtypename
push.v self.t_itemid
call.i scr_keyitemget(argc=1)
popz.v

:[33]
push.v self.itemtype
push.s "gold"@641
cmp.s.v EQ
bf [35]

:[34]
pushi.e 0
pop.v.i self.noroom
push.v global.gold
push.v self.t_itemid
add.v.v
pop.v.v global.gold
push.s "obj_treasure_room_slash_Other_10_gml_82_0"@6388
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemtypename
push.v self.t_itemid
call.i string(argc=1)
push.s "obj_treasure_room_slash_Other_10_gml_83_0"@6389
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
pop.v.v self.itemname

:[35]
push.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_87_0"@6390
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.itemtype
push.s "gold"@641
cmp.s.v EQ
bf [37]

:[36]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.msg
push.s "%"@3588
add.s.v
pop.i.v [array]global.msg

:[37]
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [46]

:[38]
push.v self.itemtypename
push.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_99_0"@6391
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 52
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [40]

:[39]
pushglb.v global.plot
pushi.e 40
cmp.i.v LTE
b [41]

:[40]
push.e 0

:[41]
bf [45]

:[42]
push.v self.itemtypename
push.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_103_0"@6392
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_treasure_room_slash_Other_10_gml_105_0"@6393
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_treasure_room_slash_Other_10_gml_106_0"@6394
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_treasure_room_slash_Other_10_gml_107_0"@6395
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 52
pushenv [44]

:[43]
pushi.e 1
pop.v.i self.equipcon

:[44]
popenv [43]

:[45]
pushi.e 1
pushi.e -5
push.v self.itemflag
conv.v.i
pop.v.i [array]global.flag
b [47]

:[46]
push.v self.itemtypename
push.s "obj_treasure_room_slash_Other_10_gml_115_0"@6396
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.close

:[47]
pushi.e 3
pop.v.i self.myinteract
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]