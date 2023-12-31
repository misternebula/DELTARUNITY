.localvar 0 arguments

:[0]
pushglb.v global.kills
pop.v.v global.lastsavedkills
push.v 320.time
pop.v.v global.lastsavedtime
pushglb.v global.lv
pop.v.v global.lastsavedlv
push.s "file"@2714
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
pop.v.v self.file
push.v self.file
call.i file_text_open_write(argc=1)
pop.v.v self.myfileid
pushglb.v global.charname
push.v self.myfileid
call.i file_text_write_string(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.lv
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.maxhp
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.maxen
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.at
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.wstrength
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.df
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.adef
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.sp
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.xp
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.gold
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.kills
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [3]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.item
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.phone
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushglb.v global.weapon
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.armor
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 512
cmp.i.v LT
bf [6]

:[5]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.flag
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
pushglb.v global.plot
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [9]

:[8]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.menuchoice
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[9]
pushglb.v global.currentsong
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.currentroom
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
push.v 320.time
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_close(argc=1)
popz.v

:[end]