
@{{BLOCK(scout_lab_bn_graphics)

@=======================================================================
@
@	scout_lab_bn_graphics, 32x448@4, 
@	+ palette 16 entries, not compressed
@	+ 224 tiles not compressed
@	Total size: 32 + 7168 = 7200
@
@	Time-stamp: 2022-01-26, 07:36:10
@	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global scout_lab_bn_graphicsTiles		@ 7168 unsigned chars
	.hidden scout_lab_bn_graphicsTiles
scout_lab_bn_graphicsTiles:
	.word 0x11111111,0xBBBBBBB2,0xBBBBBBB1,0xBBBEBBB5,0xEBBBBBB1,0xBBBBBBE1,0xBBBBBBB1,0xBBBBEBB1
	.word 0x11111111,0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBE
	.word 0x11111111,0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBB
	.word 0x11111111,0x1BBBBBBB,0x1BBBBBBB,0x1BBB8BBB,0x1B8BBBBB,0x1BBBBBBB,0x1BBB8BB8,0x1BB8BBBB
	.word 0xBBBBBBB1,0xBBBEBBB5,0xBBBBBBB1,0xBBBBBBB5,0xBEBBBBB1,0xBBBBBBB5,0xBBBBBBB1,0xBBBBBBB5
	.word 0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBB,0xBBBBBBBB,0xB8BBBBBB
	.word 0xBB8BBBBB,0xBBBBBBBB,0xB8BBBBBB,0x8BBBB8BB,0xBBB8BBBB,0x8BBBBBBB,0xBBBBB8BB,0xBB8BBBBB
	.word 0x28BBBB8B,0x1BBB8BBB,0x1B8BBBBB,0x1BBB8B8B,0x28B8BBBB,0x1BBBB8BB,0x1B8B8BB8,0x1B8BBB8B

	.word 0xBBBBBBB1,0xBBBBBBB5,0xBBBBBBB1,0xBBBBBBB5,0xBBBBBBB1,0xBBBBBBB5,0xBBBBBBB1,0xBBBBBBB1
	.word 0xBBBBBBBB,0xBBBBBBBB,0xB8BBBBBB,0xBBBBBBBB,0x8BB8BBBB,0xBBBBBBBB,0xBB8BB8BB,0xB8BBBBBB
	.word 0x8BB8BB8B,0xBBBBBBBB,0x8B8B8B8B,0xB8BBBBBB,0x8BBB8B8B,0x8B8BBBBB,0xBBB8B8B8,0x8B8BBBBB
	.word 0x1BB8B8BB,0x1B8BBBBB,0x28B8B88B,0x1BB8BBBB,0x288BB88B,0x1BB8B8BB,0x288BB8B8,0x1B8B8BBB
	.word 0xBBBBBBB1,0xBBBBBBB1,0xB8BBBBB1,0xBBBBBBB1,0x8BBB8BB1,0xBBB8BBB1,0xB8BBBBB1,0x22222111
	.word 0xBBBB8BB8,0xB8BBBBBB,0x8BBB8B8B,0xBB8B8BBB,0xB8BBBBBB,0x8BBB8B8B,0xB8B8BBBB,0x72722722
	.word 0xB8BBB8B8,0xBBB8B8BB,0x8B8BB8BB,0xBB8B8BB8,0x8B8BBB8B,0xB8B8B8BB,0xBB8BB8B8,0x72777272
	.word 0x2B8BB8B8,0x18B8B8B8,0x2B8B8B8B,0x18B8B8B8,0x2B8B8B8B,0x18B8B8B8,0x2B88B8B8,0x11227227

	.word 0x11111111,0x11111151,0xFEEFEE11,0xEEFEEF11,0xEFEEFE11,0xFEEFEE11,0xEFEFEF11,0xEFEEFE21
	.word 0x11111111,0x11111111,0xEEFEEFEE,0xEFEEFEEF,0xFEEFEEFE,0xEEFEEFEE,0xEFEFEFEF,0xFEFEFEEF
	.word 0x11111111,0x11111111,0xEFEEFEEF,0xFEEFEEFE,0xEEFEEFEE,0xEFEFEFEF,0xFEFEFEFE,0xFEFEFEFE
	.word 0x11111111,0x15551111,0x15511EFE,0x1511EFEE,0x111EFEEF,0x11EFEEFE,0x11FEEFEE,0x11FEFEFE
	.word 0xEFEFEF11,0xFFEFEFF1,0xFEFEFFF1,0xEFFFFFF1,0xFFEFEF11,0xFEFFFF11,0xEEFEEE11,0xEFEEFE71
	.word 0xFEFEFEFF,0xFEFFFFFE,0xEFFEFEFF,0xFFFFFFFF,0xEFEFEFEE,0xFEEFEFEF,0xEEFEFEFE,0xEFEEEEEF
	.word 0xFEFFFEFE,0xEFFFEFFE,0xFFEFFFFF,0xFFFFFEFE,0xFEFEEFEF,0xEFEFEFEE,0xFEEFEEEF,0xFEEFEFEF
	.word 0x11EFEFEE,0x11FFFEFF,0x11FFEFFE,0x11FFEFFF,0x11EFEFEE,0x111EEFEF,0x155EFEEE,0x1511EEFE

	.word 0xEFEFE211,0xEFEE2151,0x12221651,0x55555551,0x55555751,0x55555551,0x56555551,0x55755651
	.word 0xEEFEFEFE,0x22221222,0x25554555,0x55575557,0x55455555,0x55555555,0x75555555,0x52555555
	.word 0xEEFEEEFE,0x11222222,0x15525557,0x75255525,0x15555555,0x55255272,0x55555555,0x71527252
	.word 0x1255EFEF,0x15511111,0x15552525,0x15525555,0x12555555,0x15572552,0x15525555,0x15555552
	.word 0x55555551,0x55555571,0x55565551,0x55555551,0x55557511,0x55111111,0x11111111,0x111111F1
	.word 0x55725555,0x55555727,0x55555554,0x55255555,0x55755255,0x25552755,0x75555551,0x25525511
	.word 0x55555555,0x55255155,0x15555752,0x57517155,0x55255555,0x25555255,0x57555555,0x55527255
	.word 0x15555525,0x15555575,0x15272525,0x15555555,0x15555555,0x15555555,0x17557555,0x15555555

	.word 0x11FFFFF1,0xFFFFFFF1,0xFFFFFFF1,0xFFFFFF11,0x111111B1,0x1BBEBBB1,0xBBEBBBB1,0xBEBBE1B1
	.word 0x55551111,0x55511111,0x551111FF,0x52111FFF,0x7111FFFF,0x111FF111,0x11FF1111,0x1FFFF11B
	.word 0x55555555,0x75255555,0x55555555,0x55572725,0x55555555,0x57555555,0x74555551,0x55555111
	.word 0x11955555,0x11555755,0x11595655,0x11555755,0x15555555,0x15555555,0x15557595,0x15556554
	.word 0xEBEBB1B1,0xEBBE3BB1,0xBEB3BBB1,0xBBB1BBB1,0xEBE1BBB1,0xEBE3BBB1,0xBBB1BBB1,0xBB1BB8B1
	.word 0xFFFFF1BB,0xFFFF1BBB,0x11111BBE,0xBBBBEBEB,0xBBEBEBBB,0xBBBBBBEB,0xEBEEBEBE,0x1BBBBEBB
	.word 0x5757111F,0x555111FF,0x55111FF1,0x5111FF11,0x5511111B,0x55511111,0x556511B1,0x157511B1
	.word 0x15555555,0x15575555,0x11155555,0x11116595,0x11111155,0x11F11115,0x1FFF1111,0x1FFFF111

	.word 0x11BBBBB1,0xBBBBB6B1,0xEBBB6BB1,0x1B1BBB11,0x111EBB11,0xBBEBBB11,0xBEBBBB11,0xBEBEBE11
	.word 0x1EBEEBBE,0xB1313311,0xBEEBEB11,0x1BEBEB31,0x111BBEBE,0xBBB11BBB,0xBBBB3EBE,0xBBBBE1BE
	.word 0x115511B1,0xF1111BB1,0x1F111115,0x11111BB1,0xB1111EBE,0x1111BBBB,0x11B5BEBE,0xBB1BEBBE
	.word 0x11FFFF11,0x11F1111F,0x11F11111,0x1111B1BB,0x11B1BBBB,0x11B8BB11,0x11BB1111,0x11B81BBB
	.word 0xBBEBBB11,0xEBEBEB51,0x1B1BBBB1,0xB11BEBB1,0xBBBBBBB1,0xBBBBBBB1,0xB6BBB6B1,0x11111111
	.word 0xBBBBBB1B,0xBBBBBBB1,0xBB6B6BBB,0xBBBBBB6B,0x6B6B6BBB,0xBBBBBBB6,0xB6B6B6BB,0x11111111
	.word 0xBB1EBBEB,0xB1EBBBEB,0xE1BBEBBB,0xB1BEBBBB,0xBE1BBBBB,0xEBBBBBBB,0xBEBBBBB6,0x11111111
	.word 0x11B11B8B,0x1111BBBB,0x1111BBBB,0x111BBBBE,0x1118BBEB,0x111BBBBB,0x11111EBE,0x11111111

	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00111110,0x011EE110,0x01EEEEE1,0x11EEEEE5
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x11000000,0xE1100000,0xE1100000
	.word 0x2EEEEEE1,0x01FEEEE1,0x011EEE10,0x00111200,0x00000000,0x10000001,0x1000001E,0x1000001E
	.word 0x00000000,0x00000000,0x00000000,0x00000110,0x00011111,0x0001EEE1,0x0002EEFE,0x0001EEEE
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0xE1000000,0x11000000,0x10000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x0000001E,0x00000011,0x00000001,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00005EE1,0x00000110,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x10000000,0xF1100000
	.word 0x00000000,0x00000000,0x10000000,0x21000000,0xE1000000,0xFF100000,0xBE111111,0xEF21EFEE
	.word 0x00000100,0x00000111,0x00001EFE,0x00011EFC,0x0002EFBB,0x0001EBBB,0x002EFFEB,0x011EFCEB
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xCE100000,0xA5000000,0xF1000000,0xF2000000,0x10000000,0x70000000,0x20000000,0x00000000
	.word 0xE12EAAAA,0xF2EAAAAA,0x2EFAAFAA,0xEFEEFEFA,0xEEDDDDEE,0xEFCFEDFC,0xAAFBBCE2,0xAAFBBBF2
	.word 0x01FEDDFB,0x1EEDDDEF,0x1FDDDDDE,0x1EEFDDE7,0x027EDFE7,0x001EDE72,0x0002FE2E,0x000112EA
	.word 0x00000000,0x00000000,0x00000001,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xEFEFBF21,0x12222F10,0x00000110,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x000012FF,0x00001111,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x11111111,0x55555511,0x55555511,0x55555521,0x56556511,0x55555511,0x56555511,0x55556511
	.word 0x11111111,0x55555555,0x55555555,0x55555555,0x55565565,0x55555555,0x55655565,0x55555555
	.word 0x11111111,0x999E1555,0x55591515,0x555E1555,0xF5691555,0xDD591556,0xDF5E3515,0x5F591555
	.word 0x11111111,0x199E999E,0x1E555555,0x1959555F,0x1E596DDF,0x195BD112,0x1E595D5D,0x19595DD5
	.word 0x55555511,0xB5555551,0x55555511,0x55556511,0x55555511,0x555B5511,0x55555511,0x55555511
	.word 0x65555655,0x55565555,0x55555555,0x555555B5,0x555B5555,0x55555555,0x55555555,0x56555555
	.word 0x5F591555,0x5F595515,0x553E1556,0xDD591555,0xDD5E1556,0x55691515,0x55591565,0x555E1555
	.word 0x193E5555,0x19995565,0x1E5B5DDD,0x19595D21,0x1E1E55DD,0x1959F556,0x195B5FD5,0x19995FDD

	.word 0x55B55511,0x55555511,0x55555511,0x55555511,0x55556511,0x55B55511,0x55555511,0x55555511
	.word 0x5555555B,0x5555B555,0x55555555,0x555B5555,0x55555556,0x56555555,0x55555555,0x55555555
	.word 0x555B1555,0x655E1556,0x9EB91515,0x55591555,0x551E1565,0xF55E1555,0x55591555,0xDF591515
	.word 0x1E555555,0x19555555,0x19E9BEBE,0x19555551,0x1E5B55FF,0x1959555F,0x1E1E55DD,0x19595D1D
	.word 0xB5555511,0x55555511,0x55556511,0x55555511,0x55565511,0x5B555511,0x55555511,0x55555511
	.word 0x55555B55,0x55B55555,0x55555555,0x55555555,0x56555565,0x5555B555,0x55555555,0x55555555
	.word 0xDF5E1555,0x555B1556,0x55591555,0x555E1555,0xD5591565,0xD65E1515,0x55591555,0xD55B1555
	.word 0x195B5DDD,0x199B5556,0x1E1E5555,0x195955DD,0x1E5B5DDD,0x19595D1D,0x1E595FD6,0x195B5FDD

	.word 0x55555511,0xB555B511,0x55555511,0x55555511,0x55565511,0x56555511,0x55555511,0x55555511
	.word 0x55B55555,0x55555555,0x55555B55,0x55555555,0x55B55555,0x55555555,0x55555556,0x55555555
	.word 0xD55E1556,0x55591555,0x553E1555,0xBE9E1515,0x55591556,0x555B1555,0xF51E1565,0xDF5E1555
	.word 0x1E5955FD,0x19595555,0x1B555555,0x19E9EBE9,0x19555555,0x195E15FF,0x1E595DDF,0x195B5D1D
	.word 0xB555B511,0x55555511,0x55555511,0x55555511,0x5B555511,0x55555B11,0x55555511,0x55555511
	.word 0x56556555,0x55555555,0x55555B55,0x555B5555,0x55555555,0x55555555,0x55B55555,0x55555555
	.word 0x5F591555,0x5F591555,0xF55E1555,0xD55B1556,0x55591555,0x655E1555,0xD5591556,0xD65E1555
	.word 0x1E595555,0x195955D5,0x193ED12D,0x19995D2D,0x1E5B5555,0x19595555,0x1E1E5DDD,0x1959F11D

	.word 0xB5565511,0x55555511,0x55555511,0x55555511,0xB5556511,0x55555511,0x55555511,0x5555B511
	.word 0x55555555,0x55555565,0x5B556555,0x55555555,0x55555555,0x55555555,0x555555B5,0x55655555
	.word 0xD5591565,0x655E1555,0x55591555,0x555E1555,0xBEB91556,0xE9991555,0x111E1565,0x9E191555
	.word 0x1B59F5DD,0x195E5F55,0x1E595555,0x19555555,0x199E9BE9,0x19EB9E99,0x29111111,0x19599E99
	.word 0x55555511,0x55B55511,0x55555511,0x55555511,0xB5555511,0x55556511,0x55555511,0x11111111
	.word 0x55555555,0x565B5555,0x55555556,0x55555555,0x55555555,0x55B55555,0x55555511,0x11111111
	.word 0x29191555,0x993E1555,0x1E191565,0xE9191555,0x111E1555,0x99991556,0x9E9E1655,0x11111111
	.word 0x591E191E,0x1919B9E9,0x291E5919,0x195999E9,0x1E111111,0x199BE99E,0x1E9E5EB9,0x11111111

	.word 0x11111100,0xEEEEEE10,0x119E9E10,0xE12EEE10,0x51D19E10,0xDD1D1E10,0x11DD1E10,0xDDD2EE10
	.word 0x11111111,0xEEEEEEEE,0xE9E9E9E1,0xEEEEEE11,0xE9E9E1D1,0xEEEE1D1D,0xBE9E1DD1,0xEEEEE1DD
	.word 0x11111111,0xEEEEEEEE,0x19E9E9E9,0x1EEEEEEE,0xA1EE9EE9,0xA2EE9EEE,0xA1EEEE9E,0xA5E9EEEE
	.word 0x00111111,0x01EEEEEE,0x01E9E111,0x01EE1AAA,0x029E1AAA,0x01EE1AAA,0x01EE13AA,0x01EE11AA
	.word 0x111E9E10,0xEEEEEE10,0x11111110,0xFEFEFE10,0x11111F10,0xFFEF1F10,0xEF1F1E10,0xFEFE1F10
	.word 0xE9E9EE11,0xEEEEE9EE,0x11111111,0xFEFEFEFE,0x11111121,0xFEFFEFFE,0xEFEFEFEF,0xFEFFEFEF
	.word 0x21EEEBE9,0xEEE9EEEE,0x11111111,0xFEFEFEFE,0x11112111,0xEFFEFFEF,0xFFEFEFEF,0xFEFEFFEF
	.word 0x029E1113,0x01EEEEEE,0x01111111,0x01FEFEFE,0x01F11111,0x01F1FEFF,0x01E1FEFE,0x01F1FEFE

	.word 0xEFEF1E10,0xEFEF1F10,0xEFEF1E10,0xFEFF1F10,0xFEFE1E10,0xEFFE5F10,0xEFEF1E10,0xFEFE2F10
	.word 0xFEFEFEFF,0xEFFEFFEF,0xEFEFEFEF,0xEFEFEFEF,0xFEFFEFFE,0xFEFEFFEF,0xFEFFEFEF,0xEFEFEFEF
	.word 0xFEFEFEFE,0xFEFFEFEF,0xFEFEFEFF,0xFEFEFFEF,0xFEFFEFEF,0xEFFEFEFE,0xEFEFEFEF,0xFEFEFFEF
	.word 0x01E1F111,0x01F1F1F1,0x01E1E1E1,0x01F1F111,0x01F1F1F1,0x01F1E111,0x01E1F1F5,0x01F1F1E1
	.word 0xFEFF1E10,0xEFEF1F10,0xFFEF1E10,0xFE2F1F10,0xEFFE1E10,0x11111F10,0xEFEFEF10,0x11111100
	.word 0xFEFEFEFE,0xEFEFFEFF,0xFEFEFEFE,0xFFEFFEFE,0xFEFEFEFF,0x11221212,0xFFEFEFEF,0x11112111
	.word 0xFEFFEFEF,0xFEFEFEFF,0xEFFEFEFE,0xEFEFFEFE,0xFFEFEFFE,0x11111111,0xFEFEFEFE,0x11111111
	.word 0x01F1E111,0x01F1FFFE,0x01E1FEEF,0x01F1FEFF,0x01E1FEFE,0x01F11111,0x01FEFFEF,0x00111111

	.word 0x11111111,0x77777771,0x11177571,0xCCC17171,0xCCC17771,0xCCC17771,0xCCC17771,0x11117711
	.word 0x11111111,0x11111117,0x11111111,0xCCCCCCCC,0xCCCCCCCC,0xCCCCCCCC,0xCCCCCCCC,0x11111111
	.word 0x11111111,0x77777771,0x17777111,0x17771CCC,0x71771CCC,0x71771CCC,0x71771CCC,0x71771111
	.word 0x11111111,0x11117711,0x19711777,0x17771777,0x19771777,0x17771777,0x17771797,0x17711777
	.word 0x91111771,0x11117771,0x77717771,0x11111771,0x9F9F1771,0xC9C91171,0x9FE11771,0xF9C11771
	.word 0x95959595,0x11111111,0x77777771,0x11111111,0x9F9F9F9F,0xF9C9C9C9,0x9F9F9F9F,0xC9F99E99
	.word 0x71771125,0x71971111,0x77177777,0x71111111,0x711FCF11,0x911CFC11,0x711FCF21,0xA11CFC11
	.word 0x17A17797,0x2971777A,0x17711777,0x171CC177,0x17111177,0x171CC177,0x191CC177,0x1A711779

	.word 0x9F111771,0x11111771,0x77777771,0x77777771,0x11111111,0x11111111,0xA1111111,0xAA100000
	.word 0x1F9FCFCF,0x11111111,0x77777777,0x77777777,0x11111111,0x11111111,0xAAAAAAAA,0xAAAAAAAA
	.word 0x71111511,0x71111111,0x79777777,0xA7777777,0x11111111,0x11111111,0x111111AA,0x00002AAA
	.word 0x19797977,0x17977779,0x9777A977,0x77979777,0x51511151,0x11111111,0x11111111,0x00000000
	.word 0xAA200000,0xAA100000,0xAA300000,0xAA100000,0xAA300000,0x33110000,0xAAA10000,0x7AA10000
	.word 0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0x35466666,0xAAAAAAAA,0xA7AA7AAA
	.word 0x00001AAA,0x00002AAA,0x00001AAA,0x00002AAA,0x00001AAA,0x00002A12,0x0000111A,0x00001AAA
	.word 0x00000000,0x00100000,0x11111000,0xFFFFF100,0xFFFFFF10,0xFFFF1110,0xFFFF1100,0x11111000

	.word 0xAAA10000,0x7AA10000,0xA1110000,0x11010000,0x75110000,0x97100000,0x11100000,0x10000000
	.word 0xAAAAAAAA,0xA7AA7AAA,0xAAAAAAA7,0x11111111,0x75111175,0x79711175,0x57575957,0x11111111
	.word 0x00011AAA,0x0001AA7A,0x000111AA,0x00001111,0x00001175,0x00000195,0x00000011,0x00000001
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x11111111,0x77771111,0x11111111,0x1CCCCCCC,0x1CCCCCCC,0x1CCCCCCC,0x1CCCCCCC,0x1CCCCCCC
	.word 0x11111111,0x77777777,0x97779779,0x17777777,0x17797779,0x11177797,0xCF117777,0xCFC17777
	.word 0x11111111,0x77977777,0x11111777,0x1FCF1111,0x1FC1111F,0x11C5FC21,0xCF211121,0xFC5CF11F
	.word 0x11111111,0x77777777,0x77977797,0x77777797,0x77977111,0x777111F1,0x1112CFC1,0x71FC21F1
	.word 0x1CCCCCCC,0x1CCCCCCC,0x1CCCCCCC,0x11122222,0x11FCFCF1,0x1FCFCFCF,0x1C11115C,0x1FCFCFCF
	.word 0x5CF17777,0x1FC57777,0xFCF19777,0x11C17777,0xCF517777,0xCF177977,0x5C197777,0xFC577779
	.word 0x115CFC11,0xCF111FCF,0xF1CFC15C,0x11FCFFC2,0x11111FCF,0xF1FCFC1F,0x11CFCF11,0x2111FCFC
	.word 0x91C1FC11,0x71FFCF1F,0x71CCFC1C,0x771F1151,0x77111FC1,0x791FCFC5,0x7711CF11,0x7A91FC1C

	.word 0x1F11FCFC,0x11111111,0x77979A77,0x77977777,0x51151111,0x11111111,0x11111111,0x00000000
	.word 0xCF179A77,0x11179777,0x9A977779,0x77777797,0x11111511,0x11111111,0x11111111,0x00000000
	.word 0x11111115,0x77777771,0x77797797,0x79777797,0x11115115,0x11111111,0x11111111,0x00000000
	.word 0x7771FCF5,0x97771111,0x77791977,0x79779A97,0x11111111,0x11111111,0x11111111,0x00000000
	.word 0x00000000,0x00000000,0x00001100,0x00001F11,0x00001F1F,0x00001F1F,0x00001111,0x00000111
	.word 0x00000000,0x00000000,0x01100000,0x1FF11000,0x1FFF1100,0x1FFFF100,0x1F111100,0x01100000
	.word 0x00000000,0x00000000,0x11110000,0x11F11000,0x1FFFF100,0x1FFFF100,0x11FFF100,0x01111000
	.word 0x00000000,0x00000000,0x00001111,0x00011FFF,0x00001111,0x00000100,0x00000000,0x00000000

	.word 0x11111111,0xBBBBBBB2,0xBBBBBBB1,0xBBBEBBB5,0xEBBBBBB1,0xBBBBBBE1,0xBBBBBBB1,0xBBBBEBB1
	.word 0x11111111,0xBBBB171B,0xBBBB171B,0xBBBB171B,0xBBBB171B,0xBBBB171B,0x1111171B,0x7777771E
	.word 0x11111111,0xB171BBBB,0xB171BBBB,0xB171BBBB,0xB171BBBB,0xB171BBBB,0xB1711811,0xB1777777
	.word 0x11111111,0x1BBBBBBB,0x1BBBBBBB,0x1BBB8BBB,0x1B8BBBBB,0x1BBBBBBB,0x1BBB8BB8,0x1BB8BBBB
	.word 0xBBBBBBB1,0xBBBEBBB5,0xBBBBBBB1,0xBBBBBBB5,0xBEBBBBB1,0xBBBBBBB5,0xBBBBBBB1,0xBBBBBBB5
	.word 0x1111171B,0xBBBB171B,0xBBBB171B,0xBBBB171B,0xBBBB171B,0xBBBB171B,0x1111171B,0x7777771B
	.word 0xB1711181,0xB171BBBB,0xB171BBBB,0x8171B8BB,0xB171BBBB,0x8171BBBB,0xB1711811,0xB1777777
	.word 0x28BBBB8B,0x1BBB8BBB,0x1B8BBBBB,0x1BBB8B8B,0x28B8BBBB,0x1BBBB8BB,0x1B8B8BB8,0x1B8BBB8B

	.word 0xBBBBBBB1,0xBBBBBBB5,0xBBBBBBB1,0xBBBBBBB5,0xBBBBBBB1,0xBBBBBBB5,0xBBBBBBB1,0xBBBBBBB1
	.word 0x1111171B,0xBBBB171B,0xB8BB171B,0xBBBB171B,0x8BB8171B,0xBBBB171B,0x1111171B,0x7777771B
	.word 0x81711181,0xB171BBBB,0x81718B8B,0xB171BBBB,0x81718B8B,0x8171BBBB,0xB1711811,0x81777777
	.word 0x1BB8B8BB,0x1B8BBBBB,0x28B8B88B,0x1BB8BBBB,0x288BB88B,0x1BB8B8BB,0x288BB8B8,0x1B8B8BBB
	.word 0xBBBBBBB1,0xBBBBBBB1,0xB8BBBBB1,0xBBBBBBB1,0x8BBB8BB1,0xBBB8BBB1,0xB8BBBBB1,0x22222111
	.word 0x11111718,0xB8BB171B,0x8BBB878B,0xBB8B871B,0xB8BB171B,0x8BBB878B,0xB8B8171B,0x72722722
	.word 0xB8711181,0xB171B8BB,0x8878B8BB,0xB8718BB8,0x8171BB8B,0xB878B8BB,0xB171B8B8,0x72727272
	.word 0x2B8BB8B8,0x18B8B8B8,0x2B8B8B8B,0x18B8B8B8,0x2B8B8B8B,0x18B8B8B8,0x2B88B8B8,0x11227227

	.word 0x11111111,0xEEEEEEE1,0xEEEEEEE1,0xEEEEEEE1,0xFEEEFEE5,0xEEEEEEE1,0xEEEEEEE5,0xEEEFEEE1
	.word 0x11111111,0xEEEEEEEE,0x11111EEE,0xEEEE5EEE,0x1EE51EEE,0x2EE1EEEE,0x2112EEEE,0x5BB1EEFE
	.word 0x11111111,0xEEEEEEEE,0x11111EE2,0x99995EE1,0x55551EE5,0x13212EEE,0x11111EEE,0x99112EEE
	.word 0x11111111,0xEEEEEEEE,0x21111111,0x25999999,0x59595555,0x11111113,0x55551111,0x1515119E
	.word 0xEEEEEEE5,0xEFEEEEE1,0x721EEEE5,0xEEE7EEE1,0x551EEEE7,0x1E2EEEE1,0x5E1EEEE5,0x152EEEE1
	.word 0x5125EEEE,0x2BB1EEEE,0x5BB5EEEE,0x3EB5EEE2,0x5BB6EEEE,0x5BB1EFEE,0x5BE6EEEE,0xBBBB1EEE
	.word 0x9B111EEE,0xE9115EEE,0x11111EEE,0x11111EEE,0xEEEEEEEE,0xEEEEEEEE,0xFEEEEFEE,0xEEEEEEE5
	.word 0x251511B9,0x15151199,0x75551111,0x11111111,0xEEEEEEEE,0xEEEEEEEE,0xEEFEEEEE,0xEEEEEFEE

	.word 0xDDD1EEE5,0x555D7EE2,0xDDDDD1E2,0xDDDDD2E1,0xDDDD3EE1,0x3222EEE1,0xEEEEEEE2,0x11112121
	.word 0x1BE6EFE1,0xE63EEE1D,0xEEEEE1DD,0xFEEEE1DD,0xEEEEFE1D,0xEEEEEEE1,0xEEEEEEEE,0x21551512
	.word 0xEEEEFEEE,0xEEEEEEEE,0xFEEEEEEE,0xEEEFEEEE,0xEEEEEEEE,0xEEEEEEFE,0xFEEEEEEE,0x22722721
	.word 0xEEEEEEEE,0xEFEEEEEE,0xEEEEEEEE,0xEEEEEFEE,0xFEEEEEEE,0xEEEFEEEE,0xEEEEEEEE,0x72272272
	.word 0x11117771,0x00117771,0x00117771,0x00117771,0x00117711,0x00117771,0x00017771,0x00011111
	.word 0x11111111,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x11111111,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x21111111,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x11111111,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEFEEEE,0xEEEEEFEE,0xEEEEEEEE,0xEFEEEEEE
	.word 0x11111111,0xEEEEEEEE,0x1111EEEE,0x5295EEEE,0x1191EEEF,0x5592EEEE,0x5191EEEE,0x5195EEEE
	.word 0x11111111,0xEEEEEEEE,0x11111111,0x55555555,0x55255552,0x55511255,0x51555555,0x55551155
	.word 0x11111111,0x1EEEEEEE,0x1E111111,0x1E291555,0x1E195555,0x1E591512,0x1E191555,0x1E191555
	.word 0xEEEEEEEE,0xEEEEEFEE,0xEEEEEEEE,0xEEEFEEEE,0xEFEEEEEE,0xEEEEEEEE,0xEEEEEEFE,0xEEEEEEEE
	.word 0x5193EEFE,0x5391EEEE,0x2191EEEE,0x1195EEEE,0x5191EEFE,0x51B5EEEE,0x5191EEEE,0x1195EEEE
	.word 0x21555555,0x55525515,0x15555555,0x55115551,0x55555555,0x55115512,0x51555555,0x11211111
	.word 0x1E295555,0x1E191155,0x1E295115,0x1E191555,0x1E195551,0x1E591115,0x1E193155,0x1E191111

	.word 0xEEFEEEEE,0xEEEEEEFE,0xEEEEEEEE,0xEEEEEEEE,0xEEEFEEFA,0xEEEEEEEE,0xEEEEEEEE,0x52727272
	.word 0xB191EEEF,0x9195EEEE,0x1111EEEE,0xEEEEEEEF,0xEEEEEEEE,0xEEEEEFEE,0xFEEFEEEE,0x11111112
	.word 0x99999999,0xE9E9BE9E,0x11111111,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEFEEFEEE,0x21111151
	.word 0x1E295999,0x1E191E9B,0x1E111111,0x1EEEEEEE,0x1EEEEEEE,0x2EEEEFEE,0x1EEEEEEE,0x11525221
	.word 0x11111122,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x11111121,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x11111111,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x17771111,0x17771100,0x17771100,0x17771100,0x17771100,0x17771100,0x17771000,0x11111000

	.section .rodata
	.align	2
	.global scout_lab_bn_graphicsPal		@ 32 unsigned chars
	.hidden scout_lab_bn_graphicsPal
scout_lab_bn_graphicsPal:
	.hword 0x03E0,0x0000,0x0821,0x1042,0x1463,0x1084,0x1C83,0x1488
	.hword 0x24C5,0x210A,0x1CF2,0x3949,0x3E75,0x1707,0x5293,0x7FFF

@}}BLOCK(scout_lab_bn_graphics)
