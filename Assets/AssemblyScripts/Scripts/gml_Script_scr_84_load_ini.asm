.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.FILE
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.FILE
push.s "DEVICE_MENU_slash_Create_0_gml_97_0"@3495
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.NAME
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.TIME
push.s "------------"@3497
pushi.e -1
push.v self.i
conv.v.i
pop.v.s [array]self.PLACE
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.LEVEL
push.s "--:--"@3500
pushi.e -1
push.v self.i
conv.v.i
pop.v.s [array]self.TIME_STRING
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.INITLANG
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
push.s "filech1_0"@3503
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.FILE
push.s "DEVICE_MENU_slash_Create_0_gml_107_0"@3504
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.NAME

:[8]
push.s "filech1_1"@3505
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [10]

:[9]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.FILE
push.s "DEVICE_MENU_slash_Create_0_gml_112_0"@3506
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.NAME

:[10]
push.s "filech1_2"@3507
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [12]

:[11]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.FILE
push.s "DEVICE_MENU_slash_Create_0_gml_117_0"@3508
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.NAME

:[12]
push.s "dr.ini"@2744
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [end]

:[13]
push.s "dr.ini"@2744
conv.s.v
call.i ini_open(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [25]

:[15]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [24]

:[16]
pushi.e 0
conv.i.v
push.s "Room"@2753
conv.s.v
push.s "G"@2534
push.v self.i
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
call.i scr_roomname(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.PLACE
pushi.e 0
conv.i.v
push.s "Time"@2752
conv.s.v
push.s "G"@2534
push.v self.i
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME
push.s "------"@3511
conv.s.v
push.s "Name"@2747
conv.s.v
push.s "G"@2534
push.v self.i
call.i string(argc=1)
add.v.s
call.i ini_read_string(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.NAME
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.LEVEL
pushi.e 0
conv.i.v
push.s "InitLang"@2754
conv.s.v
push.s "G"@2534
push.v self.i
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.INITLANG
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME
pushi.e 30
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_SECONDS_TOTAL
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS_TOTAL
pushi.e 60
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_MINUTES
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS_TOTAL
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_MINUTES
pushi.e 60
mul.i.v
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_SECONDS
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS
call.i string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_SECONDS_STRING
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.s "00"@3517
pushi.e -1
push.v self.i
conv.v.i
pop.v.s [array]self.TIME_SECONDS_STRING

:[18]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS
pushi.e 10
cmp.i.v LT
bf [20]

:[19]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS
pushi.e 1
cmp.i.v GTE
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.s "0"@2521
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS
call.i string(argc=1)
add.v.s
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_SECONDS_STRING

:[23]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_MINUTES
call.i string(argc=1)
push.s ":"@1546
add.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS_STRING
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_STRING

:[24]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [14]

:[25]
call.i ini_close(argc=0)
popz.v

:[end]