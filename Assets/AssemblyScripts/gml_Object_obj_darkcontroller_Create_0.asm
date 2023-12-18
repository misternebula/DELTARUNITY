.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.cur_jewel
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.charcon
pushi.e 0
pop.v.i self.chartimer
pushi.e 0
pop.v.i self.tp
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
pushi.e 0
pop.v.i global.fighting
pushi.e 0
pop.v.i self.movenoise
pushi.e 0
pop.v.i self.selectnoise
pushi.e 0
pop.v.i self.onebuffer
pushi.e 0
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.threebuffer
pushi.e 0
pop.v.i self.upbuffer
pushi.e 0
pop.v.i self.downbuffer
pushi.e 0
pop.v.i self.hold_up
pushi.e 0
pop.v.i self.hold_down
pushi.e 0
pop.v.i self.dograndom
pushi.e 0
pop.v.i self.atalk
push.d 0.7
conv.d.v
pushi.e 0
conv.i.v
push.i 8388736
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.bcolor
push.d 0.5
conv.d.v
push.i 4210752
conv.i.v
push.v self.bcolor
call.i merge_color(argc=3)
pop.v.v self.bcolor
pushi.e 0
pop.v.i self.chartotal
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.havechar
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.havechar
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.havechar
pushi.e 3
pop.v.i global.charturn
pushi.e 0
pop.v.i self.tp
pushi.e 50
pop.v.i self.tpy
pushi.e 0
pop.v.i self.bp
pushi.e 152
pop.v.i self.bpy
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.mmy
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.mmy
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.mmy
pushi.e 0
pop.v.i global.submenu
pushi.e -1
pop.v.i global.charselect
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 36
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.submenucoord
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.l 4343434343
pushi.e -5
pushi.e 0
pop.v.l [array]global.cinstance
push.l 343434343434
pushi.e -5
pushi.e 1
pop.v.l [array]global.cinstance
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [18]

:[5]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.faceaction
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
push.v self.chartotal
pushi.e 1
add.i.v
pop.v.v self.chartotal

:[7]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.havechar
push.v self.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.charpos

:[9]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [12]

:[10]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.havechar
push.v self.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.charpos
push.v self.i
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
pushi.e 165
conv.i.v
push.v 326.y
pushi.e 16
sub.i.v
push.v 326.x
pushi.e 6
sub.i.v
call.i instance_create(argc=3)
pushi.e -5
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
pop.v.v [array]global.cinstance
push.v self.i
pushi.e 12
mul.i.v
pushi.e -5
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.target

:[12]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [17]

:[13]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.havechar
push.v self.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.charpos
push.v self.i
pushi.e 0
cmp.i.v GT
bf [17]

:[14]
pushi.e 165
conv.i.v
push.v 326.y
pushi.e 12
sub.i.v
push.v 326.x
pushi.e 4
sub.i.v
call.i instance_create(argc=3)
pushi.e -5
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
pop.v.v [array]global.cinstance
push.v self.i
pushi.e 12
mul.i.v
pushi.e -5
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]global.cinstance
conv.v.i
pushenv [16]

:[15]
pushi.e 206
pop.v.i self.usprite
pushi.e 204
pop.v.i self.dsprite
pushi.e 209
pop.v.i self.rsprite
pushi.e 207
pop.v.i self.lsprite

:[16]
popenv [15]

:[17]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[18]
pushi.e 0
pop.v.i self.slmxx
pushi.e 0
pop.v.i self.slmyy
pushi.e 0
pop.v.i self.s_siner
pushi.e 0
pop.v.i self.menusiner
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.pagemax
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.pagemax
pushi.e 1
pop.v.i self.getmusvol
pushi.e 1
pop.v.i self.curvol
push.i 16776960
pushi.e -1
pushi.e 0
pop.v.i [array]self.hpcolor
push.i 16711935
pushi.e -1
pushi.e 1
pop.v.i [array]self.hpcolor
push.i 65280
pushi.e -1
pushi.e 2
pop.v.i [array]self.hpcolor

:[end]