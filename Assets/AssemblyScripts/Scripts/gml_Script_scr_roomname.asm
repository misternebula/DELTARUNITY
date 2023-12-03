.localvar 0 arguments

:[0]
push.s " "@24
pop.v.s self.roomname
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "---"@2273
pop.v.s self.roomname

:[2]
pushbltn.v self.argument0
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.s "scr_roomname_slash_scr_roomname_gml_3_0"@2757
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[4]
pushbltn.v self.argument0
pushi.e 35
cmp.i.v EQ
bf [6]

:[5]
push.s "scr_roomname_slash_scr_roomname_gml_4_0"@2758
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[6]
pushbltn.v self.argument0
pushi.e 40
cmp.i.v EQ
bf [8]

:[7]
push.s "scr_roomname_slash_scr_roomname_gml_5_0"@2759
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[8]
pushbltn.v self.argument0
pushi.e 45
cmp.i.v EQ
bf [10]

:[9]
push.s "scr_roomname_slash_scr_roomname_gml_6_0"@2760
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[10]
pushbltn.v self.argument0
pushi.e 49
cmp.i.v EQ
bf [12]

:[11]
push.s "scr_roomname_slash_scr_roomname_gml_7_0"@2761
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[12]
pushbltn.v self.argument0
pushi.e 59
cmp.i.v EQ
bf [14]

:[13]
push.s "scr_roomname_slash_scr_roomname_gml_8_0"@2762
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[14]
pushbltn.v self.argument0
pushi.e 68
cmp.i.v EQ
bf [16]

:[15]
push.s "scr_roomname_slash_scr_roomname_gml_9_0"@2763
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[16]
pushbltn.v self.argument0
pushi.e 71
cmp.i.v EQ
bf [18]

:[17]
push.s "scr_roomname_slash_scr_roomname_gml_10_0"@2764
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[18]
pushbltn.v self.argument0
pushi.e 73
cmp.i.v EQ
bf [20]

:[19]
push.s "scr_roomname_slash_scr_roomname_gml_11_0"@2765
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[20]
pushbltn.v self.argument0
pushi.e 82
cmp.i.v EQ
bf [22]

:[21]
push.s "scr_roomname_slash_scr_roomname_gml_12_0"@2766
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[22]
pushbltn.v self.argument0
pushi.e 90
cmp.i.v EQ
bf [24]

:[23]
push.s "scr_roomname_slash_scr_roomname_gml_13_0"@2767
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[24]
pushbltn.v self.argument0
pushi.e 96
cmp.i.v EQ
bf [26]

:[25]
push.s "scr_roomname_slash_scr_roomname_gml_14_0"@2768
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[26]
pushbltn.v self.argument0
pushi.e 97
cmp.i.v EQ
bf [28]

:[27]
push.s "scr_roomname_slash_scr_roomname_gml_15_0"@2769
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[28]
pushbltn.v self.argument0
pushi.e 107
cmp.i.v EQ
bf [30]

:[29]
push.s "scr_roomname_slash_scr_roomname_gml_16_0"@2770
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[30]
pushbltn.v self.argument0
pushi.e 114
cmp.i.v EQ
bf [32]

:[31]
push.s "scr_roomname_slash_scr_roomname_gml_17_0"@2771
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[32]
pushbltn.v self.argument0
pushi.e 123
cmp.i.v EQ
bf [34]

:[33]
push.s "scr_roomname_slash_scr_roomname_gml_18_0"@2772
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[34]
pushbltn.v self.argument0
pushi.e 126
cmp.i.v EQ
bf [36]

:[35]
push.s "scr_roomname_slash_scr_roomname_gml_19_0"@2773
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[36]
pushbltn.v self.argument0
pushi.e 111
cmp.i.v EQ
bf [38]

:[37]
push.s "scr_roomname_slash_scr_roomname_gml_20_0"@2774
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.roomname

:[38]
pushbltn.v self.argument0
pushi.e 56
cmp.i.v EQ
bf [43]

:[39]
pushglb.v global.lang
push.s "en"@2775
cmp.s.v EQ
bf [41]

:[40]
push.s "Field - Maze of Death"@2776
pop.v.s self.roomname

:[41]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [43]

:[42]
push.s "平原 - 死の迷路"@2777
pop.v.s self.roomname

:[43]
push.v self.roomname
ret.v

:[end]