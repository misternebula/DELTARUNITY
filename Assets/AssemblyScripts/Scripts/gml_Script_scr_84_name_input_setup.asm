.localvar 0 arguments
.localvar 1 menu 1144
.localvar 2 xoff 1145
.localvar 3 yoff 1146
.localvar 4 xstep 1147
.localvar 5 ystep 1148
.localvar 6 str 1154

:[0]
pushi.e 0
pop.v.i local.menu
pushi.e 0
pop.v.i local.xoff
pushi.e 0
pop.v.i local.yoff
pushi.e 0
pop.v.i local.xstep
pushi.e 0
pop.v.i local.ystep
push.v self.LANGSUBTYPE
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 68
pop.v.i local.xoff
pushi.e 70
pop.v.i local.yoff
pushi.e 20
pop.v.i local.xstep
pushi.e 20
pop.v.i local.ystep
pushi.e 40
pop.v.i self.PLAYERNAMEY
push.s "ABCDEFGHIJ"@3439
pushi.e -7
pushi.e 0
pop.v.s [array]local.menu
push.s "KLMNOPQRST"@3440
pushi.e -7
pushi.e 1
pop.v.s [array]local.menu
push.s "UVWXYZ < <"@3441
pushi.e -7
pushi.e 2
pop.v.s [array]local.menu
pushi.e 0
pop.v.i self.CURX
pushi.e 0
pop.v.i self.CURY
b [8]

:[2]
push.v self.LANGSUBTYPE
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 28
pop.v.i local.xoff
pushi.e 80
pop.v.i local.yoff
pushi.e 16
pop.v.i local.xstep
pushi.e 15
pop.v.i local.ystep
pushi.e 60
pop.v.i self.PLAYERNAMEY
push.s "あいうえお　まみむめも　ぁぃぅぇぉ"@3444
pushi.e -7
pushi.e 0
pop.v.s [array]local.menu
push.s "かきくけこ　や　ゆ　よ　がぎぐげご"@3445
pushi.e -7
pushi.e 1
pop.v.s [array]local.menu
push.s "さしすせそ　らりるれろ　ざじずぜぞ"@3446
pushi.e -7
pushi.e 2
pop.v.s [array]local.menu
push.s "たちつてと　わをんー　　だぢづでど"@3447
pushi.e -7
pushi.e 3
pop.v.s [array]local.menu
push.s "なにぬねの　ゃゅょっゎ　ばびぶべぼ"@3448
pushi.e -7
pushi.e 4
pop.v.s [array]local.menu
push.s "はひふへほ　　　　　　　ぱぴぷぺぽ"@3449
pushi.e -7
pushi.e 5
pop.v.s [array]local.menu
push.s ">> << >> << >> <<"@3450
pushi.e -7
pushi.e 6
pop.v.s [array]local.menu
push.s ">>>> <<<>>>> <<<<"@3451
pushi.e -7
pushi.e 7
pop.v.s [array]local.menu
b [8]

:[4]
push.v self.LANGSUBTYPE
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 28
pop.v.i local.xoff
pushi.e 80
pop.v.i local.yoff
pushi.e 16
pop.v.i local.xstep
pushi.e 15
pop.v.i local.ystep
pushi.e 60
pop.v.i self.PLAYERNAMEY
push.s "アイウエオ　マミムメモ　ァィゥェォ"@3452
pushi.e -7
pushi.e 0
pop.v.s [array]local.menu
push.s "カキクケコ　ヤ　ユ　ヨ　ガギグゲゴ"@3453
pushi.e -7
pushi.e 1
pop.v.s [array]local.menu
push.s "サシスセソ　ラリルレロ　ザジズセゾ"@3454
pushi.e -7
pushi.e 2
pop.v.s [array]local.menu
push.s "タチツテト　ワヲンー　　ダヂヅデド"@3455
pushi.e -7
pushi.e 3
pop.v.s [array]local.menu
push.s "ナニヌネノ　ャュョッヮ　バビブベボ"@3456
pushi.e -7
pushi.e 4
pop.v.s [array]local.menu
push.s "ハヒフヘホ　　　　　　　パピプペポ"@3457
pushi.e -7
pushi.e 5
pop.v.s [array]local.menu
push.s ">> << >> << >> <<"@3450
pushi.e -7
pushi.e 6
pop.v.s [array]local.menu
push.s ">>>> <<<>>>> <<<<"@3451
pushi.e -7
pushi.e 7
pop.v.s [array]local.menu
b [8]

:[6]
push.v self.LANGSUBTYPE
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 28
pop.v.i local.xoff
pushi.e 80
pop.v.i local.yoff
pushi.e 32
pop.v.i local.xstep
pushi.e 15
pop.v.i local.ystep
pushi.e 60
pop.v.i self.PLAYERNAMEY
push.s "ＡＢＣＤＥＦＧＨＩ"@3458
pushi.e -7
pushi.e 0
pop.v.s [array]local.menu
push.s "ＪＫＬＭＮＯＰＱＲ"@3459
pushi.e -7
pushi.e 1
pop.v.s [array]local.menu
push.s "ＳＴＵＶＷＸＹＺ "@3460
pushi.e -7
pushi.e 2
pop.v.s [array]local.menu
push.s "         "@3461
pushi.e -7
pushi.e 3
pop.v.s [array]local.menu
push.s "         "@3461
pushi.e -7
pushi.e 4
pop.v.s [array]local.menu
push.s "         "@3461
pushi.e -7
pushi.e 5
pop.v.s [array]local.menu
push.s "> <> <> <"@3462
pushi.e -7
pushi.e 6
pop.v.s [array]local.menu
push.s ">> <>> <<"@3463
pushi.e -7
pushi.e 7
pop.v.s [array]local.menu

:[8]
pushloc.v local.menu
call.i array_length_1d(argc=1)
pushi.e 1
sub.i.v
pop.v.v self.YMAX
pushi.e 0
pop.v.i self.j

:[9]
push.v self.j
push.v self.YMAX
cmp.v.v LTE
bf [14]

:[10]
pushi.e -7
push.v self.j
conv.v.i
push.v [array]local.menu
pop.v.v local.str
pushloc.v local.str
call.i string_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v self.XMAX
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
push.v self.XMAX
cmp.v.v LTE
bf [13]

:[12]
push.v self.i
pushi.e 1
add.i.v
pushloc.v local.str
call.i string_char_at(argc=2)
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.NAME
pushloc.v local.xoff
push.v self.i
pushloc.v local.xstep
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.NAMEX
pushloc.v local.yoff
push.v self.j
pushloc.v local.ystep
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.NAMEY
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[13]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [9]

:[14]
push.v self.LANGSUBTYPE
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.s "(B)BACK"@3469
pushi.e -1
pushi.e 6
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.s [array]self.NAME
push.s "(E)END"@3470
pushi.e -1
pushi.e 8
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.s [array]self.NAME
b [26]

:[16]
push.v self.LANGSUBTYPE
pushi.e 1
cmp.i.v EQ
bt [18]

:[17]
push.v self.LANGSUBTYPE
pushi.e 2
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [24]

:[20]
push.s "(1)ひらがな"@3471
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.s [array]self.NAME
pushloc.v local.xoff
pushi.e 32
add.i.v
pushi.e 20
sub.i.v
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.v [array]self.NAMEX
pushloc.v local.yoff
pushi.e 90
add.i.v
pushi.e 8
add.i.v
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.v [array]self.NAMEY
push.s "(2)カタカナ"@3472
pushi.e -1
pushi.e 8
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.s [array]self.NAME
pushloc.v local.xoff
pushi.e 128
add.i.v
pushi.e 24
sub.i.v
pushi.e -1
pushi.e 8
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.v [array]self.NAMEX
pushloc.v local.yoff
pushi.e 90
add.i.v
pushi.e 8
add.i.v
pushi.e -1
pushi.e 8
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.v [array]self.NAMEY
push.s "(3)アルファベット"@3473
pushi.e -1
pushi.e 14
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.s [array]self.NAME
pushloc.v local.xoff
pushi.e 224
add.i.v
pushi.e 40
sub.i.v
pushi.e -1
pushi.e 14
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.v [array]self.NAMEX
pushloc.v local.yoff
pushi.e 90
add.i.v
pushi.e 8
add.i.v
pushi.e -1
pushi.e 14
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.v [array]self.NAMEY
push.s "(B)さくじょ"@3474
pushi.e -1
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 7
chkindex.e
add.i.i
pop.v.s [array]self.NAME
pushloc.v local.xoff
pushi.e 64
add.i.v
pushi.e 8
sub.i.v
pushi.e -1
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 7
chkindex.e
add.i.i
pop.v.v [array]self.NAMEX
pushloc.v local.yoff
pushi.e 105
add.i.v
pushi.e 16
add.i.v
pushi.e -1
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 7
chkindex.e
add.i.i
pop.v.v [array]self.NAMEY
push.s "(E)けってい"@3475
pushi.e -1
pushi.e 12
chkindex.e
push.i 32000
mul.i.i
pushi.e 7
chkindex.e
add.i.i
pop.v.s [array]self.NAME
pushloc.v local.xoff
pushi.e 180
add.i.v
pushi.e 32
sub.i.v
pushi.e -1
pushi.e 12
chkindex.e
push.i 32000
mul.i.i
pushi.e 7
chkindex.e
add.i.i
pop.v.v [array]self.NAMEX
pushloc.v local.yoff
pushi.e 105
add.i.v
pushi.e 16
add.i.v
pushi.e -1
pushi.e 12
chkindex.e
push.i 32000
mul.i.i
pushi.e 7
chkindex.e
add.i.i
pop.v.v [array]self.NAMEY
push.v self.LANGSUBTYPE
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 2
pop.v.i self.CURX
pushi.e 6
pop.v.i self.CURY
b [23]

:[22]
pushi.e 8
pop.v.i self.CURX
pushi.e 6
pop.v.i self.CURY

:[23]
b [26]

:[24]
push.v self.LANGSUBTYPE
pushi.e 3
cmp.i.v EQ
bf [26]

:[25]
push.s "(1)ひらがな"@3471
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.s [array]self.NAME
pushloc.v local.xoff
pushi.e 32
add.i.v
pushi.e 20
sub.i.v
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.v [array]self.NAMEX
pushloc.v local.yoff
pushi.e 90
add.i.v
pushi.e 8
add.i.v
pushi.e -1
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.v [array]self.NAMEY
push.s "(2)カタカナ"@3472
pushi.e -1
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.s [array]self.NAME
pushloc.v local.xoff
pushi.e 128
add.i.v
pushi.e 24
sub.i.v
pushi.e -1
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.v [array]self.NAMEX
pushloc.v local.yoff
pushi.e 90
add.i.v
pushi.e 8
add.i.v
pushi.e -1
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.v [array]self.NAMEY
push.s "(3)アルファベット"@3473
pushi.e -1
pushi.e 7
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.s [array]self.NAME
pushloc.v local.xoff
pushi.e 224
add.i.v
pushi.e 40
sub.i.v
pushi.e -1
pushi.e 7
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.v [array]self.NAMEX
pushloc.v local.yoff
pushi.e 90
add.i.v
pushi.e 8
add.i.v
pushi.e -1
pushi.e 7
chkindex.e
push.i 32000
mul.i.i
pushi.e 6
chkindex.e
add.i.i
pop.v.v [array]self.NAMEY
push.s "(B)さくじょ"@3474
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 7
chkindex.e
add.i.i
pop.v.s [array]self.NAME
pushloc.v local.xoff
pushi.e 64
add.i.v
pushi.e 8
sub.i.v
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 7
chkindex.e
add.i.i
pop.v.v [array]self.NAMEX
pushloc.v local.yoff
pushi.e 105
add.i.v
pushi.e 16
add.i.v
pushi.e -1
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 7
chkindex.e
add.i.i
pop.v.v [array]self.NAMEY
push.s "(E)けってい"@3475
pushi.e -1
pushi.e 6
chkindex.e
push.i 32000
mul.i.i
pushi.e 7
chkindex.e
add.i.i
pop.v.s [array]self.NAME
pushloc.v local.xoff
pushi.e 180
add.i.v
pushi.e 32
sub.i.v
pushi.e -1
pushi.e 6
chkindex.e
push.i 32000
mul.i.i
pushi.e 7
chkindex.e
add.i.i
pop.v.v [array]self.NAMEX
pushloc.v local.yoff
pushi.e 105
add.i.v
pushi.e 16
add.i.v
pushi.e -1
pushi.e 6
chkindex.e
push.i 32000
mul.i.i
pushi.e 7
chkindex.e
add.i.i
pop.v.v [array]self.NAMEY
pushi.e 7
pop.v.i self.CURX
pushi.e 6
pop.v.i self.CURY

:[26]
pushi.e -1
push.v self.CURX
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.CURY
conv.v.i
chkindex.e
add.i.i
push.v [array]self.NAMEX
pushi.e -1
push.v self.CURX
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.CURY
conv.v.i
chkindex.e
add.i.i
push.v [array]self.NAME
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 10
sub.i.v
pop.v.v self.HEARTX
pushi.e -1
push.v self.CURX
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.CURY
conv.v.i
chkindex.e
add.i.i
push.v [array]self.NAMEY
pop.v.v self.HEARTY

:[end]