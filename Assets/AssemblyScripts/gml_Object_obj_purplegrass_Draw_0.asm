.localvar 0 arguments

:[0]
push.v self.index
push.d 0.2
add.d.v
pop.v.v self.index
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.length
cmp.v.v LT
bf [end]

:[2]
pushi.e 0
pop.v.i self.j

:[3]
push.v self.j
push.v self.height
cmp.v.v LT
bf [5]

:[4]
push.v self.y
pushi.e 40
push.v self.j
mul.v.i
add.v.v
push.v self.x
pushi.e 40
push.v self.i
mul.v.i
add.v.v
push.v self.index
push.v self.x
pushi.e 320
conv.i.d
div.d.v
add.v.v
push.v self.i
push.d 0.125
mul.d.v
add.v.v
push.v self.j
push.d 0.125
mul.d.v
add.v.v
push.v self.y
pushi.e 320
conv.i.d
div.d.v
add.v.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [3]

:[5]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]