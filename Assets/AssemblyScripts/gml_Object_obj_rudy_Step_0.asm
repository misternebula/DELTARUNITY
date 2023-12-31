.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i global.interact

:[4]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 12
pop.v.i global.typer
pushi.e 3
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
push.s "obj_rudy_slash_Step_0_gml_15_0"@3854
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_rudy_slash_Step_0_gml_16_0"@3855
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_18_0"@3857
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_rudy_slash_Step_0_gml_19_0"@3858
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i scr_noeface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_21_0"@3860
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 7
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_23_0"@3861
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 4
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[6]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [8]

:[7]
call.i d_ex(argc=0)
conv.v.b
not.b
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 249
pop.v.i self.sprite_index
pushi.e 137
conv.i.v
call.i snd_play(argc=1)
popz.v
push.d 0.25
pop.v.d self.image_speed
pushi.e 5
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[11]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i self.image_index
pushi.e 137
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 248
pop.v.i self.sprite_index
pushi.e 138
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 7
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[13]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [15]

:[14]
pushi.e 12
pop.v.i global.typer
pushi.e 3
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
pushi.e 250
pop.v.i self.sprite_index
push.s "obj_rudy_slash_Step_0_gml_53_0"@3862
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_55_0"@3863
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
call.i scr_noeface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_57_0"@3864
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_rudy_slash_Step_0_gml_58_0"@3865
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 6
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_60_0"@3866
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_rudy_slash_Step_0_gml_61_0"@3867
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 9
conv.i.v
call.i scr_noeface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_63_0"@3868
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 11
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_65_0"@3869
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 13
conv.i.v
call.i scr_noeface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_67_0"@3870
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_rudy_slash_Step_0_gml_68_0"@3871
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_rudy_slash_Step_0_gml_69_0"@3872
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 17
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_71_0"@3873
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_rudy_slash_Step_0_gml_72_0"@3874
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 20
conv.i.v
call.i scr_noeface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_74_0"@3875
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 22
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_76_0"@3876
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 24
conv.i.v
call.i scr_noeface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_78_0"@3877
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 26
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_80_0"@3878
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 28
conv.i.v
call.i scr_noeface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_82_0"@3879
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_84_0"@3880
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 9
pop.v.i self.con

:[15]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [17]

:[16]
call.i d_ex(argc=0)
conv.v.b
not.b
b [18]

:[17]
push.e 0

:[18]
bf [22]

:[19]
push.v self.n
conv.v.i
pushenv [21]

:[20]
pushi.e 125
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[21]
popenv [20]
pushi.e 10
pop.v.i self.con

:[22]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [27]

:[23]
push.v self.n
conv.v.i
push.v [stacktop]self.y
pushi.e 150
cmp.i.v GTE
bf [27]

:[24]
pushi.e 247
pop.v.i self.sprite_index
push.v self.n
conv.v.i
pushenv [26]

:[25]
pushi.e 126
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[26]
popenv [25]
pushi.e 11
pop.v.i self.con

:[27]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [32]

:[28]
push.v self.n
conv.v.i
push.v [stacktop]self.x
pushi.e 160
cmp.i.v GTE
bf [32]

:[29]
push.v self.n
conv.v.i
pushenv [31]

:[30]
pushi.e 124
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[31]
popenv [30]
pushi.e 12
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [34]

:[33]
pushi.e 12
pop.v.i global.typer
pushi.e 3
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
push.s "obj_rudy_slash_Step_0_gml_140_0"@3881
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
pushi.e 14
pop.v.i self.con
pushi.e 0
pop.v.i self.kcon

:[34]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [36]

:[35]
call.i d_ex(argc=0)
conv.v.b
not.b
b [37]

:[36]
push.e 0

:[37]
bf [41]

:[38]
push.v self.n
conv.v.i
pushenv [40]

:[39]
pushi.e 3
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 125
pop.v.i self.sprite_index

:[40]
popenv [39]
pushi.e 15
pop.v.i self.con
pushi.e 1
pop.v.i self.kcon
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[41]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [46]

:[42]
pushi.e 326
pushenv [45]

:[43]
push.v self.x
pushi.e 140
cmp.i.v GT
bf [45]

:[44]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x

:[45]
popenv [43]

:[46]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [end]

:[47]
pushi.e 84
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i global.facing
pushi.e 1
pushi.e -5
pushi.e 255
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v
pushi.e 17
pop.v.i self.con

:[end]