.localvar 0 arguments

:[0]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [2]

:[1]
push.v self.FN
call.i string_to_hiragana(argc=1)
pop.v.v self.FN

:[2]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_1_0"@9662
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.FOUND

:[4]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_2_0"@9663
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [6]

:[5]
pushi.e 2
pop.v.i self.FOUND

:[6]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_3_0"@9664
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [8]

:[7]
pushi.e 2
pop.v.i self.FOUND

:[8]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_4_0"@9665
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.FOUND

:[10]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_5_0"@9666
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.FOUND

:[12]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_6_0"@9667
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.FOUND

:[14]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_7_0"@9668
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.FOUND

:[16]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_8_0"@9669
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [18]

:[17]
pushi.e 1
pop.v.i self.FOUND

:[18]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_9_0"@9670
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [20]

:[19]
pushi.e 1
pop.v.i self.FOUND

:[20]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_10_0"@9671
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i self.FOUND

:[22]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_11_0"@9672
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [24]

:[23]
pushi.e 1
pop.v.i self.FOUND

:[24]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_12_0"@9673
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [26]

:[25]
pushi.e 1
pop.v.i self.FOUND

:[26]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_13_0"@9674
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [28]

:[27]
pushi.e 1
pop.v.i self.FOUND

:[28]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_14_0"@9675
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i self.FOUND

:[30]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_15_0"@9676
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i self.FOUND

:[32]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_16_0"@9677
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i self.FOUND

:[34]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_17_0"@9678
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i self.FOUND

:[36]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_18_0"@9679
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [38]

:[37]
pushi.e 1
pop.v.i self.FOUND

:[38]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [end]

:[39]
push.v self.FN
call.i string_to_ascii_from_full_width(argc=1)
pop.v.v self.FN
push.v self.FN
push.s "special_name_check_01"@9681
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [41]

:[40]
pushi.e 2
pop.v.i self.FOUND

:[41]
push.v self.FN
push.s "special_name_check_02"@9682
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [43]

:[42]
pushi.e 2
pop.v.i self.FOUND

:[43]
push.v self.FN
push.s "special_name_check_03"@9683
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [45]

:[44]
pushi.e 2
pop.v.i self.FOUND

:[45]
push.v self.FN
push.s "special_name_check_04"@9684
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [47]

:[46]
pushi.e 1
pop.v.i self.FOUND

:[47]
push.v self.FN
push.s "special_name_check_05"@9685
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [49]

:[48]
pushi.e 1
pop.v.i self.FOUND

:[49]
push.v self.FN
push.s "special_name_check_06"@9686
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [51]

:[50]
pushi.e 1
pop.v.i self.FOUND

:[51]
push.v self.FN
push.s "special_name_check_07"@9687
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [53]

:[52]
pushi.e 1
pop.v.i self.FOUND

:[53]
push.v self.FN
push.s "special_name_check_08"@9688
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [55]

:[54]
pushi.e 1
pop.v.i self.FOUND

:[55]
push.v self.FN
push.s "special_name_check_09"@9689
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [57]

:[56]
pushi.e 1
pop.v.i self.FOUND

:[57]
push.v self.FN
push.s "special_name_check_10"@9690
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [59]

:[58]
pushi.e 1
pop.v.i self.FOUND

:[59]
push.v self.FN
push.s "special_name_check_11"@9691
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [61]

:[60]
pushi.e 1
pop.v.i self.FOUND

:[61]
push.v self.FN
push.s "special_name_check_12"@9692
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [63]

:[62]
pushi.e 1
pop.v.i self.FOUND

:[63]
push.v self.FN
push.s "special_name_check_13"@9693
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [65]

:[64]
pushi.e 1
pop.v.i self.FOUND

:[65]
push.v self.FN
push.s "special_name_check_14"@9694
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [67]

:[66]
pushi.e 1
pop.v.i self.FOUND

:[67]
push.v self.FN
push.s "special_name_check_15"@9695
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [69]

:[68]
pushi.e 1
pop.v.i self.FOUND

:[69]
push.v self.FN
push.s "special_name_check_16"@9696
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [71]

:[70]
pushi.e 1
pop.v.i self.FOUND

:[71]
push.v self.FN
push.s "special_name_check_17"@9697
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [73]

:[72]
pushi.e 1
pop.v.i self.FOUND

:[73]
push.v self.FN
push.s "special_name_check_18"@9698
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [end]

:[74]
pushi.e 1
pop.v.i self.FOUND

:[end]