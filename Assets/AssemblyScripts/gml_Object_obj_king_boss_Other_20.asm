.localvar 0 arguments

:[0]
call.i snd_free_all(argc=0)
popz.v
pushi.e 187
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.skipvictory

:[2]
popenv [1]
pushi.e 156
pushenv [6]

:[3]
push.v self.king
conv.v.i
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.visible

:[5]
popenv [4]

:[6]
popenv [3]
pushi.e -5
pushi.e 247
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [12]

:[7]
pushi.e 156
pushenv [11]

:[8]
push.v self.king
conv.v.i
pushenv [10]

:[9]
pushi.e 636
pop.v.i self.sprite_index

:[10]
popenv [9]

:[11]
popenv [8]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[end]