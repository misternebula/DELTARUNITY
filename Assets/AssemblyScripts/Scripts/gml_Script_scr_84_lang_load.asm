.localvar 0 arguments
.localvar 1 name 1133
.localvar 2 orig_filename 1135
.localvar 3 new_filename 1136
.localvar 4 filename 1137
.localvar 5 type 1138
.localvar 6 orig_map 1139
.localvar 7 new_map 1140
.localvar 8 new_date 1141
.localvar 9 orig_date 1142

:[0]
push.s "lang_"@3408
pushglb.v global.lang
add.v.s
push.s ".json"@3409
add.s.v
pop.v.v local.name
pushbltn.v self.working_directory
push.s "lang/"@3411
add.s.v
pushloc.v local.name
add.v.v
pop.v.v local.orig_filename
pushbltn.v self.working_directory
push.s "lang-new/"@3413
add.s.v
pushloc.v local.name
add.v.v
pop.v.v local.new_filename
pushloc.v local.orig_filename
pop.v.v local.filename
push.s "orig"@3415
pop.v.s local.type
push.s "loading lang: "@3416
pushloc.v local.orig_filename
add.v.s
call.i show_debug_message(argc=1)
popz.v
pushloc.v local.orig_filename
call.i scr_84_load_map_json(argc=1)
pop.v.v local.orig_map
pushloc.v local.new_filename
call.i file_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushloc.v local.new_filename
call.i scr_84_load_map_json(argc=1)
pop.v.v local.new_map
push.s "date"@3421
conv.s.v
pushloc.v local.new_map
call.i ds_map_find_value(argc=2)
call.i real(argc=1)
pop.v.v local.new_date
push.s "date"@3421
conv.s.v
pushloc.v local.orig_map
call.i ds_map_find_value(argc=2)
call.i real(argc=1)
pop.v.v local.orig_date
push.s "orig_date: "@3424
pushloc.v local.orig_date
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
push.s " new_date: "@3425
pushloc.v local.new_date
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
pushloc.v local.new_date
pushloc.v local.orig_date
cmp.v.v GT
bf [3]

:[2]
push.s "using new language file"@3426
conv.s.v
call.i show_debug_message(argc=1)
popz.v
pushloc.v local.orig_map
call.i ds_map_destroy(argc=1)
popz.v
pushloc.v local.new_map
pop.v.v local.orig_map
pushloc.v local.new_filename
pop.v.v local.filename
push.s "new("@3427
pushloc.v local.new_date
call.i string(argc=1)
add.v.s
push.s ")"@3428
add.s.v
pop.v.v local.type
b [4]

:[3]
push.s "using orig language file"@3429
conv.s.v
call.i show_debug_message(argc=1)
popz.v

:[4]
pushglb.v global.lang_map
call.i ds_map_destroy(argc=1)
popz.v
pushloc.v local.orig_map
pop.v.v global.lang_map
push.s "loaded: "@3430
pushloc.v local.filename
add.v.s
push.s ", entries: "@3431
add.s.v
pushglb.v global.lang_map
call.i ds_map_size(argc=1)
call.i string(argc=1)
add.v.v
call.i show_debug_message(argc=1)
popz.v
pushloc.v local.type
ret.v

:[end]