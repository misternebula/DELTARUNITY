.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.CURX
pushi.e 0
pop.v.i self.CURY
pushi.e 0
pop.v.i self.XMAX
pushi.e 0
pop.v.i self.YMAX
push.s "DEVICE_CHOICE_slash_Create_0_gml_7_0"@9489
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]self.NAME
pushi.e 20
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.NAMEX
pushi.e 20
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.NAMEY
pushi.e 40
pop.v.i self.PLAYERNAMEY
pushi.e 0
pop.v.i self.TYPE
push.s ""@2240
pop.v.s self.NAMESTRING
pushi.e 12
pop.v.i self.STRINGMAX
pushi.e 0
pop.v.i self.xoff
pushi.e 0
pop.v.i self.yoff
pushi.e 0
pop.v.i self.LANGSUBTYPE
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.LANGSUBTYPE

:[2]
pushi.e -1
pop.v.i global.choice
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.s "DEVICE_CHOICE_slash_Create_0_gml_22_0"@9493
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]self.NAME
push.s "DEVICE_CHOICE_slash_Create_0_gml_23_0"@9494
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]self.NAME
pushi.e 110
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.NAMEX
pushi.e 190
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.NAMEX
pushi.e 180
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.NAMEY
pushi.e 180
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.NAMEY
pushi.e 1
pop.v.i self.XMAX
pushi.e -1
pop.v.i self.CURX
pushi.e 150
pop.v.i self.IDEALX
pushi.e 180
pop.v.i self.IDEALY

:[4]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [9]

:[5]
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 7
cmp.i.v LTE
bf [8]

:[7]
pushi.e 1
push.v self.i
add.v.i
call.i string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]self.NAME
pushi.e 80
push.v self.i
pushi.e 20
mul.i.v
add.v.i
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]self.NAMEX
pushi.e 180
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.NAMEY
push.v self.XMAX
pushi.e 1
add.i.v
pop.v.v self.XMAX
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[8]
pushi.e 180
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.NAMEY
pushi.e 180
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.NAMEY
pushi.e 7
pop.v.i self.XMAX
pushi.e -7
pop.v.i self.xoff

:[9]
push.v self.TYPE
pushi.e 2
cmp.i.v EQ
bf [14]

:[10]
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
pushi.e 6
cmp.i.v LTE
bf [13]

:[12]
pushi.e 1
push.v self.i
add.v.i
call.i string(argc=1)
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.NAME
pushi.e 80
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]self.NAMEX
pushi.e 100
push.v self.i
pushi.e 20
mul.i.v
add.v.i
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.NAMEY
push.v self.YMAX
pushi.e 1
add.i.v
pop.v.v self.YMAX
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[13]
push.s "DEVICE_CHOICE_slash_Create_0_gml_57_0"@9497
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]self.NAME
push.s "DEVICE_CHOICE_slash_Create_0_gml_58_0"@9498
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]self.NAME
push.s "DEVICE_CHOICE_slash_Create_0_gml_59_0"@9499
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]self.NAME
push.s "DEVICE_CHOICE_slash_Create_0_gml_60_0"@9500
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]self.NAME
push.s "DEVICE_CHOICE_slash_Create_0_gml_61_0"@9501
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 4
chkindex.e
add.i.i
pop.v.v [array]self.NAME
push.s "DEVICE_CHOICE_slash_Create_0_gml_62_0"@9502
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 5
chkindex.e
add.i.i
pop.v.v [array]self.NAME
push.s "DEVICE_CHOICE_slash_Create_0_gml_63_0"@9503
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.v [array]self.NAME
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]self.NAMEX
pushi.e 20
sub.i.v
pop.v.v self.HEARTX
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]self.NAMEY
pop.v.v self.HEARTY
pushi.e 0
pop.v.i self.XMAX
pushi.e 6
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[14]
push.v self.TYPE
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
push.s "create type 3"@9504
conv.s.v
call.i show_debug_message(argc=1)
popz.v
call.i scr_84_name_input_setup(argc=0)
popz.v

:[16]
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]self.NAMEX
pop.v.v self.HEARTX
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]self.NAMEY
pop.v.v self.HEARTY
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 150
pop.v.i self.HEARTX

:[18]
pushi.e 1
pop.v.i self.DRAWHEART
pushi.e 0
pop.v.i self.ONEBUFFER
pushi.e 0
pop.v.i self.TWOBUFFER
pushi.e 0
pop.v.i self.FINISH
pushi.e 10
pop.v.i self.fadebuffer

:[end]