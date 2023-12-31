.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v 326.x
pushi.e 1300
cmp.i.v GTE
bf [4]

:[2]
push.v 326.y
pushi.e 900
cmp.i.v GT
bf [4]

:[3]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushi.e 220
pop.v.i self.sprite_index
pushi.e 162
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[7]
push.v self.con
pushi.e 2
cmp.i.v GT
bf [64]

:[8]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.s "obj_hathyfightevent_slash_Step_0_gml_19_0"@5043
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_hathyfightevent_slash_Step_0_gml_20_0"@5044
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_hathyfightevent_slash_Step_0_gml_21_0"@5045
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[10]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 16
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[15]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [24]

:[16]
pushi.e 299
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 9
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

:[17]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [21]

:[18]
pushi.e 516
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monstermakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monstermakex
pushi.e 250
add.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.h
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.h
conv.v.i
pushenv [20]

:[19]
pushi.e -10
pop.v.i self.hspeed

:[20]
popenv [19]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [17]

:[21]
pushi.e 7
pop.v.i self.con
pushglb.v global.plot
pushi.e 36
cmp.i.v LT
bf [23]

:[22]
pushi.e 36
pop.v.i global.plot

:[23]
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [31]

:[25]
pushi.e 0
pop.v.i self.i

:[26]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [30]

:[27]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.h
conv.v.i
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [26]

:[30]
pushi.e 9
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[31]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [33]

:[32]
pushi.e 0
pop.v.i self.depth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 640
add.i.v
pop.v.v self.x
pushi.e -20
pop.v.i self.hspeed
pushi.e 16
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[33]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [35]

:[34]
pushi.e 0
pop.v.i self.hspeed
pushi.e 5
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 46
pop.v.i global.typer
push.s "obj_hathyfightevent_slash_Step_0_gml_79_0"@5047
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "B"@2529
conv.s.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_hathyfightevent_slash_Step_0_gml_81_0"@5048
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_hathyfightevent_slash_Step_0_gml_82_0"@5049
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_hathyfightevent_slash_Step_0_gml_83_0"@5050
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_hathyfightevent_slash_Step_0_gml_85_0"@5051
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_hathyfightevent_slash_Step_0_gml_86_0"@5052
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 8
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_hathyfightevent_slash_Step_0_gml_88_0"@5053
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
call.i scr_battletext(argc=0)
popz.v
pushi.e 18
pop.v.i self.con

:[35]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [37]

:[36]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [42]

:[39]
pushi.e 0
pop.v.i global.fc
pushi.e 20
pop.v.i self.hspeed
pushi.e 19
pop.v.i self.con
pushi.e 187
pushenv [41]

:[40]
pushi.e 21
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[41]
popenv [40]
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[42]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [46]

:[43]
pushi.e 187
pushenv [45]

:[44]
pushi.e 0
pop.v.i self.noreturn

:[45]
popenv [44]
pushi.e 21
pop.v.i self.con

:[46]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [48]

:[47]
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
pushi.e -5
pushi.e 3
push.v [array]global.monstergold
call.i string(argc=1)
pushi.e -5
pushi.e 3
push.v [array]global.monsterexp
call.i string(argc=1)
push.s "obj_hathyfightevent_slash_Step_0_gml_116_0"@5055
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext(argc=0)
popz.v
pushi.e 31
pop.v.i self.con

:[48]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [50]

:[49]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 0
pop.v.i self.depth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 640
add.i.v
pop.v.v self.x
pushi.e -20
pop.v.i self.hspeed
pushi.e 32
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[53]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [55]

:[54]
pushi.e 0
pop.v.i self.hspeed
pushi.e 5
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 46
pop.v.i global.typer
push.s "obj_hathyfightevent_slash_Step_0_gml_136_0"@5056
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "B"@2529
conv.s.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_hathyfightevent_slash_Step_0_gml_138_0"@5057
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_hathyfightevent_slash_Step_0_gml_140_0"@5058
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_hathyfightevent_slash_Step_0_gml_141_0"@5059
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "A"@366
conv.s.v
pushi.e 6
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_hathyfightevent_slash_Step_0_gml_143_0"@5060
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_hathyfightevent_slash_Step_0_gml_145_0"@5061
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
call.i scr_battletext(argc=0)
popz.v
pushi.e 34
pop.v.i self.con

:[55]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [57]

:[56]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e 84
conv.i.v
pushi.e 1080
conv.i.v
pushi.e 1740
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.npc
pushi.e 0
pop.v.i global.fc
pushi.e 20
pop.v.i self.hspeed
pushi.e 35
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[60]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [64]

:[61]
pushi.e 187
pushenv [63]

:[62]
pushi.e 1
pop.v.i self.victoried

:[63]
popenv [62]
pushi.e 37
pop.v.i self.con

:[64]
push.v self.equipcon
pushi.e 1
cmp.i.v GTE
bf [end]

:[65]
pushi.e -5
pushi.e 3
push.v [array]global.chararmor1
pushi.e 4
cmp.i.v EQ
bt [67]

:[66]
pushi.e -5
pushi.e 3
push.v [array]global.chararmor2
pushi.e 4
cmp.i.v EQ
b [68]

:[67]
push.e 1

:[68]
bf [76]

:[69]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [71]

:[70]
pushi.e 3
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
b [72]

:[71]
push.e 0

:[72]
bf [76]

:[73]
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_hathyfightevent_slash_Step_0_gml_181_0"@5063
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_hathyfightevent_slash_Step_0_gml_182_0"@5064
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_hathyfightevent_slash_Step_0_gml_183_0"@5065
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [75]

:[74]
push.s "obj_hathyfightevent_slash_Step_0_gml_186_0"@5066
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
push.s "obj_hathyfightevent_slash_Step_0_gml_188_0"@5067
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 5
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_hathyfightevent_slash_Step_0_gml_190_0"@5068
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
push.s "obj_hathyfightevent_slash_Step_0_gml_192_0"@5069
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[75]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.equipcon
pushi.e 1
pop.v.i global.interact

:[76]
push.v self.equipcon
pushi.e 2
cmp.i.v EQ
bf [78]

:[77]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [79]

:[78]
push.e 0

:[79]
bf [end]

:[80]
pushi.e 0
pop.v.i global.interact
pushi.e -1
pop.v.i self.equipcon

:[end]