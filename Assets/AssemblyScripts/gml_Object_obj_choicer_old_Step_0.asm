.localvar 0 arguments

:[0]
call.i button1_p(argc=0)
conv.v.b
bf [2]

:[1]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
call.i left_p(argc=0)
conv.v.b
bf [9]

:[3]
push.v self.mychoice
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.mychoice
b [6]

:[5]
pushi.e 0
pop.v.i self.mychoice

:[6]
push.v self.mychoice
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 185
push.v self.dar
mul.v.i
push.v self.add
add.v.v
pop.v.v self.x
b [9]

:[8]
pushi.e 89
push.v self.dar
mul.v.i
push.v self.add
add.v.v
pop.v.v self.x

:[9]
call.i right_p(argc=0)
conv.v.b
bf [end]

:[10]
push.v self.mychoice
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.mychoice
b [13]

:[12]
pushi.e 0
pop.v.i self.mychoice

:[13]
push.v self.mychoice
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 185
push.v self.dar
mul.v.i
push.v self.add
add.v.v
pop.v.v self.x
b [end]

:[15]
pushi.e 89
push.v self.dar
mul.v.i
push.v self.add
add.v.v
pop.v.v self.x

:[end]