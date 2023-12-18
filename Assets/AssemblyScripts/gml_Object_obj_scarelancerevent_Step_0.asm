.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [16]

:[1]
push.v 326.x
push.v self.tx
cmp.v.v GTE
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [16]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
pushi.e 165
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.visible

:[7]
popenv [6]
pushi.e 183
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.s
pushi.e 209
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.r
pushi.e 829
conv.i.v
push.v 326.y
push.v 326.x
call.i scr_dark_marker(argc=3)
pop.v.v self.k
pushi.e 326
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.visible

:[9]
popenv [8]
push.v self.s
conv.v.i
pushenv [11]

:[10]
call.i scr_depth(argc=0)
popz.v
pushi.e 15
conv.i.v
push.v 326.y
push.v 326.sprite_height
add.v.v
push.v self.sprite_height
sub.v.v
push.v 326.x
pushi.e 120
sub.i.v
call.i scr_move_to_point_over_time(argc=3)
popz.v

:[11]
popenv [10]
push.v self.r
conv.v.i
pushenv [13]

:[12]
call.i scr_depth(argc=0)
popz.v
pushi.e 15
conv.i.v
push.v 326.y
push.v 326.sprite_height
add.v.v
push.v self.sprite_height
sub.v.v
push.v 326.x
pushi.e 60
sub.i.v
call.i scr_move_to_point_over_time(argc=3)
popz.v

:[13]
popenv [12]
push.v self.k
conv.v.i
pushenv [15]

:[14]
call.i scr_depth(argc=0)
popz.v

:[15]
popenv [14]
pushi.e 2
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 162
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 220
pop.v.i self.sprite_index
call.i snd_free_all(argc=0)
popz.v

:[16]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
pushi.e 4
pop.v.i self.con
push.s "lancer.ogg"@4596
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[18]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [20]

:[19]
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 3
pop.v.i global.fe
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
push.s "obj_scarelancerevent_slash_Step_0_gml_49_0"@4931
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_50_0"@4932
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_51_0"@4933
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_52_0"@4934
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_53_0"@4935
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_54_0"@4936
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 6
pop.v.i self.con

:[20]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [22]

:[21]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
call.i snd_free_all(argc=0)
popz.v
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_scarelancerevent_slash_Step_0_gml_66_0"@4937
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_67_0"@4938
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_68_0"@4939
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_70_0"@4940
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_71_0"@4941
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_73_0"@4942
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 8
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_75_0"@4943
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_77_0"@4944
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 7
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side

:[25]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [27]

:[26]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [32]

:[29]
push.v 326.y
pop.v.v self.oy
pushi.e 1
pop.v.i 326.cutscene
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_pan(argc=3)
popz.v
push.s "s_neo.ogg"@3776
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
push.v self.s
conv.v.i
pushenv [31]

:[30]
pushi.e 100
pop.v.i self.depth
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.hspeed

:[31]
popenv [30]
pushi.e 8
pop.v.i self.con

:[32]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [45]

:[33]
push.v self.s
conv.v.i
push.v [stacktop]self.x
push.v self.r
conv.v.i
push.v [stacktop]self.x
pushi.e 20
sub.i.v
sub.v.v
call.i abs(argc=1)
pushi.e 6
cmp.i.v LT
bf [37]

:[34]
push.v self.r
conv.v.i
pushenv [36]

:[35]
pushi.e 204
pop.v.i self.sprite_index
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[36]
popenv [35]

:[37]
push.v self.s
conv.v.i
push.v [stacktop]self.x
push.v 326.x
pushi.e 20
sub.i.v
sub.v.v
call.i abs(argc=1)
pushi.e 6
cmp.i.v LT
bf [41]

:[38]
push.v self.k
conv.v.i
pushenv [40]

:[39]
pushi.e 827
pop.v.i self.sprite_index
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[40]
popenv [39]

:[41]
push.v self.s
conv.v.i
push.v [stacktop]self.x
push.v 326.x
pushi.e 60
add.i.v
cmp.v.v GT
bf [45]

:[42]
push.v self.s
conv.v.i
pushenv [44]

:[43]
call.i scr_halt(argc=0)
popz.v

:[44]
popenv [43]
pushi.e 9
pop.v.i self.con
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong

:[45]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [51]

:[46]
pushi.e 1
pop.v.i global.facing
push.v self.r
conv.v.i
pushenv [48]

:[47]
pushi.e 209
pop.v.i self.sprite_index

:[48]
popenv [47]
push.v self.k
conv.v.i
pushenv [50]

:[49]
pushi.e 829
pop.v.i self.sprite_index

:[50]
popenv [49]
pushi.e 2
pop.v.i global.fe
push.s "obj_scarelancerevent_slash_Step_0_gml_134_0"@4946
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_136_0"@4947
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_138_0"@4948
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_139_0"@4949
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_140_0"@4950
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 10
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side

:[51]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [53]

:[52]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [58]

:[55]
push.v self.s
conv.v.i
pushenv [57]

:[56]
pushi.e 1
pop.v.i self.hspeed
push.d 0.1
pop.v.d self.image_speed

:[57]
popenv [56]
pushi.e 11
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[58]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [62]

:[59]
push.v self.s
conv.v.i
pushenv [61]

:[60]
call.i scr_halt(argc=0)
popz.v

:[61]
popenv [60]
pushi.e 2
pop.v.i global.fe
push.s "obj_scarelancerevent_slash_Step_0_gml_163_0"@4951
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_165_0"@4952
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_167_0"@4953
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 13
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side

:[62]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [64]

:[63]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [69]

:[66]
push.v self.s
conv.v.i
pushenv [68]

:[67]
pushi.e 2
pop.v.i self.hspeed
push.v 49.y
push.v self.y
sub.v.v
push.v 49.sprite_height
add.v.v
push.v self.sprite_height
sub.v.v
pushi.e 30
conv.i.d
div.d.v
pop.v.v self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[68]
popenv [67]
pushi.e 1
pop.v.i self.hspeed
pushi.e 15
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[69]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [75]

:[70]
push.v self.s
conv.v.i
pushenv [72]

:[71]
call.i scr_halt(argc=0)
popz.v

:[72]
popenv [71]
pushi.e 0
pop.v.i self.visible
push.v self.s
conv.v.i
pushenv [74]

:[73]
pushi.e 158
pop.v.i self.sprite_index

:[74]
popenv [73]
pushi.e 0
pop.v.i self.hspeed
push.d 16.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[75]
push.v self.con
push.d 17.1
cmp.d.v EQ
bf [80]

:[76]
push.v self.s
conv.v.i
dup.i 0
push.v [stacktop]self.image_index
push.d 0.25
add.d.v
pop.i.v [stacktop]self.image_index
push.v self.s
conv.v.i
push.v [stacktop]self.image_index
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v

:[78]
push.v self.s
conv.v.i
push.v [stacktop]self.image_index
pushi.e 3
cmp.i.v GTE
bf [80]

:[79]
pushi.e 17
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[80]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [82]

:[81]
pushi.e 0
pop.v.i self.visible
pushi.e 3
pop.v.i global.fe
push.s "obj_scarelancerevent_slash_Step_0_gml_215_0"@4954
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 19
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side

:[82]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [84]

:[83]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [85]

:[84]
push.e 0

:[85]
bf [89]

:[86]
push.v self.s
conv.v.i
dup.i 0
push.v [stacktop]self.image_index
push.d 0.25
add.d.v
pop.i.v [stacktop]self.image_index
push.v self.s
conv.v.i
push.v [stacktop]self.image_index
pushi.e 7
cmp.i.v GTE
bf [88]

:[87]
pushi.e 20
pop.v.i self.con

:[88]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[89]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [91]

:[90]
push.s "obj_scarelancerevent_slash_Step_0_gml_234_0"@4955
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_235_0"@4956
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 22
pop.v.i self.con

:[91]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [93]

:[92]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [98]

:[95]
push.v self.s
conv.v.i
pushenv [97]

:[96]
pushi.e 159
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_index

:[97]
popenv [96]
push.s "obj_scarelancerevent_slash_Step_0_gml_249_0"@4957
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
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.skippable
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.skip
pushi.e 23
pop.v.i self.con

:[98]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [100]

:[99]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
pushi.e 26
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[103]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [105]

:[104]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [106]

:[105]
push.e 0

:[106]
bf [110]

:[107]
call.i snd_free_all(argc=0)
popz.v
push.v self.s
conv.v.i
pushenv [109]

:[108]
pushi.e 160
pop.v.i self.sprite_index

:[109]
popenv [108]
pushi.e 3
pop.v.i global.fe
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
push.s "obj_scarelancerevent_slash_Step_0_gml_270_0"@4958
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_271_0"@4959
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "A"@366
conv.s.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_273_0"@4960
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_275_0"@4961
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_276_0"@4962
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 7
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_278_0"@4963
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_280_0"@4964
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 28
pop.v.i self.con
pushi.e 8
pop.v.i global.encounterno
pushglb.v global.encounterno
call.i scr_encountersetup(argc=1)
popz.v

:[110]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [112]

:[111]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [113]

:[112]
push.e 0

:[113]
bf [117]

:[114]
pushi.e 162
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v
push.v self.s
conv.v.i
pushenv [116]

:[115]
pushi.e 183
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[116]
popenv [115]
pushi.e 1
pop.v.i self.visible
push.v self.y
pushi.e 14
sub.i.v
pop.v.v self.y
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 8
pop.v.i self.hspeed
pushi.e 2
pop.v.i self.vspeed
pushi.e 29
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[117]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [119]

:[118]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
push.d 30.1
pop.v.d self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[119]
push.v self.con
push.d 31.1
cmp.d.v EQ
bf [126]

:[120]
pushi.e 0
pop.v.i self.i

:[121]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [125]

:[122]
pushi.e 602
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 700
add.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.cc
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
conv.v.i
pushenv [124]

:[123]
pushi.e 30
conv.i.v
push.v self.y
pushi.e -5
pushi.e 0
push.v [array]global.monstermakex
pushi.e 60
add.i.v
call.i scr_move_to_point_over_time(argc=3)
popz.v
push.i 50000
pop.v.i self.depth

:[124]
popenv [123]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [121]

:[125]
pushi.e 31
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[126]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [133]

:[127]
pushi.e 0
pop.v.i self.i

:[128]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [132]

:[129]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
conv.v.i
pushenv [131]

:[130]
pushi.e 0
pop.v.i self.hspeed

:[131]
popenv [130]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [128]

:[132]
push.s "obj_scarelancerevent_slash_Step_0_gml_328_0"@4965
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_329_0"@4966
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 33
pop.v.i self.con

:[133]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [135]

:[134]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [136]

:[135]
push.e 0

:[136]
bf [138]

:[137]
pushi.e 16
pop.v.i self.hspeed
pushi.e 3
pop.v.i global.fe
push.s "obj_scarelancerevent_slash_Step_0_gml_340_0"@4967
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 34
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[138]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [140]

:[139]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [141]

:[140]
push.e 0

:[141]
bf [154]

:[142]
pushi.e 20
conv.i.v
pushi.e 326
conv.i.v
call.i scr_pan_to_obj(argc=2)
popz.v
pushi.e 35
pop.v.i self.con
pushi.e 0
pop.v.i self.i

:[143]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [147]

:[144]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
conv.v.i
pushenv [146]

:[145]
pushi.e -4
pop.v.i self.hspeed

:[146]
popenv [145]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [143]

:[147]
push.v self.k
conv.v.i
pushenv [149]

:[148]
pushi.e 20
conv.i.v
push.v 326.y
push.v 326.x
call.i scr_move_to_point_over_time(argc=3)
popz.v

:[149]
popenv [148]
push.v self.s
conv.v.i
pushenv [151]

:[150]
pushi.e 20
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.x
call.i scr_move_to_point_over_time(argc=3)
popz.v

:[151]
popenv [150]
push.v self.r
conv.v.i
pushenv [153]

:[152]
pushi.e 20
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.x
call.i scr_move_to_point_over_time(argc=3)
popz.v

:[153]
popenv [152]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[154]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [171]

:[155]
pushi.e 0
pop.v.i self.i

:[156]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [160]

:[157]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
conv.v.i
pushenv [159]

:[158]
pushi.e 0
pop.v.i self.depth
pushi.e 0
pop.v.i self.hspeed

:[159]
popenv [158]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [156]

:[160]
pushi.e 165
pushenv [162]

:[161]
pushi.e 1
pop.v.i self.visible

:[162]
popenv [161]
pushi.e 326
pushenv [164]

:[163]
pushi.e 1
pop.v.i self.visible

:[164]
popenv [163]
push.v self.s
conv.v.i
pushenv [166]

:[165]
call.i instance_destroy(argc=0)
popz.v

:[166]
popenv [165]
push.v self.r
conv.v.i
pushenv [168]

:[167]
call.i instance_destroy(argc=0)
popz.v

:[168]
popenv [167]
push.v self.k
conv.v.i
pushenv [170]

:[169]
call.i instance_destroy(argc=0)
popz.v

:[170]
popenv [169]
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.s "obj_scarelancerevent_slash_Step_0_gml_374_0"@4968
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
pushi.e 37
pop.v.i self.con

:[171]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [173]

:[172]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [174]

:[173]
push.e 0

:[174]
bf [185]

:[175]
push.s "field_of_hopes.ogg"@4969
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_pause(argc=1)
popz.v
pushi.e 299
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 22
pop.v.i global.encounterno
pushglb.v global.encounterno
call.i scr_encountersetup(argc=1)
popz.v
pushi.e 0
pop.v.i global.specialbattle
pushi.e 1
pushi.e -5
pushi.e 9
pop.v.i [array]global.flag
push.s "battle.ogg"@4970
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.batmusic
pushi.e 164
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[176]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [182]

:[177]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
call.i instance_exists(argc=1)
conv.v.b
bf [181]

:[178]
push.v self.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
conv.v.i
pop.v.v [stacktop]self.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
conv.v.i
pushenv [180]

:[179]
pushi.e 25
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monstermakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monstermakex
call.i scr_move_to_point_over_time(argc=3)
popz.v

:[180]
popenv [179]

:[181]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [176]

:[182]
pushi.e 38
pop.v.i self.con
pushglb.v global.plot
pushi.e 45
cmp.i.v LT
bf [184]

:[183]
pushi.e 45
pop.v.i global.plot

:[184]
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[185]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [end]

:[186]
pushi.e -1
pushi.e 0
push.v [array]self.cc
conv.v.i
pushenv [188]

:[187]
pushi.e 0
pop.v.i self.visible

:[188]
popenv [187]
pushi.e -1
pushi.e 1
push.v [array]self.cc
conv.v.i
pushenv [190]

:[189]
pushi.e 0
pop.v.i self.visible

:[190]
popenv [189]
pushi.e -1
pushi.e 2
push.v [array]self.cc
conv.v.i
pushenv [192]

:[191]
pushi.e 0
pop.v.i self.visible

:[192]
popenv [191]
pushi.e 40
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]