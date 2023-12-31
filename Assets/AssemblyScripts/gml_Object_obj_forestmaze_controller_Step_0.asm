.localvar 0 arguments

:[0]
push.v self.lancercon
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
push.v 326.y
pushi.e 480
cmp.i.v LTE
bf [6]

:[2]
pushi.e -10
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.lancercon
push.v self.susie_side
pushi.e 0
cmp.i.v GTE
bf [6]

:[3]
push.v self.susie
conv.v.i
pushenv [5]

:[4]
pushi.e -10
pop.v.i self.vspeed
pushi.e 190
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[5]
popenv [4]

:[6]
push.v self.battlemoder
pushi.e 1
cmp.i.v EQ
bf [13]

:[7]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [10]

:[8]
push.v 326.y
pushi.e 480
cmp.i.v LTE
bf [10]

:[9]
pushi.e 1
pop.v.i 326.battlemode

:[10]
pushbltn.v self.room
pushi.e 94
cmp.i.v EQ
bf [13]

:[11]
push.v 326.y
pushi.e 640
cmp.i.v LTE
bf [13]

:[12]
pushi.e 1
pop.v.i 326.battlemode

:[13]
push.v self.gen
pushi.e 1
cmp.i.v EQ
bf [18]

:[14]
pushi.e 174
pushenv [17]

:[15]
push.v self.x
pushi.e -100
cmp.i.v LTE
bf [17]

:[16]
push.v self.x
pushi.e 740
add.i.v
pop.v.v self.x

:[17]
popenv [15]

:[18]
push.v self.gen
pushi.e 2
cmp.i.v EQ
bf [end]

:[19]
push.v 326.y
pushi.e 60
cmp.i.v LTE
bt [21]

:[20]
push.v 326.y
pushi.e 720
cmp.i.v GTE
b [22]

:[21]
push.e 1

:[22]
bf [end]

:[23]
pushi.e 0
pop.v.i self.battlemode
pushi.e 182
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]

:[end]