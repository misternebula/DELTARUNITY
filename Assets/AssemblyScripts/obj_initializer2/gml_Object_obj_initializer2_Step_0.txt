.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
call.i audio_group_is_loaded(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 1
pop.v.i self.roomchoice
pushi.e 0
pop.v.i self.menu_go
push.s "filech1_0"@3503
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 1
pop.v.i self.menu_go

:[3]
push.s "filech1_1"@3505
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 1
pop.v.i self.menu_go

:[5]
push.s "filech1_2"@3507
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 1
pop.v.i self.menu_go

:[7]
push.s "filech1_3"@9726
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [9]

:[8]
pushi.e 1
pop.v.i self.menu_go

:[9]
push.s "dr.ini"@2744
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e 1
pop.v.i self.menu_go

:[11]
push.s "filech1_3"@9726
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [13]

:[12]
pushi.e 2
pop.v.i self.menu_go

:[13]
push.s "filech1_4"@9727
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [15]

:[14]
pushi.e 2
pop.v.i self.menu_go

:[15]
push.s "filech1_5"@9728
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [17]

:[16]
pushi.e 2
pop.v.i self.menu_go

:[17]
push.v self.menu_go
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 139
pop.v.i self.roomchoice

:[19]
push.v self.menu_go
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_initializer2_slash_Step_0_gml_22_0"@10054
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_windowcaption(argc=1)
popz.v
pushi.e 1
pushi.e -5
pushi.e 10
pop.v.i [array]global.tempflag
pushi.e 132
pop.v.i self.roomchoice
pushi.e 0
pop.v.i global.plot

:[21]
push.v self.roomchoice
call.i room_goto(argc=1)
popz.v

:[end]