.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.idletimer
pushi.e 0
pop.v.i self.idlefacer
pushi.e 0
pop.v.i self.talkfacer
pushi.e 0
pop.v.i self.talkbuffer
pushi.e 0
pop.v.i self.menu
pushi.e 0
pop.v.i self.submenu
pushi.e 6
pop.v.i global.typer
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.talktimer
pushi.e 0
pop.v.i self.cur_jewel
pushi.e 0
pop.v.i self.shopcharx
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.submenuc
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.onebuffer
pushi.e 0
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.upbuffer
pushi.e 0
pop.v.i self.downbuffer
pushi.e 0
pop.v.i self.hold_up
pushi.e 0
pop.v.i self.hold_down
pushi.e 0
pop.v.i self._up_pressed
pushi.e 0
pop.v.i self._down_pressed
pushi.e 0
pop.v.i self.murder
pushi.e 415
pop.v.i self.moff
push.s "shop1.ogg"@9263
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
pushi.e 0
pop.v.i self.menu
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 4
pop.v.i [array]self.menuc
pushi.e 908
pop.v.i self.item0pic
pushi.e 908
pop.v.i self.item1pic
pushi.e 908
pop.v.i self.item2pic
pushi.e 908
pop.v.i self.item3pic
pushi.e 4
pop.v.i self.itemtotal
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.item
pushi.e 8
pushi.e -1
pushi.e 1
pop.v.i [array]self.item
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.item
pushi.e 5
pushi.e -1
pushi.e 3
pop.v.i [array]self.item
pushi.e 0
pushi.e -1
pushi.e 4
pop.v.i [array]self.item
pushi.e 0
pushi.e -1
pushi.e 5
pop.v.i [array]self.item
pushi.e 0
pushi.e -1
pushi.e 6
pop.v.i [array]self.item
push.s "item"@103
pushi.e -1
pushi.e 0
pop.v.s [array]self.itemtype
push.s "item"@103
pushi.e -1
pushi.e 1
pop.v.s [array]self.itemtype
push.s "armor"@167
pushi.e -1
pushi.e 2
pop.v.s [array]self.itemtype
push.s "weapon"@166
pushi.e -1
pushi.e 3
pop.v.s [array]self.itemtype
push.s "item"@103
pushi.e -1
pushi.e 4
pop.v.s [array]self.itemtype
push.s "item"@103
pushi.e -1
pushi.e 5
pop.v.s [array]self.itemtype
push.s "item"@103
pushi.e -1
pushi.e 6
pop.v.s [array]self.itemtype
push.s "obj_shop1_slash_Create_0_gml_74_0"@9269
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.shopdesc
push.s "obj_shop1_slash_Create_0_gml_75_0"@9270
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.shopdesc
push.s "obj_shop1_slash_Create_0_gml_76_0"@9271
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.shopdesc
push.s "obj_shop1_slash_Create_0_gml_77_0"@9272
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.shopdesc
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
push.v self.itemtotal
cmp.v.v LT
bf [12]

:[5]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.itematk
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.itemdef
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.itemmagic
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]self.canequip
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]self.canequip
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]self.canequip
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.itemtype
push.s "item"@103
cmp.s.v EQ
bf [7]

:[6]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.item
call.i scr_iteminfo(argc=1)
popz.v
push.v self.itemnameb
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shopitemname
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.buyvalue

:[7]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.itemtype
push.s "armor"@167
cmp.s.v EQ
bf [9]

:[8]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.item
call.i scr_armorinfo(argc=1)
popz.v
push.v self.armornametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shopitemname
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.buyvalue
push.v self.armordftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdef
push.v self.armorchar1temp
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]self.canequip
push.v self.armorchar2temp
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]self.canequip
push.v self.armorchar3temp
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]self.canequip

:[9]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@166
cmp.s.v EQ
bf [11]

:[10]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.item
call.i scr_weaponinfo(argc=1)
popz.v
push.v self.weaponattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itematk
push.v self.weaponmagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemmagic
push.v self.weaponnametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shopitemname
push.v self.weaponchar1temp
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]self.canequip
push.v self.weaponchar2temp
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]self.canequip
push.v self.weaponchar3temp
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]self.canequip
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.buyvalue

:[11]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[12]
pushi.e 40
pushi.e -1
pushi.e 0
pop.v.i [array]self.buyvalue
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.bought
pushi.e 0
pop.v.i self.mainmessage
pushi.e 220
pop.v.i self.minimenuy
pushi.e 23
pop.v.i global.typer
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.selling
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i self.glow
pushi.e 130
pop.v.i self.shx
pushi.e 0
pop.v.i self.soldo
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.an

:[end]