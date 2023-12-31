.localvar 0 arguments

:[0]
pushbltn.v self.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [12]

:[1]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [13]

:[2]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [16]

:[3]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [17]

:[4]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [18]

:[5]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [19]

:[6]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [20]

:[7]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [21]

:[8]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [22]

:[9]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [23]

:[10]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [24]

:[11]
b [25]

:[12]
push.s " "@24
pop.v.s self.weaponnametemp
push.s " "@24
pop.v.s self.weapondesctemp
push.s " "@24
pop.v.s self.wmessage2temp
push.s " "@24
pop.v.s self.wmessage3temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 0
pop.v.i self.weaponboltstemp
push.s " "@24
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
push.s " "@24
pop.v.s self.weaponabilitytemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
pushi.e 0
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.value
b [25]

:[13]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_29_0"@2391
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_30_0"@2392
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_31_0"@2393
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage2temp
pushglb.v global.plot
pushi.e 30
cmp.i.v LT
bf [15]

:[14]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_34_0"@2394
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage2tempt

:[15]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_36_0"@2396
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage3temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@1544
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 1
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@24
pop.v.s self.weaponabilitytemp
pushi.e 60
pop.v.i self.value
b [25]

:[16]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_54_0"@2397
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_55_0"@2398
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_56_0"@2399
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_57_0"@2400
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage3temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@1544
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 2
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@24
pop.v.s self.weaponabilitytemp
pushi.e 80
pop.v.i self.value
b [25]

:[17]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_75_0"@2401
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_76_0"@2402
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_77_0"@2403
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_78_0"@2404
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage3temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@1544
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 3
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@24
pop.v.s self.weaponabilitytemp
pushi.e 100
pop.v.i self.value
b [25]

:[18]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_97_0"@2405
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_98_0"@2406
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_99_0"@2407
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_100_0"@2408
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage3temp
pushi.e 12
pop.v.i self.weaponattemp
pushi.e 6
pop.v.i self.weapondftemp
pushi.e 8
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@1544
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 1
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 0
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@24
pop.v.s self.weaponabilitytemp
pushi.e 150
pop.v.i self.value
b [25]

:[19]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_118_0"@2409
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_119_0"@2410
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_120_0"@2411
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_121_0"@2412
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage3temp
pushi.e 2
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@1544
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 1
pop.v.i self.weaponicontemp
pushi.e 7
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_134_0"@2413
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponabilitytemp
pushi.e 200
pop.v.i self.value
b [25]

:[20]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_139_0"@2414
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_140_0"@2415
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_141_0"@2416
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_142_0"@2417
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage3temp
pushi.e 2
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@1544
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 1
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 2
pop.v.i self.weaponicontemp
pushi.e 7
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_155_0"@2418
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponabilitytemp
pushi.e 150
pop.v.i self.value
b [25]

:[21]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_160_0"@2419
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_161_0"@2420
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_162_0"@2421
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_163_0"@2422
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage3temp
pushi.e 5
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 4
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@1544
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 1
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 2
pop.v.i self.weaponicontemp
pushi.e 6
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_176_0"@2423
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponabilitytemp
pushi.e 0
pop.v.i self.value
b [25]

:[22]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_181_0"@2424
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_182_0"@2425
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_183_0"@2426
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_184_0"@2427
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage3temp
pushi.e 4
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@1544
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 1
pop.v.i self.weaponicontemp
pushi.e 7
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_197_0"@2428
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponabilitytemp
pushi.e 250
pop.v.i self.value
b [25]

:[23]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_202_0"@2429
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_203_0"@2430
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_204_0"@2431
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_205_0"@2432
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage3temp
pushi.e 2
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@1544
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 3
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@24
pop.v.s self.weaponabilitytemp
pushi.e 200
pop.v.i self.value
b [25]

:[24]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_223_0"@2433
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_224_0"@2434
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_225_0"@2435
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_226_0"@2436
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.wmessage3temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 2
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@1544
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 3
pop.v.i self.weaponicontemp
pushi.e 7
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_239_0"@2437
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.weaponabilitytemp
pushi.e 200
pop.v.i self.value
b [25]

:[25]
popz.v

:[end]