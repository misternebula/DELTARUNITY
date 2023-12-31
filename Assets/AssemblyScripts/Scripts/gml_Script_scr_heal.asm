.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.abovemaxhp
pushi.e 0
pop.v.i self.belowzero
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.char
pop.v.v self.hltarget
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]global.hp
pop.v.v self._curhp
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
pushi.e 1
pop.v.i self.belowzero

:[2]
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]global.hp
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]global.maxhp
cmp.v.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.abovemaxhp

:[4]
push.v self.abovemaxhp
pushi.e 0
cmp.i.v EQ
bf [7]

:[5]
pushi.e -5
push.v self.hltarget
conv.v.i
dup.i 1
push.v [array]global.hp
pushbltn.v self.argument1
add.v.v
pop.i.v [array]global.hp
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]global.hp
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]global.maxhp
cmp.v.v GT
bf [7]

:[6]
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]global.maxhp
pushi.e -5
push.v self.hltarget
conv.v.i
pop.v.v [array]global.hp

:[7]
push.v self.belowzero
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v GTE
b [10]

:[9]
push.e 0

:[10]
bf [14]

:[11]
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]global.hp
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]global.maxhp
pushi.e 6
conv.i.d
div.d.v
call.i ceil(argc=1)
cmp.v.v LT
bf [13]

:[12]
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]global.maxhp
pushi.e 6
conv.i.d
div.d.v
call.i ceil(argc=1)
pushi.e -5
push.v self.hltarget
conv.v.i
pop.v.v [array]global.hp

:[13]
pushbltn.v self.argument0
call.i scr_revive(argc=1)
popz.v

:[14]
pushi.e 87
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 87
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]global.hp
push.v self._curhp
sub.v.v
ret.v

:[end]