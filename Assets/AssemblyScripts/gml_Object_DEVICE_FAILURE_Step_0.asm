.localvar 0 arguments

:[0]
push.v self.EVENT
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
call.i snd_free_all(argc=0)
popz.v
push.s "AUDIO_DRONE.ogg"@9541
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 667
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "DEVICE_FAILURE_slash_Step_0_gml_10_0"@9701
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.EVENT
pushi.e 6
conv.i.v
pushi.e 80
conv.i.v
pushi.e 70
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e -5
pushi.e 3
push.v [array]global.tempflag
pushi.e 1
cmp.i.v GTE
bf [5]

:[2]
pushi.e 6
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[5]
push.v self.EVENT
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.EVENT

:[7]
push.v self.EVENT
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [10]

:[9]
push.e 0

:[10]
bf [18]

:[11]
pushi.e 0
pop.v.i self.JA_XOFF
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [13]

:[12]
pushi.e 44
pop.v.i self.JA_XOFF

:[13]
push.s "DEVICE_FAILURE_slash_Step_0_gml_28_0"@9702
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 3
push.v [array]global.tempflag
pushi.e 1
cmp.i.v GTE
bf [15]

:[14]
pushi.e 0
pop.v.i self.JA_XOFF
push.s "DEVICE_FAILURE_slash_Step_0_gml_32_0"@9703
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
pushi.e 3
pop.v.i self.EVENT
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 3
push.v [array]global.tempflag
pushi.e 1
cmp.i.v GTE
bf [17]

:[16]
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
pushi.e 6
conv.i.v
pushi.e 80
conv.i.v
pushi.e 40
push.v self.JA_XOFF
add.v.i
call.i instance_create(argc=3)
pop.v.v self.W

:[18]
push.v self.EVENT
pushi.e 4
cmp.i.v EQ
bf [20]

:[19]
pushi.e 309
conv.i.v
pushi.e 120
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.choice
pushi.e 5
pop.v.i self.EVENT

:[20]
push.v self.EVENT
pushi.e 5
cmp.i.v EQ
bf [29]

:[21]
pushglb.v global.choice
pushi.e 0
cmp.i.v EQ
bf [25]

:[22]
pushi.e 6
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]
pushi.e 6
pop.v.i self.EVENT

:[25]
pushglb.v global.choice
pushi.e 1
cmp.i.v EQ
bf [29]

:[26]
pushi.e 6
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
pushi.e 26
pop.v.i self.EVENT

:[29]
push.v self.EVENT
pushi.e 6
cmp.i.v EQ
bf [34]

:[30]
call.i snd_free_all(argc=0)
popz.v
pushi.e 1
pushi.e -5
pushi.e 6
pop.v.i [array]global.flag
push.s "DEVICE_FAILURE_slash_Step_0_gml_68_0"@9704
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 80
conv.i.v
pushi.e 50
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W
pushi.e 7
pop.v.i self.EVENT
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 3
push.v [array]global.tempflag
pushi.e 1
cmp.i.v GTE
bf [34]

:[31]
pushi.e 6
pushenv [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [32]
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.EVENT
pushi.e 8
cmp.i.v EQ
bf [38]

:[35]
pushi.e 1
pop.v.i self.WHITEFADE
push.d 0.01
pop.v.d self.FADEUP
pushi.e 9
pop.v.i self.EVENT
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 3
push.v [array]global.tempflag
pushi.e 1
cmp.i.v GTE
bf [37]

:[36]
push.d 0.03
pop.v.d self.FADEUP
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[37]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.tempflag
pushi.e 1
add.i.v
pop.i.v [array]global.tempflag

:[38]
push.v self.EVENT
pushi.e 10
cmp.i.v EQ
bf [40]

:[39]
push.s "DEVICE_FAILURE_slash_Step_0_gml_95_0"@9705
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_windowcaption(argc=1)
popz.v
call.i scr_tempload(argc=0)
popz.v
pushi.e 11
pop.v.i self.EVENT

:[40]
push.v self.EVENT
pushi.e 26
cmp.i.v EQ
bf [42]

:[41]
call.i snd_free_all(argc=0)
popz.v
push.s "DEVICE_FAILURE_slash_Step_0_gml_103_0"@9706
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 27
pop.v.i self.EVENT
pushi.e 6
conv.i.v
pushi.e 80
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.W

:[42]
push.v self.EVENT
pushi.e 27
cmp.i.v EQ
bf [44]

:[43]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
push.s "AUDIO_DARKNESS.ogg"@9707
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_play(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 28
pop.v.i self.EVENT
pushi.e 0
pop.v.i self.DARK_WAIT

:[47]
push.v self.EVENT
pushi.e 28
cmp.i.v EQ
bf [52]

:[48]
push.v self.DARK_WAIT
pushi.e 1
add.i.v
pop.v.v self.DARK_WAIT
push.v self.DARK_WAIT
pushi.e 2040
cmp.i.v GTE
bf [50]

:[49]
call.i game_end(argc=0)
popz.v

:[50]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_is_playing(argc=1)
conv.v.b
not.b
bf [52]

:[51]
call.i game_end(argc=0)
popz.v

:[52]
push.v self.EVENT
pushi.e 0
cmp.i.v GTE
bf [54]

:[53]
push.v self.EVENT
pushi.e 4
cmp.i.v LTE
b [55]

:[54]
push.e 0

:[55]
bf [end]

:[56]
call.i button2_h(argc=0)
conv.v.b
bf [end]

:[57]
pushi.e 6
pushenv [64]

:[58]
push.v self.pos
push.v self.length
pushi.e 3
sub.i.v
cmp.v.v LT
bf [60]

:[59]
push.v self.pos
pushi.e 2
add.i.v
pop.v.v self.pos

:[60]
push.v self.specfade
push.d 0.9
cmp.d.v LTE
bf [62]

:[61]
push.v self.specfade
push.d 0.1
sub.d.v
pop.v.v self.specfade

:[62]
push.v self.rate
pushi.e 1
cmp.i.v LTE
bf [64]

:[63]
pushi.e 1
pop.v.i self.rate

:[64]
popenv [58]

:[end]