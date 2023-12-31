.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pop.v.v self.w
pushi.e 0
pop.v.i self.usable
pushglb.v global.charselect
pushi.e 3
cmp.i.v LT
bf [2]

:[1]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pop.v.v self._gc

:[2]
pushi.e -1
pop.v.i self.suspos
pushi.e -1
pop.v.i self.ralpos
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [9]

:[4]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.i
pop.v.v self.suspos

:[6]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.v self.i
pop.v.v self.ralpos

:[8]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[9]
pushbltn.v self.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [28]

:[10]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [29]

:[11]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [36]

:[12]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [43]

:[13]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [46]

:[14]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [47]

:[15]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [52]

:[16]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [57]

:[17]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [62]

:[18]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [67]

:[19]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [72]

:[20]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [77]

:[21]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [84]

:[22]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [91]

:[23]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [96]

:[24]
dup.v 0
pushi.e 300
cmp.i.v EQ
bt [101]

:[25]
dup.v 0
pushi.e 301
cmp.i.v EQ
bt [102]

:[26]
dup.v 0
pushi.e 302
cmp.i.v EQ
bt [105]

:[27]
b [108]

:[28]
push.s " "@24
pop.v.s self.itemnameb
push.s "---"@2273
pop.v.s self.itemdescb
b [108]

:[29]
pushi.e 40
conv.i.v
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
push.v self._gc
pushi.e 2
cmp.i.v EQ
bf [31]

:[30]
push.s "scr_itemuse_slash_scr_itemuse_gml_28_0"@2356
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[31]
push.v self._gc
pushi.e 3
cmp.i.v EQ
bf [35]

:[32]
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [34]

:[33]
push.s "scr_itemuse_slash_scr_itemuse_gml_33_0"@2358
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.suspos
call.i scr_itemcomment(argc=2)
popz.v

:[34]
push.s "scr_itemuse_slash_scr_itemuse_gml_35_0"@2359
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[35]
b [108]

:[36]
pushi.e -5
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.maxhp
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.reviveamt
push.v self.reviveamt
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
push.v self._gc
pushi.e 2
cmp.i.v EQ
bf [38]

:[37]
push.s "scr_itemuse_slash_scr_itemuse_gml_47_0"@2360
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.suspos
call.i scr_itemcomment(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_48_0"@2361
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.ralpos
call.i scr_itemcomment(argc=2)
popz.v

:[38]
push.v self._gc
pushi.e 3
cmp.i.v EQ
bf [42]

:[39]
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [41]

:[40]
push.s "scr_itemuse_slash_scr_itemuse_gml_53_0"@2362
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.suspos
call.i scr_itemcomment(argc=2)
popz.v

:[41]
push.s "scr_itemuse_slash_scr_itemuse_gml_54_0"@2363
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.ralpos
call.i scr_itemcomment(argc=2)
popz.v

:[42]
b [108]

:[43]
pushi.e 6
pop.v.i global.interact
pushi.e 166
pushenv [45]

:[44]
pushi.e 0
pop.v.i self.charcon

:[45]
popenv [44]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i self.charcon
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
push.s "scr_itemuse_slash_scr_itemuse_gml_71_0"@2367
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
b [108]

:[46]
pushi.e 20
conv.i.v
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
b [108]

:[47]
pushi.e 160
conv.i.v
call.i scr_healitem_all(argc=1)
popz.v
push.v self.suspos
pushi.e 0
cmp.i.v GTE
bf [49]

:[48]
push.s "scr_itemuse_slash_scr_itemuse_gml_83_0"@2369
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.suspos
call.i scr_itemcomment(argc=2)
popz.v

:[49]
push.v self.ralpos
pushi.e 0
cmp.i.v GTE
bf [51]

:[50]
push.s "scr_itemuse_slash_scr_itemuse_gml_84_0"@2370
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.ralpos
call.i scr_itemcomment(argc=2)
popz.v

:[51]
pushi.e 1
pop.v.i self.usable
b [108]

:[52]
pushi.e 80
conv.i.v
call.i scr_healitem_all(argc=1)
popz.v
push.v self.suspos
pushi.e 0
cmp.i.v GTE
bf [54]

:[53]
push.s "scr_itemuse_slash_scr_itemuse_gml_90_0"@2371
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.suspos
call.i scr_itemcomment(argc=2)
popz.v

:[54]
push.v self.ralpos
pushi.e 0
cmp.i.v GTE
bf [56]

:[55]
push.s "scr_itemuse_slash_scr_itemuse_gml_91_0"@2372
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.ralpos
call.i scr_itemcomment(argc=2)
popz.v

:[56]
pushi.e 1
pop.v.i self.usable
b [108]

:[57]
pushi.e 70
conv.i.v
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [59]

:[58]
push.s "scr_itemuse_slash_scr_itemuse_gml_101_0"@2373
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[59]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [61]

:[60]
push.s "scr_itemuse_slash_scr_itemuse_gml_105_0"@2374
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[61]
b [108]

:[62]
pushi.e 4
conv.i.v
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [64]

:[63]
push.s "scr_itemuse_slash_scr_itemuse_gml_115_0"@2375
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[64]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [66]

:[65]
push.s "scr_itemuse_slash_scr_itemuse_gml_119_0"@2376
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[66]
b [108]

:[67]
pushi.e 4
conv.i.v
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [69]

:[68]
push.s "scr_itemuse_slash_scr_itemuse_gml_129_0"@2377
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[69]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [71]

:[70]
push.s "scr_itemuse_slash_scr_itemuse_gml_133_0"@2378
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[71]
b [108]

:[72]
pushi.e 30
conv.i.v
call.i scr_healitem_all(argc=1)
popz.v
push.v self.suspos
pushi.e 0
cmp.i.v GTE
bf [74]

:[73]
push.s "scr_itemuse_slash_scr_itemuse_gml_139_0"@2379
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.suspos
call.i scr_itemcomment(argc=2)
popz.v

:[74]
push.v self.ralpos
pushi.e 0
cmp.i.v GTE
bf [76]

:[75]
push.s "scr_itemuse_slash_scr_itemuse_gml_140_0"@2380
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.ralpos
call.i scr_itemcomment(argc=2)
popz.v

:[76]
pushi.e 1
pop.v.i self.usable
b [108]

:[77]
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 1
cmp.i.v EQ
bf [79]

:[78]
pushi.e 20
conv.i.v
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v

:[79]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [81]

:[80]
pushi.e 80
conv.i.v
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_154_0"@2381
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[81]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [83]

:[82]
pushi.e 50
conv.i.v
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_159_0"@2382
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[83]
b [108]

:[84]
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
pushi.e 80
conv.i.v
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v

:[86]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [88]

:[87]
pushi.e 20
conv.i.v
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_173_0"@2383
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[88]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [90]

:[89]
pushi.e 50
conv.i.v
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_178_0"@2384
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[90]
b [108]

:[91]
pushi.e 1
pop.v.i self.usable
pushi.e 500
conv.i.v
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [93]

:[92]
push.s "scr_itemuse_slash_scr_itemuse_gml_188_0"@2385
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[93]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [95]

:[94]
push.s "scr_itemuse_slash_scr_itemuse_gml_192_0"@2386
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[95]
b [108]

:[96]
pushi.e 50
conv.i.v
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [98]

:[97]
push.s "scr_itemuse_slash_scr_itemuse_gml_202_0"@2387
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[98]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [100]

:[99]
push.s "scr_itemuse_slash_scr_itemuse_gml_206_0"@2388
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.charselect
call.i scr_itemcomment(argc=2)
popz.v

:[100]
b [108]

:[101]
b [108]

:[102]
pushi.e 166
pushenv [104]

:[103]
pushi.e 0
pop.v.i self.charcon

:[104]
popenv [103]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i self.charcon
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
pushi.e 27
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_222_0"@2389
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
pushi.e 319
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
b [108]

:[105]
pushi.e 6
pop.v.i global.interact
pushi.e 166
pushenv [107]

:[106]
pushi.e 0
pop.v.i self.charcon

:[107]
popenv [106]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i self.charcon
pushi.e 29
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
push.s "scr_itemuse_slash_scr_itemuse_gml_237_0"@2390
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
b [108]

:[108]
popz.v

:[end]