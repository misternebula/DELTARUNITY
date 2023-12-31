.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_4_0"@1991
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 130
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 130
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_16_0"@1999
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_18_0"@2000
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_20_0"@2001
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_22_0"@2002
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 4
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_24_0"@2003
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 4
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 5
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_26_0"@2004
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 5
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s "scr_monstersetup_slash_scr_monstersetup_gml_27_0"@2005
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_32_0"@2007
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 540
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 540
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_44_0"@2008
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_47_0"@2009
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_50_0"@2010
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s "scr_monstersetup_slash_scr_monstersetup_gml_51_0"@2011
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[4]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_59_0"@2012
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 450
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 450
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_71_0"@2013
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_73_0"@2014
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_75_0"@2015
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "scr_monstersetup_slash_scr_monstersetup_gml_78_0"@2017
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[6]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 4
cmp.i.v EQ
bf [8]

:[7]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_83_0"@2018
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 90
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 90
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_95_0"@2019
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_97_0"@2020
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s "scr_monstersetup_slash_scr_monstersetup_gml_98_0"@2021
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[8]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 5
cmp.i.v EQ
bf [14]

:[9]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_103_0"@2022
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 120
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 120
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 30
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_115_0"@2023
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_117_0"@2024
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_119_0"@2025
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [11]

:[10]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_123_0"@2026
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[14]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 6
cmp.i.v EQ
bf [28]

:[15]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_132_0"@2027
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 150
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 150
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 28
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_144_0"@2028
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_146_0"@2029
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_148_0"@2030
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor
pushglb.v global.encounterno
pushi.e 7
cmp.i.v EQ
bf [18]

:[16]
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor
pushglb.v global.plot
pushi.e 40
cmp.i.v LT
bf [18]

:[17]
pushi.e 40
pop.v.i global.plot

:[18]
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [20]

:[19]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_154_0"@2031
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[23]
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [25]

:[24]
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_160_0"@2032
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[28]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 7
cmp.i.v EQ
bf [37]

:[29]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_170_0"@2033
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 270
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 270
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 43
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_184_0"@2034
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.myact
push.v self.myact
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_190_0"@2036
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_192_0"@2037
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_194_0"@2038
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname

:[31]
push.v self.myact
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_199_0"@2039
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_201_0"@2040
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_203_0"@2041
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname

:[33]
push.v self.myact
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_208_0"@2042
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_210_0"@2043
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_212_0"@2044
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname

:[35]
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [37]

:[36]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 4
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_218_0"@2045
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 4
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 4
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[37]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 8
cmp.i.v EQ
bf [39]

:[38]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_226_0"@2046
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 170
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 170
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 50
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_238_0"@2047
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_240_0"@2048
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_242_0"@2049
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[39]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 9
cmp.i.v EQ
bf [45]

:[40]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_251_0"@2050
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_263_0"@2051
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushglb.v global.encounterno
pushi.e 7
cmp.i.v EQ
bf [43]

:[41]
pushglb.v global.plot
pushi.e 40
cmp.i.v LT
bf [43]

:[42]
pushi.e 40
pop.v.i global.plot

:[43]
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [45]

:[44]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "scr_monstersetup_slash_scr_monstersetup_gml_271_0"@2052
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_274_0"@2053
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[45]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 10
cmp.i.v EQ
bf [48]

:[46]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_282_0"@2054
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 1300
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 1300
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
push.d 7.5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.d [array]global.monsterat
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_294_0"@2055
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_296_0"@2056
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_298_0"@2057
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [48]

:[47]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_307_0"@2058
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[48]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 11
cmp.i.v EQ
bf [54]

:[49]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_315_0"@2059
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 140
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 140
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 23
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_327_0"@2060
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_329_0"@2061
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_331_0"@2062
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [51]

:[50]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_337_0"@2063
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[54]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 12
cmp.i.v EQ
bf [56]

:[55]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_346_0"@2064
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 2400
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 2400
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e -40
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_358_0"@2065
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname

:[56]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 13
cmp.i.v EQ
bf [62]

:[57]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_365_0"@2066
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 120
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 120
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 38
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_377_0"@2067
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_379_0"@2068
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_381_0"@2069
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [59]

:[58]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_386_0"@2070
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[62]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 14
cmp.i.v EQ
bf [68]

:[63]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_394_0"@2071
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 130
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 130
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 9
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 38
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_406_0"@2072
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_408_0"@2073
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [65]

:[64]
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_412_0"@2074
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[68]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 15
cmp.i.v EQ
bf [74]

:[69]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_420_0"@2075
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 90
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 90
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_432_0"@2076
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_434_0"@2077
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [71]

:[70]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_440_0"@2078
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[74]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 16
cmp.i.v EQ
bf [76]

:[75]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_449_0"@2079
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 270
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 270
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 80
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_463_0"@2080
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_465_0"@2081
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "scr_monstersetup_slash_scr_monstersetup_gml_467_0"@2082
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "scr_monstersetup_slash_scr_monstersetup_gml_470_0"@2083
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "scr_monstersetup_slash_scr_monstersetup_gml_473_0"@2084
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 4
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 4
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_475_0"@2085
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 5
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 5
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.myact

:[76]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 17
cmp.i.v EQ
bf [78]

:[77]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_484_0"@2086
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 700
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 700
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_496_0"@2087
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_498_0"@2088
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.actactor
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_501_0"@2089
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_504_0"@2090
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 4
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_506_0"@2091
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 4
chkindex.e
add.i.i
pop.v.v [array]global.actname

:[78]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 18
cmp.i.v EQ
bf [80]

:[79]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_512_0"@2092
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 800
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 800
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_524_0"@2093
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_527_0"@2094
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_530_0"@2095
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[80]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 19
cmp.i.v EQ
bf [82]

:[81]
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemdf
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pop.v.v self._armordf
push.s "scr_monstersetup_slash_scr_monstersetup_gml_538_0"@2097
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 120
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 120
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e -5
push.v self._armordf
add.v.i
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_550_0"@2098
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_553_0"@2099
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_556_0"@2100
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[82]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 20
cmp.i.v EQ
bf [84]

:[83]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_562_0"@2101
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 3500
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 3500
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_574_0"@2102
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "scr_monstersetup_slash_scr_monstersetup_gml_579_0"@2103
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s "scr_monstersetup_slash_scr_monstersetup_gml_580_0"@2104
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actdesc
pushi.e 50
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.actcost
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "scr_monstersetup_slash_scr_monstersetup_gml_585_0"@2106
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s "scr_monstersetup_slash_scr_monstersetup_gml_586_0"@2107
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actdesc
pushi.e 125
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actcost

:[84]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 21
cmp.i.v EQ
bf [88]

:[85]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_594_0"@2108
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 1300
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 1300
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_606_0"@2109
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e -5
pushi.e 246
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_607_0"@2110
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname

:[87]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_609_0"@2111
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_611_0"@2112
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[88]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 22
cmp.i.v EQ
bf [90]

:[89]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_619_0"@2113
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 170
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 170
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 45
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 25
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_631_0"@2114
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_633_0"@2115
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_635_0"@2116
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[90]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 23
cmp.i.v EQ
bf [92]

:[91]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_643_0"@2117
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 190
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 190
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 40
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_655_0"@2118
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_657_0"@2119
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_659_0"@2120
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor

:[92]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 25
cmp.i.v EQ
bf [end]

:[93]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_665_0"@2121
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 2800
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 2800
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterat
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdf
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterexp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstergold
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.sparepoint
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymax
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]global.canact
push.s "scr_monstersetup_slash_scr_monstersetup_gml_677_0"@2122
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "scr_monstersetup_slash_scr_monstersetup_gml_682_0"@2123
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s " "@24
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.s [array]global.actdesc
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.actcost
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "scr_monstersetup_slash_scr_monstersetup_gml_688_0"@2124
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s " "@24
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.s [array]global.actdesc
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actcost
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "scr_monstersetup_slash_scr_monstersetup_gml_694_0"@2125
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s " "@24
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.s [array]global.actdesc
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.actcost
pushi.e -5
pushi.e 5
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "scr_monstersetup_slash_scr_monstersetup_gml_704_0"@2126
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s "scr_monstersetup_slash_scr_monstersetup_gml_705_0"@2127
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actdesc
pushi.e 62
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.actcost

:[95]
pushi.e -5
pushi.e 6
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "scr_monstersetup_slash_scr_monstersetup_gml_714_0"@2128
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s "scr_monstersetup_slash_scr_monstersetup_gml_715_0"@2129
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actdesc
pushi.e 150
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actcost

:[97]
pushi.e -5
pushi.e 7
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [end]

:[98]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "scr_monstersetup_slash_scr_monstersetup_gml_724_0"@2130
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s "scr_monstersetup_slash_scr_monstersetup_gml_725_0"@2131
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actdesc
pushi.e 125
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.actcost

:[end]