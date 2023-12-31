.localvar 0 arguments

:[0]
pushi.e -1
pushi.e -5
pushi.e 220
pop.v.i [array]global.flag
pushi.e -1
pushi.e -5
pushi.e 221
pop.v.i [array]global.flag
pushi.e -1
pushi.e -5
pushi.e 222
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 223
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 224
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 225
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 32
cmp.i.v LT
bf [3]

:[2]
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.i
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.precolor
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 65280
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.statcolor
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 65535
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.statcolor
push.d 0.6
conv.d.v
push.i 16777215
conv.i.v
push.i 16711935
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.statcolor
push.d 0.3
conv.d.v
push.i 16777215
conv.i.v
pushi.e 255
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.statcolor
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 16711680
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.statcolor
push.d 0.4
conv.d.v
push.i 16777215
conv.i.v
push.i 8388736
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 5
pop.v.v [array]self.statcolor
pushi.e 1
pop.v.i self.logocon
pushi.e 0
pop.v.i self.logoalpha
pushi.e 0
pop.v.i self.introtimer
pushi.e 0
pop.v.i self.textalpha1
pushi.e 0
pop.v.i self.textalpha2
pushi.e 0
pop.v.i self.malpha
pushi.e 0
pop.v.i self.buffer1
pushi.e 0
pop.v.i self.buffer2
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.menu
pushi.e 0
pop.v.i self.ended
pushi.e 0
pop.v.i self.colorchange
pushi.e 0
pop.v.i self.colorbuffer
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.stat
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
push.s "obj_thrashcontroller_slash_Create_0_gml_49_0"@4515
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
pop.v.v [array]self.menutext1
push.s "obj_thrashcontroller_slash_Create_0_gml_50_0"@4517
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
pop.v.v [array]self.menutext1
push.s "obj_thrashcontroller_slash_Create_0_gml_51_0"@4518
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
pop.v.v [array]self.menutext1
push.s "obj_thrashcontroller_slash_Create_0_gml_52_0"@4519
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
pop.v.v [array]self.menutext1
push.s "obj_thrashcontroller_slash_Create_0_gml_53_0"@4520
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
pop.v.v [array]self.menutext1
push.s "obj_thrashcontroller_slash_Create_0_gml_54_0"@4521
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]self.menutext1
push.s "obj_thrashcontroller_slash_Create_0_gml_55_0"@4522
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]self.menutext1
push.s " "@24
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.s [array]self.menutext1
push.s "obj_thrashcontroller_slash_Create_0_gml_59_0"@4523
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
pop.v.v [array]self.menutext2
pushi.e 5
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.stat1
pushi.e 4
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.stat2
push.s "obj_thrashcontroller_slash_Create_0_gml_61_0"@4527
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
pop.v.v [array]self.menutext2
pushi.e 1
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]self.stat1
pushi.e 0
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]self.stat2
push.s "obj_thrashcontroller_slash_Create_0_gml_63_0"@4528
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
pop.v.v [array]self.menutext2
pushi.e 2
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]self.stat1
pushi.e 3
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]self.stat2
push.s "obj_thrashcontroller_slash_Create_0_gml_65_0"@4529
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
pop.v.v [array]self.menutext2
pushi.e 6
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]self.stat1
pushi.e 6
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]self.stat2
push.s "obj_thrashcontroller_slash_Create_0_gml_68_0"@4530
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
pop.v.v [array]self.menutext2
pushi.e 0
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.stat1
pushi.e 2
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.stat2
push.s "obj_thrashcontroller_slash_Create_0_gml_70_0"@4531
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]self.menutext2
pushi.e 4
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]self.stat1
pushi.e 1
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]self.stat2
push.s "obj_thrashcontroller_slash_Create_0_gml_72_0"@4532
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]self.menutext2
pushi.e 3
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]self.stat1
pushi.e 5
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]self.stat2
push.s "obj_thrashcontroller_slash_Create_0_gml_74_0"@4533
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]self.menutext2
pushi.e 6
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]self.stat1
pushi.e 6
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]self.stat2
push.s "obj_thrashcontroller_slash_Create_0_gml_77_0"@4534
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]self.menutext2
pushi.e 1
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.stat1
pushi.e 2
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]self.stat2
push.s "obj_thrashcontroller_slash_Create_0_gml_79_0"@4535
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]self.menutext2
pushi.e 3
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]self.stat1
pushi.e 4
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]self.stat2
push.s "obj_thrashcontroller_slash_Create_0_gml_81_0"@4536
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]self.menutext2
pushi.e 0
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]self.stat1
pushi.e 5
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]self.stat2
push.s "obj_thrashcontroller_slash_Create_0_gml_83_0"@4537
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]self.menutext2
pushi.e 6
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]self.stat1
pushi.e 6
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]self.stat2
push.s "obj_thrashcontroller_slash_Create_0_gml_88_0"@4538
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
pop.v.v [array]self.assetdesc
push.s "obj_thrashcontroller_slash_Create_0_gml_89_0"@4540
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
pop.v.v [array]self.assetdesc
push.s "obj_thrashcontroller_slash_Create_0_gml_90_0"@4541
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
pop.v.v [array]self.assetdesc
push.s "obj_thrashcontroller_slash_Create_0_gml_91_0"@4542
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
pop.v.v [array]self.assetdesc
push.s "obj_thrashcontroller_slash_Create_0_gml_93_0"@4543
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
pop.v.v [array]self.assetdesc
push.s "obj_thrashcontroller_slash_Create_0_gml_94_0"@4544
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]self.assetdesc
push.s "obj_thrashcontroller_slash_Create_0_gml_95_0"@4545
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]self.assetdesc
push.s "obj_thrashcontroller_slash_Create_0_gml_96_0"@4546
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]self.assetdesc
push.s "obj_thrashcontroller_slash_Create_0_gml_99_0"@4547
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]self.assetdesc
push.s "obj_thrashcontroller_slash_Create_0_gml_100_0"@4548
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]self.assetdesc
push.s "obj_thrashcontroller_slash_Create_0_gml_101_0"@4549
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]self.assetdesc
push.s "obj_thrashcontroller_slash_Create_0_gml_102_0"@4550
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]self.assetdesc
pushi.e 0
pop.v.i self.menucoord1y
pushi.e 0
pop.v.i self.menucoord1x
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.menucoord2
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.menucoord2
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.menucoord2
pushi.e 0
pop.v.i self.endcoord
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.ww
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.hh
pushi.e 40
conv.i.v
push.v self.yy
push.v self.hh
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.v self.xx
push.v self.ww
push.d 2.5
div.d.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.thrash
push.v self.thrash
conv.v.i
pushenv [8]

:[7]
pushi.e 0
pop.v.i self.a

:[8]
popenv [7]

:[end]