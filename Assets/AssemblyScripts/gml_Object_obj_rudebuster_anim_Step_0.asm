.localvar 0 arguments

:[0]
push.v self.t
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.image_index
push.v self.t
pushi.e 28
cmp.i.v GTE
bf [4]

:[1]
pushi.e 203
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.visible

:[3]
popenv [2]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.target
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[5]
push.v self.t
pushi.e 10
cmp.i.v EQ
bf [8]

:[6]
pushi.e 54
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 296
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blast
push.v self.caster
push.v self.blast
conv.v.i
pop.v.v [stacktop]self.caster
push.v self.target
push.v self.blast
conv.v.i
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.blast
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.star
push.v self.blast
conv.v.i
pop.v.v [stacktop]self.star
push.v self.red
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
push.v self.blast
conv.v.i
pop.v.i [stacktop]self.red

:[8]
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t

:[end]