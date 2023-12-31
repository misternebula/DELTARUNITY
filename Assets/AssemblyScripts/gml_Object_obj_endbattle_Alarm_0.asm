.localvar 0 arguments

:[0]
pushi.e 326
pushenv [4]

:[1]
pushglb.v global.specialbattle
pushi.e 3
cmp.i.v NEQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.cutscene

:[3]
pushi.e 1
pop.v.i self.visible

:[4]
popenv [1]
pushi.e 165
pushenv [6]

:[5]
pushi.e 1
pop.v.i self.visible

:[6]
popenv [5]
pushglb.v global.specialbattle
pushi.e 0
cmp.i.v EQ
bt [8]

:[7]
pushglb.v global.specialbattle
pushi.e 3
cmp.i.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [15]

:[10]
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [15]

:[12]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[15]
pushglb.v global.specialbattle
pushi.e 0
cmp.i.v EQ
bt [17]

:[16]
pushglb.v global.specialbattle
pushi.e 2
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
pushi.e 0
pop.v.i global.interact

:[20]
pushi.e -5
pushi.e 9
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e -5
pushi.e 0
push.v [array]global.batmusic
call.i snd_free(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_volume(argc=3)
popz.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_resume(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_volume(argc=3)
popz.v

:[22]
call.i instance_destroy(argc=0)
popz.v

:[end]