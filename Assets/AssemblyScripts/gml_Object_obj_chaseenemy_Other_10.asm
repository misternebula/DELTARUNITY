.localvar 0 arguments

:[0]
push.v self.touchflag
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pushi.e -5
push.v self.touchflag
conv.v.i
pop.v.i [array]global.flag

:[2]
pushi.e 163
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.newme
push.v self.touchsprite
push.v self.newme
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.touchsprite
push.v self.newme
conv.v.i
pop.v.v [stacktop]self.touchsprite
push.v self.sprite_index
push.v self.newme
conv.v.i
pop.v.v [stacktop]self.slidesprite
push.v self.depth
push.v self.newme
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.eraser
push.v self.newme
conv.v.i
pop.v.v [stacktop]self.eraser
push.v self.newme
conv.v.i
pushenv [4]

:[3]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [3]
push.v self.myencounter
pop.v.v global.encounterno
call.i instance_destroy(argc=0)
popz.v

:[end]