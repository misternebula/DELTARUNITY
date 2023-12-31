.localvar 0 arguments
.localvar 1 array 1089
.localvar 2 xx 1090
.localvar 3 yy 1091
.localvar 4 vspacing 1092
.localvar 5 selection_indices 1093
.localvar 6 func_depth 1094
.localvar 7 menu_depth 1095
.localvar 8 length 1096
.localvar 9 i 1097
.localvar 10 ndx 1098
.localvar 11 type 1099
.localvar 12 item 1100
.localvar 13 name 1101
.localvar 14 selected 1102
.localvar 15 prefix 1103

:[0]
pushbltn.v self.argument0
pop.v.v local.array
pushbltn.v self.argument1
pop.v.v local.xx
pushbltn.v self.argument2
pop.v.v local.yy
pushbltn.v self.argument3
pop.v.v local.vspacing
pushbltn.v self.argument4
pop.v.v local.selection_indices
pushbltn.v self.argument5
pop.v.v local.func_depth
pushbltn.v self.argument6
pop.v.v local.menu_depth
pushloc.v local.array
call.i ds_list_size(argc=1)
pop.v.v local.length
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushloc.v local.length
cmp.v.v LT
bf [15]

:[2]
pushloc.v local.i
pushi.e 3
conv.i.d
div.d.v
pop.v.v local.ndx
pushloc.v local.i
pushloc.v local.array
call.i ds_list_find_value(argc=2)
pop.v.v local.type
pushloc.v local.i
pushi.e 1
add.i.v
pushloc.v local.array
call.i ds_list_find_value(argc=2)
pop.v.v local.item
pushloc.v local.i
pushi.e 2
add.i.v
pushloc.v local.array
call.i ds_list_find_value(argc=2)
pop.v.v local.name
pushi.e 0
pop.v.i local.selected
push.s "  "@3356
pop.v.s local.prefix
pushloc.v local.ndx
pushi.e -7
pushloc.v local.func_depth
conv.v.i
push.v [array]local.selection_indices
cmp.v.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i local.selected

:[4]
pushloc.v local.selected
conv.v.b
bf [7]

:[5]
push.s "> "@3358
pop.v.s local.prefix
pushloc.v local.func_depth
pushglb.v global.chemg_max_depth
cmp.v.v GT
bf [7]

:[6]
pushloc.v local.func_depth
pop.v.v global.chemg_max_depth
pushloc.v local.yy
pop.v.v global.chemg_cursor_y

:[7]
pushloc.v local.type
push.s "[group]"@3361
cmp.s.v EQ
bf [9]

:[8]
push.s "[ "@3362
pushloc.v local.name
add.v.s
push.s "... ]"@3363
add.s.v
pop.v.v local.name

:[9]
pushloc.v local.prefix
pushloc.v local.name
add.v.v
pushloc.v local.yy
pushloc.v local.xx
call.i scr_84_draw_text_outline(argc=3)
popz.v
push.v local.yy
pushloc.v local.vspacing
add.v.v
pop.v.v local.yy
pushloc.v local.func_depth
pushloc.v local.menu_depth
cmp.v.v LT
bf [11]

:[10]
pushloc.v local.ndx
pushi.e -7
pushloc.v local.func_depth
conv.v.i
push.v [array]local.selection_indices
cmp.v.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushloc.v local.menu_depth
pushloc.v local.func_depth
pushi.e 1
add.i.v
pushloc.v local.selection_indices
pushloc.v local.vspacing
pushloc.v local.yy
pushloc.v local.xx
pushi.e 20
add.i.v
pushloc.v local.item
call.i scr_84_draw_menu(argc=7)
pop.v.v local.yy

:[14]
push.v local.i
pushi.e 3
add.i.v
pop.v.v local.i
b [1]

:[15]
pushloc.v local.yy
ret.v

:[end]