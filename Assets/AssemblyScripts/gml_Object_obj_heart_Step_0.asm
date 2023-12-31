.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.wallcheck
pushi.e 0
pop.v.i self.press_l
pushi.e 0
pop.v.i self.press_r
pushi.e 0
pop.v.i self.press_d
pushi.e 0
pop.v.i self.press_u
pushi.e 0
pop.v.i self.bkx
pushi.e 0
pop.v.i self.bky
pushi.e 0
pop.v.i self.bkxy
pushi.e 2
pop.v.i self.jelly
call.i left_h(argc=0)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.press_l

:[2]
call.i right_h(argc=0)
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.i self.press_r

:[4]
call.i up_h(argc=0)
conv.v.b
bf [6]

:[5]
pushi.e 1
pop.v.i self.press_u

:[6]
call.i down_h(argc=0)
conv.v.b
bf [8]

:[7]
pushi.e 1
pop.v.i self.press_d

:[8]
pushi.e 0
pop.v.i self.px
pushi.e 0
pop.v.i self.py
push.v self.press_r
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.wspeed
pop.v.v self.px

:[10]
push.v self.press_l
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.wspeed
neg.v
pop.v.v self.px

:[12]
push.v self.press_d
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v self.wspeed
pop.v.v self.py

:[14]
push.v self.press_u
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.wspeed
neg.v
pop.v.v self.py

:[16]
pushi.e 0
pop.v.i self.xmeet
pushi.e 0
pop.v.i self.ymeet
pushi.e 0
pop.v.i self.xymeet
pushi.e 188
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [18]

:[17]
pushi.e 1
pop.v.i self.xymeet

:[18]
pushi.e 188
conv.i.v
push.v self.y
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [49]

:[19]
pushi.e 188
conv.i.v
push.v self.y
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [35]

:[20]
push.v self.wspeed
pop.v.v self.g

:[21]
push.v self.g
pushi.e 0
cmp.i.v GT
bf [35]

:[22]
pushi.e 0
pop.v.i self.mvd
push.v self.press_d
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 188
conv.i.v
push.v self.y
push.v self.g
sub.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [25]

:[24]
push.e 0

:[25]
bf [28]

:[26]
push.v self.y
push.v self.g
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.py
b [35]

:[27]
pushi.e 1
pop.v.i self.mvd

:[28]
push.v self.press_u
pushi.e 0
cmp.i.v EQ
bf [31]

:[29]
push.v self.mvd
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
pushi.e 188
conv.i.v
push.v self.y
push.v self.g
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
push.v self.y
push.v self.g
add.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.py
b [35]

:[34]
push.v self.g
pushi.e 1
sub.i.v
pop.v.v self.g
b [21]

:[35]
pushi.e 1
pop.v.i self.xmeet
pushi.e 0
pop.v.i self.bkx
push.v self.px
pushi.e 0
cmp.i.v GT
bf [41]

:[36]
push.v self.px
pop.v.v self.i

:[37]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [41]

:[38]
pushi.e 188
conv.i.v
push.v self.y
push.v self.x
push.v self.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [40]

:[39]
push.v self.i
pop.v.v self.px
pushi.e 1
pop.v.i self.bkx
b [41]

:[40]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [37]

:[41]
push.v self.px
pushi.e 0
cmp.i.v LT
bf [47]

:[42]
push.v self.px
pop.v.v self.i

:[43]
push.v self.i
pushi.e 0
cmp.i.v LTE
bf [47]

:[44]
pushi.e 188
conv.i.v
push.v self.y
push.v self.x
push.v self.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [46]

:[45]
push.v self.i
pop.v.v self.px
pushi.e 1
pop.v.i self.bkx
b [47]

:[46]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [43]

:[47]
push.v self.bkx
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
pushi.e 0
pop.v.i self.px

:[49]
pushi.e 188
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [80]

:[50]
pushi.e 1
pop.v.i self.ymeet
pushi.e 0
pop.v.i self.bky
pushi.e 188
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [66]

:[51]
push.v self.wspeed
pop.v.v self.g

:[52]
push.v self.g
pushi.e 0
cmp.i.v GT
bf [66]

:[53]
pushi.e 0
pop.v.i self.mvd
push.v self.press_r
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
pushi.e 188
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.g
sub.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [56]

:[55]
push.e 0

:[56]
bf [59]

:[57]
push.v self.x
push.v self.g
sub.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.px
b [66]

:[58]
pushi.e 1
pop.v.i self.mvd

:[59]
push.v self.mvd
pushi.e 0
cmp.i.v EQ
bf [62]

:[60]
push.v self.press_l
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
pushi.e 188
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.g
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
push.v self.x
push.v self.g
add.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.px
b [66]

:[65]
push.v self.g
pushi.e 1
sub.i.v
pop.v.v self.g
b [52]

:[66]
push.v self.py
pushi.e 0
cmp.i.v GT
bf [72]

:[67]
push.v self.py
pop.v.v self.i

:[68]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [72]

:[69]
pushi.e 188
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [71]

:[70]
push.v self.i
pop.v.v self.py
pushi.e 1
pop.v.i self.bky
b [72]

:[71]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [68]

:[72]
push.v self.py
pushi.e 0
cmp.i.v LT
bf [78]

:[73]
push.v self.py
pop.v.v self.i

:[74]
push.v self.i
pushi.e 0
cmp.i.v LTE
bf [78]

:[75]
pushi.e 188
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [77]

:[76]
push.v self.i
pop.v.v self.py
pushi.e 1
pop.v.i self.bky
b [78]

:[77]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [74]

:[78]
push.v self.bky
pushi.e 0
cmp.i.v EQ
bf [80]

:[79]
pushi.e 0
pop.v.i self.py

:[80]
pushi.e 188
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [105]

:[81]
pushi.e 1
pop.v.i self.xymeet
pushi.e 0
pop.v.i self.bkxy
push.v self.px
pop.v.v self.i
push.v self.py
pop.v.v self.j

:[82]
push.v self.j
pushi.e 0
cmp.i.v NEQ
bt [84]

:[83]
push.v self.i
pushi.e 0
cmp.i.v NEQ
b [85]

:[84]
push.e 1

:[85]
bf [103]

:[86]
pushi.e 188
conv.i.v
push.v self.y
push.v self.j
add.v.v
push.v self.x
push.v self.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [88]

:[87]
push.v self.i
pop.v.v self.px
push.v self.j
pop.v.v self.py
pushi.e 1
pop.v.i self.bkxy
b [103]

:[88]
push.v self.j
call.i abs(argc=1)
pushi.e 1
cmp.i.v GTE
bf [94]

:[89]
push.v self.j
pushi.e 0
cmp.i.v GT
bf [91]

:[90]
push.v self.j
pushi.e 1
sub.i.v
pop.v.v self.j

:[91]
push.v self.j
pushi.e 0
cmp.i.v LT
bf [93]

:[92]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j

:[93]
b [95]

:[94]
pushi.e 0
pop.v.i self.j

:[95]
push.v self.i
call.i abs(argc=1)
pushi.e 1
cmp.i.v GTE
bf [101]

:[96]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [98]

:[97]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i

:[98]
push.v self.i
pushi.e 0
cmp.i.v LT
bf [100]

:[99]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i

:[100]
b [102]

:[101]
pushi.e 0
pop.v.i self.i

:[102]
b [82]

:[103]
push.v self.bkxy
pushi.e 0
cmp.i.v EQ
bf [105]

:[104]
pushi.e 0
pop.v.i self.px
pushi.e 0
pop.v.i self.py

:[105]
push.v self.x
push.v self.px
add.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 640
add.i.v
push.v self.sprite_width
sub.v.v
cmp.v.v GTE
bf [107]

:[106]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 640
add.i.v
push.v self.sprite_width
sub.v.v
push.v self.x
sub.v.v
pop.v.v self.px

:[107]
push.v self.x
push.v self.px
add.v.v
pushi.e 0
cmp.i.v LTE
bf [109]

:[108]
push.v self.x
neg.v
pop.v.v self.px

:[109]
push.v self.y
push.v self.py
add.v.v
pushi.e 0
cmp.i.v LTE
bf [111]

:[110]
push.v self.y
neg.v
pop.v.v self.py

:[111]
push.v self.y
push.v self.py
add.v.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
push.v self.sprite_height
sub.v.v
push.v self.boundaryup
add.v.v
cmp.v.v GTE
bf [113]

:[112]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
push.v self.sprite_height
sub.v.v
push.v self.y
sub.v.v
push.v self.boundaryup
add.v.v
pop.v.v self.py

:[113]
push.v self.x
push.v self.px
add.v.v
pop.v.v self.x
push.v self.y
push.v self.py
add.v.v
pop.v.v self.y
push.v self.dmgnoise
pushi.e 1
cmp.i.v EQ
bf [115]

:[114]
pushi.e 0
pop.v.i self.dmgnoise
pushi.e 95
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 95
conv.i.v
call.i snd_play(argc=1)
popz.v

:[115]
push.v global.inv
pushi.e 1
sub.i.v
pop.v.v global.inv
pushglb.v global.inv
pushi.e 0
cmp.i.v GT
bf [117]

:[116]
push.d 0.25
pop.v.d self.image_speed
b [118]

:[117]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[118]
push.v self.x
pushi.e 2
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
sub.v.v
pop.v.v global.heartx
push.v self.y
pushi.e 2
add.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
sub.v.v
pop.v.v global.hearty

:[end]