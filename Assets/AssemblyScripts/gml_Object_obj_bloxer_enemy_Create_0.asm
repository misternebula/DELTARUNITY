.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.bikeflip
pushi.e 0
pop.v.i self.becomeflash
pushi.e 0
pop.v.i self.turnt
pushi.e 0
pop.v.i self.turns
pushi.e 0
pop.v.i self.talktimer
pushi.e 90
pop.v.i self.talkmax
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.fsiner
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.hurt
pushi.e 0
pop.v.i self.hurttimer
pushi.e 0
pop.v.i self.hurtshake
pushi.e 0
pop.v.i self.shakex
push.i 343249823
pop.v.i self.mywriter
pushi.e 0
pop.v.i self.acting
pushi.e 0
pop.v.i self.actcon
pushi.e 0
pop.v.i self.acttimer
pushi.e 0
pop.v.i self.mercymod
pushi.e 9999
pop.v.i self.maxmercy
pushi.e 0
pop.v.i self.warned
pushi.e 0
pop.v.i self.compliment
pushi.e 0
pop.v.i self.tired
pushi.e 0
pop.v.i self.fixed
pushi.e 0
pop.v.i self.attacks
pushi.e 0
pop.v.i self.dodgetimer
pushi.e 0
pop.v.i self.candodge
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.battlecancel
pushi.e 0
pop.v.i self.nexttry
pushi.e 3
pop.v.i self.mytarget
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 594
pop.v.i self.idlesprite
pushi.e 594
pop.v.i self.hurtsprite
pushi.e 597
pop.v.i self.sparedsprite
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rr
pushi.e 1
pop.v.i self.headpart
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.part
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 3
pop.v.i self.headpart
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.part
pushi.e 3
pushi.e -1
pushi.e 2
pop.v.i [array]self.part
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.part

:[2]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 3
pop.v.i self.headpart
pushi.e 3
pushi.e -1
pushi.e 1
pop.v.i [array]self.part
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.part
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.part

:[4]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.headpart
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.part
pushi.e 3
pushi.e -1
pushi.e 2
pop.v.i [array]self.part
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.part

:[6]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2
pop.v.i self.headpart
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.part
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.part
pushi.e 3
pushi.e -1
pushi.e 3
pop.v.i [array]self.part

:[8]
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.part
pushi.e 5
pop.v.i self.maxpart
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.floatsin
pushi.e 28
pushi.e -1
pushi.e 0
pop.v.i [array]self.party
pushi.e 54
pushi.e -1
pushi.e 1
pop.v.i [array]self.party
pushi.e 70
pushi.e -1
pushi.e 2
pop.v.i [array]self.party
pushi.e 0
pop.v.i self.floating
pushi.e 10
pop.v.i self.swaptime
pushi.e 0
pop.v.i self.bodyfade
pushi.e 1
pop.v.i self.bodyalpha
pushi.e 0
pop.v.i self.swapx
pushi.e 0
pop.v.i self.sinmomentum
push.d 4.5
pushi.e -1
pushi.e 0
pop.v.d [array]self.custom
pushi.e 3
pushi.e -1
pushi.e 1
pop.v.i [array]self.custom
push.d 1.5
pushi.e -1
pushi.e 2
pop.v.d [array]self.custom
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.select
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.select
pushi.e -1
pushi.e -1
pushi.e 2
pop.v.i [array]self.select
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.selectpart
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.selectpart
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.selectpart
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.partyb
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.partyb
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.partyb
pushi.e 0
pop.v.i self.selecty
pushi.e 0
pop.v.i self.selected
pushi.e 0
pop.v.i self.selecttotal
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.selectx
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.movex
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.movex
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.movex
pushi.e 0
pop.v.i self.threebuffer
pushi.e 0
pop.v.i self.finishtimer
pushi.e 0
pop.v.i self.hurk

:[end]