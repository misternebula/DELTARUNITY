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
pushi.e 635
pop.v.i self.idlesprite
pushi.e 636
pop.v.i self.hurtsprite
pushi.e 635
pop.v.i self.sparedsprite
pushi.e 0
pop.v.i self.kturn
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
pushi.e 1
pop.v.i self.tempattack
pushi.e 0
pop.v.i self.hurtbuffer
pushglb.v global.invc
pop.v.v self.reminvc
pushi.e 0
pop.v.i self.susinit
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.remxx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.remyy
pushi.e 0
pop.v.i self.chain_dragging
pushi.e 0
pop.v.i self.wall_bouncing
pushi.e 0
pop.v.i self.talk_all_message

:[end]