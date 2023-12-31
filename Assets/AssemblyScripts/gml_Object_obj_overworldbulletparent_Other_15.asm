.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 95
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 95
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.target
pushi.e 3
cmp.i.v NEQ
bf [3]

:[2]
call.i scr_damage(argc=0)
popz.v

:[3]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [5]

:[4]
call.i scr_damage_all_overworld(argc=0)
popz.v

:[5]
pushi.e 166
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.charcon

:[7]
popenv [6]
pushi.e 1
pop.v.i global.interact
pushi.e 326
pushenv [9]

:[8]
pushi.e 7
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[9]
popenv [8]

:[end]