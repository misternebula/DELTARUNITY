.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.facing
pushi.e 114
conv.i.v
pushi.e 63
conv.i.v
pushi.e 126
conv.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.obj
pushi.e 113
conv.i.v
pushi.e 116
conv.i.v
pushi.e 107
conv.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.obj
pushi.e 113
conv.i.v
pushi.e 116
conv.i.v
pushi.e 158
conv.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.obj
pushi.e 113
conv.i.v
pushi.e 116
conv.i.v
pushi.e 208
conv.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.obj
pushi.e 113
conv.i.v
pushi.e 145
conv.i.v
pushi.e 107
conv.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.obj
pushi.e 113
conv.i.v
pushi.e 145
conv.i.v
pushi.e 158
conv.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 5
pop.v.v [array]self.obj
pushi.e 113
conv.i.v
pushi.e 145
conv.i.v
pushi.e 208
conv.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 6
pop.v.v [array]self.obj
pushi.e 112
conv.i.v
pushi.e 179
conv.i.v
pushi.e 49
conv.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 7
pop.v.v [array]self.obj
pushi.e 111
conv.i.v
pushi.e 183
conv.i.v
pushi.e 261
conv.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 8
pop.v.v [array]self.obj
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [5]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.obj
conv.v.i
pushenv [4]

:[3]
call.i scr_depth(argc=0)
popz.v

:[4]
popenv [3]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[5]
pushi.e 105
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.sunset
push.v self.sunset
conv.v.i
pushenv [7]

:[6]
push.d 0.4
pop.v.d self.image_alpha
pushi.e 2000
pop.v.i self.depth

:[7]
popenv [6]

:[end]