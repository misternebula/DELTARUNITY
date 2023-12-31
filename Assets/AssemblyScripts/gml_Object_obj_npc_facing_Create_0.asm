.localvar 0 arguments

:[0]
pushi.e 97
pop.v.i self.dtsprite
pushi.e 102
pop.v.i self.rtsprite
pushi.e 104
pop.v.i self.ltsprite
pushi.e 100
pop.v.i self.utsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.ourcase
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[2]
pushi.e 1
pop.v.i self.normalanim
pushi.e 0
pop.v.i self.remanimspeed
pushi.e 0
pop.v.i self.depthbonus
pushi.e 0
pop.v.i self.depthcancel
pushbltn.v self.room
pushi.e 30
cmp.i.v EQ
bf [14]

:[3]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 1
pop.v.i self.ourcase
push.v self.y
pushi.e 172
cmp.i.v LT
bf [6]

:[4]
pushi.e 124
pop.v.i self.dtsprite
pushi.e 131
pop.v.i self.rtsprite
pushi.e 130
pop.v.i self.utsprite
pushi.e 132
pop.v.i self.ltsprite
push.v self.x
pushi.e 120
cmp.i.v GT
bf [6]

:[5]
pushi.e 134
pop.v.i self.utsprite
pushi.e 138
pop.v.i self.rtsprite
pushi.e 137
pop.v.i self.ltsprite
pushi.e 134
pop.v.i self.dtsprite

:[6]
push.v self.y
pushi.e 172
cmp.i.v GT
bf [9]

:[7]
pushi.e 139
pop.v.i self.dtsprite
pushi.e 139
pop.v.i self.utsprite
pushi.e 139
pop.v.i self.rtsprite
pushi.e 139
pop.v.i self.ltsprite
push.v self.x
pushi.e 120
cmp.i.v GT
bf [9]

:[8]
pushi.e 152
pop.v.i self.dtsprite
pushi.e 154
pop.v.i self.rtsprite
pushi.e 155
pop.v.i self.ltsprite
pushi.e 152
pop.v.i self.utsprite

:[9]
push.v self.y
pushi.e 212
cmp.i.v GT
bf [12]

:[10]
pushi.e 140
pop.v.i self.dtsprite
pushi.e 140
pop.v.i self.utsprite
pushi.e 141
pop.v.i self.rtsprite
pushi.e 142
pop.v.i self.ltsprite
push.v self.x
pushi.e 120
cmp.i.v GT
bf [12]

:[11]
pushi.e 148
pop.v.i self.utsprite
pushi.e 150
pop.v.i self.ltsprite
pushi.e 151
pop.v.i self.rtsprite
pushi.e 148
pop.v.i self.dtsprite

:[12]
push.v self.y
pushi.e 100
cmp.i.v LT
bf [14]

:[13]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 119
pop.v.i self.dtsprite
pushi.e 121
pop.v.i self.ltsprite
pushi.e 122
pop.v.i self.rtsprite
pushi.e 120
pop.v.i self.utsprite

:[14]
pushbltn.v self.room
pushi.e 52
cmp.i.v EQ
bf [18]

:[15]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 211
pop.v.i self.dtsprite
pushi.e 211
pop.v.i self.utsprite
pushi.e 216
pop.v.i self.rtsprite
pushi.e 220
pop.v.i self.ltsprite
pushbltn.v self.room
pushi.e 52
cmp.i.v EQ
bf [18]

:[16]
pushglb.v global.plot
pushi.e 35
cmp.i.v GTE
bf [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
pushbltn.v self.room
pushi.e 92
cmp.i.v EQ
bf [23]

:[19]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushglb.v global.plot
pushi.e 95
cmp.i.v LT
bf [21]

:[20]
pushi.e 95
pop.v.i global.plot

:[21]
pushi.e -5
pushi.e 293
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 211
pop.v.i self.dtsprite
pushi.e 211
pop.v.i self.utsprite
pushi.e 216
pop.v.i self.rtsprite
pushi.e 220
pop.v.i self.ltsprite
pushglb.v global.plot
pushi.e 120
cmp.i.v GTE
bf [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
pushbltn.v self.room
pushi.e 95
cmp.i.v EQ
bf [26]

:[24]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e -5
pushi.e 294
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 187
pop.v.i self.dtsprite
pushi.e 190
pop.v.i self.utsprite
pushi.e 183
pop.v.i self.rtsprite
pushi.e 180
pop.v.i self.ltsprite
pushglb.v global.plot
pushi.e 120
cmp.i.v GTE
bf [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
pushbltn.v self.room
pushi.e 62
cmp.i.v EQ
bf [30]

:[27]
pushi.e 0
pop.v.i self.type
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [29]

:[28]
pushi.e 204
pop.v.i self.sprite_index
pushi.e 204
pop.v.i self.dtsprite
pushi.e 206
pop.v.i self.utsprite
pushi.e 209
pop.v.i self.rtsprite
pushi.e 207
pop.v.i self.ltsprite
push.v self.y
push.v self.sprite_height
add.v.v
pop.v.v self.y
b [30]

:[29]
pushi.e 1
pop.v.i self.type
pushi.e 177
pop.v.i self.sprite_index
pushi.e 187
pop.v.i self.dtsprite
pushi.e 190
pop.v.i self.utsprite
pushi.e 183
pop.v.i self.rtsprite
pushi.e 180
pop.v.i self.ltsprite
push.v self.y
push.v self.sprite_height
add.v.v
pop.v.v self.y

:[30]
pushbltn.v self.room
pushi.e 128
cmp.i.v EQ
bf [34]

:[31]
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
pushi.e 204
pop.v.i self.sprite_index
pushi.e 204
pop.v.i self.dtsprite
pushi.e 206
pop.v.i self.utsprite
pushi.e 209
pop.v.i self.rtsprite
pushi.e 207
pop.v.i self.ltsprite
push.v self.y
push.v self.sprite_height
add.v.v
pop.v.v self.y

:[34]
pushbltn.v self.room
pushi.e 126
cmp.i.v EQ
bf [38]

:[35]
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [37]

:[36]
call.i instance_destroy(argc=0)
popz.v

:[37]
pushi.e 211
pop.v.i self.sprite_index
pushi.e 211
pop.v.i self.dtsprite
pushi.e 214
pop.v.i self.utsprite
pushi.e 216
pop.v.i self.rtsprite
pushi.e 220
pop.v.i self.ltsprite
push.v self.y
push.v self.sprite_height
add.v.v
pop.v.v self.y
pushi.e -250
pop.v.i self.depthbonus

:[38]
pushbltn.v self.room
pushi.e 75
cmp.i.v EQ
bf [43]

:[39]
pushi.e 183
pop.v.i self.sprite_index
pushi.e 183
pop.v.i self.rtsprite
pushi.e 187
pop.v.i self.dtsprite
pushi.e 190
pop.v.i self.utsprite
pushi.e 180
pop.v.i self.ltsprite
pushi.e 1
pop.v.i self.facing
pushi.e 1
pop.v.i self.dfacing
push.v self.x
pushi.e 1160
cmp.i.v GTE
bf [41]

:[40]
pushi.e 3
pop.v.i self.facing
pushi.e 3
pop.v.i self.dfacing
pushi.e 220
pop.v.i self.sprite_index
pushi.e 211
pop.v.i self.dtsprite
pushi.e 211
pop.v.i self.utsprite
pushi.e 216
pop.v.i self.rtsprite
pushi.e 220
pop.v.i self.ltsprite

:[41]
pushglb.v global.plot
pushi.e 70
cmp.i.v GT
bf [43]

:[42]
call.i instance_destroy(argc=0)
popz.v

:[43]
pushbltn.v self.room
pushi.e 81
cmp.i.v EQ
bf [47]

:[44]
push.v self.x
pushi.e 600
cmp.i.v GTE
bf [46]

:[45]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 214
pop.v.i self.sprite_index
pushi.e 211
pop.v.i self.dtsprite
pushi.e 214
pop.v.i self.utsprite
pushi.e 216
pop.v.i self.rtsprite
pushi.e 220
pop.v.i self.ltsprite
b [47]

:[46]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 192
pop.v.i self.sprite_index
pushi.e 188
pop.v.i self.dtsprite
pushi.e 192
pop.v.i self.utsprite
pushi.e 184
pop.v.i self.rtsprite
pushi.e 181
pop.v.i self.ltsprite

:[47]
pushbltn.v self.room
pushi.e 26
cmp.i.v EQ
bf [54]

:[48]
push.v self.x
pushi.e 120
cmp.i.v LT
bf [50]

:[49]
pushi.e 1
pop.v.i self.facing
pushi.e 1
pop.v.i self.dfacing
pushi.e 136
pop.v.i self.dtsprite
pushi.e 135
pop.v.i self.utsprite
pushi.e 136
pop.v.i self.rtsprite
pushi.e 135
pop.v.i self.ltsprite
pushi.e 1
pop.v.i self.depthcancel
pushi.e 4000
pop.v.i self.depth

:[50]
push.v self.x
pushi.e 150
cmp.i.v GT
bf [52]

:[51]
pushi.e 1
pop.v.i self.facing
pushi.e 1
pop.v.i self.dfacing
pushi.e 140
pop.v.i self.dtsprite
pushi.e 140
pop.v.i self.utsprite
pushi.e 141
pop.v.i self.rtsprite
pushi.e 142
pop.v.i self.ltsprite

:[52]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [54]

:[53]
pushi.e 3
pop.v.i self.facing
pushi.e 3
pop.v.i self.dfacing
pushi.e 144
pop.v.i self.dtsprite
pushi.e 145
pop.v.i self.rtsprite
pushi.e 143
pop.v.i self.utsprite
pushi.e 144
pop.v.i self.ltsprite

:[54]
pushbltn.v self.room
pushi.e 24
cmp.i.v EQ
bf [56]

:[55]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 270
pop.v.i self.dtsprite
pushi.e 275
pop.v.i self.utsprite
pushi.e 273
pop.v.i self.rtsprite
pushi.e 272
pop.v.i self.ltsprite

:[56]
pushbltn.v self.room
pushi.e 25
cmp.i.v EQ
bf [58]

:[57]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 270
pop.v.i self.dtsprite
pushi.e 275
pop.v.i self.utsprite
pushi.e 273
pop.v.i self.rtsprite
pushi.e 272
pop.v.i self.ltsprite

:[58]
pushbltn.v self.room
pushi.e 27
cmp.i.v EQ
bf [60]

:[59]
pushi.e 3
pop.v.i self.facing
pushi.e 3
pop.v.i self.dfacing
pushi.e 119
pop.v.i self.dtsprite
pushi.e 120
pop.v.i self.utsprite
pushi.e 122
pop.v.i self.rtsprite
pushi.e 121
pop.v.i self.ltsprite

:[60]
pushbltn.v self.room
pushi.e 13
cmp.i.v EQ
bf [62]

:[61]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 281
pop.v.i self.dtsprite
pushi.e 284
pop.v.i self.utsprite
pushi.e 283
pop.v.i self.rtsprite
pushi.e 282
pop.v.i self.ltsprite

:[62]
pushbltn.v self.room
pushi.e 11
cmp.i.v EQ
bf [64]

:[63]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 289
pop.v.i self.dtsprite
pushi.e 290
pop.v.i self.ltsprite
pushi.e 292
pop.v.i self.utsprite
pushi.e 291
pop.v.i self.rtsprite

:[64]
pushbltn.v self.room
pushi.e 9
cmp.i.v EQ
bf [67]

:[65]
pushi.e 3
pop.v.i self.facing
pushi.e 3
pop.v.i self.dfacing
pushi.e 124
pop.v.i self.dtsprite
pushi.e 129
pop.v.i self.ltsprite
pushi.e 130
pop.v.i self.utsprite
pushi.e 128
pop.v.i self.rtsprite
pushi.e -5
pushi.e 255
push.v [array]global.flag
pushi.e 1
cmp.i.v LT
bf [67]

:[66]
call.i instance_destroy(argc=0)
popz.v

:[67]
call.i scr_npcdir(argc=0)
popz.v
push.v self.y
push.v self.sprite_height
sub.v.v
pop.v.v self.y
push.v self.depthcancel
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
call.i scr_depth(argc=0)
popz.v

:[69]
push.v self.depth
push.v self.depthbonus
add.v.v
pop.v.v self.depth

:[end]