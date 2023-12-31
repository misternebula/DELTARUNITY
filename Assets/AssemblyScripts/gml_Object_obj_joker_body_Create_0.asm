.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.ji
pushi.e 6
pop.v.i self.maxchain
pushi.e 0
pop.v.i self.maxdist
pushi.e 2
pop.v.i self.size
pushi.e 0
pop.v.i self.floatsiner
pushi.e 1
pop.v.i self.floatsinerspeed
pushi.e 0
pop.v.i self.debug
pushi.e 0
pop.v.i self.sndcon
pushi.e 0
pop.v.i self.condition
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.scythecon
pushi.e 0
pop.v.i self.spintimer
pushi.e 2
pop.v.i self.s_xscale
pushi.e 2
pop.v.i self.s_yscale
pushi.e 577
pop.v.i self.s_sprite
pushi.e 0
pop.v.i self.s_y
pushi.e 0
pop.v.i self.s_vspeed
pushi.e 0
pop.v.i self.xsiner
pushi.e 0
pop.v.i self.ysiner
pushi.e 0
pop.v.i self.rotsiner
push.d 0.334
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.dance_side
pushi.e 0
pop.v.i self.fliptimer
pushi.e 0
pop.v.i self.dancelv
pushi.e 0
pop.v.i self.dancesiner
pushi.e 0
pop.v.i self.dancemade
pushi.e 0
pop.v.i self.fade
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [end]

:[2]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.shadowx
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.shadowy
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.sfactor
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]