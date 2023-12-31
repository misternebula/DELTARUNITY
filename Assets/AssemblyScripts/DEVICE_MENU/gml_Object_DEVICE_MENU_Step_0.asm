.localvar 0 arguments

:[0]
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
bt [4]

:[1]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bt [4]

:[2]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bt [4]

:[3]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [102]

:[6]
call.i left_p(argc=0)
conv.v.b
bf [9]

:[7]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pushi.e -1
push.v self.MENU_NO
conv.v.i
pop.v.i [array]self.MENUCOORD
pushi.e 1
pop.v.i self.MOVENOISE

:[9]
call.i right_p(argc=0)
conv.v.b
bf [12]

:[10]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pushi.e -1
push.v self.MENU_NO
conv.v.i
pop.v.i [array]self.MENUCOORD
pushi.e 1
pop.v.i self.MOVENOISE

:[12]
call.i button1_p(argc=0)
conv.v.b
bf [14]

:[13]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [90]

:[16]
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 1
pop.v.i self.SELNOISE
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 0
cmp.i.v EQ
bf [75]

:[17]
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
bf [34]

:[18]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [32]

:[19]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pop.v.v global.filechoice
push.s "DEVICE_MENU_slash_Step_0_gml_35_0"@9758
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_windowcaption(argc=1)
popz.v
call.i snd_free_all(argc=0)
popz.v
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.f
pushi.e 1000
push.v self.f
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 1000
push.v self.f
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.s "config_"@7035
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
push.s ".ini"@7036
add.s.v
call.i file_exists(argc=1)
conv.v.b
bf [31]

:[20]
push.s "config_"@7035
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
push.s ".ini"@7036
add.s.v
call.i ini_open(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[21]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [25]

:[22]
pushi.e -1
conv.i.v
push.v self.i
call.i string(argc=1)
push.s "KEYBOARD_CONTROLS"@7037
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.readval
push.v self.readval
pushi.e -1
cmp.i.v NEQ
bf [24]

:[23]
push.v self.readval
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.input_k

:[24]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [21]

:[25]
pushi.e 0
pop.v.i self.i

:[26]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [30]

:[27]
pushi.e -1
conv.i.v
push.v self.i
call.i string(argc=1)
push.s "GAMEPAD_CONTROLS"@7038
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.readval
push.v self.readval
pushi.e -1
cmp.i.v NEQ
bf [29]

:[28]
push.v self.readval
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.input_g

:[29]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [26]

:[30]
call.i ini_close(argc=0)
popz.v

:[31]
call.i scr_load(argc=0)
popz.v

:[32]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pop.v.v global.filechoice
call.i snd_free_all(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i room_goto(argc=1)
popz.v

:[34]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bf [67]

:[35]
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [49]

:[36]
push.s "DEVICE_MENU_slash_Step_0_gml_74_0"@9760
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT
pushi.e -1
pushi.e 0
push.v [array]self.NAME
pushi.e -1
pushi.e 1
push.v [array]self.NAME
cmp.v.v EQ
bf [38]

:[37]
pushi.e -1
pushi.e 1
push.v [array]self.NAME
pushi.e -1
pushi.e 2
push.v [array]self.NAME
cmp.v.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [49]

:[40]
pushi.e -1
pushi.e 0
push.v [array]self.TIME
pushi.e -1
pushi.e 1
push.v [array]self.TIME
cmp.v.v EQ
bf [42]

:[41]
pushi.e -1
pushi.e 1
push.v [array]self.TIME
pushi.e -1
pushi.e 2
push.v [array]self.TIME
cmp.v.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [49]

:[44]
pushi.e -1
pushi.e 0
push.v [array]self.PLACE
pushi.e -1
pushi.e 1
push.v [array]self.PLACE
cmp.v.v EQ
bf [46]

:[45]
pushi.e -1
pushi.e 1
push.v [array]self.PLACE
pushi.e -1
pushi.e 2
push.v [array]self.PLACE
cmp.v.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
push.s "DEVICE_MENU_slash_Step_0_gml_77_0"@9762
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[49]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [64]

:[50]
pushi.e -1
pushi.e 0
push.v [array]self.NAME
pushi.e -1
pushi.e 1
push.v [array]self.NAME
cmp.v.v EQ
bf [52]

:[51]
pushi.e -1
pushi.e 1
push.v [array]self.NAME
pushi.e -1
pushi.e 2
push.v [array]self.NAME
cmp.v.v EQ
b [53]

:[52]
push.e 0

:[53]
bf [64]

:[54]
pushi.e -1
pushi.e 0
push.v [array]self.TIME
pushi.e -1
pushi.e 1
push.v [array]self.TIME
cmp.v.v EQ
bf [56]

:[55]
pushi.e -1
pushi.e 1
push.v [array]self.TIME
pushi.e -1
pushi.e 2
push.v [array]self.TIME
cmp.v.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [64]

:[58]
pushi.e -1
pushi.e 0
push.v [array]self.PLACE
pushi.e -1
pushi.e 1
push.v [array]self.PLACE
cmp.v.v EQ
bf [61]

:[59]
pushi.e -1
pushi.e 1
push.v [array]self.PLACE
pushi.e -1
pushi.e 2
push.v [array]self.PLACE
cmp.v.v EQ
bf [61]

:[60]
push.v self.TEMPCOMMENT
push.s "DEVICE_MENU_slash_Step_0_gml_86_0"@9763
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v NEQ
b [62]

:[61]
push.e 0

:[62]
bf [64]

:[63]
push.s "DEVICE_MENU_slash_Step_0_gml_86_1"@9764
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[64]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
push.s "DEVICE_MENU_slash_Step_0_gml_91_0"@9765
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[66]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 0
pop.v.i self.SELNOISE
pushi.e 1
pop.v.i self.DEATHNOISE
pushi.e 0
pop.v.i self.MENU_NO

:[67]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
bf [73]

:[68]
pushi.e 0
pushi.e -1
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
conv.v.i
pop.v.i [array]self.FILE
push.s "DEVICE_MENU_slash_Step_0_gml_105_0"@9766
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.NAME
pushi.e 0
pushi.e -1
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
conv.v.i
pop.v.i [array]self.TIME
push.s "------------"@3497
pushi.e -1
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
conv.v.i
pop.v.s [array]self.PLACE
pushi.e 0
pushi.e -1
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
conv.v.i
pop.v.i [array]self.LEVEL
push.s "--:--"@3500
pushi.e -1
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
conv.v.i
pop.v.s [array]self.TIME_STRING
push.s "filech1_"@2713
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i file_delete(argc=1)
popz.v
push.s "dr.ini"@2744
conv.s.v
call.i ini_open(argc=1)
pop.v.v self.iniwrite
push.s "[EMPTY]"@9768
conv.s.v
push.s "Name"@2747
conv.s.v
push.s "G"@2534
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_string(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Level"@2749
conv.s.v
push.s "G"@2534
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Love"@2751
conv.s.v
push.s "G"@2534
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Time"@2752
conv.s.v
push.s "G"@2534
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Room"@2753
conv.s.v
push.s "G"@2534
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
push.s "config_"@7035
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@7036
add.s.v
call.i file_exists(argc=1)
conv.v.b
bf [70]

:[69]
push.s "config_"@7035
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@7036
add.s.v
call.i file_delete(argc=1)
popz.v

:[70]
push.s "DEVICE_MENU_slash_Step_0_gml_126_0"@9769
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
push.s "DEVICE_MENU_slash_Step_0_gml_127_0"@9770
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[72]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 0
pop.v.i self.SELNOISE
pushi.e 1
pop.v.i self.DEATHNOISE
pushi.e 0
pop.v.i self.MENU_NO

:[73]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bf [75]

:[74]
push.v self.THREAT
pushi.e 1
add.i.v
pop.v.v self.THREAT
pushi.e 7
pop.v.i self.MENU_NO
pushi.e 0
pushi.e -1
pushi.e 7
pop.v.i [array]self.MENUCOORD

:[75]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 1
cmp.i.v EQ
bf [90]

:[76]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bf [78]

:[77]
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
b [79]

:[78]
push.e 0

:[79]
bf [81]

:[80]
push.s "DEVICE_MENU_slash_Step_0_gml_149_0"@9771
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT
pushi.e 90
pop.v.i self.MESSAGETIMER

:[81]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bt [83]

:[82]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
b [84]

:[83]
push.e 1

:[84]
bf [89]

:[85]
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [89]

:[86]
push.s "DEVICE_MENU_slash_Step_0_gml_156_0"@9772
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT
push.v self.THREAT
pushi.e 10
cmp.i.v GTE
bf [88]

:[87]
push.s "DEVICE_MENU_slash_Step_0_gml_159_0"@9773
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT
pushi.e 0
pop.v.i self.THREAT

:[88]
pushi.e 90
pop.v.i self.MESSAGETIMER

:[89]
pushi.e 0
pop.v.i self.MENU_NO

:[90]
call.i button2_p(argc=0)
conv.v.b
bf [92]

:[91]
push.v self.TWOBUFFER
pushi.e 0
cmp.i.v LT
b [93]

:[92]
push.e 0

:[93]
bf [102]

:[94]
pushi.e 1
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.TWOBUFFER
pushi.e 1
pop.v.i self.BACKNOISE
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
pushi.e 0
pop.v.i self.MENU_NO

:[96]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bf [98]

:[97]
pushi.e 2
pop.v.i self.MENU_NO

:[98]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bf [100]

:[99]
pushi.e 5
pop.v.i self.MENU_NO

:[100]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
bf [102]

:[101]
pushi.e 5
pop.v.i self.MENU_NO

:[102]
push.v self.MENU_NO
pushi.e 2
cmp.i.v EQ
bt [105]

:[103]
push.v self.MENU_NO
pushi.e 3
cmp.i.v EQ
bt [105]

:[104]
push.v self.MENU_NO
pushi.e 5
cmp.i.v EQ
b [106]

:[105]
push.e 1

:[106]
bf [166]

:[107]
call.i down_p(argc=0)
conv.v.b
bf [110]

:[108]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v LT
bf [110]

:[109]
pushi.e -1
push.v self.MENU_NO
conv.v.i
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 1
add.i.v
pop.i.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.MOVENOISE

:[110]
call.i up_p(argc=0)
conv.v.b
bf [113]

:[111]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 0
cmp.i.v GT
bf [113]

:[112]
pushi.e -1
push.v self.MENU_NO
conv.v.i
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 1
sub.i.v
pop.i.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.MOVENOISE

:[113]
call.i button1_p(argc=0)
conv.v.b
bf [115]

:[114]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
b [116]

:[115]
push.e 0

:[116]
bf [155]

:[117]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v LT
bf [153]

:[118]
push.v self.MENU_NO
pushi.e 3
cmp.i.v EQ
bf [129]

:[119]
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
cmp.v.v NEQ
bf [126]

:[120]
pushi.e -1
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.SELNOISE
pushi.e 0
pushi.e -1
pushi.e 4
pop.v.i [array]self.MENUCOORD
pushi.e 4
pop.v.i self.MENU_NO
b [125]

:[122]
push.s "DEVICE_MENU_slash_Step_0_gml_225_0"@9774
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT
pushi.e 90
pop.v.i self.MESSAGETIMER
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [124]

:[123]
push.s "DEVICE_MENU_slash_Step_0_gml_227_0"@9775
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[124]
pushi.e 1
pop.v.i self.DEATHNOISE
pushi.e 0
pop.v.i self.MENU_NO
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[125]
b [129]

:[126]
push.s "DEVICE_MENU_slash_Step_0_gml_238_0"@9776
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [128]

:[127]
push.s "DEVICE_MENU_slash_Step_0_gml_239_0"@9777
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[128]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.BACKNOISE

:[129]
push.v self.MENU_NO
pushi.e 2
cmp.i.v EQ
bf [141]

:[130]
pushi.e -1
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [132]

:[131]
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.SELNOISE
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.MENUCOORD
pushi.e 3
pop.v.i self.MENU_NO
b [141]

:[132]
push.s "DEVICE_MENU_slash_Step_0_gml_261_0"@9778
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT
pushi.e -1
pushi.e 0
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [135]

:[133]
pushi.e -1
pushi.e 1
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [135]

:[134]
pushi.e -1
pushi.e 2
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
b [136]

:[135]
push.e 0

:[136]
bf [138]

:[137]
push.s "DEVICE_MENU_slash_Step_0_gml_264_0"@9779
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[138]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [140]

:[139]
push.s "DEVICE_MENU_slash_Step_0_gml_266_0"@9780
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[140]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 1
pop.v.i self.BACKNOISE
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER

:[141]
push.v self.MENU_NO
pushi.e 5
cmp.i.v EQ
bf [153]

:[142]
pushi.e -1
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [144]

:[143]
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.SELNOISE
pushi.e 0
pushi.e -1
pushi.e 6
pop.v.i [array]self.MENUCOORD
pushi.e 6
pop.v.i self.MENU_NO
b [153]

:[144]
push.s "DEVICE_MENU_slash_Step_0_gml_289_0"@9781
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT
pushi.e -1
pushi.e 0
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [147]

:[145]
pushi.e -1
pushi.e 1
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [147]

:[146]
pushi.e -1
pushi.e 2
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
b [148]

:[147]
push.e 0

:[148]
bf [150]

:[149]
push.s "DEVICE_MENU_slash_Step_0_gml_292_0"@9782
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[150]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [152]

:[151]
push.s "DEVICE_MENU_slash_Step_0_gml_294_0"@9783
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[152]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.BACKNOISE

:[153]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v EQ
bf [155]

:[154]
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.SELNOISE
pushi.e 0
pop.v.i self.MENU_NO

:[155]
call.i button2_p(argc=0)
conv.v.b
bf [157]

:[156]
push.v self.TWOBUFFER
pushi.e 0
cmp.i.v LT
b [158]

:[157]
push.e 0

:[158]
bf [166]

:[159]
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.BACKNOISE
push.v self.MENU_NO
pushi.e 2
cmp.i.v EQ
bt [161]

:[160]
push.v self.MENU_NO
pushi.e 5
cmp.i.v EQ
b [162]

:[161]
push.e 1

:[162]
bf [164]

:[163]
pushi.e 0
pop.v.i self.MENU_NO

:[164]
push.v self.MENU_NO
pushi.e 3
cmp.i.v EQ
bf [166]

:[165]
pushi.e 2
pop.v.i self.MENU_NO

:[166]
push.v self.MENU_NO
pushi.e 0
cmp.i.v EQ
bf [201]

:[167]
call.i down_p(argc=0)
conv.v.b
bf [170]

:[168]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v LT
bf [170]

:[169]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 1
add.i.v
pop.i.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.MOVENOISE

:[170]
call.i up_p(argc=0)
conv.v.b
bf [175]

:[171]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 0
cmp.i.v GT
bf [175]

:[172]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 1
sub.i.v
pop.i.v [array]self.MENUCOORD
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v EQ
bf [174]

:[173]
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.MENUCOORD

:[174]
pushi.e 1
pop.v.i self.MOVENOISE

:[175]
call.i right_p(argc=0)
conv.v.b
bf [182]

:[176]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v GTE
bf [178]

:[177]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 5
cmp.i.v LTE
b [179]

:[178]
push.e 0

:[179]
bf [182]

:[180]
pushi.e 1
pop.v.i self.MOVENOISE
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 1
add.i.v
pop.i.v [array]self.MENUCOORD
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 5
cmp.i.v GT
bf [182]

:[181]
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.MENUCOORD

:[182]
call.i left_p(argc=0)
conv.v.b
bf [189]

:[183]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v GTE
bf [185]

:[184]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 5
cmp.i.v LTE
b [186]

:[185]
push.e 0

:[186]
bf [189]

:[187]
pushi.e 1
pop.v.i self.MOVENOISE
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 1
sub.i.v
pop.i.v [array]self.MENUCOORD
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v LT
bf [189]

:[188]
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.MENUCOORD

:[189]
call.i button1_p(argc=0)
conv.v.b
bf [191]

:[190]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
b [192]

:[191]
push.e 0

:[192]
bf [201]

:[193]
pushi.e -1
pop.v.i self.MESSAGETIMER
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 2
cmp.i.v LTE
bf [195]

:[194]
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.MENUCOORD
pushi.e 1
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.TWOBUFFER
pushi.e 1
pop.v.i self.MENU_NO
pushi.e 1
pop.v.i self.SELNOISE

:[195]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v EQ
bf [197]

:[196]
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.MENUCOORD
pushi.e 1
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.MENU_NO
pushi.e 1
pop.v.i self.SELNOISE

:[197]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 4
cmp.i.v EQ
bf [199]

:[198]
pushi.e 0
pushi.e -1
pushi.e 5
pop.v.i [array]self.MENUCOORD
pushi.e 1
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.TWOBUFFER
pushi.e 5
pop.v.i self.MENU_NO
pushi.e 1
pop.v.i self.SELNOISE

:[199]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 5
cmp.i.v EQ
bf [201]

:[200]
call.i scr_change_language(argc=0)
popz.v
call.i scr_84_load_ini(argc=0)
popz.v
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 1
pop.v.i self.SELNOISE

:[201]
push.v self.OBMADE
pushi.e 1
cmp.i.v EQ
bf [206]

:[202]
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
bf [206]

:[203]
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
bf [205]

:[204]
pushi.e 0
pop.v.i self.OB_DEPTH

:[205]
pushi.e 0
pop.v.i self.obacktimer

:[206]
push.v self.MOVENOISE
pushi.e 1
cmp.i.v EQ
bf [208]

:[207]
pushi.e 149
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.MOVENOISE

:[208]
push.v self.SELNOISE
pushi.e 1
cmp.i.v EQ
bf [210]

:[209]
pushi.e 150
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.SELNOISE

:[210]
push.v self.BACKNOISE
pushi.e 1
cmp.i.v EQ
bf [212]

:[211]
pushi.e 79
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.BACKNOISE

:[212]
push.v self.DEATHNOISE
pushi.e 1
cmp.i.v EQ
bf [214]

:[213]
pushi.e 144
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.DEATHNOISE

:[214]
push.v self.ONEBUFFER
pushi.e 1
sub.i.v
pop.v.v self.ONEBUFFER
push.v self.TWOBUFFER
pushi.e 1
sub.i.v
pop.v.v self.TWOBUFFER

:[end]