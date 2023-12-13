.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 5
cmp.i.v EQ
bf [95]

:[1]
pushglb.v global.menuno
pop.v.v self.currentmenu
pushglb.v global.menuno
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
pushi.e -5
pushglb.v global.menuno
conv.v.i
push.v [array]global.menucoord
pop.v.v self.currentspot

:[3]
call.i button1_p(argc=0)
conv.v.b
bf [41]

:[4]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [29]

:[5]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 9
pop.v.i global.menuno
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.litem
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
pushi.e 7
conv.i.v
call.i script_execute(argc=3)
popz.v

:[7]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 9
pop.v.i global.menuno
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.litem
pushi.e 11
conv.i.v
call.i script_execute(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@37
conv.s.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i script_execute(argc=5)
popz.v

:[9]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 2
cmp.i.v EQ
bf [29]

:[10]
pushi.e 0
pop.v.i self.dontthrow
pushi.e 9
pop.v.i global.menuno
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.litem
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.dontthrow

:[12]
push.v self.dontthrow
pushi.e 0
cmp.i.v EQ
bf [27]

:[13]
pushi.e 30
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.i
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_overworldc_slash_Step_0_gml_32_0"@10058
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.litemname
add.v.v
push.s "."@1543
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.litemname
push.s "obj_overworldc_slash_Step_0_gml_33_0"@10059
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
push.v self.i
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.litemname
push.s "obj_overworldc_slash_Step_0_gml_35_0"@10060
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
push.v self.i
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_overworldc_slash_Step_0_gml_36_0"@10061
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.litemname
add.v.v
push.s "."@1543
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[21]
push.v self.i
pushi.e 3
cmp.i.v GT
bf [23]

:[22]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.litemname
push.s "obj_overworldc_slash_Step_0_gml_37_0"@10062
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[23]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.msg
push.s "obj_overworldc_slash_Step_0_gml_38_0"@10063
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
pop.i.v [array]global.msg
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.litem
pushi.e 8
cmp.i.v EQ
bf [26]

:[24]
push.s "obj_overworldc_slash_Step_0_gml_41_0"@10064
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 263
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
pushi.e -5
pushi.e 263
pop.v.i [array]global.flag

:[26]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@37
conv.s.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
pushi.e 10
conv.i.v
call.i script_execute(argc=3)
popz.v

:[27]
push.v self.dontthrow
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 10
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@37
conv.s.v
pushi.e 10
conv.i.v
pushi.e 6
conv.i.v
call.i script_execute(argc=5)
popz.v

:[29]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [31]

:[30]
pushi.e 9
pop.v.i global.menuno
pushi.e -5
pushi.e -5
pushi.e 3
push.v [array]global.menucoord
conv.v.i
push.v [array]global.phone
pushi.e -5
pushi.e 3
push.v [array]global.menucoord
pushi.e 7
conv.i.v
call.i script_execute(argc=3)
popz.v

:[31]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 5
pop.v.i global.menuno
pushi.e 0
pushi.e -5
pushi.e 5
pop.v.i [array]global.menucoord

:[33]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
push.v global.menuno
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
pushi.e 1
add.i.v
add.v.v
pop.v.v global.menuno

:[35]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [37]

:[36]
pushi.e 5
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.menucoord

:[37]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [41]

:[38]
pushi.e -5
pushi.e 0
push.v [array]global.litem
pushi.e 0
cmp.i.v NEQ
bf [40]

:[39]
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.menucoord
pushi.e 14
conv.i.v
call.i script_execute(argc=1)
popz.v
b [41]

:[40]
pushi.e 0
pop.v.i global.menuno

:[41]
call.i up_p(argc=0)
conv.v.b
bf [51]

:[42]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [45]

:[43]
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
pushi.e 0
cmp.i.v NEQ
bf [45]

:[44]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.menucoord

:[45]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [48]

:[46]
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
pushi.e 0
cmp.i.v NEQ
bf [48]

:[47]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.menucoord

:[48]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [51]

:[49]
pushi.e -5
pushi.e 3
push.v [array]global.menucoord
pushi.e 0
cmp.i.v NEQ
bf [51]

:[50]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.menucoord

:[51]
call.i down_p(argc=0)
conv.v.b
bf [63]

:[52]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [55]

:[53]
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
pushi.e 2
cmp.i.v NEQ
bf [55]

:[54]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.menucoord
pushi.e 1
add.i.v
pop.i.v [array]global.menucoord

:[55]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [59]

:[56]
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
pushi.e 7
cmp.i.v NEQ
bf [59]

:[57]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.litem
pushi.e 0
cmp.i.v NEQ
bf [59]

:[58]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.menucoord
pushi.e 1
add.i.v
pop.i.v [array]global.menucoord

:[59]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [63]

:[60]
pushi.e -5
pushi.e 3
push.v [array]global.menucoord
pushi.e 7
cmp.i.v NEQ
bf [63]

:[61]
pushi.e -5
pushi.e -5
pushi.e 3
push.v [array]global.menucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.phone
pushi.e 0
cmp.i.v NEQ
bf [63]

:[62]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.menucoord
pushi.e 1
add.i.v
pop.i.v [array]global.menucoord

:[63]
call.i button2_p(argc=0)
conv.v.b
bf [65]

:[64]
push.v self.buffer
pushi.e 0
cmp.i.v GTE
b [66]

:[65]
push.e 0

:[66]
bf [73]

:[67]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact
b [71]

:[69]
pushglb.v global.menuno
pushi.e 3
cmp.i.v LTE
bf [71]

:[70]
pushi.e 0
pop.v.i global.menuno

:[71]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [73]

:[72]
pushi.e 1
pop.v.i global.menuno

:[73]
call.i right_p(argc=0)
conv.v.b
bf [77]

:[74]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [77]

:[75]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 2
cmp.i.v NEQ
bf [77]

:[76]
pushi.e -5
pushi.e 5
dup.i 1
push.v [array]global.menucoord
pushi.e 1
add.i.v
pop.i.v [array]global.menucoord

:[77]
call.i left_p(argc=0)
conv.v.b
bf [81]

:[78]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [81]

:[79]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 0
cmp.i.v NEQ
bf [81]

:[80]
pushi.e -5
pushi.e 5
dup.i 1
push.v [array]global.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.menucoord

:[81]
call.i button3_p(argc=0)
conv.v.b
bf [84]

:[82]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [84]

:[83]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact

:[84]
push.v self.currentmenu
pushglb.v global.menuno
cmp.v.v LT
bf [86]

:[85]
pushglb.v global.menuno
pushi.e 9
cmp.i.v NEQ
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
pushi.e 1
pop.v.i self.selnoise
b [95]

:[89]
pushglb.v global.menuno
pushi.e 0
cmp.i.v GTE
bf [91]

:[90]
pushglb.v global.menuno
pushi.e 6
cmp.i.v LT
b [92]

:[91]
push.e 0

:[92]
bf [95]

:[93]
push.v self.currentspot
pushi.e -5
pushglb.v global.menuno
conv.v.i
push.v [array]global.menucoord
cmp.v.v NEQ
bf [95]

:[94]
pushi.e 1
pop.v.i self.movenoise

:[95]
pushglb.v global.menuno
pushi.e 9
cmp.i.v EQ
bf [97]

:[96]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [98]

:[97]
push.e 0

:[98]
bf [100]

:[99]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact

:[100]
push.v self.selnoise
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
pushi.e 150
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.selnoise

:[102]
push.v self.movenoise
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
pushi.e 149
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.movenoise

:[104]
call.i scr_debug(argc=0)
conv.v.b
bf [end]

:[105]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [107]

:[106]
pushi.e 323
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[107]
pushi.e 70
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [109]

:[108]
pushi.e 58
pop.v.i self.room_speed

:[109]
pushi.e 76
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [111]

:[110]
call.i scr_load(argc=0)
popz.v

:[111]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[112]
call.i game_restart_true(argc=0)
popz.v

:[end]