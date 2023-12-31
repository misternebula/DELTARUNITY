.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 11
cmp.i.v EQ
bf [52]

:[1]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [3]

:[2]
call.i d_ex(argc=0)
conv.v.b
not.b
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 21
pop.v.i self.con

:[6]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i global.interact

:[8]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [14]

:[9]
pushi.e 1
pop.v.i global.interact
pushi.e 279
conv.i.v
push.v self.bnpc
conv.v.i
push.v [stacktop]self.y
pushi.e 14
sub.i.v
push.v self.bnpc
conv.v.i
push.v [stacktop]self.x
pushi.e 1
sub.i.v
call.i scr_marker(argc=3)
pop.v.v self.banim
push.v self.bnpc
conv.v.i
push.v [stacktop]self.depth
push.v self.banim
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.bnpc
conv.v.i
pushenv [11]

:[10]
pushi.e 0
pop.v.i self.visible

:[11]
popenv [10]
push.v self.banim
conv.v.i
pushenv [13]

:[12]
push.d 0.334
pop.v.d self.image_speed

:[13]
popenv [12]
pushi.e 23
pop.v.i self.con
pushi.e 36
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[14]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [22]

:[15]
push.v self.bnpc
conv.v.i
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]
pushi.e 84
conv.i.v
push.v self.banim
conv.v.i
push.v [stacktop]self.y
pushi.e 18
add.i.v
push.v self.banim
conv.v.i
push.v [stacktop]self.x
pushi.e 9
add.i.v
call.i instance_create(argc=3)
pop.v.v self.bnpc
push.v self.bnpc
conv.v.i
pushenv [19]

:[18]
pushi.e 280
pop.v.i self.sprite_index

:[19]
popenv [18]
push.v self.banim
conv.v.i
pushenv [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [20]
pushi.e 25
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[22]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [24]

:[23]
pushi.e 19
pop.v.i global.fc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 340
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 27
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[24]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [26]

:[25]
call.i d_ex(argc=0)
conv.v.b
not.b
b [27]

:[26]
push.e 0

:[27]
bf [30]

:[28]
pushi.e 0
pop.v.i global.interact
pushi.e 28
pop.v.i self.con
pushi.e -5
pushi.e 271
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pushi.e -5
pushi.e 271
pop.v.i [array]global.flag

:[30]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [32]

:[31]
pushi.e -5
pushi.e 273
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [47]

:[34]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [47]

:[35]
push.v 326.x
pushi.e 1060
cmp.i.v LTE
bt [38]

:[36]
push.v 326.x
pushi.e 1200
cmp.i.v GTE
bt [38]

:[37]
push.v 326.y
pushi.e 120
cmp.i.v GTE
b [39]

:[38]
push.e 1

:[39]
bf [47]

:[40]
pushi.e 1
pop.v.i global.interact
push.v 326.x
pushi.e 1060
cmp.i.v LTE
bf [42]

:[41]
pushi.e 1
pop.v.i global.facing

:[42]
push.v 326.x
pushi.e 1200
cmp.i.v GTE
bf [44]

:[43]
pushi.e 3
pop.v.i global.facing

:[44]
push.v 326.y
pushi.e 120
cmp.i.v GTE
bf [46]

:[45]
pushi.e 2
pop.v.i global.facing

:[46]
pushi.e 71
pop.v.i self.con
pushi.e 14
pop.v.i global.typer
pushi.e 6
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 380
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[47]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [49]

:[48]
call.i d_ex(argc=0)
conv.v.b
not.b
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 72
pop.v.i self.con
pushi.e 2
pushi.e -5
pushi.e 273
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[52]
pushbltn.v self.room
pushi.e 13
cmp.i.v EQ
bf [69]

:[53]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [55]

:[54]
call.i d_ex(argc=0)
conv.v.b
not.b
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 51
pop.v.i self.con
pushi.e 28
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[58]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [62]

:[59]
pushi.e 1
pop.v.i global.interact
push.v self.policewindow
conv.v.i
pushenv [61]

:[60]
push.v self.image_index
push.d 0.1
add.d.v
pop.v.v self.image_index

:[61]
popenv [60]

:[62]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [64]

:[63]
push.s "obj_town_event_slash_Step_0_gml_120_0"@3894
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
pushi.e 53
pop.v.i self.con

:[64]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [66]

:[65]
call.i d_ex(argc=0)
conv.v.b
not.b
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 55
pop.v.i self.con

:[69]
pushbltn.v self.room
pushi.e 6
cmp.i.v EQ
bf [end]

:[70]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [72]

:[71]
call.i d_ex(argc=0)
conv.v.b
not.b
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_pause(argc=1)
popz.v
pushi.e 23
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 61
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[75]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [77]

:[76]
pushi.e 1
pop.v.i global.interact

:[77]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [86]

:[78]
pushi.e 0
pop.v.i self.specflush
pushi.e 31
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.flush
pushi.e 1
add.i.v
pop.v.v self.flush
push.s "obj_town_event_slash_Step_0_gml_157_0"@3897
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.flush
pushi.e 3
cmp.i.v EQ
bf [80]

:[79]
pushi.e 1
pop.v.i self.specflush

:[80]
push.v self.flush
pushi.e 6
cmp.i.v EQ
bf [82]

:[81]
pushi.e 2
pop.v.i self.specflush

:[82]
push.v self.flush
pushi.e 9
cmp.i.v EQ
bf [84]

:[83]
pushi.e 3
pop.v.i self.specflush

:[84]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 63
pop.v.i self.con
push.v self.specflush
pushi.e 0
cmp.i.v GT
bf [86]

:[85]
pushi.e 67
pop.v.i self.con

:[86]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [88]

:[87]
call.i d_ex(argc=0)
conv.v.b
not.b
b [89]

:[88]
push.e 0

:[89]
bf [91]

:[90]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_resume(argc=1)
popz.v
pushi.e 64
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[91]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [93]

:[92]
call.i d_ex(argc=0)
conv.v.b
not.b
b [94]

:[93]
push.e 0

:[94]
bf [96]

:[95]
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 68
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[96]
push.v self.con
pushi.e 69
cmp.i.v EQ
bf [end]

:[97]
push.v self.specflush
pushi.e 1
cmp.i.v EQ
bf [99]

:[98]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "obj_town_event_slash_Step_0_gml_186_0"@3899
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[99]
push.v self.specflush
pushi.e 2
cmp.i.v EQ
bf [101]

:[100]
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "obj_town_event_slash_Step_0_gml_191_0"@3900
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_town_event_slash_Step_0_gml_192_0"@3901
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[101]
push.v self.specflush
pushi.e 3
cmp.i.v EQ
bf [103]

:[102]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "obj_town_event_slash_Step_0_gml_197_0"@3902
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[103]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 63
pop.v.i self.con
pushi.e 0
pop.v.i self.specflush

:[end]