.localvar 0 arguments

:[0]
push.v self.msgno
pushi.e 1
add.i.v
pop.v.v self.msgno
pushi.e 0
pop.v.i self.lineno
pushi.e 0
pop.v.i self.aster
pushi.e 0
pop.v.i self.halt
pushi.e 1
pop.v.i self.pos
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.autoaster
pushi.e -1
push.v self.msgno
conv.v.i
push.v [array]self.nstring
pop.v.v self.mystring
pushi.e 0
pop.v.i self.formatted
pushi.e 0
pop.v.i self.wxskip
pushi.e 0
pop.v.i self.sound_played
push.v self.rate
pushi.e 3
cmp.i.v LT
bf [end]

:[1]
pushi.e 0
pop.v.i self.firstnoise
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]