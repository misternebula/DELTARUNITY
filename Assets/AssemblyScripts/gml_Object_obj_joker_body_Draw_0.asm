.localvar 0 arguments

:[0]
push.v self.floatsiner
push.v self.floatsinerspeed
add.v.v
pop.v.v self.floatsiner
push.v self.floatsiner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
push.v self.floatsinerspeed
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
mul.v.v
pop.v.v self.fly
pushi.e 0
pop.v.i self.flyx
push.v self.dancelv
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
push.v self.floatsiner
pushi.e 8
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 3
mul.i.v
push.v self.floatsinerspeed
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
mul.v.v
pop.v.v self.flyx

:[2]
push.v self.dancelv
pushi.e 4
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.flyx
pushi.e 0
pop.v.i self.fly

:[4]
push.v self.x
pushi.e 20
add.i.v
pop.v.v self.offx
push.v self.y
pushi.e 18
add.i.v
pop.v.v self.offy
push.v self.condition
pushi.e 0
cmp.i.v EQ
bf [28]

:[5]
push.v self.fade
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.fade_a

:[7]
push.v self.fade
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.floatsiner
pushi.e 13
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pop.v.v self.fade_a

:[9]
push.v self.dancelv
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v self.fade_a
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.fly
add.v.v
push.v self.offx
push.v self.flyx
add.v.v
pushi.e 0
conv.i.v
pushi.e 580
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[11]
push.v self.dancelv
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.fly
add.v.v
push.v self.offx
push.v self.flyx
add.v.v
push.v self.floatsiner
pushi.e 3
conv.i.d
div.d.v
pushi.e 573
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
push.v self.dancelv
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.fly
add.v.v
push.v self.offx
push.v self.flyx
add.v.v
pushi.e 0
conv.i.v
pushi.e 581
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[15]
push.v self.dancelv
pushi.e 3
cmp.i.v EQ
bf [26]

:[16]
push.v self.dancesiner
pushi.e 1
add.i.v
pop.v.v self.dancesiner
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [26]

:[18]
push.v self.i
pushi.e 1
cmp.i.v GTE
bf [20]

:[19]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.shadowx
push.v self.i
push.v self.floatsiner
pushi.e 5
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sfactor
mul.v.v
add.v.v
pop.i.v [array]self.shadowx
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.shadowy
push.v self.i
push.v self.floatsiner
pushi.e 5
conv.i.d
div.d.v
add.v.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sfactor
mul.v.v
add.v.v
pop.i.v [array]self.shadowy

:[20]
push.v self.i
push.v self.dancesiner
pushi.e 9
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dalpha
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dalpha
pushi.e 0
cmp.i.v LT
bf [22]

:[21]
push.v self.i
pushi.e 1
cmp.i.v GTE
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 60
pushi.e 120
conv.i.v
call.i random(argc=1)
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shadowx
pushi.e 60
pushi.e 120
conv.i.v
call.i random(argc=1)
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shadowy
push.d 1.5
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.d
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.sfactor

:[25]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dalpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shadowy
add.v.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shadowx
add.v.v
push.v self.dancesiner
pushi.e 2
conv.i.d
div.d.v
push.v self.i
pushi.e 4
conv.i.d
div.d.v
add.v.v
pushi.e 573
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [17]

:[26]
push.v self.dancelv
pushi.e 4
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.fly
add.v.v
push.v self.offx
push.v self.flyx
add.v.v
pushi.e 1
conv.i.v
pushi.e 577
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[28]
push.v self.condition
pushi.e 1
cmp.i.v EQ
bf [52]

:[29]
push.v self.maxdist
pushi.e 150
cmp.i.v GTE
bf [31]

:[30]
pushi.e 150
pop.v.i self.maxdist

:[31]
push.d 0.8
push.v self.maxdist
pushi.e 50
conv.i.d
div.d.v
add.v.d
pop.v.v self.sinadd
push.v self.sinadd
push.d 0.8
cmp.d.v LT
bf [33]

:[32]
push.d 0.8
pop.v.d self.sinadd

:[33]
push.v self.sinadd
pushi.e 2
cmp.i.v GT
bf [35]

:[34]
pushi.e 2
pop.v.i self.sinadd

:[35]
push.v self.siner
push.v self.sinadd
add.v.v
pop.v.v self.siner
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.maxdist
mul.v.v
pop.v.v self.sinx
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
neg.v
push.v self.maxdist
push.d 0.7
mul.d.v
mul.v.v
pop.v.v self.siny
pushi.e 0
pop.v.i self.ji
push.v self.sinx
push.v self.maxdist
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [37]

:[36]
push.v self.maxdist
pushi.e 15
cmp.i.v GT
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 1
pop.v.i self.ji

:[40]
push.v self.sinx
push.v self.maxdist
neg.v
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [42]

:[41]
push.v self.maxdist
pushi.e 15
cmp.i.v GT
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 2
pop.v.i self.ji

:[45]
push.v self.maxdist
pushi.e 4
cmp.i.v LT
bf [47]

:[46]
pushi.e 3
pop.v.i self.ji

:[47]
pushi.e 0
pop.v.i self.i

:[48]
push.v self.i
push.v self.maxchain
pushi.e 1
sub.i.v
cmp.v.v LT
bf [50]

:[49]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
pushi.e 6
add.i.v
push.v self.siny
pushi.e 32
sub.i.v
push.v self.i
push.v self.maxchain
div.v.v
mul.v.v
add.v.v
push.v self.fly
add.v.v
push.v self.offx
push.v self.sinx
push.v self.i
push.v self.maxchain
div.v.v
mul.v.v
add.v.v
pushi.e 2
sub.i.v
push.v self.ji
pushi.e 583
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [48]

:[50]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.fly
add.v.v
pushi.e 2
sub.i.v
push.v self.offx
pushi.e 42
sub.i.v
pushi.e 0
conv.i.v
pushi.e 582
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.siny
add.v.v
push.v self.fly
add.v.v
pushi.e 14
sub.i.v
push.v self.offx
push.v self.sinx
add.v.v
pushi.e 2
sub.i.v
push.v self.ji
pushi.e 584
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.maxdist
pushi.e 1
sub.i.v
pop.v.v self.maxdist
push.v self.maxdist
pushi.e 0
cmp.i.v LTE
bf [52]

:[51]
pushi.e 0
pop.v.i self.maxdist
pushi.e 0
pop.v.i self.condition

:[52]
push.v self.condition
pushi.e 2
cmp.i.v EQ
bf [61]

:[53]
pushi.e 205
pushenv [55]

:[54]
push.v self.image_alpha
push.d 0.25
sub.d.v
pop.v.v self.image_alpha

:[55]
popenv [54]
push.v self.sndcon
pushi.e 0
cmp.i.v EQ
bf [57]

:[56]
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.sndcon

:[57]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.size
push.v self.offy
push.v self.fly
add.v.v
push.v self.offx
pushi.e 0
conv.i.v
pushi.e 580
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.size
push.d 0.5
sub.d.v
pop.v.v self.size
push.v self.size
pushi.e 0
cmp.i.v LTE
bf [61]

:[58]
pushi.e 205
pushenv [60]

:[59]
pushi.e 0
pop.v.i self.image_alpha

:[60]
popenv [59]
pushi.e 0
pop.v.i self.sndcon
pushi.e 2
pop.v.i self.size
pushi.e 4
pop.v.i self.condition

:[61]
push.v self.condition
pushi.e 3
cmp.i.v EQ
bf [70]

:[62]
pushi.e 205
pushenv [64]

:[63]
push.v self.image_alpha
push.d 0.25
add.d.v
pop.v.v self.image_alpha

:[64]
popenv [63]
push.v self.sndcon
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.sndcon

:[66]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.size
push.v self.offy
push.v self.fly
add.v.v
push.v self.offx
pushi.e 0
conv.i.v
pushi.e 580
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.size
push.d 0.5
add.d.v
pop.v.v self.size
push.v self.size
pushi.e 2
cmp.i.v GTE
bf [70]

:[67]
pushi.e 205
pushenv [69]

:[68]
pushi.e 1
pop.v.i self.image_alpha

:[69]
popenv [68]
pushi.e 2
pop.v.i self.size
pushi.e 0
pop.v.i self.condition
pushi.e 0
pop.v.i self.sndcon

:[70]
push.v self.condition
pushi.e 4
cmp.i.v EQ
bf [73]

:[71]
pushglb.v global.turntimer
pushi.e 10
cmp.i.v LTE
bf [73]

:[72]
pushi.e 0
pop.v.i self.timer
pushi.e 3
pop.v.i self.condition
pushi.e 0
pop.v.i self.size

:[73]
push.v self.condition
pushi.e 5
cmp.i.v EQ
bf [104]

:[74]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
pushi.e 0
pop.v.i self.spintimer
pushi.e 2
pop.v.i self.s_xscale
pushi.e 2
pop.v.i self.s_yscale
pushi.e 577
pop.v.i self.s_sprite
pushi.e 0
pop.v.i self.s_y
pushi.e 0
pop.v.i self.s_vspeed
pushi.e 1
pop.v.i self.s_alpha
push.s "snd_joker_metamorphosis"@3397
conv.s.v
call.i scr_84_get_sound(argc=1)
call.i snd_play(argc=1)
popz.v

:[76]
push.v self.timer
pushi.e 1
cmp.i.v GTE
bf [78]

:[77]
push.v self.timer
pushi.e 3
cmp.i.v LTE
b [79]

:[78]
push.e 0

:[79]
bf [81]

:[80]
push.v self.s_xscale
push.d 1.3
mul.d.v
pop.v.v self.s_xscale
push.v self.s_yscale
push.d 0.7
mul.d.v
pop.v.v self.s_yscale

:[81]
push.v self.timer
pushi.e 5
cmp.i.v GTE
bf [83]

:[82]
push.v self.timer
pushi.e 15
cmp.i.v LTE
b [84]

:[83]
push.e 0

:[84]
bf [86]

:[85]
push.v self.s_xscale
push.d 0.7
mul.d.v
pop.v.v self.s_xscale
push.v self.s_yscale
push.d 1.3
mul.d.v
pop.v.v self.s_yscale

:[86]
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [88]

:[87]
push.v self.timer
pushi.e 30
cmp.i.v LTE
b [89]

:[88]
push.e 0

:[89]
bf [94]

:[90]
push.v self.spintimer
pushi.e 1
add.i.v
pop.v.v self.spintimer
push.v self.spintimer
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.s_xscale
pushi.e 575
pop.v.i self.s_sprite
push.v self.s_yscale
push.d 0.7
mul.d.v
pop.v.v self.s_yscale
push.v self.s_xscale
pushi.e 2
cmp.i.v GTE
bf [92]

:[91]
pushi.e 2
pop.v.i self.s_xscale

:[92]
push.v self.s_yscale
pushi.e 2
cmp.i.v LTE
bf [94]

:[93]
pushi.e 2
pop.v.i self.s_yscale

:[94]
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [96]

:[95]
push.v self.timer
pushi.e 41
cmp.i.v LT
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
push.v self.spintimer
pushi.e 1
add.i.v
pop.v.v self.spintimer
push.v self.spintimer
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.s_xscale
push.v self.s_vspeed
pushi.e 3
sub.i.v
pop.v.v self.s_vspeed
push.v self.s_y
push.v self.s_vspeed
add.v.v
pop.v.v self.s_y
push.v self.s_alpha
push.d 0.1
sub.d.v
pop.v.v self.s_alpha

:[99]
push.v self.timer
pushi.e 41
cmp.i.v GTE
bf [103]

:[100]
pushi.e 187
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [103]

:[101]
pushglb.v global.turntimer
pushi.e 10
cmp.i.v GT
bf [103]

:[102]
pushi.e 0
pop.v.i self.timer
pushi.e 4
pop.v.i self.condition

:[103]
push.v self.s_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.s_yscale
push.v self.s_xscale
push.v self.offy
push.v self.s_y
add.v.v
push.v self.offx
pushi.e 0
conv.i.v
push.v self.s_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[104]
push.v self.condition
pushi.e 0
cmp.i.v EQ
bt [106]

:[105]
push.v self.condition
pushi.e 1
cmp.i.v EQ
b [107]

:[106]
push.e 1

:[107]
bf [110]

:[108]
push.v self.dancelv
pushi.e 2
cmp.i.v LTE
bf [110]

:[109]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 85
add.i.v
push.v self.fly
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 30
add.i.v
push.v self.fly
add.v.v
push.v self.flyx
add.v.v
push.v self.y
pushi.e 80
add.i.v
push.v self.fly
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 20
sub.i.v
push.v self.fly
sub.v.v
push.v self.flyx
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[110]
push.v self.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[111]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [118]

:[112]
push.v self.condition
pushi.e 1
add.i.v
pop.v.v self.condition
pushi.e 0
pop.v.i self.siner
push.v self.condition
pushi.e 1
cmp.i.v EQ
bf [114]

:[113]
pushi.e 40
pop.v.i self.maxdist

:[114]
push.v self.condition
pushi.e 2
cmp.i.v EQ
bf [116]

:[115]
pushi.e 2
pop.v.i self.size

:[116]
push.v self.condition
pushi.e 3
cmp.i.v EQ
bf [118]

:[117]
pushi.e 0
pop.v.i self.size

:[118]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [125]

:[119]
push.v self.condition
pushi.e 1
sub.i.v
pop.v.v self.condition
pushi.e 0
pop.v.i self.siner
push.v self.condition
pushi.e 1
cmp.i.v EQ
bf [121]

:[120]
pushi.e 50
pop.v.i self.maxdist

:[121]
push.v self.condition
pushi.e 2
cmp.i.v EQ
bf [123]

:[122]
pushi.e 2
pop.v.i self.size

:[123]
push.v self.condition
pushi.e 3
cmp.i.v EQ
bf [125]

:[124]
pushi.e 0
pop.v.i self.size

:[125]
push.v self.condition
pushi.e 0
cmp.i.v LT
bf [127]

:[126]
pushi.e 0
pop.v.i self.condition

:[127]
push.v self.condition
pushi.e 4
cmp.i.v GT
bf [129]

:[128]
pushi.e 0
pop.v.i self.condition

:[129]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [131]

:[130]
push.v self.maxdist
pushi.e 20
add.i.v
pop.v.v self.maxdist

:[131]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 1
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 1
add.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 1
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 1
sub.i.v
call.i draw_rectangle(argc=5)
popz.v

:[end]