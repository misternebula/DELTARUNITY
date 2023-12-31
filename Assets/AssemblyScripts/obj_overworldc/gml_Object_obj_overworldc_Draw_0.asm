.localvar 0 arguments
.localvar 1 stat_right 4486

:[0]
push.v self.buffer
pushi.e 1
add.i.v
pop.v.v self.buffer
pushglb.v global.interact
pushi.e 5
cmp.i.v EQ
bf [end]

:[1]
pushbltn.v self.view_current
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushbltn.v self.view_current
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 10
add.i.v
pop.v.v self.yy
push.v self.yy
pop.v.v self.moveyy
pushi.e 263
pop.v.i local.stat_right
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [3]

:[2]
pushi.e 300
pop.v.i local.stat_right

:[3]
push.v 326.y
push.v self.yy
pushi.e 120
add.i.v
cmp.v.v GT
bf [5]

:[4]
push.v self.moveyy
pushi.e 135
add.i.v
pop.v.v self.moveyy

:[5]
pushglb.v global.menuno
pushi.e 4
cmp.i.v NEQ
bf [41]

:[6]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 70
push.v self.moveyy
add.v.i
pushi.e 86
push.v self.xx
add.v.i
pushi.e 16
push.v self.moveyy
add.v.i
pushi.e 16
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 147
push.v self.yy
add.v.i
pushi.e 86
push.v self.xx
add.v.i
pushi.e 74
push.v self.yy
add.v.i
pushi.e 16
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bt [9]

:[7]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bt [9]

:[8]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
pushi.e 0
conv.i.v
pushi.e 196
push.v self.yy
add.v.i
pushi.e 266
push.v self.xx
add.v.i
pushi.e 16
push.v self.yy
add.v.i
pushi.e 94
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[12]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
conv.i.v
pushi.e 224
push.v self.yy
add.v.i
pushloc.v local.stat_right
pushi.e 3
add.i.v
push.v self.xx
add.v.v
pushi.e 16
push.v self.yy
add.v.i
pushi.e 94
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[14]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
conv.i.v
pushi.e 150
push.v self.yy
add.v.i
pushi.e 266
push.v self.xx
add.v.i
pushi.e 16
push.v self.yy
add.v.i
pushi.e 94
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[16]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
conv.i.v
pushi.e 216
push.v self.yy
add.v.i
pushi.e 266
push.v self.xx
add.v.i
pushi.e 16
push.v self.yy
add.v.i
pushi.e 94
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[18]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 67
push.v self.moveyy
add.v.i
pushi.e 83
push.v self.xx
add.v.i
pushi.e 19
push.v self.moveyy
add.v.i
pushi.e 19
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 144
push.v self.yy
add.v.i
pushi.e 83
push.v self.xx
add.v.i
pushi.e 77
push.v self.yy
add.v.i
pushi.e 19
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bt [21]

:[19]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bt [21]

:[20]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [24]

:[23]
pushi.e 0
conv.i.v
pushi.e 193
push.v self.yy
add.v.i
pushi.e 263
push.v self.xx
add.v.i
pushi.e 19
push.v self.yy
add.v.i
pushi.e 97
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[24]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
pushi.e 0
conv.i.v
pushi.e 221
push.v self.yy
add.v.i
pushloc.v local.stat_right
push.v self.xx
add.v.v
pushi.e 19
push.v self.yy
add.v.i
pushi.e 97
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[26]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
pushi.e 0
conv.i.v
pushi.e 147
push.v self.yy
add.v.i
pushi.e 263
push.v self.xx
add.v.i
pushi.e 19
push.v self.yy
add.v.i
pushi.e 97
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[28]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
conv.i.v
pushi.e 213
push.v self.yy
add.v.i
pushi.e 263
push.v self.xx
add.v.i
pushi.e 19
push.v self.yy
add.v.i
pushi.e 97
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[30]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_36_0"@10067
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.lhp
call.i string(argc=1)
add.v.v
push.s "/"@357
add.s.v
pushglb.v global.lmaxhp
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 49
push.v self.moveyy
add.v.i
pushi.e 23
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_37_0"@10068
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.llv
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 40
push.v self.moveyy
add.v.i
pushi.e 23
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_39_0"@10069
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.lgold
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 58
push.v self.moveyy
add.v.i
pushi.e 23
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "main"@1558
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [32]

:[31]
pushglb.v global.lcharname
call.i string_hash_to_newline(argc=1)
pushi.e 20
push.v self.moveyy
add.v.i
pushi.e 20
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
b [33]

:[32]
pushglb.v global.lcharname
call.i string_hash_to_newline(argc=1)
pushi.e 20
push.v self.moveyy
add.v.i
pushi.e 23
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v

:[33]
push.s "obj_overworldc_slash_Draw_0_gml_42_0"@10070
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 84
push.v self.yy
add.v.i
pushi.e 42
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_43_0"@10071
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 102
push.v self.yy
add.v.i
pushi.e 42
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_44_0"@10072
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 120
push.v self.yy
add.v.i
pushi.e 42
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bt [35]

:[34]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
b [36]

:[35]
push.e 1

:[36]
bf [41]

:[37]
pushi.e 0
pop.v.i self.i

:[38]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [40]

:[39]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.litemname
call.i string_hash_to_newline(argc=1)
pushi.e 30
push.v self.yy
add.v.i
push.v self.i
pushi.e 16
mul.i.v
add.v.v
pushi.e 116
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [38]

:[40]
push.s "obj_overworldc_slash_Draw_0_gml_52_0"@10073
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 170
push.v self.yy
add.v.i
pushi.e 116
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_53_0"@10074
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 170
push.v self.yy
add.v.i
pushi.e 116
push.v self.xx
add.v.i
pushi.e 48
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_54_0"@10075
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 170
push.v self.yy
add.v.i
pushi.e 116
push.v self.xx
add.v.i
pushi.e 105
add.i.v
call.i draw_text(argc=3)
popz.v

:[41]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [45]

:[42]
pushi.e 0
pop.v.i self.i

:[43]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [45]

:[44]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.phonename
call.i string_hash_to_newline(argc=1)
pushi.e 30
push.v self.yy
add.v.i
push.v self.i
pushi.e 16
mul.i.v
add.v.v
pushi.e 116
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [43]

:[45]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [97]

:[46]
pushglb.v global.lcharname
push.s "obj_overworldc_slash_Draw_0_gml_66_0"@10076
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 32
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_67_0"@10077
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.llv
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 62
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.lhp
call.i string(argc=1)
push.s "obj_overworldc_slash_Draw_0_gml_68_0"@10078
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushglb.v global.lmaxhp
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 78
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.lat
call.i string(argc=1)
push.s "obj_overworldc_slash_Draw_0_gml_70_0"@10079
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushglb.v global.lwstrength
call.i string(argc=1)
add.v.v
push.s ")"@3428
add.s.v
call.i string_hash_to_newline(argc=1)
pushi.e 110
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.ldf
call.i string(argc=1)
push.s "obj_overworldc_slash_Draw_0_gml_71_0"@10080
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushglb.v global.ladef
call.i string(argc=1)
add.v.v
push.s ")"@3428
add.s.v
call.i string_hash_to_newline(argc=1)
pushi.e 126
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_72_0"@10081
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponname
push.s "obj_overworldc_slash_Draw_0_gml_73_0"@10082
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armorname
pushglb.v global.lweapon
pushi.e 2
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_overworldc_slash_Draw_0_gml_74_0"@10083
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponname

:[48]
pushglb.v global.lweapon
pushi.e 6
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_overworldc_slash_Draw_0_gml_75_0"@10084
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponname

:[50]
pushglb.v global.lweapon
pushi.e 7
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_overworldc_slash_Draw_0_gml_76_0"@10085
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponname

:[52]
pushglb.v global.larmor
pushi.e 3
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_overworldc_slash_Draw_0_gml_77_0"@10086
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armorname

:[54]
push.s "obj_overworldc_slash_Draw_0_gml_80_0"@10087
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.weaponname
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 156
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_81_0"@10088
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.armorname
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 172
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_82_0"@10089
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.lgold
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 192
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.lcharname
call.i string_length(argc=1)
pushi.e 7
cmp.i.v GTE
bf [56]

:[55]
push.s "obj_overworldc_slash_Draw_0_gml_88_0"@10090
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 32
push.v self.yy
add.v.i
pushi.e 192
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v

:[56]
pushi.e 0
pop.v.i self.nextlevel
push.s "obj_overworldc_slash_Draw_0_gml_91_0"@10092
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.lxp
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 110
push.v self.yy
add.v.i
pushi.e 192
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.llv
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
pushi.e 10
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[58]
pushglb.v global.llv
pushi.e 2
cmp.i.v EQ
bf [60]

:[59]
pushi.e 30
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[60]
pushglb.v global.llv
pushi.e 3
cmp.i.v EQ
bf [62]

:[61]
pushi.e 70
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[62]
pushglb.v global.llv
pushi.e 4
cmp.i.v EQ
bf [64]

:[63]
pushi.e 120
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[64]
pushglb.v global.llv
pushi.e 5
cmp.i.v EQ
bf [66]

:[65]
pushi.e 200
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[66]
pushglb.v global.llv
pushi.e 6
cmp.i.v EQ
bf [68]

:[67]
pushi.e 300
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[68]
pushglb.v global.llv
pushi.e 7
cmp.i.v EQ
bf [70]

:[69]
pushi.e 500
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[70]
pushglb.v global.llv
pushi.e 8
cmp.i.v EQ
bf [72]

:[71]
pushi.e 800
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[72]
pushglb.v global.llv
pushi.e 9
cmp.i.v EQ
bf [74]

:[73]
pushi.e 1200
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[74]
pushglb.v global.llv
pushi.e 10
cmp.i.v EQ
bf [76]

:[75]
pushi.e 1700
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[76]
pushglb.v global.llv
pushi.e 11
cmp.i.v EQ
bf [78]

:[77]
pushi.e 2500
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[78]
pushglb.v global.llv
pushi.e 12
cmp.i.v EQ
bf [80]

:[79]
pushi.e 3500
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[80]
pushglb.v global.llv
pushi.e 13
cmp.i.v EQ
bf [82]

:[81]
pushi.e 5000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[82]
pushglb.v global.llv
pushi.e 14
cmp.i.v EQ
bf [84]

:[83]
pushi.e 7000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[84]
pushglb.v global.llv
pushi.e 15
cmp.i.v EQ
bf [86]

:[85]
pushi.e 10000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[86]
pushglb.v global.llv
pushi.e 16
cmp.i.v EQ
bf [88]

:[87]
pushi.e 15000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[88]
pushglb.v global.llv
pushi.e 17
cmp.i.v EQ
bf [90]

:[89]
pushi.e 25000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[90]
pushglb.v global.llv
pushi.e 18
cmp.i.v EQ
bf [92]

:[91]
push.i 50000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[92]
pushglb.v global.llv
pushi.e 19
cmp.i.v EQ
bf [94]

:[93]
push.i 99999
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[94]
pushglb.v global.llv
pushi.e 20
cmp.i.v GTE
bf [96]

:[95]
pushi.e 0
pop.v.i self.nextlevel

:[96]
push.s "obj_overworldc_slash_Draw_0_gml_112_0"@10093
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.nextlevel
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 126
push.v self.yy
add.v.i
pushi.e 192
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v

:[97]
pushglb.v global.menuno
pushi.e 444
cmp.i.v EQ
bf [98]

:[98]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [100]

:[99]
pushi.e 88
push.v self.yy
add.v.i
pushi.e 18
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
mul.v.i
add.v.v
pushi.e 28
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 910
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[100]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
pushi.e 34
push.v self.yy
add.v.i
pushi.e 16
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
mul.v.i
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 910
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[102]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [104]

:[103]
pushi.e 34
push.v self.yy
add.v.i
pushi.e 16
pushi.e -5
pushi.e 3
push.v [array]global.menucoord
mul.v.i
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 910
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[104]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
bf [106]

:[105]
pushi.e 34
push.v self.yy
add.v.i
pushi.e 16
pushi.e -5
pushi.e 6
push.v [array]global.menucoord
mul.v.i
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 910
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[106]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [108]

:[107]
pushi.e 34
push.v self.yy
add.v.i
pushi.e 16
pushi.e -5
pushi.e 7
push.v [array]global.menucoord
mul.v.i
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 910
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[108]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [end]

:[109]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 0
cmp.i.v EQ
bf [111]

:[110]
pushi.e 174
push.v self.yy
add.v.i
pushi.e 104
push.v self.xx
add.v.i
pushi.e 45
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
mul.v.i
add.v.v
pushi.e 0
conv.i.v
pushi.e 910
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[111]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 1
cmp.i.v EQ
bf [113]

:[112]
pushi.e 174
push.v self.yy
add.v.i
pushi.e 104
push.v self.xx
add.v.i
pushi.e 45
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
mul.v.i
pushi.e 3
add.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 910
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[113]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 2
cmp.i.v EQ
bf [end]

:[114]
pushi.e 174
push.v self.yy
add.v.i
pushi.e 104
push.v self.xx
add.v.i
pushi.e 45
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
mul.v.i
pushi.e 15
add.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 910
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]