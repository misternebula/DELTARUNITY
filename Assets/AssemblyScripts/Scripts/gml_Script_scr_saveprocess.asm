.localvar 0 arguments

:[0]
pushglb.v global.time
pop.v.v global.lastsavedtime
pushglb.v global.lv
pop.v.v global.lastsavedlv
push.s "filech1_"@2713
pushbltn.v self.argument0
call.i string(argc=1)
add.v.s
pop.v.v self.file
push.v self.file
call.i file_text_open_write(argc=1)
pop.v.v self.myfileid
pushglb.v global.truename
push.v self.myfileid
call.i file_text_write_string(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.othername
push.v self.myfileid
call.i file_text_write_string(argc=2)
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
pushi.e -5
pushi.e 0
push.v [array]global.char
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
pushi.e 1
push.v [array]global.char
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
pushi.e 2
push.v [array]global.char
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
pushglb.v global.xp
push.v self.myfileid
call.i file_text_write_real(argc=2)
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
pushglb.v global.inv
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.invc
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.darkzone
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
pushi.e 4
cmp.i.v LT
bf [12]

:[5]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.hp
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.maxhp
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.at
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.df
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.mag
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.guts
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charweapon
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.chararmor1
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.chararmor2
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.weaponstyle
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
pop.v.i self.q

:[6]
push.v self.q
pushi.e 4
cmp.i.v LT
bf [8]

:[7]
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
push.v [array]global.itemat
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
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
push.v [array]global.itemdf
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
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
push.v [array]global.itemmag
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
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
push.v [array]global.itembolts
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
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
push.v [array]global.itemgrazeamt
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
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
push.v [array]global.itemgrazesize
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
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
push.v [array]global.itemboltspeed
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
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
push.v [array]global.itemspecial
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
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
push.v [array]global.spell
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
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
pushglb.v global.boltspeed
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.grazeamt
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.grazesize
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
pop.v.i self.j

:[13]
push.v self.j
pushi.e 13
cmp.i.v LT
bf [15]

:[14]
pushi.e -5
push.v self.j
conv.v.i
push.v [array]global.item
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.j
conv.v.i
push.v [array]global.keyitem
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.j
conv.v.i
push.v [array]global.weapon
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.j
conv.v.i
push.v [array]global.armor
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [13]

:[15]
pushglb.v global.tension
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.maxtension
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.lweapon
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.larmor
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.lxp
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.llv
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.lgold
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.lhp
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.lmaxhp
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.lat
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.ldf
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.lwstrength
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.ladef
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [18]

:[17]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.litem
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
b [19]

:[21]
pushglb.v global.plot
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
pushglb.v global.time
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_close(argc=1)
popz.v

:[end]