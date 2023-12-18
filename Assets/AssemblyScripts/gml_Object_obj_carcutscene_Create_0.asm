.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.prevalpha
pushi.e -200
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.prevwx
pushi.e -200
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.prevwy
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.prevstringmax
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.prevhspace
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.prevlinecount
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.prevvspace
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.carcon
pushi.e 0
pop.v.i self.drawwave
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.dhaver
pushi.e 0
pop.v.i self.v
pushi.e 0
pop.v.i self.vx
pushi.e 0
pop.v.i self.vy
push.i 23827382
pop.v.i self.myd
pushglb.v global.plot
pushi.e 1
cmp.i.v GT
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
pushi.e 0
pop.v.i global.facing
pushi.e 87
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]
push.s "mus_introcar.ogg"@3956
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 1
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact
pushi.e 326
pop.v.i self.k
pushi.e 104
conv.i.v
pushi.e 240
conv.i.v
pushi.e 195
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.t
push.v self.t
conv.v.i
pushenv [9]

:[8]
push.i 400000
pop.v.i self.depth

:[9]
popenv [8]
pushi.e 91
conv.i.v
pushi.e 240
conv.i.v
pushi.e 131
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.c
push.v self.c
conv.v.i
pushenv [11]

:[10]
push.i 500000
pop.v.i self.depth

:[11]
popenv [10]

:[end]