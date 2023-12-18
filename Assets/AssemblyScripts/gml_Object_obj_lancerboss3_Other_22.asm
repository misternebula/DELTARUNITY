.localvar 0 arguments

:[0]
push.v self.x
pushi.e 30
sub.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monsterx
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 30
sub.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstery
call.i scr_monstersetup(argc=0)
popz.v

:[end]