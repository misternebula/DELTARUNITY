.localvar 0 arguments
.localvar 1 extra_ja_vspace 145
.localvar 2 font_set 147

:[0]
pushi.e 1
pop.v.i self.textscale
pushi.e 0
pop.v.i local.extra_ja_vspace
push.s "chemg_typer"@1553
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushi.e -1
pop.v.i global.chemg_typer

:[2]
pushglb.v global.chemg_typer
pushglb.v global.typer
cmp.v.v NEQ
bf [4]

:[3]
pushglb.v global.typer
pop.v.v global.chemg_typer
push.s "scr_texttype: global.typer = "@1555
pushglb.v global.typer
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v

:[4]
pushi.e 1
pop.v.i local.font_set
pushglb.v global.typer
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [53]

:[5]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [54]

:[6]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [55]

:[7]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [56]

:[8]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [57]

:[9]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [58]

:[10]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [59]

:[11]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [60]

:[12]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [61]

:[13]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [62]

:[14]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [63]

:[15]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [64]

:[16]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [65]

:[17]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [66]

:[18]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [67]

:[19]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [68]

:[20]
dup.v 0
pushi.e 17
cmp.i.v EQ
bt [69]

:[21]
dup.v 0
pushi.e 18
cmp.i.v EQ
bt [70]

:[22]
dup.v 0
pushi.e 19
cmp.i.v EQ
bt [71]

:[23]
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [72]

:[24]
dup.v 0
pushi.e 21
cmp.i.v EQ
bt [73]

:[25]
dup.v 0
pushi.e 22
cmp.i.v EQ
bt [74]

:[26]
dup.v 0
pushi.e 23
cmp.i.v EQ
bt [75]

:[27]
dup.v 0
pushi.e 30
cmp.i.v EQ
bt [76]

:[28]
dup.v 0
pushi.e 31
cmp.i.v EQ
bt [77]

:[29]
dup.v 0
pushi.e 32
cmp.i.v EQ
bt [78]

:[30]
dup.v 0
pushi.e 33
cmp.i.v EQ
bt [79]

:[31]
dup.v 0
pushi.e 35
cmp.i.v EQ
bt [80]

:[32]
dup.v 0
pushi.e 36
cmp.i.v EQ
bt [81]

:[33]
dup.v 0
pushi.e 37
cmp.i.v EQ
bt [82]

:[34]
dup.v 0
pushi.e 40
cmp.i.v EQ
bt [83]

:[35]
dup.v 0
pushi.e 41
cmp.i.v EQ
bt [84]

:[36]
dup.v 0
pushi.e 42
cmp.i.v EQ
bt [85]

:[37]
dup.v 0
pushi.e 45
cmp.i.v EQ
bt [86]

:[38]
dup.v 0
pushi.e 46
cmp.i.v EQ
bt [87]

:[39]
dup.v 0
pushi.e 47
cmp.i.v EQ
bt [88]

:[40]
dup.v 0
pushi.e 48
cmp.i.v EQ
bt [89]

:[41]
dup.v 0
pushi.e 50
cmp.i.v EQ
bt [90]

:[42]
dup.v 0
pushi.e 51
cmp.i.v EQ
bt [91]

:[43]
dup.v 0
pushi.e 52
cmp.i.v EQ
bt [95]

:[44]
dup.v 0
pushi.e 53
cmp.i.v EQ
bt [99]

:[45]
dup.v 0
pushi.e 54
cmp.i.v EQ
bt [100]

:[46]
dup.v 0
pushi.e 55
cmp.i.v EQ
bt [101]

:[47]
dup.v 0
pushi.e 60
cmp.i.v EQ
bt [102]

:[48]
dup.v 0
pushi.e 666
cmp.i.v EQ
bt [103]

:[49]
dup.v 0
pushi.e 667
cmp.i.v EQ
bt [104]

:[50]
dup.v 0
pushi.e 999
cmp.i.v EQ
bt [105]

:[51]
b [106]

:[52]
b [107]

:[53]
pushi.e 0
pop.v.i local.font_set
b [107]

:[54]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 13
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[55]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 148
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[56]
pushi.e 1
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[57]
pushi.e 1
conv.i.v
pushi.e 28
conv.i.v
pushi.e 16
conv.i.v
pushi.e 13
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
pushi.e 2
pop.v.i local.extra_ja_vspace
b [107]

:[58]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 13
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[59]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 13
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[60]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 12
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[61]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 12
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[62]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[63]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[64]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[65]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[66]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "comicsans"@1562
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[67]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 13
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[68]
pushi.e 0
pop.v.i local.font_set
b [107]

:[69]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[70]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[71]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 13
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[72]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 11
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[73]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 11
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[74]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 6
conv.i.v
pushi.e 11
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
pushi.e 7
add.i.v
push.v self.x
push.i 16777215
conv.i.v
push.s "tinynoelle"@1563
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[75]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
pushi.e 7
add.i.v
push.v self.x
push.i 16777215
conv.i.v
push.s "tinynoelle"@1563
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[76]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[77]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[78]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[79]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 61
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[80]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[81]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 148
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[82]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 18
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[83]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 148
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[84]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 148
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[85]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 148
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[86]
pushi.e 1
conv.i.v
pushi.e 28
conv.i.v
pushi.e 16
conv.i.v
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
pushi.e 2
pop.v.i local.extra_ja_vspace
b [107]

:[87]
pushi.e 1
conv.i.v
pushi.e 28
conv.i.v
pushi.e 16
conv.i.v
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
pushi.e 2
pop.v.i local.extra_ja_vspace
b [107]

:[88]
pushi.e 1
conv.i.v
pushi.e 28
conv.i.v
pushi.e 16
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
pushi.e 2
pop.v.i local.extra_ja_vspace
b [107]

:[89]
pushi.e 1
conv.i.v
pushi.e 28
conv.i.v
pushi.e 16
conv.i.v
pushi.e 61
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
pushi.e 2
pop.v.i local.extra_ja_vspace
b [107]

:[90]
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 13
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.s "dotumche"@1564
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[91]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [93]

:[92]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 13
conv.i.v
pushi.e 14
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [94]

:[93]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 13
conv.i.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v

:[94]
b [107]

:[95]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [97]

:[96]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 13
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [98]

:[97]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 13
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v

:[98]
b [107]

:[99]
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.s "dotumche"@1564
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[100]
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.s "dotumche"@1564
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[101]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[102]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 148
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[103]
pushi.e 2
conv.i.v
pushi.e 20
conv.i.v
pushi.e 12
conv.i.v
pushi.e 148
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[104]
pushi.e 2
conv.i.v
pushi.e 20
conv.i.v
pushi.e 12
conv.i.v
pushi.e 148
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[105]
pushi.e 3
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 145
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@1558
conv.s.v
call.i scr_84_get_font(argc=1)
call.i scr_textsetup(argc=11)
popz.v
b [107]

:[106]
pushi.e 0
pop.v.i local.font_set
b [107]

:[107]
popz.v
pushloc.v local.font_set
conv.v.b
bf [109]

:[108]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [end]

:[111]
push.v self.myfont
pushi.e 7
cmp.i.v EQ
bf [115]

:[112]
push.v self.hspace
pushi.e 26
mul.i.v
pushi.e 16
conv.i.d
div.d.v
pushi.e 1
add.i.v
pop.v.v self.hspace
push.v self.vspace
pushi.e 32
cmp.i.v EQ
bf [114]

:[113]
pushi.e 36
pop.v.i self.vspace

:[114]
b [125]

:[115]
push.v self.myfont
pushi.e 10
cmp.i.v EQ
bf [117]

:[116]
push.v self.hspace
pushi.e 13
mul.i.v
pushi.e 8
conv.i.d
div.d.v
pushi.e 1
add.i.v
pop.v.v self.hspace
b [125]

:[117]
push.v self.myfont
pushi.e 5
cmp.i.v EQ
bf [119]

:[118]
push.d 0.5
pop.v.d self.textscale
push.v self.hspace
pushi.e 13
mul.i.v
pushi.e 8
conv.i.d
div.d.v
pushi.e 3
add.i.v
pop.v.v self.hspace
b [125]

:[119]
push.v self.myfont
pushi.e 9
cmp.i.v EQ
bf [121]

:[120]
push.v self.hspace
pushi.e 13
mul.i.v
pushi.e 8
conv.i.d
div.d.v
pushi.e 1
add.i.v
pop.v.v self.hspace
b [125]

:[121]
push.v self.myfont
pushi.e 8
cmp.i.v EQ
bf [123]

:[122]
push.v self.hspace
pushi.e 26
mul.i.v
pushi.e 16
conv.i.d
div.d.v
pushi.e 1
add.i.v
pop.v.v self.hspace
b [125]

:[123]
push.v self.myfont
pushi.e 6
cmp.i.v EQ
bf [125]

:[124]
push.v self.hspace
pushi.e 13
mul.i.v
pushi.e 8
conv.i.d
div.d.v
pushi.e 1
add.i.v
pop.v.v self.hspace

:[125]
push.v self.vspace
pushloc.v local.extra_ja_vspace
add.v.v
pop.v.v self.vspace

:[end]