.localvar 0 arguments

:[0]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [end]

:[1]
push.v self.damage
pop.v.v self.remdamage
push.v self.target
pop.v.v self.remtarget
pushi.e 140
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [3]

:[2]
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[3]
pushi.e 304
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.killactive

:[5]
popenv [4]
pushi.e 95
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 95
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.ti

:[6]
push.v self.ti
pushi.e 3
cmp.i.v LT
bf [18]

:[7]
pushi.e -1
pop.v.i global.inv
push.v self.remdamage
pop.v.v self.damage
push.v self.ti
pop.v.v self.target
push.v self.damage
pop.v.v self.tdamage
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [9]

:[8]
pushi.e 1
pop.v.i self.hurt
pushi.e 0
pop.v.i self.hurttimer

:[9]
popenv [8]
push.v self.tdamage
pop.v.v self.hpdiff
push.v self.hpdiff
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.hp
cmp.v.v GTE
bf [11]

:[10]
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 1
sub.i.v
pop.v.v self.hpdiff

:[11]
pushi.e 0
pop.v.i self.d_cancel
push.v self.hpdiff
pushi.e 1
cmp.i.v LTE
bf [13]

:[12]
pushi.e 1
pop.v.i self.d_cancel
pushi.e 0
pop.v.i self.hpdiff

:[13]
push.v self.d_cancel
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e -1
pop.v.i self.doomtype
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.char
conv.v.i
dup.i 1
push.v [array]global.hp
push.v self.hpdiff
sub.v.v
pop.i.v [array]global.hp
pushi.e 304
conv.i.v
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.myheight
add.v.v
pushi.e 24
sub.i.v
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.dmgwriter
push.v self.hpdiff
push.v self.dmgwriter
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.doomtype
push.v self.dmgwriter
conv.v.i
pop.v.v [stacktop]self.type

:[15]
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 1
cmp.i.v LT
bf [17]

:[16]
pushi.e 1
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]global.char
conv.v.i
pop.v.i [array]global.hp

:[17]
push.v self.ti
pushi.e 1
add.i.v
pop.v.v self.ti
b [6]

:[18]
pushi.e 1
pop.v.i self.gameover
pushi.e -5
pushi.e 0
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [20]

:[19]
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 1
cmp.i.v GT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 0
pop.v.i self.gameover

:[23]
pushi.e -5
pushi.e 1
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [25]

:[24]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 1
cmp.i.v GT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 0
pop.v.i self.gameover

:[28]
pushi.e -5
pushi.e 2
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [30]

:[29]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 1
cmp.i.v GT
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 0
pop.v.i self.gameover

:[33]
push.v self.gameover
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
call.i scr_gameover(argc=0)
popz.v

:[35]
push.v self.remtarget
pop.v.v self.target
pushglb.v global.invc
pushi.e 40
mul.i.v
pop.v.v global.inv

:[end]