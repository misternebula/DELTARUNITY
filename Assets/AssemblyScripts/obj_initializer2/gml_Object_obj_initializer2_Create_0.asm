.localvar 0 arguments

:[0]
push.s "true_config.ini"@3518
conv.s.v
call.i ini_open(argc=1)
popz.v
push.s "en"@2775
conv.s.v
push.s "LANG"@3519
conv.s.v
push.s "LANG"@3519
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v global.lang
call.i ini_close(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
push.s "0123456789"@7398
conv.s.v
pushi.e 677
conv.i.v
call.i font_add_sprite_ext(argc=4)
pop.v.v global.damagefont
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.s "obj_initializer2_slash_Create_0_gml_2_0"@10050
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e 907
conv.i.v
call.i font_add_sprite_ext(argc=4)
pop.v.v global.hpfont
call.i scr_gamestart(argc=0)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 100
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.tempflag
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 300
pop.v.i global.heartx
pushi.e 220
pop.v.i global.hearty
pushi.e 1
conv.i.v
call.i audio_group_load(argc=1)
popz.v
pushi.e 320
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[4]
pushi.e 320
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]