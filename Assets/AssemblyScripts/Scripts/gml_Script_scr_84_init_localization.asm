.localvar 0 arguments
.localvar 1 fm 1119
.localvar 2 sm 1120
.localvar 3 sndm 1121

:[0]
push.s "lang_loaded"@3376
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.s ""@2240
pop.v.s global.lang_loaded

:[2]
push.s "lang"@1565
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
push.s "en"@2775
pop.v.s global.lang

:[4]
pushglb.v global.lang_loaded
pushglb.v global.lang
cmp.v.v NEQ
bf [end]

:[5]
pushglb.v global.lang
pop.v.v global.lang_loaded
push.s "lang_map"@3371
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushglb.v global.lang_map
call.i ds_map_destroy(argc=1)
popz.v
pushglb.v global.font_map
call.i ds_map_destroy(argc=1)
popz.v
pushglb.v global.chemg_sprite_map
call.i ds_map_destroy(argc=1)
popz.v
pushglb.v global.chemg_sound_map
call.i ds_map_destroy(argc=1)
popz.v

:[7]
call.i ds_map_create(argc=0)
pop.v.v global.lang_map
call.i ds_map_create(argc=0)
pop.v.v global.font_map
call.i ds_map_create(argc=0)
pop.v.v global.chemg_sprite_map
call.i ds_map_create(argc=0)
pop.v.v global.chemg_sound_map
call.i scr_84_lang_load(argc=0)
popz.v
push.s ""@2240
pop.v.s global.chemg_last_get_font
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [9]

:[8]
pushglb.v global.font_map
pop.v.v local.fm
pushi.e 7
conv.i.v
push.s "main"@1558
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 10
conv.i.v
push.s "mainbig"@1561
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 9
conv.i.v
push.s "tinynoelle"@1563
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 8
conv.i.v
push.s "dotumche"@1564
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 5
conv.i.v
push.s "comicsans"@1562
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 6
conv.i.v
push.s "small"@3384
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushglb.v global.chemg_sprite_map
pop.v.v local.sm
pushi.e 680
conv.i.v
push.s "spr_bnamekris"@1838
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 681
conv.i.v
push.s "spr_bnameralsei"@1840
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 682
conv.i.v
push.s "spr_bnamesusie"@1839
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 683
conv.i.v
push.s "spr_btact"@1828
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 684
conv.i.v
push.s "spr_btdefend"@1832
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 685
conv.i.v
push.s "spr_btfight"@1825
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 686
conv.i.v
push.s "spr_btitem"@1830
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 688
conv.i.v
push.s "spr_btspare"@1831
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 687
conv.i.v
push.s "spr_bttech"@1829
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 821
conv.i.v
push.s "spr_darkmenudesc"@3386
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 799
conv.i.v
push.s "spr_dmenu_captions"@3387
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 1014
conv.i.v
push.s "spr_quitmessage"@3388
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 729
conv.i.v
push.s "spr_thrashbody_b"@3389
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 727
conv.i.v
push.s "spr_thrashfoot_b"@3390
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 733
conv.i.v
push.s "spr_thrashlogo"@3391
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 743
conv.i.v
push.s "spr_thrashstats"@3392
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 863
conv.i.v
push.s "spr_fieldmuslogo"@3393
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushglb.v global.chemg_sound_map
pop.v.v local.sndm
pushi.e 130
conv.i.v
push.s "snd_joker_anything"@3395
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v
pushi.e 131
conv.i.v
push.s "snd_joker_chaos"@3396
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v
pushi.e 132
conv.i.v
push.s "snd_joker_metamorphosis"@3397
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v
pushi.e 133
conv.i.v
push.s "snd_joker_neochaos"@3398
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v
b [end]

:[9]
pushglb.v global.font_map
pop.v.v local.fm
pushi.e 3
conv.i.v
push.s "main"@1558
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "mainbig"@1561
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "tinynoelle"@1563
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "dotumche"@1564
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 11
conv.i.v
push.s "comicsans"@1562
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4
conv.i.v
push.s "small"@3384
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushglb.v global.chemg_sprite_map
pop.v.v local.sm
pushi.e 659
conv.i.v
push.s "spr_bnamekris"@1838
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 660
conv.i.v
push.s "spr_bnameralsei"@1840
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 661
conv.i.v
push.s "spr_bnamesusie"@1839
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 662
conv.i.v
push.s "spr_btact"@1828
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 664
conv.i.v
push.s "spr_btdefend"@1832
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 665
conv.i.v
push.s "spr_btfight"@1825
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 669
conv.i.v
push.s "spr_btitem"@1830
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 666
conv.i.v
push.s "spr_btspare"@1831
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 671
conv.i.v
push.s "spr_bttech"@1829
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 810
conv.i.v
push.s "spr_darkmenudesc"@3386
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 796
conv.i.v
push.s "spr_dmenu_captions"@3387
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 916
conv.i.v
push.s "spr_quitmessage"@3388
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 728
conv.i.v
push.s "spr_thrashbody_b"@3389
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 726
conv.i.v
push.s "spr_thrashfoot_b"@3390
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 732
conv.i.v
push.s "spr_thrashlogo"@3391
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 735
conv.i.v
push.s "spr_thrashstats"@3392
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 862
conv.i.v
push.s "spr_fieldmuslogo"@3393
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushglb.v global.chemg_sound_map
pop.v.v local.sndm
pushi.e 125
conv.i.v
push.s "snd_joker_anything"@3395
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v
pushi.e 122
conv.i.v
push.s "snd_joker_chaos"@3396
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v
pushi.e 127
conv.i.v
push.s "snd_joker_metamorphosis"@3397
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v
pushi.e 128
conv.i.v
push.s "snd_joker_neochaos"@3398
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v

:[end]