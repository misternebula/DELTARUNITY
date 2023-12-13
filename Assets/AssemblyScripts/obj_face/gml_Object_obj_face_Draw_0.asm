.localvar 0 arguments

:[0]
push.v self.facechange
pushi.e 1
sub.i.v
pop.v.v self.facechange
push.v self.nowface
pushglb.v global.fc
cmp.v.v NEQ
bf [2]

:[1]
pushi.e 3
pop.v.i self.facechange

:[2]
push.v self.facechange
pushi.e 0
cmp.i.v LTE
bf [169]

:[3]
pushglb.v global.fc
pushi.e 1
cmp.i.v EQ
bf [33]

:[4]
pushi.e -5
pushi.e 29
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [32]

:[5]
pushi.e 1
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2
pop.v.i self.face

:[7]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 3
pop.v.i self.face

:[9]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e 4
pop.v.i self.face

:[11]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [13]

:[12]
pushi.e 5
pop.v.i self.face

:[13]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [15]

:[14]
pushi.e 6
pop.v.i self.face

:[15]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [17]

:[16]
pushi.e 7
pop.v.i self.face

:[17]
pushglb.v global.fe
pushi.e 7
cmp.i.v EQ
bf [19]

:[18]
pushi.e 8
pop.v.i self.face

:[19]
pushglb.v global.fe
pushi.e 8
cmp.i.v EQ
bf [21]

:[20]
pushi.e 9
pop.v.i self.face

:[21]
pushglb.v global.fe
pushi.e 9
cmp.i.v EQ
bf [23]

:[22]
pushi.e 10
pop.v.i self.face

:[23]
pushglb.v global.fe
pushi.e 10
cmp.i.v EQ
bf [25]

:[24]
pushi.e 11
pop.v.i self.face

:[25]
pushglb.v global.fe
pushi.e 11
cmp.i.v EQ
bf [27]

:[26]
pushi.e 12
pop.v.i self.face

:[27]
pushglb.v global.fe
pushi.e 12
cmp.i.v EQ
bf [29]

:[28]
pushi.e 13
pop.v.i self.face

:[29]
pushglb.v global.fe
pushi.e 13
cmp.i.v EQ
bf [31]

:[30]
pushi.e 14
pop.v.i self.face

:[31]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v
b [33]

:[32]
pushi.e 0
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[33]
pushglb.v global.fc
pushi.e 2
cmp.i.v EQ
bf [39]

:[34]
pushi.e 61
pop.v.i self.face
pushi.e -5
pushi.e 30
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
pushi.e 63
pop.v.i self.face

:[36]
pushi.e -5
pushi.e 30
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [38]

:[37]
pushi.e 62
pop.v.i self.face

:[38]
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 15
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[39]
pushglb.v global.fc
pushi.e 3
cmp.i.v EQ
bf [59]

:[40]
pushi.e 15
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 16
pop.v.i self.face

:[42]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
pushi.e 17
pop.v.i self.face

:[44]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [46]

:[45]
pushi.e 18
pop.v.i self.face

:[46]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [48]

:[47]
pushi.e 19
pop.v.i self.face

:[48]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [50]

:[49]
pushi.e 20
pop.v.i self.face

:[50]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [52]

:[51]
pushi.e 21
pop.v.i self.face

:[52]
pushglb.v global.fe
pushi.e 7
cmp.i.v EQ
bf [54]

:[53]
pushi.e 22
pop.v.i self.face

:[54]
pushglb.v global.fe
pushi.e 8
cmp.i.v EQ
bf [56]

:[55]
pushi.e 23
pop.v.i self.face

:[56]
pushglb.v global.fe
pushi.e 9
cmp.i.v EQ
bf [58]

:[57]
pushi.e 24
pop.v.i self.face

:[58]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[59]
pushglb.v global.fc
pushi.e 4
cmp.i.v EQ
bf [79]

:[60]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 29
add.i.v
push.v self.x
pushi.e 7
sub.i.v
pushi.e 0
conv.i.v
pushi.e 81
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 25
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
pushi.e 26
pop.v.i self.face

:[62]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [64]

:[63]
pushi.e 27
pop.v.i self.face

:[64]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [66]

:[65]
pushi.e 28
pop.v.i self.face

:[66]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [68]

:[67]
pushi.e 29
pop.v.i self.face

:[68]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [70]

:[69]
pushi.e 30
pop.v.i self.face

:[70]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [72]

:[71]
pushi.e 31
pop.v.i self.face

:[72]
pushglb.v global.fe
pushi.e 7
cmp.i.v EQ
bf [74]

:[73]
pushi.e 32
pop.v.i self.face

:[74]
pushglb.v global.fe
pushi.e 8
cmp.i.v EQ
bf [76]

:[75]
pushi.e 33
pop.v.i self.face

:[76]
pushglb.v global.fe
pushi.e 9
cmp.i.v EQ
bf [78]

:[77]
pushi.e 34
pop.v.i self.face

:[78]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[79]
pushglb.v global.fc
pushi.e 5
cmp.i.v EQ
bf [81]

:[80]
pushi.e 64
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 15
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[81]
pushglb.v global.fc
pushi.e 6
cmp.i.v EQ
bf [93]

:[82]
pushi.e 42
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
pushi.e 43
pop.v.i self.face

:[84]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [86]

:[85]
pushi.e 44
pop.v.i self.face

:[86]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [88]

:[87]
pushi.e 45
pop.v.i self.face

:[88]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [90]

:[89]
pushi.e 46
pop.v.i self.face

:[90]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [92]

:[91]
pushi.e 47
pop.v.i self.face

:[92]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[93]
pushglb.v global.fc
pushi.e 9
cmp.i.v EQ
bf [95]

:[94]
pushi.e 77
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[95]
pushglb.v global.fc
pushi.e 10
cmp.i.v EQ
bf [109]

:[96]
pushi.e 66
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
pushi.e 67
pop.v.i self.face

:[98]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [100]

:[99]
pushi.e 68
pop.v.i self.face

:[100]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [102]

:[101]
pushi.e 69
pop.v.i self.face

:[102]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [104]

:[103]
pushi.e 70
pop.v.i self.face

:[104]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [106]

:[105]
pushi.e 71
pop.v.i self.face

:[106]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [108]

:[107]
pushi.e 72
pop.v.i self.face

:[108]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[109]
pushglb.v global.fc
pushi.e 11
cmp.i.v EQ
bf [111]

:[110]
pushi.e 82
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[111]
pushglb.v global.fc
pushi.e 12
cmp.i.v EQ
bf [131]

:[112]
pushi.e 36
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [114]

:[113]
pushi.e 37
pop.v.i self.face

:[114]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [116]

:[115]
pushi.e 38
pop.v.i self.face

:[116]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [118]

:[117]
pushi.e 39
pop.v.i self.face

:[118]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [120]

:[119]
pushi.e 40
pop.v.i self.face

:[120]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [122]

:[121]
pushi.e 41
pop.v.i self.face

:[122]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [124]

:[123]
pushi.e 37
pop.v.i self.face

:[124]
pushglb.v global.fe
pushi.e 7
cmp.i.v EQ
bf [126]

:[125]
pushi.e 37
pop.v.i self.face

:[126]
pushglb.v global.fe
pushi.e 8
cmp.i.v EQ
bf [128]

:[127]
pushi.e 37
pop.v.i self.face

:[128]
pushglb.v global.fe
pushi.e 9
cmp.i.v EQ
bf [130]

:[129]
pushi.e 37
pop.v.i self.face

:[130]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[131]
pushglb.v global.fc
pushi.e 13
cmp.i.v EQ
bf [137]

:[132]
pushi.e 48
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [134]

:[133]
pushi.e 49
pop.v.i self.face

:[134]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [136]

:[135]
pushi.e 50
pop.v.i self.face

:[136]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[137]
pushglb.v global.fc
pushi.e 14
cmp.i.v EQ
bf [157]

:[138]
pushi.e 51
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [140]

:[139]
pushi.e 52
pop.v.i self.face

:[140]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [142]

:[141]
pushi.e 53
pop.v.i self.face

:[142]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [144]

:[143]
pushi.e 54
pop.v.i self.face

:[144]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [146]

:[145]
pushi.e 55
pop.v.i self.face

:[146]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [148]

:[147]
pushi.e 56
pop.v.i self.face

:[148]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [150]

:[149]
pushi.e 57
pop.v.i self.face

:[150]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [152]

:[151]
pushi.e 58
pop.v.i self.face

:[152]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [154]

:[153]
pushi.e 59
pop.v.i self.face

:[154]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [156]

:[155]
pushi.e 60
pop.v.i self.face

:[156]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[157]
pushglb.v global.fc
pushi.e 15
cmp.i.v EQ
bf [159]

:[158]
pushi.e 65
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[159]
pushglb.v global.fc
pushi.e 16
cmp.i.v EQ
bf [161]

:[160]
pushi.e 73
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[161]
pushglb.v global.fc
pushi.e 17
cmp.i.v EQ
bf [163]

:[162]
pushi.e 74
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[163]
pushglb.v global.fc
pushi.e 18
cmp.i.v EQ
bf [165]

:[164]
pushi.e 76
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[165]
pushglb.v global.fc
pushi.e 19
cmp.i.v EQ
bf [167]

:[166]
pushi.e 75
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 5
sub.i.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[167]
pushglb.v global.fc
pushi.e 20
cmp.i.v EQ
bf [169]

:[168]
pushi.e 80
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 5
sub.i.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[169]
pushglb.v global.fc
pop.v.v self.nowface

:[end]