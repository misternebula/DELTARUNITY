.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.setdepth
pushi.e 0
pop.v.i self.read
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[2]
pushbltn.v self.room
pushi.e 105
cmp.i.v EQ
bf [5]

:[3]
pushi.e 230
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e -5
pushi.e 105
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.image_index

:[5]
pushbltn.v self.room
pushi.e 108
cmp.i.v EQ
bf [8]

:[6]
pushi.e 359
pop.v.i self.sprite_index
pushi.e -5
pushi.e 254
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
pushbltn.v self.room
pushi.e 126
cmp.i.v EQ
bf [15]

:[9]
push.v self.x
pushi.e 220
cmp.i.v GTE
bf [11]

:[10]
push.v self.x
pushi.e 400
cmp.i.v LTE
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 351
pop.v.i self.sprite_index
b [15]

:[14]
pushi.e 350
pop.v.i self.sprite_index

:[15]
pushbltn.v self.room
pushi.e 25
cmp.i.v EQ
bf [27]

:[16]
pushi.e 269
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.num
push.s "obj_npc_sign_slash_Create_0_gml_45_0"@6399
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.colortxt
push.v self.x
pushi.e 170
cmp.i.v GT
bf [21]

:[17]
pushi.e 1
pop.v.i self.num
push.s "obj_npc_sign_slash_Create_0_gml_50_0"@6401
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.colortxt
push.v self.y
pushi.e 110
cmp.i.v GT
bf [19]

:[18]
pushi.e 5
pop.v.i self.num
push.s "obj_npc_sign_slash_Create_0_gml_51_0"@6402
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.colortxt

:[19]
push.v self.y
pushi.e 130
cmp.i.v GT
bf [21]

:[20]
pushi.e 6
pop.v.i self.num
push.s "obj_npc_sign_slash_Create_0_gml_52_0"@6403
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.colortxt

:[21]
push.v self.x
pushi.e 140
cmp.i.v LT
bf [26]

:[22]
pushi.e 2
pop.v.i self.num
push.s "obj_npc_sign_slash_Create_0_gml_57_0"@6404
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.colortxt
push.v self.y
pushi.e 110
cmp.i.v GT
bf [24]

:[23]
pushi.e 3
pop.v.i self.num
push.s "obj_npc_sign_slash_Create_0_gml_58_0"@6405
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.colortxt

:[24]
push.v self.y
pushi.e 130
cmp.i.v GT
bf [26]

:[25]
pushi.e 4
pop.v.i self.num
push.s "obj_npc_sign_slash_Create_0_gml_59_0"@6406
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.colortxt

:[26]
push.v self.num
pop.v.v self.image_index

:[27]
pushbltn.v self.room
pushi.e 9
cmp.i.v EQ
bf [29]

:[28]
pushi.e 285
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.setdepth
push.i 700000
pop.v.i self.depth

:[29]
pushbltn.v self.room
pushi.e 10
cmp.i.v EQ
bf [31]

:[30]
pushi.e 302
pop.v.i self.sprite_index

:[31]
pushbltn.v self.room
pushi.e 7
cmp.i.v EQ
bf [33]

:[32]
pushi.e 92
pop.v.i self.sprite_index

:[33]
push.v self.setdepth
pushi.e 1
cmp.i.v EQ
bf [end]

:[34]
call.i scr_depth(argc=0)
popz.v

:[end]