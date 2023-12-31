.localvar 0 arguments

:[0]
push.i 100000
push.v self.y
pushi.e 10
mul.i.v
push.v self.sprite_height
pushi.e 10
mul.i.v
add.v.v
sub.v.i
pop.v.v self.depth

:[end]