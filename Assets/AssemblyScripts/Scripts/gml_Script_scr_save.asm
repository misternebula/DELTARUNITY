.localvar 0 arguments

:[0]
pushglb.v global.filechoice
call.i scr_saveprocess(argc=1)
popz.v
pushglb.v global.filechoice
pop.v.v self.filechoicebk2
pushi.e 9
pop.v.i global.filechoice
pushi.e 9
conv.i.v
call.i scr_saveprocess(argc=1)
popz.v
push.v self.filechoicebk2
pop.v.v global.filechoice
push.s "dr.ini"@2744
conv.s.v
call.i ini_open(argc=1)
pop.v.v self.iniwrite
pushglb.v global.truename
push.s "Name"@2747
conv.s.v
push.s "G"@2534
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_string(argc=3)
popz.v
pushglb.v global.lv
push.s "Level"@2749
conv.s.v
push.s "G"@2534
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.llv
push.s "Love"@2751
conv.s.v
push.s "G"@2534
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.time
push.s "Time"@2752
conv.s.v
push.s "G"@2534
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushbltn.v self.room
push.s "Room"@2753
conv.s.v
push.s "G"@2534
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushi.e -5
pushi.e 912
push.v [array]global.flag
push.s "InitLang"@2754
conv.s.v
push.s "G"@2534
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v

:[end]