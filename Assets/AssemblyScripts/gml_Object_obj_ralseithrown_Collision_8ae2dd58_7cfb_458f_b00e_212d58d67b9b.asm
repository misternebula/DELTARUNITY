.localvar 0 arguments

:[0]
push.v self.collided
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v other.good
pushi.e 1
cmp.i.v EQ
bf [9]

:[2]
pushi.e 253
pushenv [4]

:[3]
push.v self.crown
pushi.e 35
add.i.v
pop.v.v self.crown

:[4]
popenv [3]
push.s "obj_ralseithrown_slash_Collision_154b9139_8c0d_44d5_b8de_0f03c1a8096c_gml_6_0"@8287
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 74
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v other.id
conv.v.i
pushenv [8]

:[5]
push.v self.offing
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.con
pushi.e -8
pop.v.i self.vspeed
b [8]

:[7]
pushi.e 5
pop.v.i self.con

:[8]
popenv [5]
b [14]

:[9]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v other.id
conv.v.i
pushenv [11]

:[10]
pushi.e 7
pop.v.i self.con

:[11]
popenv [10]
pushi.e 253
pushenv [13]

:[12]
push.v self.crown
pushi.e 20
add.i.v
pop.v.v self.crown

:[13]
popenv [12]
push.s "obj_ralseithrown_slash_Collision_154b9139_8c0d_44d5_b8de_0f03c1a8096c_gml_29_0"@8289
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -12
pop.v.i self.hspeed
pushi.e -4
pop.v.i self.vspeed
push.d 0.5
pop.v.d self.gravity
pushi.e 2
pop.v.i self.con

:[14]
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.collided

:[end]