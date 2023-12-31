.localvar 0 arguments

:[0]
push.v self.sprite_width
pop.v.v self.w
push.v self.sprite_height
pop.v.v self.h
pushi.e 146
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.NOISE
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.factor
pushi.e 0
pop.v.i self.factor2
push.v self.h
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.factory
push.v self.h
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.mid
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
push.v self.w
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.x
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
push.v self.h
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
sub.i.v
pop.v.v self.y
push.v self.y
pop.v.v self.inity
pushi.e 0
pop.v.i self.PHASE
pushi.e 0
pop.v.i self.PHASETIMER
pushi.e 0
pop.v.i self.PHASEPLUS
pushi.e 1
pop.v.i self.AA
pushi.e 1
pop.v.i self.AB
pushi.e 1
pop.v.i self.ingame
pushglb.v global.plot
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.ingame

:[2]
pushi.e 0
pop.v.i self.skipped
pushi.e 0
pop.v.i self.skiptimer
pushi.e 15
pop.v.i self.room_speed

:[end]