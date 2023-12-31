.localvar 0 arguments

:[0]
push.v self.buffer
pushi.e 1
add.i.v
pop.v.v self.buffer
push.v self.buffer
pushi.e 19
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed
pushi.e 4
push.v self.dir
mul.v.i
pop.v.v self.hspeed
pushi.e -10
pop.v.i self.depth

:[2]
push.v self.buffer
pushi.e 19
cmp.i.v GTE
bf [end]

:[3]
push.v 188.y
push.v 188.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.y
push.v self.x
push.v 188.x
push.v 188.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 20
add.i.v
cmp.v.v LTE
bf [6]

:[4]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[6]
push.v self.x
push.v 188.x
push.v 188.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 20
add.i.v
cmp.v.v LTE
bf [9]

:[7]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [9]

:[8]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[9]
push.v self.x
push.v 188.x
push.v 188.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 20
sub.i.v
cmp.v.v GTE
bf [12]

:[10]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[12]
push.v self.buffer
pushi.e 20
cmp.i.v GTE
bf [15]

:[13]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.x
push.v 305.x
pushi.e 10
add.i.v
sub.v.v
call.i abs(argc=1)
pushi.e 30
cmp.i.v LT
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 5
pop.v.i self.con

:[18]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [20]

:[19]
push.d 0.5
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.con

:[20]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [37]

:[21]
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [23]

:[22]
push.v self.throw
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [32]

:[25]
pushi.e 1
pop.v.i self.throw
pushi.e 193
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.carrot
push.v self.carrot
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.carrot
conv.v.i
pushenv [31]

:[26]
pushi.e 7
pop.v.i self.speedmax
call.i scr_monsterpop(argc=0)
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
pushi.e 6
pop.v.i self.speedmax

:[28]
call.i scr_monsterpop(argc=0)
pushi.e 3
cmp.i.v EQ
bf [30]

:[29]
pushi.e 5
pop.v.i self.speedmax

:[30]
pushi.e 1
pop.v.i self.active
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.speedmax
pop.v.v self.vspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 585
pop.v.i self.sprite_index

:[31]
popenv [26]

:[32]
push.v self.image_index
pushi.e 3
cmp.i.v GTE
bf [37]

:[33]
pushi.e 0
pop.v.i self.throw
pushi.e 0
pop.v.i self.image_speed
pushi.e 7
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
call.i scr_monsterpop(argc=0)
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
pushi.e 22
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[35]
call.i scr_monsterpop(argc=0)
pushi.e 3
cmp.i.v EQ
bf [37]

:[36]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[37]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [end]

:[38]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.con

:[end]