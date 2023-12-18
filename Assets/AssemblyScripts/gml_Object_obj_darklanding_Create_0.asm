.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 16
cmp.i.v LT
bf [4]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 326
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.fun
pushi.e 828
pop.v.i self.sprite_index

:[3]
popenv [2]
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [end]

:[4]
pushi.e 99
pop.v.i self.con
pushi.e 3
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [end]

:[5]
pushi.e 80
conv.i.v
pushi.e 240
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.rd
pushi.e 8
push.v self.rd
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.rd
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[end]