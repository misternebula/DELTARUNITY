.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.TYPE
push.s "filech1_3"@9726
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.TYPE

:[2]
push.s "filech1_4"@9727
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.i self.TYPE

:[4]
push.s "filech1_5"@9728
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e 1
pop.v.i self.TYPE

:[6]
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.s "DEVICE_MENU_slash_Create_0_gml_8_0"@9729
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_windowcaption(argc=1)
popz.v
push.s "AUDIO_DRONE.ogg"@9541
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong

:[8]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 138
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pushi.e -5
pushi.e 10
pop.v.i [array]global.tempflag
push.s "DEVICE_MENU_slash_Create_0_gml_17_0"@9730
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_windowcaption(argc=1)
popz.v
push.s "AUDIO_STORY.ogg"@9731
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
push.d 0.95
conv.d.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong

:[10]
pushi.e 0
pop.v.i self.BGMADE
pushi.e 0
pop.v.i self.BG_ALPHA
pushi.e 0
pop.v.i self.BG_SINER
pushi.e 0
pop.v.i self.OBMADE
pushi.e 0
pop.v.i self.OB_DEPTH
pushi.e 0
pop.v.i self.obacktimer
push.d 0.5
pop.v.d self.OBM
push.i 32768
pop.v.i self.COL_A
push.i 65280
pop.v.i self.COL_B
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 65280
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.COL_PLUS
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i self.BGSINER
pushi.e 6
pop.v.i self.BGMAGNITUDE
push.d 0.2
conv.d.v
push.i 8388608
conv.i.v
push.i 12632256
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.COL_A
push.i 16777215
pop.v.i self.COL_B
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 65535
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.COL_PLUS
pushi.e 1
pop.v.i self.BGMADE
pushi.e 0
pop.v.i self.BG_ALPHA
pushi.e 0
pop.v.i self.ANIM_SINER
pushi.e 0
pop.v.i self.ANIM_SINER_B
pushi.e 0
pop.v.i self.TRUE_ANIM_SINER

:[12]
pushi.e 0
pop.v.i self.MENU_NO
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [15]

:[14]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.MENUCOORD
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [13]

:[15]
pushi.e 210
pop.v.i self.XL
pushi.e 40
pop.v.i self.YL
pushi.e 5
pop.v.i self.YS
pushi.e 75
pop.v.i self.HEARTX
pushi.e 110
pop.v.i self.HEARTY
pushi.e 75
pop.v.i self.HEARTXCUR
pushi.e 75
pop.v.i self.HEARTYCUR
pushi.e 0
pop.v.i self.MOVENOISE
pushi.e 0
pop.v.i self.SELNOISE
pushi.e 0
pop.v.i self.BACKNOISE
pushi.e 0
pop.v.i self.DEATHNOISE
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 0
pop.v.i self.TWOBUFFER
pushi.e 0
pop.v.i self.THREAT
push.s " "@24
pop.v.s self.TEMPMESSAGE
pushi.e 0
pop.v.i self.MESSAGETIMER
call.i scr_84_load_ini(argc=0)
popz.v

:[end]