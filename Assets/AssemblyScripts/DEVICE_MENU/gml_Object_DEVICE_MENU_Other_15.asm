.localvar 0 arguments

:[0]
push.s "dr.ini"@2744
conv.s.v
call.i ini_open(argc=1)
pop.v.v self.iniwrite
push.s "------"@3511
conv.s.v
push.s "Name"@2747
conv.s.v
push.s "G"@2534
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_read_string(argc=3)
pop.v.v self._NEWNAME
pushi.e 0
conv.i.v
push.s "Time"@2752
conv.s.v
push.s "G"@2534
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v self._NEWTIME
pushi.e 0
conv.i.v
push.s "Room"@2753
conv.s.v
push.s "G"@2534
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v self._NEWROOM
pushi.e 0
conv.i.v
push.s "Level"@2749
conv.s.v
push.s "G"@2534
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v self._NEWLEVEL
push.v self._NEWNAME
push.s "Name"@2747
conv.s.v
push.s "G"@2534
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_string(argc=3)
popz.v
push.v self._NEWTIME
push.s "Time"@2752
conv.s.v
push.s "G"@2534
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
push.v self._NEWROOM
push.s "Room"@2753
conv.s.v
push.s "G"@2534
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
push.v self._NEWLEVEL
push.s "Level"@2749
conv.s.v
push.s "G"@2534
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
pushi.e 1
pushi.e -1
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
conv.v.i
pop.v.i [array]self.FILE
pushi.e -1
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.PLACE
pushi.e -1
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.PLACE
pushi.e -1
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.TIME
pushi.e -1
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.TIME
pushi.e -1
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.NAME
pushi.e -1
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.NAME
pushi.e -1
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.LEVEL
pushi.e -1
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.LEVEL
pushi.e -1
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.TIME_STRING
pushi.e -1
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.TIME_STRING
push.s "filech1_"@2713
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s "filech1_"@2713
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i file_copy(argc=2)
popz.v
push.s "config_"@7035
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@7036
add.s.v
call.i file_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.s "config_"@7035
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@7036
add.s.v
push.s "config_"@7035
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@7036
add.s.v
call.i file_copy(argc=2)
popz.v

:[end]