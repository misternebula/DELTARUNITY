.localvar 0 arguments

:[0]
push.v self.ambushed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i scr_ambush(argc=0)
popz.v
pushi.e 1
pop.v.i self.ambushed

:[2]
push.v self.plot
pushi.e 3
cmp.i.v NEQ
bf [7]

:[3]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.charmove
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.charmove
pushi.e -5
pushi.e 0
push.v [array]global.charspecial
pushi.e 100
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.spare_used
b [6]

:[5]
pushi.e 0
pop.v.i self.spare_used

:[6]
b [22]

:[7]
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.charmove
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.charmove
pushi.e -5
pushi.e 1
push.v [array]global.charspecial
pushi.e 100
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.ral_wrongcommand

:[9]
pushi.e -5
pushi.e 1
push.v [array]global.charaction
pushi.e 4
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.ral_wrongcommand

:[11]
pushi.e -5
pushi.e 1
push.v [array]global.charaction
pushi.e 2
cmp.i.v NEQ
bf [13]

:[12]
pushi.e -5
pushi.e 1
push.v [array]global.charaction
pushi.e 4
cmp.i.v NEQ
b [14]

:[13]
push.e 0

:[14]
bf [22]

:[15]
pushi.e 185
pushenv [21]

:[16]
pushi.e 205
pushenv [20]

:[17]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.i self.state

:[19]
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.itemed

:[20]
popenv [17]
pushi.e 1
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [16]
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.charaction
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.faceaction

:[22]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [249]

:[23]
pushi.e 4
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.commanded
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [191]

:[27]
push.s "spr_btfight"@1825
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.writerimg
push.s "spr_btdefend"@1832
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.writerimg
push.s "spr_bttech"@1829
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.writerimg
push.s "spr_btact"@1828
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.writerimg
push.s "spr_btspare"@1831
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.writerimg
push.s "spr_btitem"@1830
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.writerimg
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [40]

:[28]
call.i scr_moveheart(argc=0)
popz.v
pushi.e 1
pop.v.i self.abletotarget
pushi.e -5
pushi.e 0
push.v [array]global.charcantarget
pushi.e 0
cmp.i.v EQ
bf [31]

:[29]
pushi.e -5
pushi.e 1
push.v [array]global.charcantarget
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
pushi.e -5
pushi.e 2
push.v [array]global.charcantarget
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 0
pop.v.i self.abletotarget

:[34]
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.mytarget
push.v self.abletotarget
pushi.e 1
cmp.i.v EQ
bf [38]

:[35]
pushi.e -5
push.v self.mytarget
conv.v.i
push.v [array]global.charcantarget
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.mytarget
b [35]

:[37]
b [39]

:[38]
pushi.e 3
pop.v.i self.target

:[39]
pushi.e 1
pushi.e -5
push.v self.mytarget
conv.v.i
pop.v.i [array]global.targeted
pushi.e 1
pop.v.i self.attackcon
pushi.e 303
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 195
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[40]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_81_0"@7655
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.plot
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 0
pop.v.i global.fe
pushi.e 0
pushi.e -5
pushi.e 30
pop.v.i [array]global.flag
push.s "obj_dummyenemy_slash_Step_0_gml_87_0"@7656
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_88_0"@7657
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_89_0"@7658
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_90_0"@7659
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_91_0"@7660
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_92_0"@7661
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_93_0"@7662
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_94_0"@7663
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[45]
push.v self.plot
pushi.e 1
cmp.i.v GTE
bf [186]

:[46]
pushi.e 0
pop.v.i self.dial
pushi.e -5
pushi.e 0
push.v [array]global.charaction
pushi.e 1
cmp.i.v EQ
bf [65]

:[47]
push.v self.dummyhp
pushi.e -5
pushi.e 0
push.v [array]global.monsterhp
cmp.v.v GT
bf [49]

:[48]
pushi.e 1
pop.v.i self.dial

:[49]
push.v self.dummyhp
pushi.e -5
pushi.e 0
push.v [array]global.monsterhp
cmp.v.v EQ
bf [51]

:[50]
push.v self.plot
pushi.e 1
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
pushi.e 2
pop.v.i self.dial

:[54]
push.v self.dummyhp
pushi.e -5
pushi.e 0
push.v [array]global.monsterhp
cmp.v.v EQ
bf [57]

:[55]
push.v self.misstime
pushi.e 9
cmp.i.v EQ
bf [57]

:[56]
push.v self.plot
pushi.e 2
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e 3
pop.v.i self.dial
pushi.e 6
pushi.e -5
pushi.e 205
pop.v.i [array]global.flag

:[60]
push.v self.dial
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.v self.hitdum
pushi.e 3
cmp.i.v GTE
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 4
pop.v.i self.hitdum
pushi.e 3
pop.v.i self.dial
pushi.e 4
pushi.e -5
pushi.e 205
pop.v.i [array]global.flag

:[65]
pushi.e -5
pushi.e 0
push.v [array]global.charaction
pushi.e 10
cmp.i.v EQ
bf [67]

:[66]
push.v self.commanded
pushi.e 0
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [85]

:[69]
pushi.e 0
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_115_0"@7665
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_116_0"@7666
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.defendtime
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
push.s "obj_dummyenemy_slash_Step_0_gml_120_0"@7667
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_121_0"@7668
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[71]
push.v self.defendtime
pushi.e 2
cmp.i.v EQ
bf [73]

:[72]
pushi.e 1
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_127_0"@7669
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_128_0"@7670
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_129_0"@7671
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[73]
push.v self.defendtime
pushi.e 3
cmp.i.v EQ
bf [75]

:[74]
pushi.e 9
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_136_0"@7672
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[75]
push.v self.plot
pushi.e 2
cmp.i.v EQ
bf [82]

:[76]
push.s "spr_bttech"@1829
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.writerimg
push.s "obj_dummyenemy_slash_Step_0_gml_142_0"@7673
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_143_0"@7674
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_144_0"@7675
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_145_0"@7676
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_146_0"@7677
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 0
push.v [array]global.monsterhp
pushi.e -5
pushi.e 0
push.v [array]global.monstermaxhp
cmp.v.v EQ
bf [78]

:[77]
push.s "obj_dummyenemy_slash_Step_0_gml_150_0"@7678
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_151_0"@7679
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[78]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterstatus
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstercomment
push.s " "@24
cmp.s.v EQ
bf [80]

:[79]
push.s "obj_dummyenemy_slash_Draw_0_gml_4_0"@7680
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstercomment

:[80]
pushi.e 3
pop.v.i self.plot
push.v self.defendtime
pushi.e 4
cmp.i.v EQ
bf [82]

:[81]
pushi.e 3
pop.v.i self.defendtime

:[82]
push.v self.defendtime
pushi.e 4
cmp.i.v GTE
bf [84]

:[83]
pushi.e 3
pop.v.i self.dial
pushi.e 5
pushi.e -5
pushi.e 205
pop.v.i [array]global.flag

:[84]
push.v self.defendtime
pushi.e 1
add.i.v
pop.v.v self.defendtime
pushi.e 1
pop.v.i self.commanded

:[85]
pushi.e -5
pushi.e 0
push.v [array]global.charaction
pushi.e 4
cmp.i.v EQ
bf [87]

:[86]
push.v self.commanded
pushi.e 0
cmp.i.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [98]

:[89]
pushi.e 0
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_167_0"@7681
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_168_0"@7682
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_169_0"@7683
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.item_command
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
pushi.e 1
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_174_0"@7684
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_175_0"@7685
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_176_0"@7686
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_177_0"@7687
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_178_0"@7688
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[91]
push.v self.item_command
pushi.e 2
cmp.i.v EQ
bf [93]

:[92]
pushi.e 6
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_184_0"@7689
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_185_0"@7690
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[93]
push.v self.item_command
pushi.e 3
cmp.i.v EQ
bf [95]

:[94]
pushi.e 0
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_191_0"@7691
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_192_0"@7692
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[95]
push.v self.item_command
pushi.e 4
cmp.i.v GTE
bf [97]

:[96]
pushi.e 3
pop.v.i self.dial

:[97]
pushi.e 1
pop.v.i self.commanded
push.v self.item_command
pushi.e 1
add.i.v
pop.v.v self.item_command

:[98]
push.v self.ral_wrongcommand
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
push.v self.commanded
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [114]

:[102]
push.s "obj_dummyenemy_slash_Step_0_gml_206_0"@7693
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.ral_wrongcommand_count
pushi.e 0
cmp.i.v EQ
bf [104]

:[103]
push.s "obj_dummyenemy_slash_Step_0_gml_211_0"@7694
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[104]
push.v self.ral_wrongcommand_count
pushi.e 1
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_dummyenemy_slash_Step_0_gml_216_0"@7695
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_217_0"@7696
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[106]
push.v self.ral_wrongcommand_count
pushi.e 2
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_dummyenemy_slash_Step_0_gml_222_0"@7697
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[108]
push.v self.ral_wrongcommand_count
pushi.e 3
cmp.i.v EQ
bf [113]

:[109]
push.s "obj_dummyenemy_slash_Step_0_gml_227_0"@7698
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_228_0"@7699
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_229_0"@7700
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_230_0"@7701
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_231_0"@7702
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.plot
pushi.e 3
cmp.i.v EQ
bf [111]

:[110]
pushi.e 4
pop.v.i self.plot

:[111]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e 100
cmp.i.v GTE
bf [113]

:[112]
push.s "obj_dummyenemy_slash_Step_0_gml_237_0"@7703
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_238_0"@7704
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_239_0"@7705
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
pop.v.i self.plot

:[113]
push.v self.ral_wrongcommand_count
pushi.e 1
add.i.v
pop.v.v self.ral_wrongcommand_count
pushi.e 0
pop.v.i self.commanded

:[114]
pushi.e -5
pushi.e 1
push.v [array]global.charaction
pushi.e 2
cmp.i.v EQ
bf [117]

:[115]
push.v self.ral_wrongcommand
pushi.e 0
cmp.i.v EQ
bf [117]

:[116]
push.v self.commanded
pushi.e 0
cmp.i.v EQ
b [118]

:[117]
push.e 0

:[118]
bf [125]

:[119]
push.s "obj_dummyenemy_slash_Step_0_gml_252_0"@7706
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_253_0"@7707
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_254_0"@7708
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_255_0"@7709
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_256_0"@7710
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.pacifycon
pushi.e 1
cmp.i.v EQ
bf [122]

:[120]
push.s "obj_dummyenemy_slash_Step_0_gml_260_0"@7711
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterstatus
pushi.e 0
cmp.i.v EQ
bf [122]

:[121]
push.s "obj_dummyenemy_slash_Step_0_gml_262_0"@7712
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[122]
pushi.e 4
pop.v.i self.plot
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e 100
cmp.i.v GTE
bf [124]

:[123]
push.s "obj_dummyenemy_slash_Step_0_gml_268_0"@7713
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_269_0"@7714
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_270_0"@7715
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
pop.v.i self.plot

:[124]
pushi.e 1
pop.v.i self.commanded

:[125]
push.v self.spare_used
pushi.e 1
cmp.i.v EQ
bf [127]

:[126]
push.v self.commanded
pushi.e 0
cmp.i.v EQ
b [128]

:[127]
push.e 0

:[128]
bf [145]

:[129]
push.v self.plot
pushi.e 5
cmp.i.v LT
bf [142]

:[130]
pushi.e 0
pop.v.i global.fe
push.v self.spare_command
pushi.e 0
cmp.i.v EQ
bf [132]

:[131]
push.s "obj_dummyenemy_slash_Step_0_gml_282_0"@7716
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[132]
push.v self.spare_command
pushi.e 1
cmp.i.v EQ
bf [134]

:[133]
push.s "obj_dummyenemy_slash_Step_0_gml_283_0"@7717
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[134]
push.v self.spare_command
pushi.e 2
cmp.i.v GTE
bf [136]

:[135]
push.s "obj_dummyenemy_slash_Step_0_gml_284_0"@7718
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[136]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e 100
cmp.i.v GTE
bf [138]

:[137]
push.v self.win_spare
pushi.e 1
add.i.v
pop.v.v self.win_spare

:[138]
push.v self.win_spare
pushi.e 1
cmp.i.v EQ
bf [140]

:[139]
pushi.e 6
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_289_0"@7719
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_290_0"@7720
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_291_0"@7721
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[140]
push.v self.win_spare
pushi.e 2
cmp.i.v EQ
bf [142]

:[141]
pushi.e 6
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_296_0"@7722
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_297_0"@7723
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_298_0"@7724
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.won

:[142]
push.v self.plot
pushi.e 5
cmp.i.v EQ
bf [144]

:[143]
push.s "obj_dummyenemy_slash_Step_0_gml_307_0"@7725
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_308_0"@7726
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.won

:[144]
pushi.e 0
pop.v.i self.spare_used
push.v self.spare_command
pushi.e 1
add.i.v
pop.v.v self.spare_command
pushi.e 1
pop.v.i self.commanded

:[145]
push.v self.dial
pushi.e 1
cmp.i.v EQ
bf [164]

:[146]
push.v self.plot
pushi.e 1
cmp.i.v EQ
bf [155]

:[147]
pushi.e 3
pop.v.i global.fe
push.v self.dummyhp
pushi.e -5
pushi.e 0
push.v [array]global.monsterhp
pushi.e 50
add.i.v
cmp.v.v GT
bf [149]

:[148]
push.s "obj_dummyenemy_slash_Step_0_gml_327_0"@7727
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_328_0"@7728
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [150]

:[149]
push.s "obj_dummyenemy_slash_Step_0_gml_332_0"@7729
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_333_0"@7730
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e 4
conv.i.v
call.i scr_get_input_name(argc=1)
add.v.v
push.s "obj_dummyenemy_slash_Step_0_gml_333_1"@7731
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[150]
push.v self.misstime
pushi.e 6
cmp.i.v GTE
bf [152]

:[151]
pushi.e 8
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_338_0"@7732
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_339_0"@7733
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[152]
push.s "obj_dummyenemy_slash_Step_0_gml_341_0"@7734
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_342_0"@7735
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_343_0"@7736
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_344_0"@7737
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.plot
push.v self.defendtime
pushi.e 1
cmp.i.v GTE
bf [154]

:[153]
push.s "obj_dummyenemy_slash_Step_0_gml_348_0"@7738
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_349_0"@7739
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_350_0"@7740
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_351_0"@7741
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_352_0"@7742
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_353_0"@7743
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 3
pop.v.i self.plot

:[154]
b [164]

:[155]
push.v self.hitdum
pushi.e 0
cmp.i.v EQ
bf [157]

:[156]
pushi.e 1
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_364_0"@7744
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_365_0"@7745
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[157]
push.v self.hitdum
pushi.e 1
cmp.i.v EQ
bf [159]

:[158]
pushi.e 1
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_372_0"@7746
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_373_0"@7747
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_374_0"@7748
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[159]
push.v self.hitdum
pushi.e 2
cmp.i.v EQ
bf [161]

:[160]
pushi.e 6
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_380_0"@7749
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_381_0"@7750
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_382_0"@7751
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[161]
push.v self.hitdum
pushi.e 3
cmp.i.v GTE
bf [163]

:[162]
pushi.e 3
pop.v.i self.dial

:[163]
push.v self.hitdum
pushi.e 1
add.i.v
pop.v.v self.hitdum

:[164]
push.v self.dial
pushi.e 2
cmp.i.v EQ
bf [182]

:[165]
pushi.e 3
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_398_0"@7752
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_399_0"@7753
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e 4
conv.i.v
call.i scr_get_input_name(argc=1)
add.v.v
push.s "obj_dummyenemy_slash_Step_0_gml_399_1"@7754
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.misstime
pushi.e 1
cmp.i.v GTE
bf [181]

:[166]
pushi.e 8
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_403_0"@7755
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.misstime
pushi.e 2
cmp.i.v EQ
bf [168]

:[167]
push.s "obj_dummyenemy_slash_Step_0_gml_404_0"@7756
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e 4
conv.i.v
call.i scr_get_input_name(argc=1)
add.v.v
push.s "obj_dummyenemy_slash_Step_0_gml_404_1"@7757
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[168]
push.v self.misstime
pushi.e 3
cmp.i.v EQ
bf [170]

:[169]
push.s "obj_dummyenemy_slash_Step_0_gml_405_0"@7758
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e 4
conv.i.v
call.i scr_get_input_name(argc=1)
add.v.v
push.s "obj_dummyenemy_slash_Step_0_gml_405_1"@7759
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[170]
push.v self.misstime
pushi.e 4
cmp.i.v EQ
bf [172]

:[171]
push.s "obj_dummyenemy_slash_Step_0_gml_406_0"@7760
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e 4
conv.i.v
call.i scr_get_input_name(argc=1)
add.v.v
push.s "obj_dummyenemy_slash_Step_0_gml_406_1"@7761
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[172]
push.v self.misstime
pushi.e 5
cmp.i.v EQ
bf [174]

:[173]
push.s "obj_dummyenemy_slash_Step_0_gml_407_0"@7762
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[174]
push.v self.misstime
pushi.e 6
cmp.i.v EQ
bf [176]

:[175]
push.s "obj_dummyenemy_slash_Step_0_gml_408_0"@7763
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[176]
push.v self.misstime
pushi.e 7
cmp.i.v EQ
bf [178]

:[177]
pushi.e 9
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_412_0"@7764
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[178]
push.v self.misstime
pushi.e 8
cmp.i.v EQ
bf [181]

:[179]
pushi.e 1
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_417_0"@7765
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.plot
push.v self.defendtime
pushi.e 1
cmp.i.v GTE
bf [181]

:[180]
push.s "obj_dummyenemy_slash_Step_0_gml_421_0"@7766
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_422_0"@7767
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_423_0"@7768
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_424_0"@7769
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_425_0"@7770
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_426_0"@7771
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_427_0"@7772
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 3
pop.v.i self.plot

:[181]
push.v self.misstime
pushi.e 1
add.i.v
pop.v.v self.misstime

:[182]
push.v self.dial
pushi.e 3
cmp.i.v EQ
bf [186]

:[183]
pushi.e 9
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_441_0"@7773
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_442_0"@7774
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_443_0"@7775
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_444_0"@7776
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.hitdum
pushi.e 4
cmp.i.v GTE
bf [185]

:[184]
push.s "obj_dummyenemy_slash_Step_0_gml_447_0"@7777
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_448_0"@7778
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_449_0"@7779
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[185]
pushi.e 1
pop.v.i self.won
pushi.e 999
pop.v.i global.myfight
pushi.e 999
pop.v.i global.mnfight

:[186]
call.i scr_battletext(argc=0)
popz.v
pushi.e -5
pushi.e 0
push.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_463_0"@7780
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [190]

:[187]
pushi.e 6
pushenv [189]

:[188]
call.i instance_destroy(argc=0)
popz.v

:[189]
popenv [188]

:[190]
pushi.e 0
pop.v.i self.acting
pushi.e 0
pop.v.i self.spare_used
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pop.v.v self.dummyhp
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer
pushi.e 0
pop.v.i self.ral_wrongcommand

:[191]
pushglb.v global.mnfight
pushi.e 9786
cmp.i.v EQ
bf [193]

:[192]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [194]

:[193]
push.e 0

:[194]
bf [197]

:[195]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e -1
pop.v.i global.turntimer
call.i scr_mnendturn(argc=0)
popz.v
pushi.e 1
pop.v.i self.attacked
pushi.e 0
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rr
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [197]

:[196]
push.s "obj_dummyenemy_slash_Step_0_gml_489_0"@7781
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[197]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [199]

:[198]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [200]

:[199]
push.e 0

:[200]
bf [216]

:[201]
push.v self.won
pushi.e 0
cmp.i.v EQ
bf [214]

:[202]
pushi.e 0
pop.v.i self.rtimer
pushi.e -1
conv.i.v
call.i scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [204]

:[203]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
b [205]

:[204]
push.e 0

:[205]
bf [213]

:[206]
pushi.e 209
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [208]

:[207]
pushi.e 305
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [209]

:[208]
push.e 0

:[209]
bf [211]

:[210]
call.i scr_moveheart(argc=0)
popz.v

:[211]
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [213]

:[212]
pushi.e 303
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
call.i instance_create(argc=3)
popz.v

:[213]
b [216]

:[214]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [216]

:[215]
call.i scr_monsterdefeat(argc=0)
popz.v
call.i scr_mnendturn(argc=0)
popz.v

:[216]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [218]

:[217]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [219]

:[218]
push.e 0

:[219]
bf [243]

:[220]
push.v self.attackcon
pushi.e 1
cmp.i.v NEQ
bf [222]

:[221]
pushi.e 8
pop.v.i self.rtimer

:[222]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 8
cmp.i.v GTE
bf [242]

:[223]
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [225]

:[224]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 14
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage

:[225]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 150
pop.v.i global.turntimer
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [227]

:[226]
pushi.e 2
pop.v.i self.battlecancel

:[227]
push.v self.attackcon
pushi.e 1
cmp.i.v NEQ
bf [231]

:[228]
pushi.e -100
pop.v.i global.turntimer
push.v self.dc
conv.v.i
pushenv [230]

:[229]
call.i instance_destroy(argc=0)
popz.v

:[230]
popenv [229]

:[231]
pushi.e 2
pop.v.i self.attackcon
pushi.e 1
pop.v.i self.attacked
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "obj_dummyenemy_slash_Step_0_gml_548_0"@7784
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
push.s "spr_btfight"@1825
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.writerimg
push.s "spr_btdefend"@1832
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.writerimg
push.s "spr_bttech"@1829
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.writerimg
push.s "spr_btact"@1828
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.writerimg
push.s "spr_btspare"@1831
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.writerimg
push.s "spr_btitem"@1830
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.writerimg
pushi.e 0
pop.v.i global.fc
push.v self.plot
pushi.e 1
cmp.i.v EQ
bf [233]

:[232]
push.s "obj_dummyenemy_slash_Step_0_gml_556_0"@7785
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[233]
push.v self.plot
pushi.e 2
cmp.i.v EQ
bf [235]

:[234]
push.s "obj_dummyenemy_slash_Step_0_gml_557_0"@7786
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[235]
push.v self.plot
pushi.e 3
cmp.i.v EQ
bf [237]

:[236]
push.s "obj_dummyenemy_slash_Step_0_gml_558_0"@7787
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[237]
push.v self.plot
pushi.e 4
cmp.i.v EQ
bf [239]

:[238]
push.s "obj_dummyenemy_slash_Step_0_gml_559_0"@7788
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[239]
push.v self.plot
pushi.e 5
cmp.i.v EQ
bf [241]

:[240]
push.s "obj_dummyenemy_slash_Step_0_gml_560_0"@7789
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[241]
pushi.e 0
pop.v.i self.spare_used
pushi.e 0
pop.v.i self.ral_wrongcommand
b [243]

:[242]
pushi.e 150
pop.v.i global.turntimer

:[243]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [249]

:[244]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [249]

:[245]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [249]

:[246]
pushi.e 187
pushenv [248]

:[247]
pushi.e 1
pop.v.i self.noreturn

:[248]
popenv [247]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[249]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [251]

:[250]
pushi.e 2
pop.v.i self.con
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[251]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [255]

:[252]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "spr_btfight"@1825
conv.s.v
call.i scr_84_get_sprite(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.writerimg
push.s "obj_dummyenemy_slash_Step_0_gml_598_0"@7790
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.kris_inithp
pushi.e -5
pushi.e 1
push.v [array]global.hp
cmp.v.v GT
bf [254]

:[253]
pushi.e 6
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_602_0"@7791
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[254]
push.s "obj_dummyenemy_slash_Step_0_gml_604_0"@7792
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_605_0"@7793
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_606_0"@7794
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_607_0"@7795
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_610_0"@7796
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
call.i scr_battletext(argc=0)
popz.v
pushi.e 6
pop.v.i self.con

:[255]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [257]

:[256]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [258]

:[257]
push.e 0

:[258]
bf [264]

:[259]
pushi.e 187
pushenv [261]

:[260]
pushi.e 0
pop.v.i self.noreturn
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[261]
popenv [260]
pushi.e 0
pop.v.i self.battlecancel
push.v self.plot
pushi.e 0
cmp.i.v EQ
bf [263]

:[262]
pushi.e 1
pop.v.i self.plot

:[263]
pushi.e 7
pop.v.i self.con

:[264]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [408]

:[265]
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
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [267]

:[266]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [268]

:[267]
push.e 0

:[268]
bf [272]

:[269]
pushi.e 1
pop.v.i self.actcon
push.s "obj_dummyenemy_slash_Step_0_gml_642_0"@7797
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.checked
pushi.e 0
cmp.i.v EQ
bf [271]

:[270]
push.s "obj_dummyenemy_slash_Step_0_gml_645_0"@7798
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_dummyenemy_slash_Step_0_gml_647_0"@7799
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_648_0"@7800
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_649_0"@7801
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[271]
push.v self.checked
pushi.e 1
add.i.v
pop.v.v self.checked
call.i scr_battletext_default(argc=0)
popz.v

:[272]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [274]

:[273]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [275]

:[274]
push.e 0

:[275]
bf [279]

:[276]
pushi.e 10
pop.v.i self.actcon
pushi.e 202
pushenv [278]

:[277]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.faceaction
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.acttimer

:[278]
popenv [277]
push.s "obj_dummyenemy_slash_Step_0_gml_666_0"@7803
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[279]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [281]

:[280]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [282]

:[281]
push.e 0

:[282]
bf [284]

:[283]
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.acting
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.acting
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.acting
pushi.e 0
pop.v.i self.actcon
pushi.e -1
pop.v.i self.acting
call.i scr_attackphase(argc=0)
popz.v

:[284]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [290]

:[285]
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
pushenv [287]

:[286]
pushi.e 0
pop.v.i self.visible

:[287]
popenv [286]
pushi.e 444
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.k
push.v self.k
conv.v.i
pushenv [289]

:[288]
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.monstery
pushi.e 30
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.monsterx
pushi.e 42
sub.i.v
call.i scr_move_to_point_over_time(argc=3)
popz.v

:[289]
popenv [288]
pushi.e 11
pop.v.i self.actcon
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[290]
push.v self.actcon
pushi.e 12
cmp.i.v EQ
bf [294]

:[291]
push.v self.k
conv.v.i
pushenv [293]

:[292]
push.d 0.25
pop.v.d self.image_speed

:[293]
popenv [292]
pushi.e 13
pop.v.i self.actcon
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[294]
push.v self.actcon
pushi.e 14
cmp.i.v EQ
bf [298]

:[295]
push.v self.k
conv.v.i
pushenv [297]

:[296]
pushi.e 0
pop.v.i self.image_speed

:[297]
popenv [296]
pushi.e 15
pop.v.i self.actcon

:[298]
push.v self.actcon
pushi.e 15
cmp.i.v EQ
bf [300]

:[299]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [301]

:[300]
push.e 0

:[301]
bf [312]

:[302]
pushi.e 1
pushi.e -5
pushi.e 205
pop.v.i [array]global.flag
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_711_0"@7804
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.plot
pushi.e 5
cmp.i.v EQ
bf [306]

:[303]
push.s "obj_dummyenemy_slash_Step_0_gml_714_0"@7805
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.hugtime
pushi.e 1
cmp.i.v GTE
bf [305]

:[304]
push.s "obj_dummyenemy_slash_Step_0_gml_715_0"@7806
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[305]
push.v self.hugtime
pushi.e 1
add.i.v
pop.v.v self.hugtime

:[306]
push.v self.plot
pushi.e 1
cmp.i.v EQ
bf [309]

:[307]
pushi.e 3
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_722_0"@7807
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_723_0"@7808
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_724_0"@7809
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_725_0"@7810
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_726_0"@7811
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_727_0"@7812
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_728_0"@7813
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.plot
push.v self.defendtime
pushi.e 1
cmp.i.v GTE
bf [309]

:[308]
push.s "obj_dummyenemy_slash_Step_0_gml_733_0"@7814
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_734_0"@7815
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_735_0"@7816
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_736_0"@7817
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_737_0"@7818
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_738_0"@7819
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 3
pop.v.i self.plot

:[309]
push.v self.plot
pushi.e 4
cmp.i.v EQ
bf [311]

:[310]
pushi.e 8
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_746_0"@7820
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_747_0"@7821
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_748_0"@7822
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_749_0"@7823
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_750_0"@7824
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
pop.v.i self.plot

:[311]
call.i scr_battletext(argc=0)
popz.v
pushi.e 16
pop.v.i self.actcon

:[312]
push.v self.actcon
pushi.e 16
cmp.i.v EQ
bf [314]

:[313]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [315]

:[314]
push.e 0

:[315]
bf [321]

:[316]
push.v self.myface
conv.v.i
pushenv [318]

:[317]
call.i instance_destroy(argc=0)
popz.v

:[318]
popenv [317]
push.v self.k
conv.v.i
pushenv [320]

:[319]
push.d -0.25
pop.v.d self.image_speed

:[320]
popenv [319]
pushi.e 17
pop.v.i self.actcon
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[321]
push.v self.actcon
pushi.e 18
cmp.i.v EQ
bf [327]

:[322]
push.v self.k
conv.v.i
pushenv [324]

:[323]
pushi.e 0
pop.v.i self.image_speed

:[324]
popenv [323]
push.v self.k
conv.v.i
pushenv [326]

:[325]
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.x
call.i scr_move_to_point_over_time(argc=3)
popz.v

:[326]
popenv [325]
pushi.e 19
pop.v.i self.actcon
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[327]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [331]

:[328]
push.v self.k
conv.v.i
pushenv [330]

:[329]
call.i instance_destroy(argc=0)
popz.v

:[330]
popenv [329]
pushi.e 100
pushi.e -5
pushi.e 0
pop.v.i [array]global.mercymod
pushi.e 100
pushi.e -5
pushi.e 1
pop.v.i [array]global.mercymod
pushi.e 1
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1
pop.v.i self.actcon

:[331]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [333]

:[332]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [334]

:[333]
push.e 0

:[334]
bf [340]

:[335]
pushi.e 0
pop.v.i self.makekris
pushi.e 202
pushenv [337]

:[336]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.faceaction
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.acttimer

:[337]
popenv [336]
pushi.e 204
pushenv [339]

:[338]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.faceaction
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.acttimer

:[339]
popenv [338]
pushi.e 30
pop.v.i self.actcon
push.s "obj_dummyenemy_slash_Step_0_gml_808_0"@7826
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[340]
push.v self.actcon
pushi.e 30
cmp.i.v EQ
bf [346]

:[341]
pushi.e 1
pop.v.i self.makekris
pushi.e 0
pop.v.i self.maker
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
pushenv [343]

:[342]
pushi.e 0
pop.v.i self.visible

:[343]
popenv [342]
pushi.e 444
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.k
push.v self.k
conv.v.i
pushenv [345]

:[344]
pushi.e 15
conv.i.v
push.v 204.y
pushi.e 10
add.i.v
push.v 204.x
pushi.e 24
sub.i.v
call.i scr_move_to_point_over_time(argc=3)
popz.v

:[345]
popenv [344]
pushi.e 31
pop.v.i self.actcon
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[346]
push.v self.actcon
pushi.e 32
cmp.i.v EQ
bf [352]

:[347]
pushi.e 1
pop.v.i self.maker
pushi.e 204
pushenv [349]

:[348]
pushi.e 0
pop.v.i self.visible

:[349]
popenv [348]
pushi.e 208
conv.i.v
push.v 204.y
push.v 204.x
call.i scr_dark_marker(argc=3)
pop.v.v self.rb
push.v self.k
conv.v.i
pushenv [351]

:[350]
push.d 0.25
pop.v.d self.image_speed

:[351]
popenv [350]
pushi.e 33
pop.v.i self.actcon
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[352]
push.v self.actcon
pushi.e 34
cmp.i.v EQ
bf [356]

:[353]
push.v self.k
conv.v.i
pushenv [355]

:[354]
pushi.e 0
pop.v.i self.image_speed

:[355]
popenv [354]
pushi.e 35
pop.v.i self.actcon

:[356]
push.v self.actcon
pushi.e 35
cmp.i.v EQ
bf [358]

:[357]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [359]

:[358]
push.e 0

:[359]
bf [369]

:[360]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_846_0"@7829
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.r_hugtime
pushi.e 0
cmp.i.v EQ
bf [362]

:[361]
push.s "obj_dummyenemy_slash_Step_0_gml_850_0"@7830
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_851_0"@7831
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_852_0"@7832
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_853_0"@7833
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[362]
push.v self.r_hugtime
pushi.e 1
cmp.i.v EQ
bf [364]

:[363]
push.s "obj_dummyenemy_slash_Step_0_gml_858_0"@7834
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_859_0"@7835
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_860_0"@7836
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[364]
push.v self.r_hugtime
pushi.e 2
cmp.i.v EQ
bf [366]

:[365]
push.s "obj_dummyenemy_slash_Step_0_gml_868_0"@7837
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_869_0"@7838
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_870_0"@7839
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummyenemy_slash_Step_0_gml_871_0"@7840
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[366]
push.v self.r_hugtime
pushi.e 3
cmp.i.v GTE
bf [368]

:[367]
push.s "obj_dummyenemy_slash_Step_0_gml_876_0"@7841
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[368]
push.v self.r_hugtime
pushi.e 1
add.i.v
pop.v.v self.r_hugtime
call.i scr_battletext(argc=0)
popz.v
pushi.e 36
pop.v.i self.actcon

:[369]
push.v self.actcon
pushi.e 36
cmp.i.v EQ
bf [371]

:[370]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [372]

:[371]
push.e 0

:[372]
bf [378]

:[373]
push.v self.myface
conv.v.i
pushenv [375]

:[374]
call.i instance_destroy(argc=0)
popz.v

:[375]
popenv [374]
push.v self.k
conv.v.i
pushenv [377]

:[376]
push.d -0.25
pop.v.d self.image_speed

:[377]
popenv [376]
pushi.e 37
pop.v.i self.actcon
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[378]
push.v self.actcon
pushi.e 38
cmp.i.v EQ
bf [384]

:[379]
push.v self.k
conv.v.i
pushenv [381]

:[380]
pushi.e 0
pop.v.i self.image_speed

:[381]
popenv [380]
push.v self.k
conv.v.i
pushenv [383]

:[382]
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
push.v [stacktop]self.x
call.i scr_move_to_point_over_time(argc=3)
popz.v

:[383]
popenv [382]
pushi.e 39
pop.v.i self.actcon
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[384]
push.v self.actcon
pushi.e 40
cmp.i.v EQ
bf [392]

:[385]
pushi.e 0
pop.v.i self.makekris
pushi.e 0
pop.v.i self.maker
push.v self.rb
conv.v.i
pushenv [387]

:[386]
call.i instance_destroy(argc=0)
popz.v

:[387]
popenv [386]
pushi.e 204
pushenv [389]

:[388]
pushi.e 1
pop.v.i self.visible

:[389]
popenv [388]
push.v self.k
conv.v.i
pushenv [391]

:[390]
call.i instance_destroy(argc=0)
popz.v

:[391]
popenv [390]
pushi.e 1
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1
pop.v.i self.actcon

:[392]
push.v self.actcon
pushi.e 30
cmp.i.v GTE
bf [394]

:[393]
push.v self.actcon
pushi.e 40
cmp.i.v LT
b [395]

:[394]
push.e 0

:[395]
bf [408]

:[396]
push.v self.makekris
pushi.e 1
cmp.i.v EQ
bf [402]

:[397]
push.v self.k
conv.v.i
pushenv [399]

:[398]
call.i scr_depth(argc=0)
popz.v

:[399]
popenv [398]
push.v self.k
conv.v.i
pushenv [401]

:[400]
push.v self.depth
push.i 100000
sub.i.v
pop.v.v self.depth

:[401]
popenv [400]

:[402]
push.v self.maker
pushi.e 1
cmp.i.v EQ
bf [408]

:[403]
push.v self.rb
conv.v.i
pushenv [405]

:[404]
call.i scr_depth(argc=0)
popz.v

:[405]
popenv [404]
push.v self.rb
conv.v.i
pushenv [407]

:[406]
push.v self.depth
push.i 100000
sub.i.v
pop.v.v self.depth

:[407]
popenv [406]

:[408]
pushi.e 187
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[409]
call.i instance_destroy(argc=0)
popz.v

:[end]