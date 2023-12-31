.localvar 0 arguments
.localvar 1 __layers 4528
.localvar 2 __numlayers 4529
.localvar 3 __i 4530
.localvar 4 __layer_id 4531
.localvar 5 __els 4532
.localvar 6 __numels 4533
.localvar 7 __name 4534
.localvar 8 __pos 4535
.localvar 9 __lang 4536
.localvar 10 __j 4537
.localvar 11 __id 4538
.localvar 12 __eltype 4539
.localvar 13 __inst 4540
.localvar 14 __spr 4541

:[0]
call.i layer_get_all(argc=0)
pop.v.v local.__layers
pushloc.v local.__layers
call.i array_length_1d(argc=1)
pop.v.v local.__numlayers
pushi.e 0
pop.v.i local.__i

:[1]
pushloc.v local.__i
pushloc.v local.__numlayers
cmp.v.v LT
bf [end]

:[2]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__layers
pop.v.v local.__layer_id
pushloc.v local.__layer_id
call.i layer_get_all_elements(argc=1)
pop.v.v local.__els
pushloc.v local.__els
call.i array_length_1d(argc=1)
pop.v.v local.__numels
pushloc.v local.__layer_id
call.i layer_get_name(argc=1)
pop.v.v local.__name
push.s "layer: "@10114
pushloc.v local.__i
call.i string(argc=1)
add.v.s
push.s " "@24
add.s.v
pushloc.v local.__name
add.v.v
push.s "["@2594
add.s.v
pushloc.v local.__numels
call.i string(argc=1)
add.v.v
push.s "]"@2596
add.s.v
call.i show_debug_message(argc=1)
popz.v
pushloc.v local.__name
push.s "_lang_"@10115
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.__pos
pushloc.v local.__pos
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushloc.v local.__name
call.i string_length(argc=1)
pushloc.v local.__pos
pushi.e 8
add.i.v
cmp.v.v GT
b [5]

:[4]
push.e 0

:[5]
bf [8]

:[6]
pushi.e 2
conv.i.v
pushloc.v local.__pos
pushi.e 6
add.i.v
pushloc.v local.__name
call.i string_copy(argc=3)
pop.v.v local.__lang
pushloc.v local.__lang
pushglb.v global.lang
cmp.v.v NEQ
bf [8]

:[7]
pushi.e 0
conv.i.v
pushloc.v local.__layer_id
call.i layer_set_visible(argc=2)
popz.v
b [30]

:[8]
pushi.e 0
pop.v.i local.__j

:[9]
pushloc.v local.__j
pushloc.v local.__numels
cmp.v.v LT
bf [30]

:[10]
pushi.e -7
pushloc.v local.__j
conv.v.i
push.v [array]local.__els
pop.v.v local.__id
pushloc.v local.__id
call.i layer_get_element_type(argc=1)
pop.v.v local.__eltype
pushloc.v local.__eltype
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushloc.v local.__id
call.i layer_instance_get_instance(argc=1)
pop.v.v local.__inst
pushloc.v local.__inst
conv.v.i
push.v [stacktop]self.object_index
call.i object_get_name(argc=1)
pop.v.v local.__name
push.s "  instance:"@10122
pushloc.v local.__j
call.i string(argc=1)
add.v.s
push.s ": "@10123
add.s.v
pushloc.v local.__name
add.v.v
call.i show_debug_message(argc=1)
popz.v
b [29]

:[12]
pushloc.v local.__eltype
pushi.e 4
cmp.i.v EQ
bf [20]

:[13]
pushloc.v local.__id
call.i layer_sprite_get_sprite(argc=1)
pop.v.v local.__spr
pushloc.v local.__spr
call.i sprite_get_name(argc=1)
pop.v.v local.__name
push.s "  sprite: "@10127
pushloc.v local.__j
call.i string(argc=1)
add.v.s
push.s ": "@10123
add.s.v
pushloc.v local.__name
add.v.v
call.i show_debug_message(argc=1)
popz.v
pushloc.v local.__name
push.s "_lang_"@10115
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.__pos
pushloc.v local.__pos
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
pushloc.v local.__name
call.i string_length(argc=1)
pushloc.v local.__pos
pushi.e 8
add.i.v
cmp.v.v GT
b [16]

:[15]
push.e 0

:[16]
bf [19]

:[17]
pushi.e 2
conv.i.v
pushloc.v local.__pos
pushi.e 6
add.i.v
pushloc.v local.__name
call.i string_copy(argc=3)
pop.v.v local.__lang
pushloc.v local.__lang
pushglb.v global.lang
cmp.v.v NEQ
bf [19]

:[18]
pushloc.v local.__id
call.i layer_sprite_destroy(argc=1)
popz.v

:[19]
b [29]

:[20]
pushloc.v local.__eltype
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.s "  background: "@10129
pushloc.v local.__j
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
b [29]

:[22]
pushloc.v local.__eltype
pushi.e 5
cmp.i.v EQ
bf [24]

:[23]
push.s "  tilemap: "@10130
pushloc.v local.__j
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
b [29]

:[24]
pushloc.v local.__eltype
pushi.e 6
cmp.i.v EQ
bf [26]

:[25]
push.s "  particlesystem: "@10131
pushloc.v local.__j
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
b [29]

:[26]
pushloc.v local.__eltype
pushi.e 7
cmp.i.v EQ
bf [28]

:[27]
push.s "  tile: "@10132
pushloc.v local.__j
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
b [29]

:[28]
push.s "  unknown: "@10133
pushloc.v local.__j
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v

:[29]
push.v local.__j
push.e 1
add.i.v
pop.v.v local.__j
b [9]

:[30]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [1]

:[end]