.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.event
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [20]

:[4]
pushglb.v global.facing
pop.v.v self.movedir
push.v self.sprite_width
pop.v.v self.wd
push.v self.sprite_height
pop.v.v self.ht
pushi.e 0
pop.v.i self.ix
pushi.e 0
pop.v.i self.iy
pushi.e 1
pop.v.i self.confirm
push.v self.movedir
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.ix
push.v self.y
push.v self.ht
add.v.v
pop.v.v self.iy

:[6]
push.v self.movedir
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.x
push.v self.wd
add.v.v
pop.v.v self.ix
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.iy

:[8]
push.v self.movedir
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.ix
push.v self.y
push.v self.ht
sub.v.v
pushi.e 5
add.i.v
pop.v.v self.iy

:[10]
push.v self.movedir
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
push.v self.x
push.v self.wd
sub.v.v
pushi.e 5
add.i.v
pop.v.v self.ix
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.iy

:[12]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 336
conv.i.v
push.v self.iy
pushi.e 15
add.i.v
push.v self.ix
pushi.e 15
add.i.v
push.v self.iy
push.v self.ix
call.i collision_rectangle(argc=7)
conv.v.b
bf [14]

:[13]
pushi.e 0
pop.v.i self.confirm

:[14]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 81
conv.i.v
push.v self.iy
pushi.e 15
add.i.v
push.v self.ix
pushi.e 15
add.i.v
push.v self.iy
push.v self.ix
call.i collision_rectangle(argc=7)
conv.v.b
bf [16]

:[15]
pushi.e 0
pop.v.i self.confirm

:[16]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 334
conv.i.v
push.v self.iy
pushi.e 15
add.i.v
push.v self.ix
pushi.e 15
add.i.v
push.v self.iy
push.v self.ix
call.i collision_rectangle(argc=7)
conv.v.b
bf [18]

:[17]
pushi.e 0
pop.v.i self.confirm

:[18]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.confirm
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 365
pop.v.i self.sprite_index
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.movecourse
pushi.e 0
pop.v.i self.movetimer

:[20]
push.v self.event
pushi.e 1
cmp.i.v EQ
bf [end]

:[21]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fc
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.sd
pushi.e -5
pushi.e 212
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_pushableblock_slash_Other_10_gml_61_0"@7481
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[23]
pushglb.v global.plot
pushi.e 50
cmp.i.v GTE
bf [25]

:[24]
push.s "obj_pushableblock_slash_Other_10_gml_66_0"@7482
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[25]
pushi.e -5
pushi.e 212
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
pushglb.v global.plot
pushi.e 50
cmp.i.v LT
b [28]

:[27]
push.e 0

:[28]
bf [32]

:[29]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 9
pop.v.i global.fe
push.s "obj_pushableblock_slash_Other_10_gml_74_0"@7483
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_pushableblock_slash_Other_10_gml_75_0"@7484
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_pushableblock_slash_Other_10_gml_76_0"@7485
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_pushableblock_slash_Other_10_gml_77_0"@7486
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.sd
pushi.e 0
pop.v.i self.myinteract
pushi.e 51
pushenv [31]

:[30]
pushi.e 50
pop.v.i self.con

:[31]
popenv [30]

:[32]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.sd
pushi.e 1
cmp.i.v EQ
bf [end]

:[33]
push.v self.mydialoguer
conv.v.i
pushenv [35]

:[34]
pushi.e 1
pop.v.i self.side

:[35]
popenv [34]

:[end]