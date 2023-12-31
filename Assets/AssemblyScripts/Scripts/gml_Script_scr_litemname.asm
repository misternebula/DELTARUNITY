.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [end]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.litem
pop.v.v self.itemid
push.v self.itemid
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.s " "@24
pushi.e -5
push.v self.i
conv.v.i
pop.v.s [array]global.litemname

:[4]
push.v self.itemid
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.s "scr_litemname_slash_scr_litemname_gml_6_0"@110
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.litemname

:[6]
push.v self.itemid
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.s "scr_litemname_slash_scr_litemname_gml_7_0"@111
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.litemname

:[8]
push.v self.itemid
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
push.s "scr_litemname_slash_scr_litemname_gml_8_0"@112
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.litemname

:[10]
push.v self.itemid
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
push.s "scr_litemname_slash_scr_litemname_gml_9_0"@113
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.litemname

:[12]
push.v self.itemid
pushi.e 5
cmp.i.v EQ
bf [14]

:[13]
push.s "scr_litemname_slash_scr_litemname_gml_10_0"@114
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.litemname

:[14]
push.v self.itemid
pushi.e 6
cmp.i.v EQ
bf [16]

:[15]
push.s "scr_litemname_slash_scr_litemname_gml_11_0"@115
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.litemname

:[16]
push.v self.itemid
pushi.e 7
cmp.i.v EQ
bf [18]

:[17]
push.s "scr_litemname_slash_scr_litemname_gml_12_0"@116
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.litemname

:[18]
push.v self.itemid
pushi.e 8
cmp.i.v EQ
bf [20]

:[19]
push.s "scr_litemname_slash_scr_litemname_gml_13_0"@117
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.litemname

:[20]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]