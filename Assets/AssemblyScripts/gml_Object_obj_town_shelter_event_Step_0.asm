.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.vol
pushi.e 0
pop.v.i self.vol2
push.v 326.y
pushi.e 420
cmp.i.v GTE
bf [2]

:[1]
pushi.e 1
push.v 326.y
pushi.e 620
sub.i.v
pushi.e 400
conv.i.d
div.d.v
sub.v.i
pop.v.v self.vol
pushi.e 0
push.v 326.y
pushi.e 1100
sub.i.v
pushi.e 300
conv.i.d
div.d.v
add.v.i
pop.v.v self.vol2

:[2]
push.v self.vol
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
pop.v.i self.vol

:[4]
push.v self.vol2
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
pop.v.i self.vol2

:[6]
pushi.e 0
conv.i.v
push.v self.vol
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_volume(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v self.vol2
push.v self.dk
call.i snd_volume(argc=3)
popz.v

:[end]