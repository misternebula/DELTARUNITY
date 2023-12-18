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
pop.v.i self.hurtamt
pushi.e 0
pop.v.i self.hurttimer
pushi.e 0
pop.v.i self.hurtshake
push.i 343249823
pop.v.i self.mywriter
pushi.e 0
pop.v.i self.acting
pushi.e 0
pop.v.i self.actcon
pushi.e 0
pop.v.i self.acttimer
pushi.e -9999
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
pop.v.i self.pirouette
pushi.e 0
pop.v.i self.pirouettecounter
pushi.e 1
pop.v.i self.pfactor
pushi.e 0
pop.v.i self.hypnosis
pushi.e 0
pop.v.i self.hypnosiscounter
pushi.e 0
pop.v.i self.chaosdance
pushglb.v global.invc
pop.v.v self.reminvc
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [3]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.maxhp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remmaxhp
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
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
pushi.e 580
pop.v.i self.idlesprite
pushi.e 580
pop.v.i self.hurtsprite
pushi.e 580
pop.v.i self.sparedsprite
pushi.e 263
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.body
pushi.e 0
pop.v.i self.laughnoise
pushi.e 0
pop.v.i self.beepnoise
pushi.e 0
pop.v.i self.beepbuffer
pushi.e 0
pop.v.i self.burstnoise
pushi.e 0
pop.v.i self.jturn
pushi.e 0
pop.v.i self.jattack
pushi.e 1
pushi.e -5
pushi.e 4
pop.v.i [array]global.tempflag

:[end]