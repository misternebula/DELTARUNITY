.localvar 0 arguments

:[0]
call.i snd_free_all(argc=0)
popz.v
pushglb.v global.filechoice
pop.v.v self.filechoicebk
call.i scr_gamestart(argc=0)
popz.v
push.v self.filechoicebk
pop.v.v global.filechoice
push.s "filech1_"@2713
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
pop.v.v self.file
push.v self.file
call.i file_text_open_read(argc=1)
pop.v.v self.myfileid
push.v self.myfileid
call.i file_text_read_string(argc=1)
pop.v.v global.truename
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
push.v self.myfileid
call.i file_text_read_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.othername
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.char
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.char
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.char
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.gold
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.xp
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.lv
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.inv
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.invc
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.darkzone
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [12]

:[5]
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.hp
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.maxhp
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.at
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.df
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.mag
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.guts
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.charweapon
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.chararmor1
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.chararmor2
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.weaponstyle
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
pushi.e 0
pop.v.i self.q

:[6]
push.v self.q
pushi.e 4
cmp.i.v LT
bf [8]

:[7]
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.itemat
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.itemdf
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.itemmag
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.itembolts
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.itemgrazeamt
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.itemgrazesize
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.itemboltspeed
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.q
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.itemspecial
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q
b [6]

:[8]
pushi.e 0
pop.v.i self.j

:[9]
push.v self.j
pushi.e 12
cmp.i.v LT
bf [11]

:[10]
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.spell
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [9]

:[11]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[12]
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.boltspeed
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.grazeamt
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.grazesize
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
pushi.e 0
pop.v.i self.j

:[13]
push.v self.j
pushi.e 13
cmp.i.v LT
bf [15]

:[14]
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]global.item
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]global.keyitem
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]global.weapon
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]global.armor
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [13]

:[15]
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.tension
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.maxtension
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.lweapon
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.larmor
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.lxp
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.llv
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.lgold
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.lhp
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.lmaxhp
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.lat
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.ldf
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.lwstrength
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.ladef
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [18]

:[17]
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.litem
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.phone
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [16]

:[18]
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
pushi.e 9999
cmp.i.v LT
bf [21]

:[20]
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.flag
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [19]

:[21]
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.plot
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.currentroom
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_read_real(argc=1)
pop.v.v global.time
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i file_text_close(argc=1)
popz.v
pushglb.v global.time
pop.v.v global.lastsavedtime
pushglb.v global.lv
pop.v.v global.lastsavedlv
push.v self.myfileid
call.i file_text_close(argc=1)
popz.v
call.i scr_tempsave(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 15
push.v [array]global.flag
pushi.e 1
conv.i.v
call.i audio_group_set_gain(argc=3)
popz.v
pushi.e -5
pushi.e 17
push.v [array]global.flag
pushi.e 0
conv.i.v
call.i audio_set_master_gain(argc=2)
popz.v
pushglb.v global.plot
pushi.e 156
cmp.i.v GTE
bf [25]

:[22]
pushi.e 0
pop.v.i self.i

:[23]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [25]

:[24]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.charauto
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [23]

:[25]
pushglb.v global.currentroom
pop.v.v self.__loadedroom
call.i scr_dogcheck(argc=0)
conv.v.b
bf [27]

:[26]
pushi.e 131
pop.v.i self.__loadedroom

:[27]
push.v self.__loadedroom
call.i room_goto(argc=1)
popz.v

:[end]