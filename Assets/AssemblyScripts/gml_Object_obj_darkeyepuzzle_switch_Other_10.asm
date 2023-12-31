.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.done
push.v self.x
pushi.e 600
cmp.i.v LT
bf [9]

:[1]
pushi.e 224
pushenv [8]

:[2]
pushi.e -1
pushi.e 0
push.v [array]self.eye
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.eye
b [5]

:[4]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.eye

:[5]
pushi.e -1
pushi.e 2
push.v [array]self.eye
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.eye
b [8]

:[7]
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.eye

:[8]
popenv [2]
pushi.e 1
pop.v.i self.done

:[9]
push.v self.x
pushi.e 700
cmp.i.v LT
bf [11]

:[10]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [21]

:[13]
pushi.e 224
pushenv [20]

:[14]
pushi.e -1
pushi.e 0
push.v [array]self.eye
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.eye
b [17]

:[16]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.eye

:[17]
pushi.e -1
pushi.e 1
push.v [array]self.eye
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.eye
b [20]

:[19]
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.eye

:[20]
popenv [14]
pushi.e 1
pop.v.i self.done

:[21]
push.v self.x
pushi.e 800
cmp.i.v LT
bf [23]

:[22]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [30]

:[25]
pushi.e 224
pushenv [29]

:[26]
pushi.e -1
pushi.e 2
push.v [array]self.eye
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.eye
b [29]

:[28]
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.eye

:[29]
popenv [26]
pushi.e 1
pop.v.i self.done

:[30]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 326
pushenv [32]

:[31]
pushi.e 3
pop.v.i self.onebuffer

:[32]
popenv [31]

:[end]