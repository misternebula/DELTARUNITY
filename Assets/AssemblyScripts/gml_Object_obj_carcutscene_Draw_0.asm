.localvar 0 arguments

:[0]
push.v self.myd
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.myd
conv.v.i
push.v [stacktop]self.depth
pushi.e 1000
add.i.v
pop.v.v self.depth
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.15
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.prevalpha
push.v self.myd
conv.v.i
push.v [stacktop]self.writingx
pushi.e -1
pushi.e 0
pop.v.v [array]self.prevwx
push.v self.myd
conv.v.i
push.v [stacktop]self.writingy
pushi.e -1
pushi.e 0
pop.v.v [array]self.prevwy
push.v self.myd
conv.v.i
push.v [stacktop]self.stringmax
pushi.e -1
pushi.e 0
pop.v.v [array]self.prevstringmax
push.v self.myd
conv.v.i
push.v [stacktop]self.hspace
pushi.e -1
pushi.e 0
pop.v.v [array]self.prevhspace
push.v self.myd
conv.v.i
push.v [stacktop]self.linecount
pushi.e -1
pushi.e 0
pop.v.v [array]self.prevlinecount
push.v self.myd
conv.v.i
push.v [stacktop]self.vspace
pushi.e -1
pushi.e 0
pop.v.v [array]self.prevvspace
pushi.e 6
pop.v.i self.i

:[2]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [6]

:[3]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.prevalpha
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevalpha
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.prevwx
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevwx
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.prevwy
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevwy
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.prevstringmax
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevstringmax
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.prevhspace
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevhspace
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.prevlinecount
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevlinecount
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.prevvspace
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevvspace
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.prevalpha
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.prevwy
pushi.e -1
pushi.e 0
push.v [array]self.prevlinecount
pushi.e 1
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.prevvspace
mul.v.v
add.v.v
pushi.e 15
add.i.v
push.v self.i
add.v.v
pushi.e -1
pushi.e 0
push.v [array]self.prevwx
pushi.e -1
pushi.e 0
push.v [array]self.prevstringmax
pushi.e -1
pushi.e 0
push.v [array]self.prevhspace
mul.v.v
add.v.v
pushi.e 10
add.i.v
push.v self.i
add.v.v
pushi.e -1
pushi.e 0
push.v [array]self.prevwy
pushi.e 10
sub.i.v
push.v self.i
sub.v.v
pushi.e -1
pushi.e 0
push.v [array]self.prevwx
pushi.e 10
sub.i.v
push.v self.i
sub.v.v
call.i draw_rectangle(argc=5)
popz.v

:[5]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [2]

:[6]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]