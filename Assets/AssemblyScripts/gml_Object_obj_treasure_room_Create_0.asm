.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.image_speed
pushi.e 104
pop.v.i self.itemflag
push.s "armor"@167
pop.v.s self.itemtype
pushi.e 4
pop.v.i self.t_itemid
pushi.e 0
pop.v.i self.close
pushi.e 0
pop.v.i self.extratext
pushbltn.v self.room
pushi.e 56
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.extratext

:[2]
pushbltn.v self.room
pushi.e 64
cmp.i.v EQ
bf [4]

:[3]
pushi.e 117
pop.v.i self.itemflag
push.s "key"@6371
pop.v.s self.itemtype
pushi.e 7
pop.v.i self.t_itemid
pushi.e 0
pop.v.i self.extratext

:[4]
pushbltn.v self.room
pushi.e 85
cmp.i.v EQ
bf [7]

:[5]
pushi.e 107
pop.v.i self.itemflag
push.s "item"@103
pop.v.s self.itemtype
pushi.e 2
pop.v.i self.t_itemid
pushi.e 1
pop.v.i self.extratext
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [7]

:[6]
pushi.e 116
pop.v.i self.itemflag
push.s "key"@6371
pop.v.s self.itemtype
pushi.e 6
pop.v.i self.t_itemid
pushi.e 0
pop.v.i self.extratext

:[7]
pushbltn.v self.room
pushi.e 77
cmp.i.v EQ
bf [9]

:[8]
pushi.e 108
pop.v.i self.itemflag
push.s "weapon"@166
pop.v.s self.itemtype
pushi.e 9
pop.v.i self.t_itemid
pushi.e 1
pop.v.i self.extratext

:[9]
pushbltn.v self.room
pushi.e 80
cmp.i.v EQ
bf [11]

:[10]
pushi.e 109
pop.v.i self.itemflag
push.s "armor"@167
pop.v.s self.itemtype
pushi.e 2
pop.v.i self.t_itemid
pushi.e 1
pop.v.i self.extratext

:[11]
pushbltn.v self.room
pushi.e 84
cmp.i.v EQ
bf [15]

:[12]
push.v self.y
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [14]

:[13]
pushi.e 110
pop.v.i self.itemflag
push.s "gold"@641
pop.v.s self.itemtype
pushi.e 40
pop.v.i self.t_itemid
pushi.e 1
pop.v.i self.extratext
b [15]

:[14]
pushi.e 111
pop.v.i self.itemflag
push.s "item"@103
pop.v.s self.itemtype
pushi.e 2
pop.v.i self.t_itemid
pushi.e 1
pop.v.i self.extratext

:[15]
pushbltn.v self.room
pushi.e 111
cmp.i.v EQ
bf [24]

:[16]
pushi.e -5
pushi.e 112
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
pushi.e -5
pushi.e 242
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
call.i instance_destroy(argc=0)
popz.v
b [24]

:[20]
pushi.e -5
pushi.e 242
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 112
pop.v.i self.itemflag
push.s "weapon"@166
pop.v.s self.itemtype
pushi.e 7
pop.v.i self.t_itemid

:[22]
pushi.e -5
pushi.e 242
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
pushi.e 112
pop.v.i self.itemflag
push.s "armor"@167
pop.v.s self.itemtype
pushi.e 7
pop.v.i self.t_itemid

:[24]
pushbltn.v self.room
pushi.e 116
cmp.i.v EQ
bf [26]

:[25]
pushi.e 113
pop.v.i self.itemflag
push.s "item"@103
pop.v.s self.itemtype
pushi.e 11
pop.v.i self.t_itemid

:[26]
pushbltn.v self.room
pushi.e 120
cmp.i.v EQ
bf [28]

:[27]
pushi.e 114
pop.v.i self.itemflag
push.s "item"@103
pop.v.s self.itemtype
pushi.e 2
pop.v.i self.t_itemid
pushi.e 1
pop.v.i self.extratext

:[28]
pushbltn.v self.room
pushi.e 86
cmp.i.v EQ
bf [30]

:[29]
pushi.e 116
pop.v.i self.itemflag
push.s "key"@6371
pop.v.s self.itemtype
pushi.e 6
pop.v.i self.t_itemid
pushi.e 0
pop.v.i self.extratext

:[30]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[32]
pushi.e -5
push.v self.itemflag
conv.v.i
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i self.image_index

:[34]
call.i scr_depth(argc=0)
popz.v

:[end]