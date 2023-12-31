.localvar 0 arguments

:[0]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.failtimer
pushi.e 0
pop.v.i self.image_index
pushi.e 240
pop.v.i self.sprite_index
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]