.localvar 0 arguments

:[0]
pushbltn.v self.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [9]

:[1]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [10]

:[2]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [11]

:[3]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [12]

:[4]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [13]

:[5]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [16]

:[6]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [17]

:[7]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [18]

:[8]
b [19]

:[9]
push.s " "@24
pop.v.s self.armornametemp
push.s " "@24
pop.v.s self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_8_0"@2438
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage2temp
push.s " "@24
pop.v.s self.amessage3temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 0
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 0
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s " "@24
pop.v.s self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 0
pop.v.i self.armoricontemp
pushi.e 0
pop.v.i self.value
b [19]

:[10]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_26_0"@2439
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_27_0"@2440
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_28_0"@2441
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_29_0"@2442
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage3temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 1
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s " "@24
pop.v.s self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 100
pop.v.i self.value
b [19]

:[11]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_46_0"@2443
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_47_0"@2444
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_48_0"@2445
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_49_0"@2446
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage3temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s " "@24
pop.v.s self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 150
pop.v.i self.value
b [19]

:[12]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_66_0"@2447
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_67_0"@2448
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_68_0"@2449
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_69_0"@2450
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage3temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 1
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 20
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 0
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_79_0"@2451
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armorabilitytemp
pushi.e 7
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 100
pop.v.i self.value
b [19]

:[13]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_87_0"@2452
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_88_0"@2453
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_89_0"@2454
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_90_0"@2455
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage3temp
pushi.e 52
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[14]
push.s " "@24
pop.v.s self.amessage3temp

:[15]
pushi.e 0
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 0
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_101_0"@2456
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armorabilitytemp
pushi.e 7
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 90
pop.v.i self.value
b [19]

:[16]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_108_0"@2457
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_109_0"@2458
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_110_0"@2459
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_111_0"@2460
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage3temp
pushi.e 1
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s " "@24
pop.v.s self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 150
pop.v.i self.value
b [19]

:[17]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_128_0"@2461
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_129_0"@2462
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_130_0"@2463
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_131_0"@2464
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage3temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 0
pop.v.i self.armordftemp
pushi.e 2
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s " "@24
pop.v.s self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 120
pop.v.i self.value
b [19]

:[18]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_148_0"@2465
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_149_0"@2466
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_150_0"@2467
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_151_0"@2468
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.amessage3temp
pushi.e 2
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 2
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s " "@24
pop.v.s self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 0
pop.v.i self.value
b [19]

:[19]
popz.v

:[end]