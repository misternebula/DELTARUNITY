.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 49
cmp.i.v EQ
bt [2]

:[1]
pushbltn.v self.room
pushi.e 50
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 0
pushi.e -5
pushi.e 31
pop.v.i [array]global.flag

:[5]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_is_playing(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.s "bird.ogg"@6516
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

:[7]
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.visible
pushbltn.v self.room
pushi.e 49
cmp.i.v NEQ
bf [end]

:[8]
pushi.e 0
pop.v.i self.visible
call.i instance_destroy(argc=0)
popz.v

:[end]