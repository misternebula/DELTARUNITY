.localvar 0 arguments

:[0]
push.v self.EVENT
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 666
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "DEVICE_CONTACT_slash_Step_0_gml_5_0"@9544
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_6_0"@9545
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_7_0"@9546
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_8_0"@9547
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.EVENT
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [3]

:[2]
pushi.e 6
conv.i.v
pushi.e 80
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
b [4]

:[3]
pushi.e 6
conv.i.v
pushi.e 80
conv.i.v
pushi.e 110
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W

:[4]
push.v self.EVENT
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 144
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 308
conv.i.v
pushi.e 120
conv.i.v
pushi.e 150
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.SOUL
push.d 0.5
push.v self.SOUL
conv.v.i
pop.v.d [stacktop]self.momentum
pushi.e 2
pop.v.i self.EVENT
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.EVENT
pushi.e 3
cmp.i.v EQ
bf [12]

:[10]
pushi.e 1
pop.v.i self.HEARTMADE
pushi.e 0
pop.v.i self.HSINER
pushi.e 4
pop.v.i self.EVENT
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
call.i button2_h(argc=0)
conv.v.b
bf [12]

:[11]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.EVENT
pushi.e 5
cmp.i.v EQ
bf [14]

:[13]
push.s "DEVICE_CONTACT_slash_Step_0_gml_33_0"@9549
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_34_0"@9550
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_35_0"@9551
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_36_0"@9552
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 50
conv.i.v
pushi.e 110
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
push.d 5.1
pop.v.d self.EVENT

:[14]
push.v self.EVENT
push.d 5.1
cmp.d.v EQ
bf [17]

:[15]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [17]

:[16]
push.v self.FADED
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [21]

:[19]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_volume(argc=3)
popz.v
pushi.e 1
pop.v.i self.FADED

:[21]
push.v self.EVENT
pushi.e 7
cmp.i.v EQ
bf [23]

:[22]
push.s "AUDIO_ANOTHERHIM.ogg"@9553
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
push.d 0.02
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i snd_pitch(argc=2)
popz.v
push.d 0.02
pop.v.d self.PITCH
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
popz.v
pushi.e 8
pop.v.i self.EVENT

:[23]
push.v self.EVENT
push.d 6.2
cmp.d.v EQ
bf [25]

:[24]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
call.i snd_free_all(argc=0)
popz.v
pushi.e 1
pop.v.i self.OBMADE
pushi.e 7
pop.v.i self.EVENT

:[28]
push.v self.EVENT
push.d 5.1
cmp.d.v EQ
bf [30]

:[29]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
call.i snd_free_all(argc=0)
popz.v
pushi.e 144
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.HEARTMADE
push.v self.SOUL
conv.v.i
dup.i 0
push.v [stacktop]self.t
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.t
push.d -0.5
push.v self.SOUL
conv.v.i
pop.v.d [stacktop]self.momentum
push.d 5.2
pop.v.d self.EVENT
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[33]
push.v self.EVENT
pushi.e 8
cmp.i.v EQ
bf [38]

:[34]
push.v self.PITCH
push.d 0.96
cmp.d.v LT
bf [36]

:[35]
push.v self.PITCH
push.d 0.02
add.d.v
pop.v.v self.PITCH
b [37]

:[36]
pushi.e 9
pop.v.i self.EVENT
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[37]
push.v self.PITCH
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i snd_pitch(argc=2)
popz.v

:[38]
push.v self.EVENT
pushi.e 10
cmp.i.v EQ
bf [40]

:[39]
pushi.e 667
pop.v.i global.typer
push.s "DEVICE_CONTACT_slash_Step_0_gml_107_0"@9555
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_111_0"@9556
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 50
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 16
pop.v.i self.EVENT

:[40]
push.v self.EVENT
pushi.e 15
cmp.i.v EQ
bf [44]

:[41]
pushi.e 6
pushenv [43]

:[42]
call.i instance_destroy(argc=0)
popz.v

:[43]
popenv [42]

:[44]
push.v self.EVENT
pushi.e 16
cmp.i.v EQ
bf [46]

:[45]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 667
pop.v.i global.typer
push.s "DEVICE_CONTACT_slash_Step_0_gml_125_0"@9557
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_126_0"@9558
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 40
conv.i.v
pushi.e 75
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 17
pop.v.i self.EVENT
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[49]
push.v self.EVENT
pushi.e 18
cmp.i.v EQ
bf [51]

:[50]
pushi.e 19
pop.v.i self.EVENT
pushi.e 312
conv.i.v
pushi.e 120
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.GM

:[51]
push.v self.EVENT
pushi.e 19
cmp.i.v EQ
bf [55]

:[52]
push.v self.GM
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [54]

:[53]
push.d 19.1
pop.v.d self.EVENT

:[54]
pushi.e 24
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[55]
push.v self.EVENT
push.d 20.1
cmp.d.v EQ
bf [59]

:[56]
pushi.e 6
pushenv [58]

:[57]
call.i instance_destroy(argc=0)
popz.v

:[58]
popenv [57]
push.s "DEVICE_CONTACT_slash_Step_0_gml_148_0"@9560
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_149_0"@9561
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_150_0"@9562
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 40
conv.i.v
pushi.e 75
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 21
pop.v.i self.EVENT
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[59]
push.v self.EVENT
pushi.e 22
cmp.i.v EQ
bf [61]

:[60]
pushi.e 312
conv.i.v
pushi.e 120
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.GM
pushi.e 1
push.v self.GM
conv.v.i
pop.v.i [stacktop]self.s
pushi.e 2
push.v self.GM
conv.v.i
pop.v.i [stacktop]self.STEP
pushi.e 23
pop.v.i self.EVENT

:[61]
push.v self.EVENT
pushi.e 23
cmp.i.v EQ
bf [65]

:[62]
push.v self.GM
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [64]

:[63]
push.d 23.1
pop.v.d self.EVENT

:[64]
pushi.e 24
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[65]
push.v self.EVENT
push.d 24.1
cmp.d.v EQ
bf [69]

:[66]
pushi.e 6
pushenv [68]

:[67]
call.i instance_destroy(argc=0)
popz.v

:[68]
popenv [67]
push.s "DEVICE_CONTACT_slash_Step_0_gml_173_0"@9564
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_174_0"@9565
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 40
conv.i.v
pushi.e 75
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 25
pop.v.i self.EVENT
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[69]
push.v self.EVENT
pushi.e 26
cmp.i.v EQ
bf [71]

:[70]
pushi.e 312
conv.i.v
pushi.e 120
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.GM
pushi.e 2
push.v self.GM
conv.v.i
pop.v.i [stacktop]self.s
pushi.e 3
push.v self.GM
conv.v.i
pop.v.i [stacktop]self.STEP
pushi.e 27
pop.v.i self.EVENT

:[71]
push.v self.EVENT
pushi.e 27
cmp.i.v EQ
bf [75]

:[72]
push.v self.GM
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [74]

:[73]
pushi.e 28
pop.v.i self.EVENT

:[74]
pushi.e 24
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[75]
push.v self.EVENT
pushi.e 29
cmp.i.v EQ
bf [79]

:[76]
pushi.e 667
pop.v.i global.typer
pushi.e 6
pushenv [78]

:[77]
call.i instance_destroy(argc=0)
popz.v

:[78]
popenv [77]
pushi.e 312
conv.i.v
pushi.e 90
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.GM
pushi.e 1
push.v self.GM
conv.v.i
pop.v.i [stacktop]self.CANCEL
pushi.e -1
push.v self.GM
conv.v.i
pop.v.i [stacktop]self.FINISH
pushi.e -1
push.v self.GM
conv.v.i
pop.v.i [stacktop]self.s
pushi.e 3
push.v self.GM
conv.v.i
pop.v.i [stacktop]self.STEP
push.s "DEVICE_CONTACT_slash_Step_0_gml_205_0"@9567
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_206_0"@9568
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_207_0"@9569
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 40
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 30
pop.v.i self.EVENT
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[79]
push.v self.EVENT
pushi.e 31
cmp.i.v EQ
bf [81]

:[80]
pushi.e 309
conv.i.v
pushi.e 120
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.choice
pushi.e 32
pop.v.i self.EVENT

:[81]
push.v self.EVENT
pushi.e 32
cmp.i.v EQ
bf [90]

:[82]
pushglb.v global.choice
pushi.e 0
cmp.i.v EQ
bt [84]

:[83]
pushglb.v global.choice
pushi.e 1
cmp.i.v EQ
b [85]

:[84]
push.e 1

:[85]
bf [90]

:[86]
pushi.e 33
pop.v.i self.EVENT
pushglb.v global.choice
pushi.e 1
cmp.i.v EQ
bf [90]

:[87]
push.v self.GM
conv.v.i
pushenv [89]

:[88]
pushi.e 1
pop.v.i self.FINISH

:[89]
popenv [88]
pushi.e 15
pop.v.i self.EVENT
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[90]
push.v self.EVENT
pushi.e 33
cmp.i.v EQ
bf [92]

:[91]
pushi.e 34
pop.v.i self.EVENT
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[92]
push.v self.EVENT
pushi.e 35
cmp.i.v EQ
bf [96]

:[93]
pushi.e 6
pushenv [95]

:[94]
call.i instance_destroy(argc=0)
popz.v

:[95]
popenv [94]
push.s "DEVICE_CONTACT_slash_Step_0_gml_240_0"@9570
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_241_0"@9571
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_242_0"@9572
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_243_0"@9573
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 40
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 36
pop.v.i self.EVENT

:[96]
push.v self.EVENT
pushi.e 36
cmp.i.v EQ
bf [98]

:[97]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
pushi.e 0
pop.v.i self.GMSINE
pushi.e 37
pop.v.i self.EVENT
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 667
pop.v.i global.typer
push.s "DEVICE_CONTACT_slash_Step_0_gml_258_0"@9575
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_259_0"@9576
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 40
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W

:[101]
push.v self.EVENT
pushi.e 37
cmp.i.v EQ
bf [103]

:[102]
push.v self.GMSINE
pushi.e 1
add.i.v
pop.v.v self.GMSINE
push.v self.GM
conv.v.i
dup.i 0
push.v [stacktop]self.initx
push.v self.GMSINE
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.i.v [stacktop]self.initx

:[103]
push.v self.EVENT
pushi.e 38
cmp.i.v EQ
bf [112]

:[104]
pushi.e 309
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 39
pop.v.i self.EVENT
push.v self.CHOICE
conv.v.i
pushenv [111]

:[105]
pushi.e 2
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.i

:[106]
push.v self.i
pushi.e 6
cmp.i.v LTE
bf [110]

:[107]
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
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [109]

:[108]
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
dup.i 1
push.v [array]self.NAMEX
pushi.e 16
sub.i.v
pop.i.v [array]self.NAMEX

:[109]
pushi.e 100
push.v self.i
pushi.e 16
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
b [106]

:[110]
push.s "DEVICE_CONTACT_slash_Step_0_gml_288_0"@9579
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_289_0"@9580
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_290_0"@9581
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_291_0"@9582
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_292_0"@9583
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_293_0"@9584
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
pushi.e 0
pop.v.i self.CURX
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
pushi.e 5
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[111]
popenv [105]

:[112]
push.v self.EVENT
pushi.e 39
cmp.i.v EQ
bf [115]

:[113]
pushglb.v global.choice
pushi.e -1
cmp.i.v GT
bf [115]

:[114]
pushglb.v global.choice
pushi.e -5
pushi.e 903
pop.v.v [array]global.flag
pushi.e 40
pop.v.i self.EVENT
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[115]
push.v self.EVENT
pushi.e 41
cmp.i.v EQ
bf [119]

:[116]
pushi.e 6
pushenv [118]

:[117]
call.i instance_destroy(argc=0)
popz.v

:[118]
popenv [117]
pushi.e 42
pop.v.i self.EVENT
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 667
pop.v.i global.typer
push.s "DEVICE_CONTACT_slash_Step_0_gml_323_0"@9585
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_324_0"@9586
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 40
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W

:[119]
push.v self.EVENT
pushi.e 43
cmp.i.v EQ
bf [126]

:[120]
pushi.e 309
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 44
pop.v.i self.EVENT
push.v self.CHOICE
conv.v.i
pushenv [125]

:[121]
pushi.e 2
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.i

:[122]
push.v self.i
pushi.e 5
cmp.i.v LTE
bf [124]

:[123]
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
pushi.e 16
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
b [122]

:[124]
push.s "A"@366
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.s [array]self.NAME
push.s "DEVICE_CONTACT_slash_Step_0_gml_344_0"@9587
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
push.s "B"@2529
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.s [array]self.NAME
push.s "C"@2530
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.s [array]self.NAME
push.s "D"@2531
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 4
chkindex.e
add.i.i
pop.v.s [array]self.NAME
pushi.e 0
pop.v.i self.CURX
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
pushi.e 4
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[125]
popenv [121]

:[126]
push.v self.EVENT
pushi.e 44
cmp.i.v EQ
bf [129]

:[127]
pushglb.v global.choice
pushi.e -1
cmp.i.v GT
bf [129]

:[128]
pushglb.v global.choice
pushi.e -5
pushi.e 904
pop.v.v [array]global.flag
pushi.e 45
pop.v.i self.EVENT
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[129]
push.v self.EVENT
pushi.e 46
cmp.i.v EQ
bf [133]

:[130]
pushi.e 6
pushenv [132]

:[131]
call.i instance_destroy(argc=0)
popz.v

:[132]
popenv [131]
pushi.e 47
pop.v.i self.EVENT
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 667
pop.v.i global.typer
push.s "DEVICE_CONTACT_slash_Step_0_gml_381_0"@9588
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_382_0"@9589
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 40
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W

:[133]
push.v self.EVENT
pushi.e 48
cmp.i.v EQ
bf [142]

:[134]
pushi.e 309
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 49
pop.v.i self.EVENT
push.v self.CHOICE
conv.v.i
pushenv [141]

:[135]
pushi.e 2
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.i

:[136]
push.v self.i
pushi.e 3
cmp.i.v LTE
bf [140]

:[137]
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
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [139]

:[138]
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
dup.i 1
push.v [array]self.NAMEX
pushi.e 16
sub.i.v
pop.i.v [array]self.NAMEX

:[139]
pushi.e 100
push.v self.i
pushi.e 16
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
b [136]

:[140]
push.s "DEVICE_CONTACT_slash_Step_0_gml_401_0"@9590
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_402_0"@9591
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_403_0"@9592
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_404_0"@9593
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
pushi.e 0
pop.v.i self.CURX
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
pushi.e 3
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[141]
popenv [135]

:[142]
push.v self.EVENT
pushi.e 49
cmp.i.v EQ
bf [145]

:[143]
pushglb.v global.choice
pushi.e -1
cmp.i.v GT
bf [145]

:[144]
pushglb.v global.choice
pushi.e -5
pushi.e 905
pop.v.v [array]global.flag
push.d 50.5
pop.v.d self.EVENT
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[145]
push.v self.EVENT
push.d 51.5
cmp.d.v EQ
bf [151]

:[146]
pushi.e 6
pushenv [148]

:[147]
call.i instance_destroy(argc=0)
popz.v

:[148]
popenv [147]
push.d 52.5
pop.v.d self.EVENT
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 667
pop.v.i global.typer
push.s "DEVICE_CONTACT_slash_Step_0_gml_438_0"@9594
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_439_0"@9595
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.JA_XOFF
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [150]

:[149]
pushi.e -20
pop.v.i self.JA_XOFF

:[150]
pushi.e 6
conv.i.v
pushi.e 30
conv.i.v
pushi.e 80
push.v self.JA_XOFF
add.v.i
call.i instance_create(argc=3)
pop.v.v self.W

:[151]
push.v self.EVENT
push.d 53.5
cmp.d.v EQ
bf [158]

:[152]
pushi.e 309
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.CHOICE
push.d 54.5
pop.v.d self.EVENT
push.v self.CHOICE
conv.v.i
pushenv [157]

:[153]
pushi.e 2
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.i

:[154]
push.v self.i
pushi.e 4
cmp.i.v LTE
bf [156]

:[155]
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
pushi.e 16
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
b [154]

:[156]
push.s "DEVICE_CONTACT_slash_Step_0_gml_459_0"@9596
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_460_0"@9597
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_461_0"@9598
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_462_0"@9599
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_463_0"@9600
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
pushi.e 0
pop.v.i self.CURX
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
pushi.e 4
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[157]
popenv [153]

:[158]
push.v self.EVENT
push.d 54.5
cmp.d.v EQ
bf [161]

:[159]
pushglb.v global.choice
pushi.e -1
cmp.i.v GT
bf [161]

:[160]
pushi.e 1
pushglb.v global.choice
sub.v.i
pushi.e -5
pushi.e 909
pop.v.v [array]global.flag
pushi.e 50
pop.v.i self.EVENT
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[161]
push.v self.EVENT
pushi.e 51
cmp.i.v EQ
bf [165]

:[162]
pushi.e 6
pushenv [164]

:[163]
call.i instance_destroy(argc=0)
popz.v

:[164]
popenv [163]
pushi.e 52
pop.v.i self.EVENT
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 667
pop.v.i global.typer
push.s "DEVICE_CONTACT_slash_Step_0_gml_497_0"@9601
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_498_0"@9602
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 20
conv.i.v
pushi.e 50
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W

:[165]
push.v self.EVENT
pushi.e 53
cmp.i.v EQ
bf [172]

:[166]
pushi.e 309
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 54
pop.v.i self.EVENT
push.v self.CHOICE
conv.v.i
pushenv [171]

:[167]
pushi.e 2
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.i

:[168]
push.v self.i
pushi.e 3
cmp.i.v LTE
bf [170]

:[169]
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
pushi.e 16
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
b [168]

:[170]
push.s "DEVICE_CONTACT_slash_Step_0_gml_518_0"@9603
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_519_0"@9604
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_520_0"@9605
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_521_0"@9606
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
pushi.e 0
pop.v.i self.CURX
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
pushi.e 3
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[171]
popenv [167]

:[172]
push.v self.EVENT
pushi.e 54
cmp.i.v EQ
bf [175]

:[173]
pushglb.v global.choice
pushi.e -1
cmp.i.v GT
bf [175]

:[174]
pushglb.v global.choice
pushi.e -5
pushi.e 906
pop.v.v [array]global.flag
push.d 54.1
pop.v.d self.EVENT
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[175]
push.v self.EVENT
push.d 55.1
cmp.d.v EQ
bf [179]

:[176]
pushi.e 6
pushenv [178]

:[177]
call.i instance_destroy(argc=0)
popz.v

:[178]
popenv [177]
pushi.e 56
pop.v.i self.EVENT
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 667
pop.v.i global.typer
push.s "DEVICE_CONTACT_slash_Step_0_gml_555_0"@9607
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_556_0"@9608
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 30
conv.i.v
pushi.e 65
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W

:[179]
push.v self.EVENT
pushi.e 57
cmp.i.v EQ
bf [186]

:[180]
pushi.e 309
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 58
pop.v.i self.EVENT
push.v self.CHOICE
conv.v.i
pushenv [185]

:[181]
pushi.e 2
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.i

:[182]
push.v self.i
pushi.e 1
cmp.i.v LTE
bf [184]

:[183]
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
pushi.e 16
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
b [182]

:[184]
push.s "DEVICE_CONTACT_slash_Step_0_gml_575_0"@9609
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_576_0"@9610
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
pushi.e 0
pop.v.i self.CURX
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
pushi.e 1
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[185]
popenv [181]

:[186]
push.v self.EVENT
pushi.e 58
cmp.i.v EQ
bf [189]

:[187]
pushglb.v global.choice
pushi.e -1
cmp.i.v GT
bf [189]

:[188]
pushglb.v global.choice
pushi.e -5
pushi.e 907
pop.v.v [array]global.flag
pushi.e 59
pop.v.i self.EVENT
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[189]
push.v self.EVENT
pushi.e 60
cmp.i.v EQ
bf [193]

:[190]
pushi.e 6
pushenv [192]

:[191]
call.i instance_destroy(argc=0)
popz.v

:[192]
popenv [191]
pushi.e 61
pop.v.i self.EVENT
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 667
pop.v.i global.typer
push.s "DEVICE_CONTACT_slash_Step_0_gml_611_0"@9611
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_612_0"@9612
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 20
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W

:[193]
push.v self.EVENT
pushi.e 62
cmp.i.v EQ
bf [200]

:[194]
pushi.e 309
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 63
pop.v.i self.EVENT
push.v self.CHOICE
conv.v.i
pushenv [199]

:[195]
pushi.e 2
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.i

:[196]
push.v self.i
pushi.e 1
cmp.i.v LTE
bf [198]

:[197]
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
pushi.e 16
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
b [196]

:[198]
push.s "DEVICE_CONTACT_slash_Step_0_gml_631_0"@9613
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
push.s "DEVICE_CONTACT_slash_Step_0_gml_632_0"@9614
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
pushi.e 0
pop.v.i self.CURX
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
pushi.e 1
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[199]
popenv [195]

:[200]
push.v self.EVENT
pushi.e 63
cmp.i.v EQ
bf [203]

:[201]
pushglb.v global.choice
pushi.e -1
cmp.i.v GT
bf [203]

:[202]
pushglb.v global.choice
pushi.e -5
pushi.e 908
pop.v.v [array]global.flag
pushi.e 64
pop.v.i self.EVENT
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[203]
push.v self.EVENT
pushi.e 65
cmp.i.v EQ
bf [208]

:[204]
pushi.e 6
pushenv [206]

:[205]
call.i instance_destroy(argc=0)
popz.v

:[206]
popenv [205]
push.s "DEVICE_CONTACT_slash_Step_0_gml_664_0"@9615
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 50
conv.i.v
pushi.e 90
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
push.d 65.5
pop.v.d self.EVENT
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 312
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [208]

:[207]
push.v self.GM
conv.v.i
push.v [stacktop]self.initx
pop.v.v self.gmx
push.v self.GM
conv.v.i
push.v [stacktop]self.inity
pop.v.v self.gmy

:[208]
push.v self.EVENT
push.d 65.5
cmp.d.v EQ
bf [214]

:[209]
pushi.e 312
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [214]

:[210]
push.v self.GM
conv.v.i
push.v [stacktop]self.initx
push.v self.gmx
pushi.e 24
sub.i.v
cmp.v.v GT
bf [212]

:[211]
push.v self.GM
conv.v.i
dup.i 0
push.v [stacktop]self.initx
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.initx

:[212]
push.v self.GM
conv.v.i
push.v [stacktop]self.inity
push.v self.gmy
pushi.e 56
add.i.v
cmp.v.v LT
bf [214]

:[213]
push.v self.GM
conv.v.i
dup.i 0
push.v [stacktop]self.inity
pushi.e 2
add.i.v
pop.i.v [stacktop]self.inity

:[214]
push.v self.EVENT
push.d 66.5
cmp.d.v EQ
bf [216]

:[215]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [217]

:[216]
push.e 0

:[217]
bf [228]

:[218]
pushi.e 0
pop.v.i self.JA_XOFF
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [220]

:[219]
pushi.e 30
pop.v.i self.JA_XOFF

:[220]
pushi.e 6
pushenv [222]

:[221]
call.i instance_destroy(argc=0)
popz.v

:[222]
popenv [221]
push.s "DEVICE_CONTACT_slash_Step_0_gml_697_0"@9619
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_698_0"@9620
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 20
conv.i.v
pushi.e 68
push.v self.JA_XOFF
add.v.i
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 309
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 67
pop.v.i self.EVENT
push.v self.CHOICE
conv.v.i
pushenv [224]

:[223]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[224]
popenv [223]
push.v self.CHOICE
conv.v.i
pushenv [227]

:[225]
pushi.e 9
pop.v.i self.STRINGMAX
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [227]

:[226]
pushi.e 7
pop.v.i self.STRINGMAX

:[227]
popenv [225]

:[228]
push.v self.EVENT
pushi.e 67
cmp.i.v EQ
bf [238]

:[229]
push.v self.CHOICE
call.i instance_exists(argc=1)
conv.v.b
bf [237]

:[230]
push.v self.CHOICE
conv.v.i
push.v [stacktop]self.NAMESTRING
pop.v.v global.name
pushglb.v global.name
pop.v.v self.FN_2
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [234]

:[231]
push.v self.FN_2
push.s "ＧＡＳＴＥＲ"@9622
cmp.s.v EQ
bf [233]

:[232]
call.i game_restart(argc=0)
popz.v

:[233]
push.v self.FN_2
call.i string_to_hiragana(argc=1)
pop.v.v self.FN_2

:[234]
push.v self.FN_2
push.s "DEVICE_CONTACT_slash_Step_0_gml_714_0"@9624
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [236]

:[235]
call.i game_restart(argc=0)
popz.v

:[236]
b [238]

:[237]
pushi.e 68
pop.v.i self.EVENT
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[238]
push.v self.EVENT
pushi.e 69
cmp.i.v EQ
bf [247]

:[239]
pushi.e 6
pushenv [241]

:[240]
call.i instance_destroy(argc=0)
popz.v

:[241]
popenv [240]
pushi.e 0
pop.v.i self.FOUND
pushglb.v global.name
pop.v.v self.FN
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushglb.v global.name
push.s "DEVICE_CONTACT_slash_Step_0_gml_729_0"@9627
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_730_0"@9628
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.FOUND
pushi.e 1
cmp.i.v EQ
bt [243]

:[242]
push.v self.FOUND
pushi.e 2
cmp.i.v EQ
b [244]

:[243]
push.e 1

:[244]
bf [246]

:[245]
pushglb.v global.name
push.s "DEVICE_CONTACT_slash_Step_0_gml_734_0"@9629
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_735_0"@9630
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_736_0"@9631
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[246]
pushi.e 6
conv.i.v
pushi.e 50
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 70
pop.v.i self.EVENT

:[247]
push.v self.EVENT
pushi.e 70
cmp.i.v EQ
bf [249]

:[248]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [250]

:[249]
push.e 0

:[250]
bf [261]

:[251]
pushi.e 0
pop.v.i self.JA_XOFF
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [253]

:[252]
pushi.e -32
pop.v.i self.JA_XOFF

:[253]
pushi.e 6
pushenv [255]

:[254]
call.i instance_destroy(argc=0)
popz.v

:[255]
popenv [254]
push.s "DEVICE_CONTACT_slash_Step_0_gml_755_0"@9632
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_756_0"@9633
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 20
conv.i.v
pushi.e 88
push.v self.JA_XOFF
add.v.i
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 309
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 71
pop.v.i self.EVENT
push.v self.CHOICE
conv.v.i
pushenv [257]

:[256]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[257]
popenv [256]
push.v self.CHOICE
conv.v.i
pushenv [260]

:[258]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [260]

:[259]
pushi.e 7
pop.v.i self.STRINGMAX

:[260]
popenv [258]

:[261]
push.v self.EVENT
pushi.e 71
cmp.i.v EQ
bf [272]

:[262]
push.v self.CHOICE
call.i instance_exists(argc=1)
conv.v.b
bf [271]

:[263]
push.v self.CHOICE
conv.v.i
push.v [stacktop]self.NAMESTRING
pop.v.v global.truename
pushglb.v global.truename
pop.v.v self.FN_3
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [265]

:[264]
push.v self.FN_3
call.i string_to_hiragana(argc=1)
pop.v.v self.FN_3

:[265]
push.v self.FN_3
push.s "DEVICE_CONTACT_slash_Step_0_gml_770_0"@9635
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bt [267]

:[266]
push.v self.FN_3
push.s "ＧＡＳＴＥＲ"@9622
cmp.s.v EQ
b [268]

:[267]
push.e 1

:[268]
bf [270]

:[269]
call.i game_end(argc=0)
popz.v

:[270]
b [272]

:[271]
pushi.e 72
pop.v.i self.EVENT
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[272]
push.v self.EVENT
pushi.e 73
cmp.i.v EQ
bf [282]

:[273]
pushi.e 6
pushenv [275]

:[274]
call.i instance_destroy(argc=0)
popz.v

:[275]
popenv [274]
pushi.e 0
pop.v.i self.FOUND
pushglb.v global.truename
pop.v.v self.FN
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushglb.v global.truename
push.s "DEVICE_CONTACT_slash_Step_0_gml_785_0"@9636
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_786_0"@9637
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_787_0"@9638
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.FOUND
pushi.e 1
cmp.i.v EQ
bf [277]

:[276]
push.s "DEVICE_CONTACT_slash_Step_0_gml_790_0"@9639
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[277]
push.v self.FOUND
pushi.e 2
cmp.i.v EQ
bf [279]

:[278]
push.s "DEVICE_CONTACT_slash_Step_0_gml_794_0"@9640
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_795_0"@9641
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[279]
pushglb.v global.name
pushglb.v global.truename
cmp.v.v EQ
bf [281]

:[280]
push.s "DEVICE_CONTACT_slash_Step_0_gml_800_0"@9642
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_801_0"@9643
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[281]
pushi.e 6
conv.i.v
pushi.e 50
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 74
pop.v.i self.EVENT

:[282]
push.v self.EVENT
pushi.e 74
cmp.i.v EQ
bf [284]

:[283]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [285]

:[284]
push.e 0

:[285]
bf [287]

:[286]
pushglb.v global.name
pushi.e -5
pushi.e 0
pop.v.v [array]global.othername
pushi.e 667
pop.v.i global.typer
pushglb.v global.truename
push.s "DEVICE_CONTACT_slash_Step_0_gml_816_0"@9644
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_817_0"@9645
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_818_0"@9646
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_819_0"@9647
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 50
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 75
pop.v.i self.EVENT

:[287]
push.v self.EVENT
pushi.e 75
cmp.i.v EQ
bf [289]

:[288]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [290]

:[289]
push.e 0

:[290]
bf [296]

:[291]
call.i snd_free_all(argc=0)
popz.v
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 312
pushenv [293]

:[292]
call.i instance_destroy(argc=0)
popz.v

:[293]
popenv [292]
pushi.e 314
pushenv [295]

:[294]
call.i instance_destroy(argc=0)
popz.v

:[295]
popenv [294]
pushi.e 0
pop.v.i self.OBMADE
pushi.e 76
pop.v.i self.EVENT
push.s " "@24
conv.s.v
call.i scr_windowcaption(argc=1)
popz.v
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[296]
push.v self.EVENT
pushi.e 77
cmp.i.v EQ
bf [300]

:[297]
pushi.e 2
pop.v.i global.typer
push.s "DEVICE_CONTACT_slash_Step_0_gml_839_0"@9648
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_840_0"@9649
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.JA_XOFF
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [299]

:[298]
pushi.e -10
pop.v.i self.JA_XOFF

:[299]
pushi.e 6
conv.i.v
pushi.e 50
conv.i.v
pushi.e 100
push.v self.JA_XOFF
add.v.i
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 78
pop.v.i self.EVENT

:[300]
push.v self.EVENT
pushi.e 78
cmp.i.v EQ
bf [302]

:[301]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [303]

:[302]
push.e 0

:[303]
bf [309]

:[304]
pushi.e 2
pop.v.i global.typer
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [306]

:[305]
pushi.e 60
pop.v.i global.typer

:[306]
push.s "w.ogg"@9650
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
pop.v.v self.loop1
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
pop.v.v self.loop2
pushi.e 0
conv.i.v
push.v self.loop1
call.i snd_pitch(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v self.loop2
call.i snd_pitch(argc=2)
popz.v
pushi.e 0
pop.v.i self.p
push.s "DEVICE_CONTACT_slash_Step_0_gml_854_0"@9653
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.JA_XOFF
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [308]

:[307]
pushi.e -15
pop.v.i self.JA_XOFF

:[308]
pushi.e 6
conv.i.v
pushi.e 50
conv.i.v
pushi.e 145
push.v self.JA_XOFF
add.v.i
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 98
pop.v.i self.EVENT
pushi.e 1
pop.v.i self.WHITEFADE
push.d 0.008
pop.v.d self.FADEUP
push.d -0.1
pop.v.d self.FADEFACTOR
pushi.e -20
pop.v.i self.depth

:[309]
push.v self.EVENT
pushi.e 99
cmp.i.v EQ
bf [311]

:[310]
pushi.e 0
pushi.e -5
pushi.e 6
pop.v.i [array]global.flag
pushi.e 2
conv.i.v
call.i room_goto(argc=1)
popz.v

:[311]
push.v self.EVENT
pushi.e 98
cmp.i.v EQ
bf [314]

:[312]
push.v self.p
push.d 0.008
add.d.v
pop.v.v self.p
push.v self.p
push.v self.loop1
call.i snd_pitch(argc=2)
popz.v
push.v self.p
push.d 1.2
mul.d.v
push.v self.loop2
call.i snd_pitch(argc=2)
popz.v
push.v self.p
push.d 1.5
cmp.d.v GTE
bf [314]

:[313]
pushi.e 99
pop.v.i self.EVENT
call.i snd_free_all(argc=0)
popz.v

:[314]
push.v self.EVENT
pushi.e 100
cmp.i.v EQ
bf [316]

:[315]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [317]

:[316]
push.e 0

:[317]
bf [319]

:[318]
push.s "w.ogg"@9650
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
popz.v
pushi.e 101
pop.v.i self.EVENT
pushi.e 999
pop.v.i global.typer
push.s "DEVICE_CONTACT_slash_Step_0_gml_889_0"@9654
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_890_0"@9655
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_891_0"@9656
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 350
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 125
conv.i.v
call.i instance_create(argc=3)
popz.v

:[319]
push.v self.EVENT
pushi.e 102
cmp.i.v EQ
bf [321]

:[320]
pushi.e 2
conv.i.v
call.i room_goto(argc=1)
popz.v

:[321]
push.v self.EVENT
pushi.e 900
cmp.i.v EQ
bf [323]

:[322]
pushi.e 667
pop.v.i global.typer
push.s "DEVICE_CONTACT_slash_Step_0_gml_928_0"@9657
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_929_0"@9658
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_930_0"@9659
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 50
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 919
pop.v.i self.EVENT
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[323]
push.v self.EVENT
pushi.e 920
cmp.i.v EQ
bf [325]

:[324]
pushi.e 309
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.choice
pushi.e 930
pop.v.i self.EVENT

:[325]
push.v self.EVENT
pushi.e 930
cmp.i.v EQ
bf [332]

:[326]
pushglb.v global.choice
pushi.e 1
cmp.i.v EQ
bt [328]

:[327]
pushglb.v global.choice
pushi.e 0
cmp.i.v EQ
b [329]

:[328]
push.e 1

:[329]
bf [331]

:[330]
pushi.e 940
pop.v.i self.EVENT

:[331]
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[332]
push.v self.HEARTMADE
pushi.e 1
cmp.i.v EQ
bf [334]

:[333]
push.v self.HSINER
pushi.e 1
add.i.v
pop.v.v self.HSINER
push.v self.SOUL
conv.v.i
push.v [stacktop]self.ystart
push.v self.HSINER
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.SOUL
conv.v.i
pop.v.v [stacktop]self.y

:[334]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [338]

:[335]
pushi.e 6
pushenv [337]

:[336]
pushi.e 1
pop.v.i self.specfade

:[337]
popenv [336]

:[338]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [345]

:[339]
pushi.e 6
pushenv [341]

:[340]
push.v self.specfade
push.d 0.025
sub.d.v
pop.v.v self.specfade

:[341]
popenv [340]
push.v self.EVENT
pushi.e 16
cmp.i.v GTE
bf [345]

:[342]
pushi.e 6
pushenv [344]

:[343]
push.v self.specfade
push.d 0.01
sub.d.v
pop.v.v self.specfade

:[344]
popenv [343]

:[345]
push.v self.OBMADE
pushi.e 1
cmp.i.v EQ
bf [350]

:[346]
push.v self.OB_DEPTH
pushi.e 1
add.i.v
pop.v.v self.OB_DEPTH
push.v self.obacktimer
push.v self.OBM
add.v.v
pop.v.v self.obacktimer
push.v self.obacktimer
pushi.e 20
cmp.i.v GTE
bf [350]

:[347]
pushi.e 314
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.DV
pushi.e 5
push.v self.OB_DEPTH
add.v.i
push.v self.DV
conv.v.i
pop.v.v [stacktop]self.depth
push.d 0.01
push.v self.OBM
mul.v.d
push.v self.DV
conv.v.i
pop.v.v [stacktop]self.OBSPEED
push.v self.OB_DEPTH
push.i 60000
cmp.i.v GTE
bf [349]

:[348]
pushi.e 0
pop.v.i self.OB_DEPTH

:[349]
pushi.e 0
pop.v.i self.obacktimer

:[350]
push.v self.SKIPBUFFER
pushi.e 1
sub.i.v
pop.v.v self.SKIPBUFFER
push.v self.ALREADY
pushi.e 1
cmp.i.v EQ
bf [369]

:[351]
call.i button2_h(argc=0)
pushi.e 1
cmp.i.v EQ
bf [354]

:[352]
push.v self.SKIPBUFFER
pushi.e 0
cmp.i.v LT
bf [354]

:[353]
push.v self.EVENT
pushi.e 75
cmp.i.v LTE
b [355]

:[354]
push.e 0

:[355]
bf [369]

:[356]
pushi.e 6
pushenv [365]

:[357]
push.v self.pos
push.v self.length
pushi.e 3
sub.i.v
cmp.v.v LT
bf [359]

:[358]
push.v self.pos
pushi.e 2
add.i.v
pop.v.v self.pos

:[359]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 10
cmp.i.v GTE
bf [361]

:[360]
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[361]
push.v self.specfade
push.d 0.9
cmp.d.v LTE
bf [363]

:[362]
push.v self.specfade
push.d 0.1
sub.d.v
pop.v.v self.specfade

:[363]
push.v self.rate
pushi.e 1
cmp.i.v LTE
bf [365]

:[364]
pushi.e 1
pop.v.i self.rate

:[365]
popenv [357]
push.v self.EVENT
pushi.e 15
cmp.i.v GTE
bf [368]

:[366]
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 6
cmp.i.v GTE
bf [368]

:[367]
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[368]
pushi.e 1
pop.v.i self.SKIPBUFFER

:[369]
call.i scr_debug(argc=0)
conv.v.b
bf [end]

:[370]
pushi.e 8
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[371]
pushi.e 0
pushi.e -5
pushi.e 6
pop.v.i [array]global.flag
call.i snd_free_all(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]