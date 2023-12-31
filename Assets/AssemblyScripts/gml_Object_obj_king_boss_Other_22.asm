.localvar 0 arguments

:[0]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 10
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
add.v.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstery
call.i scr_monstersetup(argc=0)
popz.v

:[end]