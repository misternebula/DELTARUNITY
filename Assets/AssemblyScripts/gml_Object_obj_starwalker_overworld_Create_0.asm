.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.targetx
pushi.e 0
pop.v.i self.wing_index
pushi.e 0
pop.v.i self.wingtimer
pushi.e 0
pop.v.i self.shot
pushi.e 2
pop.v.i self.xmake
pushi.e 0
pop.v.i self.attacktimer
pushi.e -1
pop.v.i self.attackcon
pushi.e 4
pop.v.i self.shakefactor
pushi.e 1
pop.v.i self.side
pushi.e 0
pop.v.i self.loc_check
pushi.e 0
pop.v.i self.mazemode
pushi.e 0
pop.v.i self.beatcon
pushi.e 0
pop.v.i self.introcon
pushi.e 0
pop.v.i self.introtimer
push.v self.y
pushi.e 160
add.i.v
pop.v.v self.shadowy
push.v self.sprite_index
push.v self.shadowy
push.v self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.shadow
push.v self.shadow
conv.v.i
pushenv [2]

:[1]
pushi.e 616
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.image_blend
push.i 600000
pop.v.i self.depth

:[2]
popenv [1]
push.v self.shadow
conv.v.i
push.v [stacktop]self.depth
pop.v.v self.depth
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [end]

:[4]
push.v 326.x
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.char_xcheck
push.v 326.y
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.char_ycheck
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[end]