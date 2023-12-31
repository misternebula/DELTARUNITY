.localvar 0 arguments

:[0]
pushbltn.v self.argument1
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
bt [14]

:[3]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [15]

:[4]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [16]

:[5]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [17]

:[6]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [18]

:[7]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [19]

:[8]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [20]

:[9]
dup.v 0
pushi.e 201
cmp.i.v EQ
bt [21]

:[10]
dup.v 0
pushi.e 202
cmp.i.v EQ
bt [41]

:[11]
b [42]

:[12]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_6_0"@43
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [42]

:[13]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_9_0"@44
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 104
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@37
conv.s.v
pushi.e 0
conv.i.v
call.i scr_writetext(argc=4)
popz.v
pushi.e 0
conv.i.v
pushbltn.v self.argument0
pushi.e 10
conv.i.v
call.i script_execute(argc=3)
popz.v
b [42]

:[14]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_18_0"@48
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i scr_lweaponeq(argc=2)
popz.v
pushi.e 97
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@37
conv.s.v
pushi.e 0
conv.i.v
call.i scr_writetext(argc=4)
popz.v
b [42]

:[15]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_26_0"@50
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
call.i script_execute(argc=2)
popz.v
pushi.e 0
conv.i.v
pushbltn.v self.argument0
pushi.e 10
conv.i.v
call.i script_execute(argc=3)
popz.v
b [42]

:[16]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_34_0"@51
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@37
conv.s.v
pushi.e 0
conv.i.v
call.i scr_writetext(argc=4)
popz.v
b [42]

:[17]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_42_0"@52
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@37
conv.s.v
pushi.e 0
conv.i.v
call.i scr_writetext(argc=4)
popz.v
b [42]

:[18]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_48_0"@53
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i scr_lweaponeq(argc=2)
popz.v
pushi.e 97
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@37
conv.s.v
pushi.e 0
conv.i.v
call.i scr_writetext(argc=4)
popz.v
b [42]

:[19]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_56_0"@54
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i scr_lweaponeq(argc=2)
popz.v
pushi.e 97
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@37
conv.s.v
pushi.e 0
conv.i.v
call.i scr_writetext(argc=4)
popz.v
b [42]

:[20]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_63_0"@55
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 29
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@37
conv.s.v
pushi.e 0
conv.i.v
call.i scr_writetext(argc=4)
popz.v
b [42]

:[21]
pushi.e 0
pop.v.i self.tempsaid
pushi.e 27
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_72_0"@57
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_73_0"@58
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 2
cmp.i.v EQ
bt [24]

:[22]
pushbltn.v self.room
pushi.e 3
cmp.i.v EQ
bt [24]

:[23]
pushbltn.v self.room
pushi.e 6
cmp.i.v EQ
b [25]

:[24]
push.e 1

:[25]
bf [27]

:[26]
pushi.e 1
pop.v.i self.tempsaid
pushi.e 1
pushi.e -5
pushi.e 268
pop.v.i [array]global.flag
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_82_0"@61
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_83_0"@62
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_84_0"@63
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_86_0"@65
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[27]
pushbltn.v self.room
pushi.e 5
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1
pop.v.i self.tempsaid
push.s "scr_litemuseb_slash_scr_litemuseb_gml_92_0"@66
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_93_0"@67
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_94_0"@68
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[29]
push.v self.tempsaid
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
b [32]

:[31]
push.e 0

:[32]
bf [40]

:[33]
pushi.e -5
pushi.e 272
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
pushi.e 365
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[35]
pushi.e -5
pushi.e 272
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_109_0"@71
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_111_0"@72
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_112_0"@73
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_113_0"@74
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_114_0"@75
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_116_0"@76
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[37]
pushi.e -5
pushi.e 272
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [39]

:[38]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_121_0"@77
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_123_0"@78
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_124_0"@79
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_125_0"@80
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_127_0"@81
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[39]
pushi.e -5
pushi.e 272
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[40]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@37
conv.s.v
pushi.e 0
conv.i.v
call.i scr_writetext(argc=4)
popz.v
b [42]

:[41]
pushi.e 375
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
b [42]

:[42]
popz.v

:[end]