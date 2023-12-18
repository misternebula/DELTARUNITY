.localvar 0 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.heartwagon
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.wagon
conv.v.i
push.v [stacktop]self.y
pushi.e 1
add.i.v
push.v self.wagon
conv.v.i
push.v [stacktop]self.x
pushi.e 5
add.i.v
pushi.e 4
conv.i.v
pushi.e 896
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.wagon
conv.v.i
push.v [stacktop]self.y
pushi.e 1
add.i.v
push.v self.hearty
add.v.v
push.v self.cageamt
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
push.v self.cageamt
pushi.e 2
mul.i.v
call.i random(argc=1)
sub.v.v
push.v self.wagon
conv.v.i
push.v [stacktop]self.x
pushi.e 5
add.i.v
push.v self.heartx
add.v.v
push.v self.cageamt
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
push.v self.cageamt
pushi.e 2
mul.i.v
call.i random(argc=1)
sub.v.v
pushi.e 3
conv.i.v
pushi.e 896
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.wagon
conv.v.i
push.v [stacktop]self.y
pushi.e 1
add.i.v
push.v self.cageamt
call.i random(argc=1)
add.v.v
push.v self.cageamt
call.i random(argc=1)
sub.v.v
push.v self.wagon
conv.v.i
push.v [stacktop]self.x
pushi.e 5
add.i.v
push.v self.cageamt
call.i random(argc=1)
add.v.v
push.v self.cageamt
call.i random(argc=1)
sub.v.v
pushi.e 2
conv.i.v
pushi.e 896
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.wagon
conv.v.i
push.v [stacktop]self.y
pushi.e 1
add.i.v
push.v self.wagon
conv.v.i
push.v [stacktop]self.x
pushi.e 5
add.i.v
pushi.e 1
conv.i.v
pushi.e 896
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]