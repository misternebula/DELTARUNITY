.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e -1
cmp.i.v NEQ
bf [10]

:[1]
call.i button1_p(argc=0)
conv.v.b
bf [3]

:[2]
push.v self.talktimer
pushbltn.v self.argument0
cmp.v.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v self.talkmax
pop.v.v self.talktimer

:[6]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [10]

:[7]
pushi.e 6
pushenv [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]
pushi.e 2
pop.v.i global.mnfight

:[10]
pushbltn.v self.argument0
pushi.e -1
cmp.i.v EQ
bf [end]

:[11]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[12]
pushi.e 2
pop.v.i global.mnfight

:[end]