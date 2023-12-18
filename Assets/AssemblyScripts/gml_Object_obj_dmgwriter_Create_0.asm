.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.spec
pushi.e 0
pop.v.i self.delaytimer
pushi.e 2
pop.v.i self.delay
pushi.e 0
pop.v.i self.active
pushi.e 600
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.damage
pushi.e 0
pop.v.i self.bounces
pushi.e -1
pop.v.i self.type
push.d 0.2
pop.v.d self.stretch
pushi.e 1
pop.v.i self.stretchgo
push.d 0.6
conv.d.v
push.i 16777215
conv.i.v
push.i 8388736
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.lightf
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 16776960
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.lightb
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 65280
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.lightg
pushi.e 0
pop.v.i self.kill
pushi.e 0
pop.v.i self.killtimer
pushi.e 0
pop.v.i self.killactive
pushi.e 304
pushenv [3]

:[1]
push.v self.type
pushi.e 3
cmp.i.v NEQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.killtimer

:[3]
popenv [1]
pushi.e 0
pop.v.i self.specialmessage

:[end]