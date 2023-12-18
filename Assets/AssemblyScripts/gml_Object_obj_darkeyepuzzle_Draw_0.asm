.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.total
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
pushi.e 16
add.i.v
push.v self.i
pushi.e 110
mul.i.v
add.v.v
push.v self.i
pushi.e 818
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[5]
push.v self.y
push.v self.x
push.v self.i
pushi.e 110
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.eye
pushi.e 819
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.total
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.eye
add.v.v
pop.v.v self.total
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[end]