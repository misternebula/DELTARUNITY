.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.talked
pushi.e 217
conv.i.v
pushi.e 60
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.puzzle
push.v self.puzzle
conv.v.i
pushenv [2]

:[1]
pushi.e 3
pop.v.i self.max_suit
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.sol
pushi.e 4
pushi.e -1
pushi.e 1
pop.v.i [array]self.sol
pushi.e 3
pushi.e -1
pushi.e 2
pop.v.i [array]self.sol

:[2]
popenv [1]
pushi.e 329
conv.i.v
pushi.e 160
conv.i.v
pushi.e 400
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.easel
push.v self.easel
conv.v.i
pushenv [4]

:[3]
push.i 900000
pop.v.i self.depth

:[4]
popenv [3]
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [7]

:[6]
pushi.e 244
conv.i.v
pushi.e 240
push.v self.i
pushi.e 40
mul.i.v
add.v.i
pushi.e 520
conv.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.spike
push.i 800000
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spike
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
pushi.e 331
conv.i.v
pushi.e 240
conv.i.v
pushi.e 520
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.block
pushi.e 3
push.v self.block
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 190
conv.i.v
pushi.e 170
conv.i.v
pushi.e 372
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s
pushglb.v global.plot
pushi.e 71
cmp.i.v LT
bf [9]

:[8]
pushi.e 71
pop.v.i global.plot

:[9]
pushglb.v global.plot
pushi.e 71
cmp.i.v EQ
bf [17]

:[10]
pushi.e 15
pop.v.i self.con
push.v self.s
conv.v.i
pushenv [12]

:[11]
pushi.e 0
pop.v.i self.visible

:[12]
popenv [11]
pushi.e 0
pop.v.i self.visible
pushi.e 83
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lnpc
push.v self.lnpc
conv.v.i
pushenv [14]

:[13]
pushi.e 211
pop.v.i self.dtsprite
pushi.e 216
pop.v.i self.rtsprite
pushi.e 220
pop.v.i self.ltsprite
pushi.e 214
pop.v.i self.utsprite
push.v self.dtsprite
pop.v.v self.sprite_index
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
push.v self.y
pushi.e 100
add.i.v
pop.v.v self.y

:[14]
popenv [13]
pushi.e 83
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
push.v self.s
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.snpc
push.v self.snpc
conv.v.i
pushenv [16]

:[15]
pushi.e 188
pop.v.i self.dtsprite
pushi.e 184
pop.v.i self.rtsprite
pushi.e 181
pop.v.i self.ltsprite
pushi.e 192
pop.v.i self.utsprite
push.v self.dtsprite
pop.v.v self.sprite_index
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
push.v self.y
pushi.e 100
add.i.v
pop.v.v self.y

:[16]
popenv [15]

:[17]
pushglb.v global.plot
pushi.e 72
cmp.i.v GTE
bf [end]

:[18]
push.v self.s
conv.v.i
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
push.v self.easel
conv.v.i
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]
push.v self.puzzle
conv.v.i
pushenv [24]

:[23]
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.suit
pushi.e 4
pushi.e -1
pushi.e 1
pop.v.i [array]self.suit
pushi.e 3
pushi.e -1
pushi.e 2
pop.v.i [array]self.suit
pushi.e 1
pop.v.i self.won

:[24]
popenv [23]
push.v self.block
conv.v.i
pushenv [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
popenv [25]
pushi.e 0
pop.v.i self.i

:[27]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [29]

:[28]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spike
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [27]

:[29]
pushi.e 999
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]