.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.con
pushi.e 50
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [68]

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [11]

:[8]
push.v self.t
conv.v.i
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed
pushi.e -2
pop.v.i self.vspeed
pushi.e 98
pop.v.i self.sprite_index

:[10]
popenv [9]
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.con

:[11]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [15]

:[12]
push.v self.t
conv.v.i
pushenv [14]

:[13]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.vspeed

:[14]
popenv [13]
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.con

:[15]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [21]

:[16]
push.v self.t
conv.v.i
pushenv [18]

:[17]
push.d 0.25
pop.v.d self.image_speed
pushi.e 99
pop.v.i self.sprite_index

:[18]
popenv [17]
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 6
pop.v.i self.con
push.v self.wallwindow
conv.v.i
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.image_index

:[20]
popenv [19]
pushi.e 25
conv.i.v
call.i snd_play(argc=1)
popz.v

:[21]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [25]

:[22]
push.v self.t
conv.v.i
pushenv [24]

:[23]
pushi.e 0
pop.v.i self.image_speed

:[24]
popenv [23]
pushi.e 8
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [29]

:[26]
push.v self.t
conv.v.i
pushenv [28]

:[27]
pushi.e 96
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.vspeed

:[28]
popenv [27]
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 10
pop.v.i self.con

:[29]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [33]

:[30]
push.v self.t
conv.v.i
pushenv [32]

:[31]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.vspeed

:[32]
popenv [31]
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 12
pop.v.i self.con

:[33]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [37]

:[34]
push.v self.t
conv.v.i
pushenv [36]

:[35]
pushi.e 102
pop.v.i self.sprite_index

:[36]
popenv [35]
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 14
pop.v.i self.con

:[37]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [41]

:[38]
pushi.e 0
pop.v.i global.fe
push.v self.t
conv.v.i
pushenv [40]

:[39]
push.d 0.25
pop.v.d self.image_speed

:[40]
popenv [39]
push.s "obj_krisroom_slash_Step_0_gml_92_0"@3987
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 20
pop.v.i self.con

:[41]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [43]

:[42]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [48]

:[45]
push.v self.t
conv.v.i
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.image_index
pushi.e 96
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.vspeed

:[47]
popenv [46]
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 21
pop.v.i self.con

:[48]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [50]

:[49]
pushi.e 25
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.image_index
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 23
pop.v.i self.con

:[50]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [58]

:[51]
pushi.e 326
pushenv [53]

:[52]
pushi.e 1
pop.v.i self.fun
push.d 0.25
pop.v.d self.image_speed
pushi.e 836
pop.v.i self.sprite_index
pushi.e -1
pop.v.i self.hspeed

:[53]
popenv [52]
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
call.i button2_h(argc=0)
conv.v.b
bf [57]

:[54]
pushi.e 326
pushenv [56]

:[55]
pushi.e 1
pop.v.i self.fun
push.d 0.25
pop.v.d self.image_speed
pushi.e 836
pop.v.i self.sprite_index
pushi.e -4
pop.v.i self.hspeed

:[56]
popenv [55]
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[57]
pushi.e 25
pop.v.i self.con

:[58]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [63]

:[59]
pushi.e 3
pop.v.i global.facing
pushi.e 326
pushenv [61]

:[60]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.fun

:[61]
popenv [60]
pushi.e 27
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
call.i button2_h(argc=0)
conv.v.b
bf [63]

:[62]
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[63]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [68]

:[64]
pushi.e 0
pop.v.i global.facing
pushi.e 326
pushenv [66]

:[65]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 837
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.fun

:[66]
popenv [65]
call.i scr_depth(argc=0)
popz.v
pushi.e 30
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
call.i scr_tempsave(argc=0)
popz.v
pushglb.v global.plot
pushi.e 1
cmp.i.v LT
bf [68]

:[67]
pushi.e 1
pop.v.i global.plot

:[68]
push.v self.con
pushi.e 50
cmp.i.v GTE
bf [70]

:[69]
push.v self.con
pushi.e 100
cmp.i.v LT
b [71]

:[70]
push.e 0

:[71]
bf [83]

:[72]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [74]

:[73]
call.i d_ex(argc=0)
conv.v.b
not.b
b [75]

:[74]
push.e 0

:[75]
bf [79]

:[76]
pushglb.v global.filechoice
pop.v.v self._remfilechoice
push.v global.filechoice
pushi.e 3
add.i.v
pop.v.v global.filechoice
call.i scr_save(argc=0)
popz.v
push.v self._remfilechoice
pop.v.v global.filechoice
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i mus_volume(argc=3)
popz.v
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fade
push.v self.fade
conv.v.i
pushenv [78]

:[77]
push.d 0.01
pop.v.d self.fadespeed

:[78]
popenv [77]
pushi.e 51
pop.v.i self.con
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[79]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [81]

:[80]
call.i snd_free_all(argc=0)
popz.v
pushi.e 53
pop.v.i self.con
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[81]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [83]

:[82]
push.s " "@24
conv.s.v
call.i scr_windowcaption(argc=1)
popz.v
pushi.e 136
conv.i.v
call.i room_goto(argc=1)
popz.v

:[83]
push.v self.con
pushi.e 100
cmp.i.v GTE
bf [85]

:[84]
push.v self.con
pushi.e 150
cmp.i.v LT
b [86]

:[85]
push.e 0

:[86]
bf [end]

:[87]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [89]

:[88]
call.i d_ex(argc=0)
conv.v.b
not.b
b [90]

:[89]
push.e 0

:[90]
bf [94]

:[91]
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i mus_volume(argc=3)
popz.v
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fade
push.v self.fade
conv.v.i
pushenv [93]

:[92]
push.d 0.02
pop.v.d self.fadespeed
pushi.e 10000
pop.v.i self.depth

:[93]
popenv [92]
pushi.e 101
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[94]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [96]

:[95]
call.i snd_free_all(argc=0)
popz.v
pushi.e 103
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[96]
push.v self.con
pushi.e 104
cmp.i.v EQ
bf [98]

:[97]
push.s " "@24
conv.s.v
call.i scr_windowcaption(argc=1)
popz.v
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "obj_krisroom_slash_Step_0_gml_281_0"@3991
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 105
pop.v.i self.con

:[98]
push.v self.con
pushi.e 105
cmp.i.v EQ
bf [100]

:[99]
call.i d_ex(argc=0)
conv.v.b
not.b
b [101]

:[100]
push.e 0

:[101]
bf [end]

:[102]
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.s "obj_krisroom_slash_Step_0_gml_289_0"@3992
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_windowcaption(argc=1)
popz.v
pushi.e 10
pop.v.i global.plot
call.i scr_become_dark(argc=0)
popz.v
pushi.e 34
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]