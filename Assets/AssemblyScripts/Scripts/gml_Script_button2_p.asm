.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 5
push.v [array]global.input_pressed
conv.v.b
bf [2]

:[1]
pushi.e 1
conv.i.v
ret.v

:[2]
pushi.e -5
pushi.e 8
push.v [array]global.input_pressed
conv.v.b
bf [end]

:[3]
pushi.e 1
conv.i.v
ret.v

:[end]