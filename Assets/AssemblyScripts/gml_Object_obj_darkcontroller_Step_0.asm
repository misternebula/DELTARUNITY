.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
pushglb.v global.interact
pushi.e 5
cmp.i.v EQ
bf [757]

:[1]
pushi.e 1
pop.v.i self.charcon
pushglb.v global.submenu
pushi.e 5
cmp.i.v EQ
bt [3]

:[2]
pushglb.v global.submenu
pushi.e 22
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [36]

:[5]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
pop.v.v global.charselect
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.faceaction
pushi.e 7
pushi.e -5
pushglb.v global.charselect
conv.v.i
pop.v.i [array]global.faceaction
call.i left_p(argc=0)
conv.v.b
bf [9]

:[6]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
pushi.e -5
pushglb.v global.submenu
conv.v.i
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.submenucoord
b [9]

:[8]
push.v self.chartotal
pushi.e 1
sub.i.v
pushi.e -5
pushglb.v global.submenu
conv.v.i
pop.v.v [array]global.submenucoord

:[9]
call.i right_p(argc=0)
conv.v.b
bf [13]

:[10]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
push.v self.chartotal
pushi.e 1
sub.i.v
cmp.v.v LT
bf [12]

:[11]
pushi.e -5
pushglb.v global.submenu
conv.v.i
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.submenucoord
b [13]

:[12]
pushi.e 0
pushi.e -5
pushglb.v global.submenu
conv.v.i
pop.v.i [array]global.submenucoord

:[13]
call.i button1_p(argc=0)
conv.v.b
bf [15]

:[14]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [16]

:[15]
push.e 0

:[16]
bf [23]

:[17]
pushi.e 2
pop.v.i self.onebuffer
pushglb.v global.submenu
pushi.e 5
cmp.i.v EQ
bf [21]

:[18]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.item
call.i scr_itemuse(argc=1)
popz.v
push.v self.usable
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
call.i scr_itemshift(argc=2)
popz.v

:[20]
call.i scr_itemdesc(argc=0)
popz.v
pushi.e 2
pop.v.i global.submenu
pushi.e 0
pushi.e -5
pushglb.v global.charselect
conv.v.i
pop.v.i [array]global.faceaction
pushi.e -1
pop.v.i global.charselect

:[21]
pushglb.v global.submenu
pushi.e 22
cmp.i.v EQ
bf [23]

:[22]
pushi.e -5
pushi.e -5
pushi.e -5
pushi.e 20
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e -5
pushi.e 21
push.v [array]global.submenucoord
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spell
call.i scr_spell_overworld(argc=1)
popz.v
push.v global.tension
pushi.e -5
pushi.e -5
pushi.e -5
pushi.e 20
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e -5
pushi.e 21
push.v [array]global.submenucoord
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spellcost
sub.v.v
pop.v.v global.tension

:[23]
pushi.e 0
pop.v.i self.close
call.i button2_p(argc=0)
conv.v.b
bf [25]

:[24]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 1
pop.v.i self.close

:[28]
pushglb.v global.submenu
pushi.e 22
cmp.i.v EQ
bf [31]

:[29]
pushi.e -5
pushi.e -5
pushi.e -5
pushi.e 20
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e -5
pushi.e 21
push.v [array]global.submenucoord
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spellcost
pushglb.v global.tension
cmp.v.v GT
bf [31]

:[30]
pushi.e 1
pop.v.i self.close

:[31]
push.v self.close
pushi.e 1
cmp.i.v EQ
bf [36]

:[32]
pushi.e 0
pushi.e -5
pushglb.v global.charselect
conv.v.i
pop.v.i [array]global.faceaction
pushi.e -1
pop.v.i global.charselect
pushi.e 2
pop.v.i self.twobuffer
pushglb.v global.submenu
pushi.e 5
cmp.i.v EQ
bf [34]

:[33]
pushi.e 2
pop.v.i global.submenu

:[34]
pushglb.v global.submenu
pushi.e 22
cmp.i.v EQ
bf [36]

:[35]
pushi.e 21
pop.v.i global.submenu

:[36]
pushglb.v global.submenu
pushi.e 6
cmp.i.v EQ
bt [39]

:[37]
pushglb.v global.submenu
pushi.e 7
cmp.i.v EQ
bt [39]

:[38]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
b [40]

:[39]
push.e 1

:[40]
bf [81]

:[41]
pushi.e 3
pop.v.i global.charselect
pushi.e 7
pushi.e -5
pushi.e 0
pop.v.i [array]global.faceaction
pushi.e 7
pushi.e -5
pushi.e 1
pop.v.i [array]global.faceaction
pushi.e 7
pushi.e -5
pushi.e 2
pop.v.i [array]global.faceaction
call.i button1_p(argc=0)
conv.v.b
bf [44]

:[42]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [44]

:[43]
pushglb.v global.submenu
pushi.e 6
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [49]

:[46]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.faceaction
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.item
call.i scr_itemuse(argc=1)
popz.v
push.v self.usable
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
call.i scr_itemshift(argc=2)
popz.v

:[48]
call.i scr_itemdesc(argc=0)
popz.v
pushi.e -1
pop.v.i global.charselect
pushi.e 2
pop.v.i global.submenu

:[49]
call.i button1_p(argc=0)
conv.v.b
bf [52]

:[50]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [52]

:[51]
pushglb.v global.submenu
pushi.e 7
cmp.i.v EQ
b [53]

:[52]
push.e 0

:[53]
bf [64]

:[54]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.faceaction
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.item
pop.v.v self.throwitem
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
call.i scr_itemshift(argc=2)
popz.v
call.i scr_itemdesc(argc=0)
popz.v
pushi.e -1
pop.v.i global.charselect
pushi.e 3
pop.v.i global.submenu
push.v self.throwitem
pushi.e 4
cmp.i.v EQ
bf [64]

:[55]
pushi.e -5
pushi.e 2
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bt [57]

:[56]
pushi.e -5
pushi.e 1
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
b [58]

:[57]
push.e 1

:[58]
bf [64]

:[59]
pushi.e 1
pop.v.i global.interact
call.i scr_closemenu(argc=0)
popz.v
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 9
pop.v.i global.fe
push.s "obj_darkcontroller_slash_Step_0_gml_129_0"@6995
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 207
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushi.e 0
pop.v.i global.fc
pushi.e 6
pop.v.i global.typer
push.s "obj_darkcontroller_slash_Step_0_gml_135_0"@6996
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_darkcontroller_slash_Step_0_gml_137_0"@6997
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_darkcontroller_slash_Step_0_gml_138_0"@6998
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_darkcontroller_slash_Step_0_gml_139_0"@6999
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 2
pushi.e -5
pushi.e 207
pop.v.i [array]global.flag

:[61]
pushi.e -5
pushi.e 207
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
pushi.e 0
pop.v.i global.fc
pushi.e 6
pop.v.i global.typer
push.s "obj_darkcontroller_slash_Step_0_gml_147_0"@7000
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_darkcontroller_slash_Step_0_gml_149_0"@7001
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_darkcontroller_slash_Step_0_gml_150_0"@7002
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_darkcontroller_slash_Step_0_gml_151_0"@7003
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_darkcontroller_slash_Step_0_gml_152_0"@7004
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Step_0_gml_154_0"@7005
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
call.i scr_itemget(argc=1)
popz.v
pushi.e 1
pushi.e -5
pushi.e 207
pop.v.i [array]global.flag

:[63]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dl
pushi.e 1
push.v self.dl
conv.v.i
pop.v.i [stacktop]self.free

:[64]
call.i button1_p(argc=0)
conv.v.b
bf [67]

:[65]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [67]

:[66]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.faceaction
pushi.e -1
pop.v.i global.charselect
pushi.e 6
pop.v.i global.interact
call.i scr_talkroom(argc=0)
popz.v
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i self.charcon

:[70]
call.i button2_p(argc=0)
conv.v.b
bf [72]

:[71]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [73]

:[72]
push.e 0

:[73]
bf [81]

:[74]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.faceaction
pushglb.v global.submenu
pushi.e 6
cmp.i.v EQ
bf [76]

:[75]
pushi.e 2
pop.v.i global.submenu

:[76]
pushglb.v global.submenu
pushi.e 7
cmp.i.v EQ
bf [78]

:[77]
pushi.e 3
pop.v.i global.submenu

:[78]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [80]

:[79]
pushi.e 0
pop.v.i global.menuno

:[80]
pushi.e -1
pop.v.i global.charselect

:[81]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [313]

:[82]
pushglb.v global.submenu
pushi.e 30
cmp.i.v EQ
bf [120]

:[83]
pushi.e 0
pop.v.i self.sndbuffer
pushi.e 0
pop.v.i self.m_quit
call.i up_p(argc=0)
conv.v.b
bf [86]

:[84]
pushi.e -5
pushi.e 30
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.submenucoord
pushi.e -5
pushi.e 30
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v LT
bf [86]

:[85]
pushi.e 0
pushi.e -5
pushi.e 30
pop.v.i [array]global.submenucoord

:[86]
call.i down_p(argc=0)
conv.v.b
bf [89]

:[87]
pushi.e -5
pushi.e 30
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.submenucoord
pushi.e -5
pushi.e 30
push.v [array]global.submenucoord
pushi.e 6
cmp.i.v GT
bf [89]

:[88]
pushi.e 6
pushi.e -5
pushi.e 30
pop.v.i [array]global.submenucoord

:[89]
call.i button1_p(argc=0)
conv.v.b
bf [91]

:[90]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [92]

:[91]
push.e 0

:[92]
bf [113]

:[93]
pushi.e 2
pop.v.i self.upbuffer
pushi.e 2
pop.v.i self.downbuffer
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e 1
pop.v.i self.selectnoise
pushi.e -5
pushi.e 30
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v EQ
bf [95]

:[94]
pushi.e 33
pop.v.i global.submenu

:[95]
pushi.e -5
pushi.e 30
push.v [array]global.submenucoord
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
pushi.e 35
pop.v.i global.submenu
pushi.e 0
pushi.e -5
pushi.e 35
pop.v.i [array]global.submenucoord
pushi.e 0
pop.v.i self.control_select_con
pushi.e 0
pop.v.i self.control_flash_timer

:[97]
pushi.e -5
pushi.e 30
push.v [array]global.submenucoord
pushi.e 2
cmp.i.v EQ
bf [101]

:[98]
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [100]

:[99]
pushi.e 1
pushi.e -5
pushi.e 8
pop.v.i [array]global.flag
b [101]

:[100]
pushi.e 0
pushi.e -5
pushi.e 8
pop.v.i [array]global.flag

:[101]
pushi.e -5
pushi.e 30
push.v [array]global.submenucoord
pushi.e 3
cmp.i.v EQ
bf [105]

:[102]
pushi.e 320
pushenv [104]

:[103]
pushi.e 1
pop.v.i self.fullscreen_toggle

:[104]
popenv [103]

:[105]
pushi.e -5
pushi.e 30
push.v [array]global.submenucoord
pushi.e 4
cmp.i.v EQ
bf [109]

:[106]
pushi.e -5
pushi.e 11
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [108]

:[107]
pushi.e 1
pushi.e -5
pushi.e 11
pop.v.i [array]global.flag
b [109]

:[108]
pushi.e 0
pushi.e -5
pushi.e 11
pop.v.i [array]global.flag

:[109]
pushi.e -5
pushi.e 30
push.v [array]global.submenucoord
pushi.e 5
cmp.i.v EQ
bf [111]

:[110]
pushi.e 34
pop.v.i global.submenu

:[111]
pushi.e -5
pushi.e 30
push.v [array]global.submenucoord
pushi.e 6
cmp.i.v EQ
bf [113]

:[112]
pushi.e 1
pop.v.i self.m_quit

:[113]
call.i button2_p(argc=0)
conv.v.b
bf [115]

:[114]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [116]

:[115]
push.e 0

:[116]
bf [118]

:[117]
pushi.e 1
pop.v.i self.m_quit

:[118]
push.v self.m_quit
pushi.e 1
cmp.i.v EQ
bf [120]

:[119]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.menuno
pushi.e 0
pop.v.i global.submenu

:[120]
pushglb.v global.submenu
pushi.e 31
cmp.i.v EQ
bt [123]

:[121]
pushglb.v global.submenu
pushi.e 32
cmp.i.v EQ
bt [123]

:[122]
pushglb.v global.submenu
pushi.e 33
cmp.i.v EQ
b [124]

:[123]
push.e 1

:[124]
bf [171]

:[125]
pushi.e 0
pop.v.i self.se_select
push.v self.sndbuffer
pushi.e 1
sub.i.v
pop.v.v self.sndbuffer
pushi.e 0
pop.v.i self.muschange
pushi.e 0
pop.v.i self.sndchange
pushi.e 0
pop.v.i self.audchange
call.i right_h(argc=0)
conv.v.b
bf [136]

:[126]
pushglb.v global.submenu
pushi.e 31
cmp.i.v EQ
bf [129]

:[127]
pushi.e 1
pop.v.i self.sndchange
pushi.e -5
pushi.e 15
push.v [array]global.flag
pushi.e 1
cmp.i.v LT
bf [129]

:[128]
pushi.e -5
pushi.e 15
dup.i 1
push.v [array]global.flag
push.d 0.05
add.d.v
pop.i.v [array]global.flag

:[129]
pushglb.v global.submenu
pushi.e 32
cmp.i.v EQ
bf [132]

:[130]
pushi.e 1
pop.v.i self.muschange
pushi.e -5
pushi.e 16
push.v [array]global.flag
pushi.e 1
cmp.i.v LT
bf [132]

:[131]
pushi.e -5
pushi.e 16
dup.i 1
push.v [array]global.flag
push.d 0.05
add.d.v
pop.i.v [array]global.flag

:[132]
pushglb.v global.submenu
pushi.e 33
cmp.i.v EQ
bf [136]

:[133]
pushi.e -5
pushi.e 17
push.v [array]global.flag
pushi.e 1
cmp.i.v LT
bf [135]

:[134]
pushi.e -5
pushi.e 17
dup.i 1
push.v [array]global.flag
push.d 0.02
add.d.v
pop.i.v [array]global.flag

:[135]
pushi.e 1
pop.v.i self.audchange

:[136]
call.i left_h(argc=0)
conv.v.b
bf [146]

:[137]
pushglb.v global.submenu
pushi.e 31
cmp.i.v EQ
bf [140]

:[138]
pushi.e 1
pop.v.i self.sndchange
pushi.e -5
pushi.e 15
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [140]

:[139]
pushi.e -5
pushi.e 15
dup.i 1
push.v [array]global.flag
push.d 0.05
sub.d.v
pop.i.v [array]global.flag

:[140]
pushglb.v global.submenu
pushi.e 32
cmp.i.v EQ
bf [143]

:[141]
pushi.e 1
pop.v.i self.muschange
pushi.e -5
pushi.e 16
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [143]

:[142]
pushi.e -5
pushi.e 16
dup.i 1
push.v [array]global.flag
push.d 0.05
sub.d.v
pop.i.v [array]global.flag

:[143]
pushglb.v global.submenu
pushi.e 33
cmp.i.v EQ
bf [146]

:[144]
pushi.e 1
pop.v.i self.audchange
pushi.e -5
pushi.e 17
push.v [array]global.flag
push.d 0.02
cmp.d.v GTE
bf [146]

:[145]
pushi.e -5
pushi.e 17
dup.i 1
push.v [array]global.flag
push.d 0.02
sub.d.v
pop.i.v [array]global.flag

:[146]
push.v self.sndchange
pushi.e 1
cmp.i.v EQ
bf [148]

:[147]
push.v self.sndbuffer
pushi.e 0
cmp.i.v LT
b [149]

:[148]
push.e 0

:[149]
bf [151]

:[150]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 15
push.v [array]global.flag
pushi.e 1
conv.i.v
call.i audio_group_set_gain(argc=3)
popz.v
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.sndbuffer

:[151]
push.v self.muschange
pushi.e 1
cmp.i.v EQ
bf [154]

:[152]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_is_playing(argc=1)
conv.v.b
bf [154]

:[153]
pushi.e 0
conv.i.v
push.v self.getmusvol
pushi.e -5
pushi.e 16
push.v [array]global.flag
mul.v.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i mus_volume(argc=3)
popz.v

:[154]
push.v self.audchange
pushi.e 1
cmp.i.v EQ
bf [156]

:[155]
push.v self.sndbuffer
pushi.e 0
cmp.i.v LT
b [157]

:[156]
push.e 0

:[157]
bf [159]

:[158]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.sndbuffer
pushi.e -5
pushi.e 17
push.v [array]global.flag
pushi.e 0
conv.i.v
call.i audio_set_master_gain(argc=2)
popz.v

:[159]
call.i button1_p(argc=0)
conv.v.b
bf [161]

:[160]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [162]

:[161]
push.e 0

:[162]
bf [164]

:[163]
pushi.e 1
pop.v.i self.se_select

:[164]
call.i button2_p(argc=0)
conv.v.b
bf [166]

:[165]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [167]

:[166]
push.e 0

:[167]
bf [169]

:[168]
pushi.e 1
pop.v.i self.se_select

:[169]
push.v self.se_select
pushi.e 1
cmp.i.v EQ
bf [171]

:[170]
pushi.e 1
pop.v.i self.selectnoise
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e 30
pop.v.i global.submenu

:[171]
pushglb.v global.submenu
pushi.e 34
cmp.i.v EQ
bf [179]

:[172]
pushi.e 27
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [174]

:[173]
call.i game_end(argc=0)
popz.v

:[174]
call.i button2_p(argc=0)
conv.v.b
bf [176]

:[175]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [177]

:[176]
push.e 0

:[177]
bf [179]

:[178]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e 30
pop.v.i global.submenu

:[179]
pushglb.v global.submenu
pushi.e 35
cmp.i.v EQ
bf [313]

:[180]
pushi.e 0
pop.v.i self.control_select_timer
push.v self.control_flash_timer
pushi.e 1
sub.i.v
pop.v.v self.control_flash_timer
pushi.e 0
pop.v.i self.controls_quitmenu
push.v 320.gamepad_active
pop.v.v self.gamepad_exists
pushi.e 0
pop.v.i self.gamepad_id
push.v self.control_select_con
pushi.e 1
cmp.i.v EQ
bf [238]

:[181]
pushi.e -1
pop.v.i self.gamepad_accept
pushi.e -1
pop.v.i self.new_gamepad_key
pushi.e -1
pop.v.i self.key_accept
pushi.e -1
pop.v.i self.new_key
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [227]

:[182]
pushi.e 48
pop.v.i self.i

:[183]
push.v self.i
pushi.e 90
cmp.i.v LTE
bf [187]

:[184]
push.v self.i
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [186]

:[185]
push.v self.i
pop.v.v self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[186]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [183]

:[187]
pushi.e 59
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [189]

:[188]
pushi.e 59
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[189]
pushi.e 44
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [191]

:[190]
pushi.e 44
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[191]
pushi.e 46
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [193]

:[192]
pushi.e 46
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[193]
pushi.e 47
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [195]

:[194]
pushi.e 47
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[195]
pushi.e 92
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [197]

:[196]
pushi.e 92
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[197]
pushi.e 93
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [199]

:[198]
pushi.e 93
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[199]
pushi.e 91
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [201]

:[200]
pushi.e 91
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[201]
pushi.e 96
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [203]

:[202]
pushi.e 96
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[203]
pushi.e 45
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [205]

:[204]
pushi.e 45
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[205]
pushi.e 61
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [207]

:[206]
pushi.e 61
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[207]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [209]

:[208]
pushi.e 37
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[209]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [211]

:[210]
pushi.e 39
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[211]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [213]

:[212]
pushi.e 38
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[213]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [215]

:[214]
pushi.e 40
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[215]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [217]

:[216]
pushi.e 13
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[217]
pushi.e 16
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [219]

:[218]
pushi.e 16
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[219]
pushi.e 17
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [221]

:[220]
pushi.e 17
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[221]
pushi.e 8
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [223]

:[222]
pushi.e 8
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[223]
pushi.e 18
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [225]

:[224]
pushi.e 18
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[225]
pushi.e 27
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [227]

:[226]
pushi.e -1
pop.v.i self.new_key
pushi.e 0
pop.v.i self.control_select_con

:[227]
push.v self.gamepad_exists
pushi.e 1
cmp.i.v EQ
bf [229]

:[228]
push.v self.control_select_con
pushi.e 1
cmp.i.v EQ
b [230]

:[229]
push.e 0

:[230]
bf [238]

:[231]
push.v self.gamepad_id
call.i gamepad_button_count(argc=1)
pop.v.v self.gpc
push.v self.gpc
pushi.e 40
cmp.i.v GTE
bf [233]

:[232]
pushi.e 40
pop.v.i self.gpc

:[233]
pushi.e 0
pop.v.i self.i

:[234]
push.v self.i
push.v self.gpc
cmp.v.v LTE
bf [238]

:[235]
push.v self.i
push.v self.gamepad_id
call.i gamepad_button_check_pressed(argc=2)
conv.v.b
bf [237]

:[236]
push.v self.i
pop.v.v self.new_gamepad_key
pushi.e 2
pop.v.i self.control_select_con

:[237]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [234]

:[238]
call.i button1_p(argc=0)
conv.v.b
bf [241]

:[239]
push.v self.control_select_con
pushi.e 0
cmp.i.v EQ
bf [241]

:[240]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [242]

:[241]
push.e 0

:[242]
bf [249]

:[243]
pushi.e 2
pop.v.i self.onebuffer
pushi.e -5
pushi.e 35
push.v [array]global.submenucoord
pushi.e 7
cmp.i.v LT
bf [245]

:[244]
pushi.e 1
pop.v.i self.control_select_con
pushi.e -1
pop.v.i self.keyboard_lastkey
pushi.e 1
pop.v.i self.selectnoise

:[245]
pushi.e -5
pushi.e 35
push.v [array]global.submenucoord
pushi.e 7
cmp.i.v EQ
bf [247]

:[246]
pushi.e 100
conv.i.v
call.i snd_play(argc=1)
popz.v
call.i scr_controls_default(argc=0)
popz.v
pushi.e 10
pop.v.i self.control_flash_timer

:[247]
pushi.e -5
pushi.e 35
push.v [array]global.submenucoord
pushi.e 8
cmp.i.v EQ
bf [249]

:[248]
pushi.e 1
pop.v.i self.controls_quitmenu

:[249]
push.v self.control_select_con
pushi.e 0
cmp.i.v EQ
bf [271]

:[250]
call.i down_p(argc=0)
conv.v.b
bf [253]

:[251]
push.v self.controls_quitmenu
pushi.e 0
cmp.i.v EQ
bf [253]

:[252]
push.v self.downbuffer
pushi.e 0
cmp.i.v LT
b [254]

:[253]
push.e 0

:[254]
bf [257]

:[255]
pushi.e -5
pushi.e 35
push.v [array]global.submenucoord
pushi.e 8
cmp.i.v LT
bf [257]

:[256]
pushi.e -5
pushi.e 35
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[257]
call.i up_p(argc=0)
conv.v.b
bf [260]

:[258]
push.v self.controls_quitmenu
pushi.e 0
cmp.i.v EQ
bf [260]

:[259]
push.v self.upbuffer
pushi.e 0
cmp.i.v LT
b [261]

:[260]
push.e 0

:[261]
bf [264]

:[262]
pushi.e -5
pushi.e 35
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v GT
bf [264]

:[263]
pushi.e -5
pushi.e 35
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[264]
call.i button1_p(argc=0)
conv.v.b
bf [267]

:[265]
push.v self.controls_quitmenu
pushi.e 0
cmp.i.v EQ
bf [267]

:[266]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [268]

:[267]
push.e 0

:[268]
bf [271]

:[269]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e -5
pushi.e 35
push.v [array]global.submenucoord
pushi.e 8
cmp.i.v EQ
bf [271]

:[270]
pushi.e 1
pop.v.i self.controls_quitmenu

:[271]
push.v self.control_select_con
pushi.e 2
cmp.i.v EQ
bf [305]

:[272]
push.v self.new_key
pushi.e -1
cmp.i.v NEQ
bf [296]

:[273]
pushi.e -1
pop.v.i self.dupe
pushi.e 0
pop.v.i self.i

:[274]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [278]

:[275]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_k
push.v self.new_key
cmp.v.v EQ
bf [277]

:[276]
push.v self.i
pop.v.v self.dupe

:[277]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [274]

:[278]
push.v self.dupe
pushi.e 0
cmp.i.v GTE
bf [280]

:[279]
pushi.e -5
pushi.e -5
pushi.e 35
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.input_k
pushi.e -5
push.v self.dupe
conv.v.i
pop.v.v [array]global.input_k

:[280]
push.v self.new_key
pushi.e -5
pushi.e -5
pushi.e 35
push.v [array]global.submenucoord
conv.v.i
pop.v.v [array]global.input_k
pushi.e -1
pop.v.i self.entercancel
pushi.e -1
pop.v.i self.shiftcancel
pushi.e -1
pop.v.i self.ctrlcancel
pushi.e 0
pop.v.i self.i

:[281]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [289]

:[282]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_k
pushi.e 13
cmp.i.v EQ
bf [284]

:[283]
pushi.e -1
pushi.e -5
pushi.e 7
pop.v.i [array]global.input_k
pushi.e 1
pop.v.i self.entercancel

:[284]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_k
pushi.e 16
cmp.i.v EQ
bf [286]

:[285]
pushi.e -1
pushi.e -5
pushi.e 8
pop.v.i [array]global.input_k
pushi.e 1
pop.v.i self.shiftcancel

:[286]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_k
pushi.e 17
cmp.i.v EQ
bf [288]

:[287]
pushi.e -1
pushi.e -5
pushi.e 9
pop.v.i [array]global.input_k
pushi.e 1
pop.v.i self.ctrlcancel

:[288]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [281]

:[289]
push.v self.entercancel
pushi.e -1
cmp.i.v EQ
bf [291]

:[290]
pushi.e 13
pushi.e -5
pushi.e 7
pop.v.i [array]global.input_k

:[291]
push.v self.shiftcancel
pushi.e -1
cmp.i.v EQ
bf [293]

:[292]
pushi.e 16
pushi.e -5
pushi.e 8
pop.v.i [array]global.input_k

:[293]
push.v self.ctrlcancel
pushi.e -1
cmp.i.v EQ
bf [295]

:[294]
pushi.e 17
pushi.e -5
pushi.e 9
pop.v.i [array]global.input_k

:[295]
b [304]

:[296]
pushi.e -1
pop.v.i self.dupe
pushi.e 0
pop.v.i self.i

:[297]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [301]

:[298]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_g
push.v self.new_gamepad_key
cmp.v.v EQ
bf [300]

:[299]
push.v self.i
pop.v.v self.dupe

:[300]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [297]

:[301]
push.v self.dupe
pushi.e 0
cmp.i.v GTE
bf [303]

:[302]
pushi.e -5
pushi.e -5
pushi.e 35
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.input_g
pushi.e -5
push.v self.dupe
conv.v.i
pop.v.v [array]global.input_g

:[303]
push.v self.new_gamepad_key
pushi.e -5
pushi.e -5
pushi.e 35
push.v [array]global.submenucoord
conv.v.i
pop.v.v [array]global.input_g

:[304]
pushi.e 2
pop.v.i self.upbuffer
pushi.e 2
pop.v.i self.downbuffer
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e 1
pop.v.i self.selectnoise
pushi.e 0
pop.v.i self.control_select_con

:[305]
push.v self.controls_quitmenu
pushi.e 1
cmp.i.v EQ
bf [313]

:[306]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
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

:[307]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [309]

:[308]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_k
push.v self.i
call.i string(argc=1)
push.s "KEYBOARD_CONTROLS"@7037
conv.s.v
call.i ini_write_real(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [307]

:[309]
pushi.e 0
pop.v.i self.i

:[310]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [312]

:[311]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_g
push.v self.i
call.i string(argc=1)
push.s "GAMEPAD_CONTROLS"@7038
conv.s.v
call.i ini_write_real(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [310]

:[312]
call.i ini_close(argc=0)
popz.v
pushi.e 0
pop.v.i self.controls_quitmenu
pushi.e 0
pop.v.i self.control_select_con
pushi.e 0
pushi.e -5
pushi.e 35
pop.v.i [array]global.submenucoord
pushi.e 30
pop.v.i global.submenu

:[313]
pushglb.v global.menuno
pushi.e 4
cmp.i.v EQ
bf [359]

:[314]
pushglb.v global.submenu
pushi.e 21
cmp.i.v EQ
bf [338]

:[315]
pushi.e -5
pushi.e -5
pushi.e 20
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.char
pop.v.v self.charcoord
call.i up_p(argc=0)
conv.v.b
bf [318]

:[316]
pushi.e -5
pushi.e 21
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v GT
bf [318]

:[317]
pushi.e -5
pushi.e 21
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.submenucoord

:[318]
call.i down_p(argc=0)
conv.v.b
bf [322]

:[319]
pushi.e -5
pushi.e 21
push.v [array]global.submenucoord
pushi.e 5
cmp.i.v LT
bf [322]

:[320]
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e -5
pushi.e 21
push.v [array]global.submenucoord
pushi.e 1
add.i.v
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spell
pushi.e 0
cmp.i.v NEQ
bf [322]

:[321]
pushi.e -5
pushi.e 21
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.submenucoord

:[322]
call.i button1_p(argc=0)
conv.v.b
bf [324]

:[323]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [325]

:[324]
push.e 0

:[325]
bf [333]

:[326]
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e -5
pushi.e 21
push.v [array]global.submenucoord
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spellusable
pushi.e 1
cmp.i.v EQ
bf [328]

:[327]
pushglb.v global.tension
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e -5
pushi.e 21
push.v [array]global.submenucoord
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spellcost
cmp.v.v GTE
b [329]

:[328]
push.e 0

:[329]
bf [333]

:[330]
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e -5
pushi.e 21
push.v [array]global.submenucoord
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spelltarget
pushi.e 1
cmp.i.v EQ
bf [332]

:[331]
pushi.e 22
pop.v.i global.submenu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer

:[332]
b [333]

:[333]
call.i button2_p(argc=0)
conv.v.b
bf [335]

:[334]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [336]

:[335]
push.e 0

:[336]
bf [338]

:[337]
pushi.e 0
pop.v.i self.deschaver
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pushi.e -5
pushi.e 21
pop.v.i [array]global.submenucoord
pushi.e 20
pop.v.i global.submenu

:[338]
pushglb.v global.submenu
pushi.e 20
cmp.i.v EQ
bf [359]

:[339]
call.i left_p(argc=0)
conv.v.b
bf [344]

:[340]
pushi.e -5
pushi.e 20
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.submenucoord
pushi.e -5
pushi.e 20
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v LT
bf [342]

:[341]
push.v self.chartotal
pushi.e 1
sub.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]global.submenucoord

:[342]
push.v self.chartotal
pushi.e 2
cmp.i.v GTE
bf [344]

:[343]
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i ceil(argc=1)
pop.v.v self.dograndom

:[344]
call.i right_p(argc=0)
conv.v.b
bf [349]

:[345]
pushi.e -5
pushi.e 20
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.submenucoord
pushi.e -5
pushi.e 20
push.v [array]global.submenucoord
push.v self.chartotal
pushi.e 1
sub.i.v
cmp.v.v GT
bf [347]

:[346]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.submenucoord

:[347]
push.v self.chartotal
pushi.e 2
cmp.i.v GTE
bf [349]

:[348]
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i ceil(argc=1)
pop.v.v self.dograndom

:[349]
call.i button1_p(argc=0)
conv.v.b
bf [351]

:[350]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [352]

:[351]
push.e 0

:[352]
bf [354]

:[353]
pushi.e 1
pop.v.i self.deschaver
pushi.e 21
pop.v.i global.submenu
pushi.e 2
pop.v.i self.onebuffer

:[354]
call.i button2_p(argc=0)
conv.v.b
bf [356]

:[355]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [357]

:[356]
push.e 0

:[357]
bf [359]

:[358]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.menuno
pushi.e 0
pop.v.i global.submenu
pushi.e -1
pop.v.i global.charselect

:[359]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [552]

:[360]
pushglb.v global.submenu
pushi.e 2
cmp.i.v EQ
bt [362]

:[361]
pushglb.v global.submenu
pushi.e 3
cmp.i.v EQ
b [363]

:[362]
push.e 1

:[363]
bf [430]

:[364]
call.i left_p(argc=0)
conv.v.b
bt [366]

:[365]
call.i right_p(argc=0)
conv.v.b
b [367]

:[366]
push.e 1

:[367]
bf [387]

:[368]
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 0
cmp.i.v EQ
bt [374]

:[369]
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [374]

:[370]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [374]

:[371]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [374]

:[372]
push.v self.sm
pushi.e 8
cmp.i.v EQ
bt [374]

:[373]
push.v self.sm
pushi.e 10
cmp.i.v EQ
b [375]

:[374]
push.e 1

:[375]
bf [378]

:[376]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [378]

:[377]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.submenucoord

:[378]
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [384]

:[379]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [384]

:[380]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [384]

:[381]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [384]

:[382]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [384]

:[383]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [385]

:[384]
push.e 1

:[385]
bf [387]

:[386]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.submenucoord

:[387]
call.i down_p(argc=0)
conv.v.b
bf [408]

:[388]
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 0
cmp.i.v EQ
bt [393]

:[389]
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [393]

:[390]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [393]

:[391]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [393]

:[392]
push.v self.sm
pushi.e 8
cmp.i.v EQ
b [394]

:[393]
push.e 1

:[394]
bf [397]

:[395]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
pushi.e 2
add.i.v
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [397]

:[396]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.submenucoord
pushi.e 2
add.i.v
pop.i.v [array]global.submenucoord

:[397]
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [402]

:[398]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [402]

:[399]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [402]

:[400]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [402]

:[401]
push.v self.sm
pushi.e 9
cmp.i.v EQ
b [403]

:[402]
push.e 1

:[403]
bf [408]

:[404]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
pushi.e 2
add.i.v
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [406]

:[405]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.submenucoord
pushi.e 2
add.i.v
pop.i.v [array]global.submenucoord
b [408]

:[406]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [408]

:[407]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.submenucoord

:[408]
call.i up_p(argc=0)
conv.v.b
bf [425]

:[409]
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [414]

:[410]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [414]

:[411]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [414]

:[412]
push.v self.sm
pushi.e 8
cmp.i.v EQ
bt [414]

:[413]
push.v self.sm
pushi.e 10
cmp.i.v EQ
b [415]

:[414]
push.e 1

:[415]
bf [417]

:[416]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.submenucoord
pushi.e 2
sub.i.v
pop.i.v [array]global.submenucoord

:[417]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [422]

:[418]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [422]

:[419]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [422]

:[420]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [422]

:[421]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [423]

:[422]
push.e 1

:[423]
bf [425]

:[424]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.submenucoord
pushi.e 2
sub.i.v
pop.i.v [array]global.submenucoord

:[425]
call.i button2_p(argc=0)
conv.v.b
bf [427]

:[426]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [428]

:[427]
push.e 0

:[428]
bf [430]

:[429]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.deschaver
pushi.e 1
pop.v.i global.submenu

:[430]
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [504]

:[431]
call.i left_p(argc=0)
conv.v.b
bt [433]

:[432]
call.i right_p(argc=0)
conv.v.b
b [434]

:[433]
push.e 1

:[434]
bf [454]

:[435]
pushi.e -5
pushi.e 4
push.v [array]global.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 0
cmp.i.v EQ
bt [441]

:[436]
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [441]

:[437]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [441]

:[438]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [441]

:[439]
push.v self.sm
pushi.e 8
cmp.i.v EQ
bt [441]

:[440]
push.v self.sm
pushi.e 10
cmp.i.v EQ
b [442]

:[441]
push.e 1

:[442]
bf [445]

:[443]
pushi.e -5
pushi.e -5
pushi.e 4
push.v [array]global.submenucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.keyitem
pushi.e 0
cmp.i.v NEQ
bf [445]

:[444]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.submenucoord

:[445]
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [451]

:[446]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [451]

:[447]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [451]

:[448]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [451]

:[449]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [451]

:[450]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [452]

:[451]
push.e 1

:[452]
bf [454]

:[453]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.submenucoord

:[454]
call.i down_p(argc=0)
conv.v.b
bf [475]

:[455]
pushi.e -5
pushi.e 4
push.v [array]global.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 0
cmp.i.v EQ
bt [460]

:[456]
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [460]

:[457]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [460]

:[458]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [460]

:[459]
push.v self.sm
pushi.e 8
cmp.i.v EQ
b [461]

:[460]
push.e 1

:[461]
bf [464]

:[462]
pushi.e -5
pushi.e -5
pushi.e 4
push.v [array]global.submenucoord
pushi.e 2
add.i.v
conv.v.i
push.v [array]global.keyitem
pushi.e 0
cmp.i.v NEQ
bf [464]

:[463]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]global.submenucoord
pushi.e 2
add.i.v
pop.i.v [array]global.submenucoord

:[464]
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [469]

:[465]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [469]

:[466]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [469]

:[467]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [469]

:[468]
push.v self.sm
pushi.e 9
cmp.i.v EQ
b [470]

:[469]
push.e 1

:[470]
bf [475]

:[471]
pushi.e -5
pushi.e -5
pushi.e 4
push.v [array]global.submenucoord
pushi.e 2
add.i.v
conv.v.i
push.v [array]global.keyitem
pushi.e 0
cmp.i.v NEQ
bf [473]

:[472]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]global.submenucoord
pushi.e 2
add.i.v
pop.i.v [array]global.submenucoord
b [475]

:[473]
pushi.e -5
pushi.e -5
pushi.e 4
push.v [array]global.submenucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.keyitem
pushi.e 0
cmp.i.v NEQ
bf [475]

:[474]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.submenucoord

:[475]
call.i up_p(argc=0)
conv.v.b
bf [492]

:[476]
pushi.e -5
pushi.e 4
push.v [array]global.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [481]

:[477]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [481]

:[478]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [481]

:[479]
push.v self.sm
pushi.e 8
cmp.i.v EQ
bt [481]

:[480]
push.v self.sm
pushi.e 10
cmp.i.v EQ
b [482]

:[481]
push.e 1

:[482]
bf [484]

:[483]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]global.submenucoord
pushi.e 2
sub.i.v
pop.i.v [array]global.submenucoord

:[484]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [489]

:[485]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [489]

:[486]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [489]

:[487]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [489]

:[488]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [490]

:[489]
push.e 1

:[490]
bf [492]

:[491]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]global.submenucoord
pushi.e 2
sub.i.v
pop.i.v [array]global.submenucoord

:[492]
call.i button1_p(argc=0)
conv.v.b
bf [494]

:[493]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [495]

:[494]
push.e 0

:[495]
bf [499]

:[496]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 1
pop.v.i self.twobuffer
pushi.e -1
push.v self.sm
conv.v.i
push.v [array]self.keyitemusable
pushi.e 1
cmp.i.v EQ
bf [498]

:[497]
pushi.e 3
pop.v.i global.charselect
pushi.e -5
push.v self.sm
conv.v.i
push.v [array]global.keyitem
pushi.e 300
add.i.v
call.i scr_itemuse(argc=1)
popz.v
b [499]

:[498]
pushi.e 76
conv.i.v
call.i snd_play(argc=1)
popz.v

:[499]
call.i button2_p(argc=0)
conv.v.b
bf [501]

:[500]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [502]

:[501]
push.e 0

:[502]
bf [504]

:[503]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.deschaver
pushi.e 1
pop.v.i global.submenu

:[504]
pushglb.v global.submenu
pushi.e 3
cmp.i.v EQ
bf [515]

:[505]
call.i button1_p(argc=0)
conv.v.b
bf [507]

:[506]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [508]

:[507]
push.e 0

:[508]
bf [510]

:[509]
pushi.e 3
pop.v.i self.onebuffer
pushi.e 7
pop.v.i global.submenu

:[510]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v EQ
bf [515]

:[511]
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v EQ
bf [513]

:[512]
pushi.e 1
pop.v.i global.submenu
pushi.e 0
pop.v.i self.deschaver
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[513]
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v GT
bf [515]

:[514]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.submenucoord

:[515]
pushglb.v global.submenu
pushi.e 2
cmp.i.v EQ
bf [529]

:[516]
call.i button1_p(argc=0)
conv.v.b
bf [518]

:[517]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [519]

:[518]
push.e 0

:[519]
bf [524]

:[520]
pushi.e 3
pop.v.i self.onebuffer
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.item
call.i scr_iteminfo(argc=1)
popz.v
push.v self.itemtarget
pushi.e 1
cmp.i.v EQ
bf [522]

:[521]
pushi.e 5
pop.v.i global.submenu

:[522]
push.v self.itemtarget
pushi.e 2
cmp.i.v EQ
bf [524]

:[523]
pushi.e 6
pop.v.i global.submenu

:[524]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v EQ
bf [529]

:[525]
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v EQ
bf [527]

:[526]
pushi.e 1
pop.v.i global.submenu
pushi.e 0
pop.v.i self.deschaver
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[527]
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v GT
bf [529]

:[528]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.submenucoord

:[529]
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [552]

:[530]
call.i left_p(argc=0)
conv.v.b
bf [534]

:[531]
pushi.e -5
pushi.e 1
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v EQ
bf [533]

:[532]
pushi.e 2
pushi.e -5
pushi.e 1
pop.v.i [array]global.submenucoord
pushi.e 1
pop.v.i self.movenoise
b [534]

:[533]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[534]
call.i right_p(argc=0)
conv.v.b
bf [538]

:[535]
pushi.e -5
pushi.e 1
push.v [array]global.submenucoord
pushi.e 2
cmp.i.v EQ
bf [537]

:[536]
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.submenucoord
pushi.e 1
pop.v.i self.movenoise
b [538]

:[537]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[538]
call.i button1_p(argc=0)
conv.v.b
bf [547]

:[539]
pushi.e -5
pushi.e 1
push.v [array]global.submenucoord
pushi.e 2
add.i.v
pop.v.v global.submenu
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [541]

:[540]
pushi.e 1
pop.v.i self.deschaver

:[541]
pushglb.v global.submenu
pushi.e 2
cmp.i.v EQ
bt [543]

:[542]
pushglb.v global.submenu
pushi.e 3
cmp.i.v EQ
b [544]

:[543]
push.e 1

:[544]
bf [547]

:[545]
pushi.e 1
pop.v.i self.deschaver
call.i scr_itemdesc(argc=0)
popz.v
pushi.e -5
pushi.e 0
push.v [array]global.item
pushi.e 0
cmp.i.v EQ
bf [547]

:[546]
pushi.e 1
pop.v.i global.submenu
pushi.e 0
pop.v.i self.deschaver

:[547]
call.i button2_p(argc=0)
conv.v.b
bf [549]

:[548]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [550]

:[549]
push.e 0

:[550]
bf [552]

:[551]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.menuno
pushi.e 0
pop.v.i global.submenu

:[552]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [715]

:[553]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bt [556]

:[554]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [556]

:[555]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [557]

:[556]
push.e 1

:[557]
bf [681]

:[558]
pushi.e 0
pop.v.i self._up_pressed
call.i up_h(argc=0)
conv.v.b
bf [576]

:[559]
call.i up_p(argc=0)
conv.v.b
bf [561]

:[560]
pushi.e 1
pop.v.i self._up_pressed

:[561]
push.v self.hold_up
pushi.e 1
add.i.v
pop.v.v self.hold_up
push.v self.hold_up
pushi.e 8
cmp.i.v GTE
bf [563]

:[562]
pushi.e 1
pop.v.i self._up_pressed
pushi.e 6
pop.v.i self.hold_up

:[563]
push.v self._up_pressed
pushi.e 1
cmp.i.v EQ
bf [575]

:[564]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v GT
bf [566]

:[565]
pushi.e -5
pushglb.v global.submenu
conv.v.i
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.submenucoord

:[566]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [569]

:[567]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
pushi.e -1
pushi.e 0
push.v [array]self.pagemax
cmp.v.v LT
bf [569]

:[568]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.pagemax
pushi.e 1
sub.i.v
pop.i.v [array]self.pagemax

:[569]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [571]

:[570]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [572]

:[571]
push.e 1

:[572]
bf [575]

:[573]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
pushi.e -1
pushi.e 1
push.v [array]self.pagemax
cmp.v.v LT
bf [575]

:[574]
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.pagemax
pushi.e 1
sub.i.v
pop.i.v [array]self.pagemax

:[575]
b [577]

:[576]
pushi.e 0
pop.v.i self.hold_up

:[577]
pushi.e 0
pop.v.i self._down_pressed
call.i down_h(argc=0)
conv.v.b
bf [609]

:[578]
call.i down_p(argc=0)
pushi.e 1
cmp.i.v EQ
bf [580]

:[579]
pushi.e 1
pop.v.i self._down_pressed

:[580]
push.v self.hold_down
pushi.e 1
add.i.v
pop.v.v self.hold_down
push.v self.hold_down
pushi.e 8
cmp.i.v GTE
bf [582]

:[581]
pushi.e 1
pop.v.i self._down_pressed
pushi.e 6
pop.v.i self.hold_down

:[582]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
pushi.e 11
cmp.i.v LT
bf [584]

:[583]
push.v self._down_pressed
pushi.e 1
cmp.i.v EQ
b [585]

:[584]
push.e 0

:[585]
bf [608]

:[586]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [588]

:[587]
pushi.e -5
pushi.e -5
pushglb.v global.submenu
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.weapon
pop.v.v self.nextone

:[588]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [590]

:[589]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [591]

:[590]
push.e 1

:[591]
bf [593]

:[592]
pushi.e -5
pushi.e -5
pushglb.v global.submenu
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.armor
pop.v.v self.nextone

:[593]
pushi.e -5
pushglb.v global.submenu
conv.v.i
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.submenucoord
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [599]

:[594]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
pushi.e -1
pushi.e 0
push.v [array]self.pagemax
pushi.e 5
add.i.v
cmp.v.v GT
bf [596]

:[595]
pushi.e -1
pushi.e 0
push.v [array]self.pagemax
pushi.e 6
cmp.i.v LT
b [597]

:[596]
push.e 0

:[597]
bf [599]

:[598]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.pagemax
pushi.e 1
add.i.v
pop.i.v [array]self.pagemax

:[599]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [601]

:[600]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [602]

:[601]
push.e 1

:[602]
bf [608]

:[603]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
pushi.e -1
pushi.e 1
push.v [array]self.pagemax
pushi.e 5
add.i.v
cmp.v.v GT
bf [605]

:[604]
pushi.e -1
pushi.e 1
push.v [array]self.pagemax
pushi.e 6
cmp.i.v LT
b [606]

:[605]
push.e 0

:[606]
bf [608]

:[607]
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.pagemax
pushi.e 1
add.i.v
pop.i.v [array]self.pagemax

:[608]
b [610]

:[609]
pushi.e 0
pop.v.i self.hold_down

:[610]
call.i button1_p(argc=0)
conv.v.b
bf [612]

:[611]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [613]

:[612]
push.e 0

:[613]
bf [676]

:[614]
pushi.e 5
pop.v.i self.onebuffer
pushi.e 0
pop.v.i self.canequip
pushi.e -5
pushi.e -5
pushi.e 10
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.char
pop.v.v self.wwho
push.s " "@24
pop.v.s self.wmsg
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [634]

:[615]
pushi.e -5
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.weapon
call.i scr_weaponinfo(argc=1)
popz.v
push.v self.wwho
pushi.e 2
cmp.i.v EQ
bf [617]

:[616]
push.v self.wmessage2temp
pop.v.v self.wmsg

:[617]
push.v self.wwho
pushi.e 3
cmp.i.v EQ
bf [619]

:[618]
push.v self.wmessage3temp
pop.v.v self.wmsg

:[619]
push.v self.wwho
pushi.e 1
cmp.i.v EQ
bf [621]

:[620]
push.v self.weaponchar1temp
pushi.e 1
cmp.i.v EQ
b [622]

:[621]
push.e 0

:[622]
bf [624]

:[623]
pushi.e 1
pop.v.i self.canequip

:[624]
push.v self.wwho
pushi.e 2
cmp.i.v EQ
bf [626]

:[625]
push.v self.weaponchar2temp
pushi.e 1
cmp.i.v EQ
b [627]

:[626]
push.e 0

:[627]
bf [629]

:[628]
pushi.e 1
pop.v.i self.canequip

:[629]
push.v self.wwho
pushi.e 3
cmp.i.v EQ
bf [631]

:[630]
push.v self.weaponchar3temp
pushi.e 1
cmp.i.v EQ
b [632]

:[631]
push.e 0

:[632]
bf [634]

:[633]
pushi.e 1
pop.v.i self.canequip

:[634]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [636]

:[635]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [637]

:[636]
push.e 1

:[637]
bf [657]

:[638]
pushi.e -5
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.armor
call.i scr_armorinfo(argc=1)
popz.v
push.v self.wwho
pushi.e 2
cmp.i.v EQ
bf [640]

:[639]
push.v self.amessage2temp
pop.v.v self.wmsg

:[640]
push.v self.wwho
pushi.e 3
cmp.i.v EQ
bf [642]

:[641]
push.v self.amessage3temp
pop.v.v self.wmsg

:[642]
push.v self.wwho
pushi.e 1
cmp.i.v EQ
bf [644]

:[643]
push.v self.armorchar1temp
pushi.e 1
cmp.i.v EQ
b [645]

:[644]
push.e 0

:[645]
bf [647]

:[646]
pushi.e 1
pop.v.i self.canequip

:[647]
push.v self.wwho
pushi.e 2
cmp.i.v EQ
bf [649]

:[648]
push.v self.armorchar2temp
pushi.e 1
cmp.i.v EQ
b [650]

:[649]
push.e 0

:[650]
bf [652]

:[651]
pushi.e 1
pop.v.i self.canequip

:[652]
push.v self.wwho
pushi.e 3
cmp.i.v EQ
bf [654]

:[653]
push.v self.armorchar3temp
pushi.e 1
cmp.i.v EQ
b [655]

:[654]
push.e 0

:[655]
bf [657]

:[656]
pushi.e 1
pop.v.i self.canequip

:[657]
push.v self.canequip
pushi.e 1
cmp.i.v EQ
bf [674]

:[658]
pushi.e 0
pop.v.i self.hold_up
pushi.e 0
pop.v.i self.hold_down
pushi.e 75
conv.i.v
call.i snd_play(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [660]

:[659]
pushi.e -5
push.v self.wwho
conv.v.i
push.v [array]global.charweapon
pop.v.v self.oldequip
pushi.e -5
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.weapon
pop.v.v self.newequip
push.v self.newequip
pushi.e -5
push.v self.wwho
conv.v.i
pop.v.v [array]global.charweapon
push.v self.oldequip
pushi.e -5
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
conv.v.i
pop.v.v [array]global.weapon
call.i scr_weaponinfo_mine(argc=0)
popz.v
call.i scr_weaponinfo_all(argc=0)
popz.v
pushi.e 2
pop.v.i self.twobuffer
pushi.e 11
pop.v.i global.submenu

:[660]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [662]

:[661]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [663]

:[662]
push.e 1

:[663]
bf [673]

:[664]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bf [666]

:[665]
pushi.e -5
push.v self.wwho
conv.v.i
push.v [array]global.chararmor1
pop.v.v self.oldequip

:[666]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
bf [668]

:[667]
pushi.e -5
push.v self.wwho
conv.v.i
push.v [array]global.chararmor2
pop.v.v self.oldequip

:[668]
pushi.e -5
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.armor
pop.v.v self.newequip
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bf [670]

:[669]
push.v self.newequip
pushi.e -5
push.v self.wwho
conv.v.i
pop.v.v [array]global.chararmor1

:[670]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
bf [672]

:[671]
push.v self.newequip
pushi.e -5
push.v self.wwho
conv.v.i
pop.v.v [array]global.chararmor2

:[672]
push.v self.oldequip
pushi.e -5
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
conv.v.i
pop.v.v [array]global.armor
call.i scr_armorinfo_mine(argc=0)
popz.v
call.i scr_armorinfo_all(argc=0)
popz.v
pushi.e 2
pop.v.i self.twobuffer
call.i scr_dmenu_armor_selection_match(argc=0)
popz.v
pushi.e 11
pop.v.i global.submenu

:[673]
b [675]

:[674]
pushi.e 76
conv.i.v
call.i snd_play(argc=1)
popz.v

:[675]
push.v self.wmsg
pushi.e -5
pushi.e 10
push.v [array]global.submenucoord
call.i scr_itemcomment(argc=2)
popz.v

:[676]
call.i button2_p(argc=0)
conv.v.b
bf [678]

:[677]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [679]

:[678]
push.e 0

:[679]
bf [681]

:[680]
pushi.e 0
pop.v.i self.hold_up
pushi.e 0
pop.v.i self.hold_down
pushi.e 2
pop.v.i self.twobuffer
call.i scr_dmenu_armor_selection_match(argc=0)
popz.v
pushi.e 11
pop.v.i global.submenu

:[681]
pushglb.v global.submenu
pushi.e 11
cmp.i.v EQ
bf [698]

:[682]
call.i up_p(argc=0)
conv.v.b
bf [685]

:[683]
pushi.e -5
pushi.e 11
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.submenucoord
pushi.e -5
pushi.e 11
push.v [array]global.submenucoord
pushi.e -1
cmp.i.v EQ
bf [685]

:[684]
pushi.e 2
pushi.e -5
pushi.e 11
pop.v.i [array]global.submenucoord

:[685]
call.i down_p(argc=0)
conv.v.b
bf [688]

:[686]
pushi.e -5
pushi.e 11
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.submenucoord
pushi.e -5
pushi.e 11
push.v [array]global.submenucoord
pushi.e 3
cmp.i.v EQ
bf [688]

:[687]
pushi.e 0
pushi.e -5
pushi.e 11
pop.v.i [array]global.submenucoord

:[688]
call.i button1_p(argc=0)
conv.v.b
bf [690]

:[689]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [691]

:[690]
push.e 0

:[691]
bf [693]

:[692]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 12
pushi.e -5
pushi.e 11
push.v [array]global.submenucoord
add.v.i
pop.v.v global.submenu
call.i scr_dmenu_armor_selection_match(argc=0)
popz.v

:[693]
call.i button2_p(argc=0)
conv.v.b
bf [695]

:[694]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [696]

:[695]
push.e 0

:[696]
bf [698]

:[697]
pushi.e 0
pop.v.i self.deschaver
pushi.e 2
pop.v.i self.twobuffer
pushi.e 10
pop.v.i global.submenu

:[698]
pushglb.v global.submenu
pushi.e 10
cmp.i.v EQ
bf [715]

:[699]
call.i left_p(argc=0)
conv.v.b
bf [702]

:[700]
pushi.e -5
pushi.e 10
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.submenucoord
pushi.e -5
pushi.e 10
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v LT
bf [702]

:[701]
push.v self.chartotal
pushi.e 1
sub.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]global.submenucoord

:[702]
call.i right_p(argc=0)
conv.v.b
bf [705]

:[703]
pushi.e -5
pushi.e 10
dup.i 1
push.v [array]global.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.submenucoord
pushi.e -5
pushi.e 10
push.v [array]global.submenucoord
push.v self.chartotal
pushi.e 1
sub.i.v
cmp.v.v GT
bf [705]

:[704]
pushi.e 0
pushi.e -5
pushi.e 10
pop.v.i [array]global.submenucoord

:[705]
pushi.e -5
pushi.e 10
push.v [array]global.submenucoord
pop.v.v global.charselect
call.i button1_p(argc=0)
conv.v.b
bf [707]

:[706]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [708]

:[707]
push.e 0

:[708]
bf [710]

:[709]
pushi.e 1
pop.v.i self.deschaver
pushi.e 0
pushi.e -5
pushi.e 11
pop.v.i [array]global.submenucoord
pushi.e 11
pop.v.i global.submenu
pushi.e 2
pop.v.i self.onebuffer

:[710]
call.i button2_p(argc=0)
conv.v.b
bf [712]

:[711]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [713]

:[712]
push.e 0

:[713]
bf [715]

:[714]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.menuno
pushi.e 0
pop.v.i global.submenu
pushi.e -1
pop.v.i global.charselect

:[715]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [757]

:[716]
pushi.e 0
pop.v.i global.submenu
call.i left_p(argc=0)
conv.v.b
bf [722]

:[717]
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
pushi.e 0
cmp.i.v EQ
bf [719]

:[718]
pushi.e 4
pushi.e -5
pushi.e 0
pop.v.i [array]global.menucoord
pushi.e 1
pop.v.i self.movenoise
b [722]

:[719]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.menucoord
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
pushi.e 2
cmp.i.v EQ
bf [721]

:[720]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.menucoord

:[721]
pushi.e 1
pop.v.i self.movenoise

:[722]
call.i right_p(argc=0)
conv.v.b
bf [728]

:[723]
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
pushi.e 4
cmp.i.v EQ
bf [725]

:[724]
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.menucoord
pushi.e 1
pop.v.i self.movenoise
b [728]

:[725]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.menucoord
pushi.e 1
add.i.v
pop.i.v [array]global.menucoord
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
pushi.e 2
cmp.i.v EQ
bf [727]

:[726]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.menucoord
pushi.e 1
add.i.v
pop.i.v [array]global.menucoord

:[727]
pushi.e 1
pop.v.i self.movenoise

:[728]
call.i button1_p(argc=0)
conv.v.b
bf [730]

:[729]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [731]

:[730]
push.e 0

:[731]
bf [742]

:[732]
pushi.e 2
pop.v.i self.onebuffer
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
pushi.e 1
add.i.v
pop.v.v global.menuno
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [734]

:[733]
pushi.e 1
pop.v.i global.submenu
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.submenucoord
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.submenucoord
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.submenucoord
pushi.e 0
pushi.e -5
pushi.e 4
pop.v.i [array]global.submenucoord

:[734]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [736]

:[735]
call.i scr_weaponinfo_all(argc=0)
popz.v
call.i scr_armorinfo_all(argc=0)
popz.v
call.i scr_weaponinfo_mine(argc=0)
popz.v
call.i scr_armorinfo_mine(argc=0)
popz.v
pushi.e 0
pushi.e -5
pushi.e 10
pop.v.i [array]global.submenucoord
pushi.e 0
pushi.e -5
pushi.e 11
pop.v.i [array]global.submenucoord
pushi.e 0
pushi.e -5
pushi.e 12
pop.v.i [array]global.submenucoord
pushi.e 0
pushi.e -5
pushi.e 13
pop.v.i [array]global.submenucoord
pushi.e 0
pushi.e -5
pushi.e 14
pop.v.i [array]global.submenucoord
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.pagemax
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.pagemax
pushi.e 10
pop.v.i global.submenu
pushi.e -5
pushi.e 10
push.v [array]global.submenucoord
pop.v.v global.charselect

:[736]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [738]

:[737]
pushi.e 0
pop.v.i global.menuno

:[738]
pushglb.v global.menuno
pushi.e 4
cmp.i.v EQ
bf [740]

:[739]
pushi.e 20
pop.v.i global.submenu
call.i scr_spellinfo_all(argc=0)
popz.v

:[740]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [742]

:[741]
pushi.e 30
pop.v.i global.submenu
pushi.e 0
pushi.e -5
pushi.e 30
pop.v.i [array]global.submenucoord

:[742]
pushi.e 0
pop.v.i self.close
call.i button2_p(argc=0)
conv.v.b
bf [744]

:[743]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [745]

:[744]
push.e 0

:[745]
bf [747]

:[746]
pushi.e 1
pop.v.i self.close

:[747]
call.i button3_p(argc=0)
conv.v.b
bf [749]

:[748]
push.v self.threebuffer
pushi.e 0
cmp.i.v LT
b [750]

:[749]
push.e 0

:[750]
bf [752]

:[751]
pushi.e 1
pop.v.i self.close

:[752]
push.v self.close
pushi.e 1
cmp.i.v EQ
bf [757]

:[753]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [757]

:[754]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.charcon
pushi.e 326
pushenv [756]

:[755]
pushi.e 2
pop.v.i self.threebuffer
pushi.e 2
pop.v.i self.twobuffer

:[756]
popenv [755]

:[757]
pushglb.v global.interact
pushi.e 6
cmp.i.v EQ
bf [760]

:[758]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [760]

:[759]
pushi.e 0
pop.v.i global.interact

:[760]
push.v self.charcon
pushi.e 1
cmp.i.v EQ
bf [777]

:[761]
pushi.e 1
pop.v.i self.drawchar
pushi.e 60
pop.v.i self.bpy
pushi.e 80
pop.v.i self.tpy
pushglb.v global.interact
pushi.e 5
cmp.i.v EQ
bf [768]

:[762]
push.v self.tp
push.v self.tpy
pushi.e 1
sub.i.v
cmp.v.v LT
bf [767]

:[763]
push.v self.tpy
push.v self.tp
sub.v.v
pushi.e 40
cmp.i.v LTE
bf [765]

:[764]
push.v self.tp
push.v self.tpy
push.v self.tp
sub.v.v
push.d 2.5
div.d.v
call.i round(argc=1)
add.v.v
pop.v.v self.tp
b [766]

:[765]
push.v self.tp
pushi.e 30
add.i.v
pop.v.v self.tp

:[766]
b [768]

:[767]
push.v self.tpy
pop.v.v self.tp

:[768]
push.v self.bp
push.v self.bpy
pushi.e 1
sub.i.v
cmp.v.v LT
bf [770]

:[769]
push.v self.charcon
pushi.e 1
cmp.i.v EQ
b [771]

:[770]
push.e 0

:[771]
bf [776]

:[772]
push.v self.bpy
push.v self.bp
sub.v.v
pushi.e 40
cmp.i.v LTE
bf [774]

:[773]
push.v self.bp
push.v self.bpy
push.v self.bp
sub.v.v
push.d 2.5
div.d.v
call.i round(argc=1)
add.v.v
pop.v.v self.bp
b [775]

:[774]
push.v self.bp
pushi.e 30
add.i.v
pop.v.v self.bp

:[775]
b [777]

:[776]
push.v self.bpy
pop.v.v self.bp

:[777]
push.v self.charcon
pushi.e 0
cmp.i.v EQ
bf [792]

:[778]
push.v self.tp
pushi.e 0
cmp.i.v GT
bf [783]

:[779]
push.v self.tp
pushi.e 80
cmp.i.v GTE
bf [781]

:[780]
push.v self.tp
push.v self.tp
push.d 2.5
div.d.v
call.i round(argc=1)
sub.v.v
pop.v.v self.tp
b [782]

:[781]
push.v self.tp
pushi.e 30
sub.i.v
pop.v.v self.tp

:[782]
b [784]

:[783]
pushi.e 0
pop.v.i self.tp

:[784]
push.v self.bp
pushi.e 0
cmp.i.v GT
bf [789]

:[785]
push.v self.bp
pushi.e 40
cmp.i.v GTE
bf [787]

:[786]
push.v self.bp
push.v self.bp
push.d 2.5
div.d.v
call.i round(argc=1)
sub.v.v
pop.v.v self.bp
b [788]

:[787]
push.v self.bp
pushi.e 30
sub.i.v
pop.v.v self.bp

:[788]
b [790]

:[789]
pushi.e 0
pop.v.i self.bp

:[790]
push.v self.bp
pushi.e 0
cmp.i.v EQ
bf [792]

:[791]
pushi.e 0
pop.v.i self.drawchar

:[792]
push.v self.movenoise
pushi.e 1
cmp.i.v EQ
bf [794]

:[793]
pushi.e 149
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.movenoise

:[794]
push.v self.selectnoise
pushi.e 1
cmp.i.v EQ
bf [796]

:[795]
pushi.e 150
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.selectnoise

:[796]
push.v self.onebuffer
pushi.e 1
sub.i.v
pop.v.v self.onebuffer
push.v self.twobuffer
pushi.e 1
sub.i.v
pop.v.v self.twobuffer
push.v self.threebuffer
pushi.e 1
sub.i.v
pop.v.v self.threebuffer
push.v self.upbuffer
pushi.e 1
sub.i.v
pop.v.v self.upbuffer
push.v self.downbuffer
pushi.e 1
sub.i.v
pop.v.v self.downbuffer
call.i scr_debug(argc=0)
conv.v.b
bf [end]

:[797]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [799]

:[798]
pushi.e 323
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[799]
pushi.e 76
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [801]

:[800]
call.i scr_load(argc=0)
popz.v

:[801]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[802]
call.i game_restart_true(argc=0)
popz.v

:[end]