.localvar 0 arguments

:[0]
pushglb.v global.lang
push.s "en"@2775
cmp.s.v EQ
bf [2]

:[1]
push.s "ja"@1566
pop.v.s global.lang
b [3]

:[2]
push.s "en"@2775
pop.v.s global.lang

:[3]
push.s "true_config.ini"@3518
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.lang
push.s "LANG"@3519
conv.s.v
push.s "LANG"@3519
conv.s.v
call.i ini_write_string(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
call.i scr_84_init_localization(argc=0)
popz.v

:[end]