.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i global.interact

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [8]

:[5]
pushi.e 0
pop.v.i self.sndplay
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_is_playing(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 1
pop.v.i self.sndplay
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_pause(argc=1)
popz.v

:[7]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 200
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [14]

:[9]
pushi.e 5
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]
pushi.e 6
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 7
pop.v.i self.con

:[14]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [end]

:[15]
pushi.e 28
conv.i.v
call.i snd_stop(argc=1)
popz.v
push.v self.sndplay
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_resume(argc=1)
popz.v

:[17]
push.s "obj_darkphone_event_slash_Step_0_gml_42_0"@9965
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 5
pop.v.i self.con
pushi.e 6
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]