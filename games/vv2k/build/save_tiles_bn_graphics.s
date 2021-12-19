
@{{BLOCK(save_tiles_bn_graphics)

@=======================================================================
@
@	save_tiles_bn_graphics, 32x256@4, 
@	+ palette 16 entries, not compressed
@	+ 128 tiles not compressed
@	Total size: 32 + 4096 = 4128
@
@	Time-stamp: 2021-12-18, 23:06:31
@	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global save_tiles_bn_graphicsTiles		@ 4096 unsigned chars
	.hidden save_tiles_bn_graphicsTiles
save_tiles_bn_graphicsTiles:
	.word 0xDDDDDDDD,0xB1DDDDDD,0xBB1DDDDD,0xBB11DDDD,0xB1B1DDDD,0x11B1DDDD,0x1191DDDD,0x11B1DDDD
	.word 0xDDDDDDDD,0x99BBBBBB,0x99BBBBBB,0x98BBBBBB,0x99BBBBBB,0xBBBBBBBB,0xBBBBBB9B,0xBBBBBBBB
	.word 0xDDDDDDDD,0x19998899,0x89888889,0x98888999,0x88988999,0x988999BB,0x999999BB,0x99BBBBBB
	.word 0xDDDDDDDD,0xDDDDDD11,0xDDDDD119,0xDDDD1199,0xDDDD1998,0xDDD11198,0xDD1B1999,0xDD119999
	.word 0x1BB11DDD,0xBB1B1DDD,0xBBBB1DDD,0xBBBB11DD,0xBBBBB1DD,0xBBBBB1DD,0xBBBB11DD,0xBBB91DDD
	.word 0xB9BBB19B,0xBBBB1B9B,0xBBB1CBBB,0xB11CCCCB,0x11CC1111,0xC11CC111,0xCCCCC1C1,0xCCCCC1C1
	.word 0xBBBBBBBB,0xBBBBBBB9,0xBBBBBBBB,0xBBB9BBBB,0xBBBBB111,0x111111C1,0x1BB11CC1,0x1BB1CC11
	.word 0xDD11999B,0xD119B99B,0xD119999B,0xD119B99B,0xD199999B,0xD1B9999B,0xD1999911,0xD1B9991C

	.word 0x999B1DDD,0x999B1DDD,0x9991DDDD,0x891DDDDD,0x911DDDDD,0x11DDDDDD,0xDDDDDDDD,0xDDDDDDDD
	.word 0xCCCC1CC1,0xCCCC2CC1,0xCCC1CC11,0x2CCCC118,0xCCC11888,0x11188811,0x9991111D,0x811DDDDD
	.word 0x1B11CC1C,0x1B1C1C1C,0xB1CCCCCC,0xB111CCC1,0x1CCC11CC,0xCCCCCC11,0xCCCCC1C9,0xCCCCCCC1
	.word 0xD199991C,0xD119B911,0xDD1B99B1,0xDD11B999,0xDDD19999,0xDDDD1111,0xDDDDD111,0xDDDDD1C1
	.word 0xDDDDDDDD,0xDDDDDDDD,0xDDDDDDDD,0xDDDDDDDD,0xDDDDDDDD,0xDDDDDDDD,0xDDDDDDDD,0xDDDDDDDD
	.word 0x1C1DDDDD,0x1C1DDDDD,0x1CC1DDDD,0xB1C1DDDD,0xB1C11DDD,0xB1CC1DDD,0xB1CC11DD,0xDDDDDDDD
	.word 0x1CCCCCC1,0x111CC111,0x1B11119B,0x1BB9898B,0x1BBBB8BB,0x1BBBBBBB,0x2BBBBBBB,0xDDDDDDDD
	.word 0xDDDDD1CC,0xDDDD1CCC,0xDDDD1CCC,0xDDDD1CCC,0xDDDD1CCC,0xDDDD1CCC,0xDDDD1CCC,0xDDDDDDDD

	.word 0xAAAAAAAA,0x2222222A,0x2122222A,0x1221222A,0x1212222A,0x1112222A,0x5511122A,0x5445111A
	.word 0xAAAAAAAA,0xAA122221,0xAA112212,0xAAA11112,0xAA111111,0x11111511,0x51145454,0x11511541
	.word 0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAA1,0xAAAAAA11
	.word 0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA
	.word 0x5451155A,0x1155515A,0x5551151A,0x5555151A,0x5551151A,0x5552151A,0x5551515A,0x5551515A
	.word 0x15551515,0x54511551,0x55511555,0x55515555,0x55515555,0x55515555,0x51555555,0x55555555
	.word 0xAAAAA111,0xAAAA1511,0xAAAA1411,0xAAA15155,0xAAA15114,0xAAA14111,0x1AA15115,0x1AA14514
	.word 0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAA1,0xAAAAAA11

	.word 0x5551414A,0x1555334A,0x5513333A,0x5544133A,0x1111133A,0x2221134A,0x1112111A,0xCC11222A
	.word 0x55555555,0x55555555,0x11555555,0x11111154,0x1C1BB111,0xC199B1C1,0x11111C11,0x9991111C
	.word 0x51AA1511,0x551AA111,0x551AAAAA,0x1111AAAA,0x555111A1,0x555511A1,0x52511111,0x1151C111
	.word 0xAAAAAA15,0xAAAAAA11,0xAAA11111,0xAAA15511,0xAAA15551,0xAAA11515,0xAAAA1112,0xAAAAA151
	.word 0xCCC1122A,0xCCC1222A,0xCCC1222A,0xCC11222A,0xCC12222A,0xCC12222A,0xC112222A,0xAAAAAAAA
	.word 0x999B11CC,0x9BBB1CCC,0x99B1CCCC,0x8B11CCCC,0x911CCCCC,0xB1CCCCCC,0x11CCCCCC,0xAAAAAAAA
	.word 0x111CC11B,0xCCCCC1B9,0xCCCC1199,0x2112C198,0xCCCCC188,0xCCCC199B,0xCCCC1B1B,0xAAAAAAAA
	.word 0xAAAAA111,0xAAAAA1CC,0xAAAA1CCC,0xAAAA1111,0xAAAA1CCC,0xAAA11CCC,0xAAA1CCCC,0xAAAAAAAA

	.word 0x36636366,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666,0x66663666
	.word 0x66666366,0x45511666,0x45411166,0x44551166,0x11544166,0xC1155166,0xCC145416,0xC1114513
	.word 0x66666666,0x11555144,0x45114414,0x51141113,0x11C11111,0xCCCCC11C,0xCCCCCC1C,0xC1111CCC
	.word 0x66666666,0x65555551,0x65555555,0x65555554,0x65555555,0x65555551,0x6555551C,0x6555551C
	.word 0x66666666,0x66666666,0x66666666,0x16666666,0x16665666,0x16666666,0x16666666,0x16666666
	.word 0x11114516,0xCCCC1451,0x11111441,0xC1CC1455,0xC11CC154,0xC11CC145,0xC1CCC144,0xC2CCC145
	.word 0xC11111CC,0xCCCCCCCC,0xCC1111CC,0xC1C1CCCC,0xCCC12CCC,0xCCC21CCC,0xCCC1CCCC,0xCCC2CCCC
	.word 0x6555451C,0x655554CC,0x654511CC,0x65511CCC,0x6551C1CC,0x644111CC,0x65551C2C,0x6445111C

	.word 0x11656666,0x11666666,0x16666666,0x65666666,0x66666666,0x66666666,0x66666666,0x56666666
	.word 0x1CCCC145,0xC1CC1341,0xCCCC1451,0xCCCC1441,0xCCC11411,0x1C114116,0x11111116,0x14441166
	.word 0xCCCCCCCC,0xCCCCCCCC,0xCCC2CCCC,0xCCCC2CCC,0xCCCCCCCC,0x1C1C2C1C,0xC1111111,0xCCCCCCCC
	.word 0x6555411C,0x6544551C,0x65555511,0x6154541C,0x61114511,0x65511111,0x6544111C,0x6455541C
	.word 0x66666666,0x66666656,0x66666666,0x66666666,0x66656666,0x16666666,0x16666666,0x66666666
	.word 0x11111666,0x11166666,0x19911166,0x19999116,0x9999BB11,0x9B9BBBB1,0x999BBBBB,0x66666666
	.word 0xCCCCCCCC,0x1CCCCCC1,0x1111111E,0xE1E1E1E1,0x11111111,0x9BBBBBBB,0xBBBBBBBB,0x66666666
	.word 0x65541111,0x61111111,0x6BB9B91E,0x6BBBBBB1,0x6BBBB999,0x6BBBB999,0x6BBB99B9,0x66666666

	.word 0x77777777,0x11111777,0x11111777,0x11111777,0x11111777,0x54111777,0x54511777,0x15511177
	.word 0x77777777,0x11111111,0x11111111,0x11111111,0x11554545,0x15555454,0x11555455,0x51155511
	.word 0x77777777,0x77777771,0x77777771,0x77777771,0x77777771,0x77777711,0x77777711,0x77771111
	.word 0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777
	.word 0x15111177,0x51111177,0x51511177,0x15555177,0x15554177,0x54445177,0x55551177,0x45451777
	.word 0x55555555,0x15555555,0x21555551,0x11555552,0x15555551,0x15555551,0x15555551,0x15555551
	.word 0x77715111,0x77711154,0x77711545,0x77711454,0x77711555,0x77715445,0x77715455,0x77714544
	.word 0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777

	.word 0x45451777,0x55541777,0x54541777,0x15451777,0x55551777,0x54441777,0x44441777,0x44411777
	.word 0x15555551,0x54555551,0x14555555,0x51115555,0x54555111,0x55111555,0x55555554,0x55555544
	.word 0x77715545,0x77714554,0x77145545,0x77154455,0x77154555,0x77115455,0x77711444,0x77777144
	.word 0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77771177
	.word 0x11117777,0x43311177,0x44311177,0x111CC117,0x1CCCCC17,0xCCCCCCC7,0xCCC111C7,0x77777777
	.word 0x11454441,0x41111111,0x33444444,0x14434111,0x11111111,0x1E1E1E1C,0xC11111CC,0x77777777
	.word 0x77777711,0x77711114,0x77711114,0x7711CCC1,0x771CCCCC,0x7111CCCC,0x7111CCCC,0x77777777
	.word 0x71715117,0x75115517,0x75155517,0x75555517,0x75545517,0x75454177,0x75555177,0x77777777

	.word 0x66666666,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666
	.word 0x66666666,0x66666666,0x66666666,0x66666666,0x11666666,0xD1116666,0xDDDD1666,0xDBDD1166
	.word 0x66666666,0x66666666,0x66666666,0x61111111,0x11DDDDD1,0xBDDDDDDD,0xDDDBBDDD,0xDDDDDBBD
	.word 0x66666666,0x66666666,0x66666666,0x66666666,0x66666611,0x6666111B,0x66661BBD,0x6661BBDD
	.word 0x66666666,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666
	.word 0xDDBDD166,0xDDDBD166,0xDDDBDD16,0xDDDB1116,0xDDDB1116,0xD1D11166,0xD1D11166,0x1DD11116
	.word 0xDDDDDBBD,0xBDDBDDBD,0xDDDBDDDD,0x1DD1DDBD,0x1DD1DDBD,0xD111DD1D,0xDD11DD1D,0xDD11DD1D
	.word 0x661BBDDD,0x611DBDDD,0x61BBDDDD,0x61BBDDDD,0x61B111D1,0x61B111D1,0x611DD111,0x61111111

	.word 0x66666666,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666
	.word 0x11D1D111,0xC111D1C1,0x11C111C1,0x11CC1CC1,0x1CCC1CC1,0x1CCC1116,0x1CCC1666,0x1C111666
	.word 0x11CC1C11,0x1C11CCC1,0xCC11CCCC,0xCC11CCCC,0xCC1CCCCC,0xCC1CCC1C,0xCC1CCC1C,0xCC1CCCC1
	.word 0x66111111,0x611CC11C,0x611CCC1C,0x611CCCCC,0x661CC1CC,0x666111CC,0x66661111,0x6666661C
	.word 0x66666666,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666
	.word 0xCCC16666,0xCC116666,0x11666666,0x16666666,0x66666666,0x11666666,0xE7111166,0x66666666
	.word 0xC1CCCCCC,0xCC1111CC,0x1CCCCCCC,0xC1111111,0xCCCCCCC1,0xCCCCCCC1,0x11111111,0x66666666
	.word 0x6666611C,0x66666111,0x666611C1,0x66661CCC,0x66661CCC,0x6661111C,0x6117EE11,0x66666666

	.word 0xAAAAAAAA,0x331AAAAA,0x3331AAAA,0x3333111A,0x4443133A,0x4443333A,0x4444333A,0x4444443A
	.word 0xAAAAAAAA,0x44411133,0x44444133,0x44444114,0x33334114,0x33333344,0x33333334,0x33333333
	.word 0xAAAAAAAA,0xA1333444,0x12111144,0x11333311,0x13333333,0x13333333,0x13333333,0x13333333
	.word 0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAA1,0xAAAAAAA1
	.word 0x4333344A,0x3333333A,0x1333333A,0x1333333A,0x1333333A,0x1111333A,0xC113333A,0x1C13333A
	.word 0x33333333,0x33333333,0x33333331,0x3333111C,0x11111CCC,0x1CCCCCC1,0x1CCCCCCC,0xC1CCCCCC
	.word 0x11333333,0x11333333,0x21333333,0x13311333,0x11122111,0xAA111133,0xAAA11141,0xAAA14111
	.word 0xAAAAAAA1,0xAAAAAAA1,0xAAAAAAA1,0xAAAAAAA1,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA

	.word 0xC113333A,0x1C11133A,0x1CC1111A,0x1CC1C11A,0x1CC1C11A,0xCCCCCC1A,0xCCCCC1CA,0xCC111CCA
	.word 0xCC1CCCCC,0xC1CCCCCC,0xC1CCCCCC,0xC1CC1CCC,0xC1C1CC1C,0xCCCC11CC,0x11CCCCCC,0x3111111C
	.word 0xAAA1411C,0xAAA1411C,0xAA1141CC,0xAA1111CC,0xAA13111C,0xAA131411,0xAA133111,0xAA133333
	.word 0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA
	.word 0x1111111A,0xC111333A,0x1111133A,0x1111711A,0x11E1177A,0xEEEE177A,0x1EE1777A,0xAAAAAAAA
	.word 0x3311C111,0x3111CCCC,0x1111CCC1,0x11111111,0x11E111E1,0x1111E111,0x7111EEE1,0xAAAAAAAA
	.word 0xAA133333,0xAA133333,0xAAA13333,0xAAA13111,0xAAA11177,0xAAAA1177,0xAAAA1777,0xAAAAAAAA
	.word 0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA

	.word 0xDDDDDDDD,0xDDDDDDDD,0xDDDDDDDD,0x11DDDDDD,0x661DDDDD,0x661DDDDD,0x6661DDDD,0x6661DDDD
	.word 0xDDDDDDDD,0x11DDDDDD,0x66111111,0x66611666,0x66666666,0x66666666,0x66666666,0x66666666
	.word 0xDDDDDDDD,0xDD111111,0x11166666,0x66666666,0x66666666,0x66666666,0x66666666,0x66666666
	.word 0xDDDDDDDD,0xDDDDDDDD,0xDDDDDDDD,0xDDDDDDD1,0xDDDDDD16,0xDDDDD116,0xDDDDD166,0xDDDDD166
	.word 0x6661DDDD,0x6661DDDD,0x66611DDD,0x66661DDD,0x166161DD,0x166161DD,0x616161DD,0x116161DD
	.word 0x16666666,0x11666666,0x11666666,0x1C166666,0xCCC16666,0xCCCC1666,0xCCCC1111,0xCCCC11CC
	.word 0x66666666,0x66666666,0x66666666,0x66666666,0x61666661,0x6166661C,0x1666111C,0x1111C11C
	.word 0xDDDDD116,0xDDDDD166,0xDDDDD166,0xDDDDD116,0xDDDDD116,0xDDDDD166,0xDDDDD166,0xDDDDD161

	.word 0xC11161DD,0xC11C111D,0xC11C161D,0x161C111D,0x161161DD,0x16661DDD,0x1661DDDD,0x611DDDDD
	.word 0xCCCC11CC,0xCCCC1CCC,0xC1CC1C1C,0xCC1C1CCC,0xCCCCCC1C,0x11CCCCCC,0xCCCCCCC1,0xCCC11111
	.word 0x11CCC11C,0x111CC1CC,0x11CCC1CC,0xC1CCC1CC,0x111CCCC1,0x611CCCCC,0x6611CCCC,0x1161111C
	.word 0xDDDDD161,0xDDD11161,0xDDD11111,0xDDDD1111,0xDDDD1166,0xDDDDD116,0xDDDDDDD1,0xDDDDDDDD
	.word 0x1DDDDDDD,0xDDDDDDDD,0x1DDDDDDD,0x11DDDDDD,0x61DDDDDD,0x611DDDDD,0x1E11DDDD,0xDDDDDDDD
	.word 0x1111C111,0xCCCCC11D,0xCCCCC111,0xCCCCC1E1,0xCCCC11E1,0xCCC11E11,0x1111EE16,0xDDDDDDDD
	.word 0xD1111111,0xDDDDD1CC,0xD11111CC,0xD16111CC,0xD161E1CC,0x11111E11,0x1E161EE1,0xDDDDDDDD
	.word 0xDDDDDDDD,0xDDDDDDDD,0xDDDDDDDD,0xDDDDDDDD,0xDDDDDDDD,0xDDDDDDDD,0xDDDDDDD1,0xDDDDDDDD

	.word 0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777
	.word 0x77777777,0x11177777,0x11111777,0x11111177,0x11111117,0x11111117,0x11111111,0x11111111
	.word 0x77777777,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111
	.word 0x77777777,0x77777711,0x77777111,0x77771111,0x77711111,0x77111111,0x77111111,0x77111111
	.word 0x17777777,0x17777777,0x17777777,0x11777777,0x11177777,0x13317777,0x13317777,0x11331777
	.word 0x11111111,0x33333111,0x31113111,0x11331331,0x31333333,0x31133333,0x31333333,0x31333333
	.word 0x11111111,0x31133333,0x11133333,0x13111333,0x31133333,0x31133333,0x31333333,0x31333333
	.word 0x77111111,0x77111113,0x77111133,0x77111131,0x77111133,0x77111133,0x77131333,0x77131333

	.word 0x31331777,0x31317777,0x31117777,0x11777777,0x17777777,0x17777777,0x77777777,0x77777777
	.word 0x33333333,0x13333333,0x31333333,0x33333333,0x33333333,0x33333311,0x33331117,0x33111777
	.word 0x31333333,0x33333331,0x33333333,0x33333333,0x33331133,0x13333313,0x11133333,0x13111113
	.word 0x77131133,0x77133133,0x77113133,0x77711713,0x77711111,0x77717171,0x77771777,0x77777777
	.word 0x77777777,0x77777777,0x77777777,0x77777777,0x11177777,0xAA117777,0xAAA17777,0x77777777
	.word 0x11131777,0x33331777,0x33331117,0x31131111,0x11331EE1,0x1311EE11,0x111EEE1A,0x77777777
	.word 0x13333311,0x13333333,0x33133333,0x13111133,0x11333133,0xE1113333,0xEEE11133,0x77777777
	.word 0x77777777,0x77777711,0x77111111,0x711A11E1,0x71AAA1EE,0x7AAAA11E,0x7AAAAA11,0x77777777

	.section .rodata
	.align	2
	.global save_tiles_bn_graphicsPal		@ 32 unsigned chars
	.hidden save_tiles_bn_graphicsPal
save_tiles_bn_graphicsPal:
	.hword 0x12E0,0x0000,0x14A5,0x0CC8,0x110A,0x152B,0x1CF2,0x5988
	.hword 0x1173,0x15B4,0x1647,0x19D5,0x3695,0x12F7,0x7FFF,0x0000

@}}BLOCK(save_tiles_bn_graphics)
