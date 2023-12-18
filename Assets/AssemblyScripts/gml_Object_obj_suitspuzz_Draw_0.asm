.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.vic
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.max_suit
cmp.v.v LT
bf [8]

:[2]
push.v self.drawclue
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
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
push.v self.x
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sol
pushi.e 1
sub.i.v
pushi.e 232
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
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
pushi.e 40
add.i.v
push.v self.x
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e 4
conv.i.v
pushi.e 234
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.suit
pushi.e 0
cmp.i.v GT
bf [7]

:[5]
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
pushi.e 40
add.i.v
push.v self.x
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.suit
pushi.e 1
sub.i.v
pushi.e 234
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.suit
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sol
cmp.v.v EQ
bf [7]

:[6]
push.v self.vic
pushi.e 1
add.i.v
pop.v.v self.vic

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[8]
push.v self.vic
push.v self.max_suit
cmp.v.v EQ
bf [end]

:[9]
pushi.e 1
pop.v.i self.won

:[end]