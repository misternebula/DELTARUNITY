.localvar 0 arguments

:[0]
push.v self.canchoose
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.choiced
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i self.choiced
push.v self.mychoice
pop.v.v global.choice
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]