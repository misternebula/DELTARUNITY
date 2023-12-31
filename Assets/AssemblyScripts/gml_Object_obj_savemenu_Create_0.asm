.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.cur_jewel
pushi.e 0
pop.v.i self.saved
pushi.e 0
pop.v.i self.coord
pushi.e 0
pop.v.i self.ini_ex
pushi.e 3
pop.v.i self.buffer
push.s "obj_savemenu_slash_Create_0_gml_7_0"@10034
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.name
pushi.e 1
pop.v.i self.level
pushi.e 1
pop.v.i self.love
pushi.e 0
pop.v.i self.time
pushi.e 0
pop.v.i self.roome
pushi.e 0
pop.v.i self.endme
pushbltn.v self.room
pop.v.v global.currentroom
pushi.e 1
pop.v.i global.interact
push.s "dr.ini"@2744
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.ini_ex
push.s "dr.ini"@2744
conv.s.v
call.i ini_open(argc=1)
pop.v.v self.iniread
push.s "Kris"@10040
conv.s.v
push.s "Name"@2747
conv.s.v
push.s "G"@2534
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_read_string(argc=3)
pop.v.v self.name
pushi.e 1
conv.i.v
push.s "Level"@2749
conv.s.v
push.s "G"@2534
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v self.level
pushi.e 1
conv.i.v
push.s "Love"@2751
conv.s.v
push.s "G"@2534
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v self.love
pushi.e 0
conv.i.v
push.s "Time"@2752
conv.s.v
push.s "G"@2534
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v self.time
pushi.e 0
conv.i.v
push.s "Room"@2753
conv.s.v
push.s "G"@2534
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v self.roome
call.i ini_close(argc=0)
popz.v

:[2]
pushglb.v global.darkzone
pushi.e 1
add.i.v
pop.v.v self.d
push.v self.time
pushi.e 1800
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.minutes
push.v self.time
pushi.e 1800
conv.i.d
div.d.v
push.v self.minutes
sub.v.v
pushi.e 60
mul.i.v
call.i round(argc=1)
pop.v.v self.seconds
push.v self.seconds
pushi.e 60
cmp.i.v EQ
bf [4]

:[3]
pushi.e 59
pop.v.i self.seconds

:[4]
push.v self.seconds
pushi.e 10
cmp.i.v LT
bf [6]

:[5]
push.s "0"@2521
push.v self.seconds
call.i string(argc=1)
add.v.s
pop.v.v self.seconds

:[6]
push.v self.roome
call.i scr_roomname(argc=1)
popz.v
push.v self.d
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 908
pop.v.i self.heartsprite

:[8]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 910
pop.v.i self.heartsprite

:[10]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [end]

:[11]
push.s "obj_savemenu_slash_Create_0_gml_43_0"@10044
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.name

:[end]