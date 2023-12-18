.localvar 0 arguments

:[0]
push.v self.fightcon
pushi.e 1
cmp.i.v EQ
bf [21]

:[1]
pushi.e -5
pushi.e 9
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_pause(argc=1)
popz.v

:[3]
push.v self.counttimer
pushi.e 1
add.i.v
pop.v.v self.counttimer
push.v self.counttimer
pushi.e 10
cmp.i.v LT
bf [9]

:[4]
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [9]

:[6]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
pushenv [8]

:[7]
call.i scr_afterimage(argc=0)
pop.v.v self.af
push.d 0.5
push.v self.af
conv.v.i
pop.v.d [stacktop]self.image_alpha

:[8]
popenv [7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[9]
push.v self.counttimer
pushi.e 10
cmp.i.v GTE
bf [21]

:[10]
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.wp
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.v self.wp
call.i snd_volume(argc=3)
popz.v
pushi.e 63
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.wp2
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
push.v self.wp2
call.i snd_volume(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [20]

:[12]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 454
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[14]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [17]

:[15]
pushi.e 474
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charweapon
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 476
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[17]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
pushi.e 489
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[19]
push.d 0.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[20]
pushi.e 2
pop.v.i self.fightcon
pushi.e 0
pop.v.i self.counttimer

:[21]
push.v self.fightcon
pushi.e 2
cmp.i.v EQ
bf [end]

:[22]
push.v self.counttimer
pushi.e 1
add.i.v
pop.v.v self.counttimer
push.v self.counttimer
pushi.e 15
cmp.i.v GTE
bf [end]

:[23]
pushi.e 0
pop.v.i self.counttimer
pushi.e 3
pop.v.i self.fightcon
pushi.e 0
pop.v.i self.i

:[24]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [28]

:[25]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [24]

:[28]
pushi.e 187
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]