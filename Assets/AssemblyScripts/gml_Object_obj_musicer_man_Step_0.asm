.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 165
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 1
pushi.e -5
pushi.e 32
pop.v.i [array]global.flag

:[4]
push.v self.timer
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
call.i snd_free_all(argc=0)
popz.v

:[6]
push.v self.timer
pushi.e 3
cmp.i.v EQ
bf [9]

:[7]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_is_playing(argc=1)
conv.v.b
not.b
bf [9]

:[8]
push.s "man.ogg"@6515
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong

:[9]
push.v self.timer
pushi.e 4
cmp.i.v EQ
bf [end]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[end]