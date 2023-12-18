.localvar 0 arguments

:[0]
pushi.e 99
pop.v.i self.con
pushi.e 0
pop.v.i self.pcon
pushi.e 0
pop.v.i self.ptimer
pushi.e 217
conv.i.v
pushi.e 440
conv.i.v
pushi.e 500
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.puzzle
push.v self.puzzle
conv.v.i
pushenv [2]

:[1]
pushi.e 3
pop.v.i self.max_suit
pushi.e 0
pop.v.i self.drawclue
pushi.e 9
pushi.e -1
pushi.e 0
pop.v.i [array]self.sol
pushi.e 9
pushi.e -1
pushi.e 1
pop.v.i [array]self.sol
pushi.e 9
pushi.e -1
pushi.e 2
pop.v.i [array]self.sol
pushi.e 9
pushi.e -1
pushi.e 3
pop.v.i [array]self.sol

:[2]
popenv [1]
pushglb.v global.plot
pushi.e 75
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
pop.v.i self.con
b [4]

:[4]
pushi.e 244
conv.i.v
pushi.e 280
conv.i.v
pushi.e 520
conv.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.spiken
pushi.e 244
conv.i.v
pushi.e 280
conv.i.v
pushi.e 560
conv.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.spiken
pushi.e -1
pushi.e 0
push.v [array]self.spiken
conv.v.i
pushenv [6]

:[5]
push.i 970000
pop.v.i self.depth

:[6]
popenv [5]
pushi.e -1
pushi.e 1
push.v [array]self.spiken
conv.v.i
pushenv [8]

:[7]
push.i 970000
pop.v.i self.depth

:[8]
popenv [7]
pushi.e -5
pushi.e 234
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [12]

:[9]
pushi.e 331
conv.i.v
pushi.e 280
conv.i.v
pushi.e 520
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blockn
push.v self.blockn
conv.v.i
pushenv [11]

:[10]
pushi.e 2
pop.v.i self.image_xscale

:[11]
popenv [10]
b [17]

:[12]
pushi.e -1
pushi.e 0
push.v [array]self.spiken
conv.v.i
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.image_index

:[14]
popenv [13]
pushi.e -1
pushi.e 1
push.v [array]self.spiken
conv.v.i
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.image_index

:[16]
popenv [15]

:[17]
pushi.e -5
pushi.e 235
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[18]
pushi.e 331
conv.i.v
pushi.e 400
conv.i.v
pushi.e 1040
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blocke
push.v self.blocke
conv.v.i
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
push.v self.blocke
conv.v.i
pushenv [22]

:[21]
pushi.e 2
pop.v.i self.image_yscale

:[22]
popenv [21]
b [end]

:[end]