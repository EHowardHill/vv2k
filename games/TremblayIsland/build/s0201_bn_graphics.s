
@{{BLOCK(s0201_bn_graphics)

@=======================================================================
@
@	s0201_bn_graphics, 256x256@4, 
@	+ palette 16 entries, not compressed
@	+ 100 tiles (t|f|p reduced) not compressed
@	+ regular map (flat), not compressed, 32x32 
@	Total size: 32 + 3200 + 2048 = 5280
@
@	Time-stamp: 2022-03-21, 06:46:35
@	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global s0201_bn_graphicsTiles		@ 3200 unsigned chars
	.hidden s0201_bn_graphicsTiles
s0201_bn_graphicsTiles:
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0xDDDDD000,0xDDDDD000,0xDDDDD000,0xDDDDD000,0xDDDDD000
	.word 0x00000000,0x00000000,0x00000000,0xCCCCDDDD,0xDDDDDCDD,0xCDCDDDDD,0xCCCDCDDC,0xDCDCCDCD
	.word 0x00000000,0x00000000,0x00000000,0xCCCCCCCC,0xCCCCCDDD,0xCBCCCCCC,0xCCDCCCDC,0xCBCCCCCC
	.word 0x00000000,0x00000000,0x00000000,0xCBCCCCCC,0xCBCBCBCB,0xBCCCCCBD,0xBCBCBBCC,0xCBCBCDCC
	.word 0x00000000,0x00000000,0x00000000,0xBBBBBBCB,0xBBBBCCCB,0xBCBCBBBC,0xCBBBBCCB,0xBBCBCBBC
	.word 0x00000000,0x00000000,0x00000000,0xBBBBBBBB,0xBBBBBBBB,0xBABBBBBB,0xBBBBBBBB,0xABBBBBBB
	.word 0x00000000,0x00000000,0x00000000,0xBBBBBBBB,0xAABABABA,0xBBABBBBB,0xBABBBBAB,0xBBABBABB

	.word 0x00000000,0x00000000,0x00000000,0xBABABABB,0xAABABABA,0xBAABABAB,0xBABBABAB,0xAABABABA
	.word 0x00000000,0x00000000,0x00000000,0xAAAAAAAA,0xAAAAABAB,0xAAABAAAA,0xAABAAABA,0xAAAAABAB
	.word 0x00000000,0x00000000,0x00000000,0xAAAAAAAA,0xAAAAAAAA,0xAAAAAAAA,0xAA9AAAAA,0x9AAAAAAA
	.word 0x00000000,0x00000000,0x00000000,0xAAAAAAAA,0xA9A9A9AA,0xAA9AAAA9,0xAA9AA9AA,0x9AAA9AAA
	.word 0x00000000,0x00000000,0x00000000,0xA9A9AA9A,0xA9AA9A9A,0xA99A9AA9,0xA9A9A9A9,0xA9AA9AAA
	.word 0x00000000,0x00000000,0x00000000,0x99999A99,0xA9A9A9A9,0x999A99A9,0x99A99A99,0x9999A9A9
	.word 0x00000000,0x00000000,0x00000000,0x99999999,0x99999999,0x9999999A,0x99999A99,0x99999999
	.word 0x00000000,0x00000000,0x00000000,0x99999999,0x99898999,0x89999999,0x89989998,0x99899989

	.word 0x00000000,0x00000000,0x00000000,0x89898998,0x89898989,0x98989899,0x98989899,0x88998998
	.word 0x00000000,0x00000000,0x00000000,0x88888898,0x88898988,0x89888898,0x88889898,0x89898889
	.word 0x00000000,0x00000000,0x00000000,0x88888888,0x88888888,0x88888888,0x88888888,0x88888889
	.word 0x00000000,0x00000000,0x00000000,0x88788888,0x87888878,0x88787888,0x77888887,0x88878788
	.word 0x00000000,0x00000000,0x00000000,0x78778787,0x87787787,0x87787878,0x77877878,0x87787887
	.word 0x00000000,0x00000000,0x00000000,0x77777777,0x77777777,0x77777787,0x77777777,0x77777787
	.word 0x00000000,0x00000000,0x00000000,0x67777777,0x76767677,0x67776777,0x76767776,0x67777777
	.word 0x00000000,0x00000000,0x00000000,0x66666767,0x66767667,0x66666767,0x67676676,0x66666767

	.word 0x00000000,0x00000000,0x00000000,0x66666666,0x65666666,0x66666666,0x66566666,0x66666666
	.word 0x00000000,0x00000000,0x00000000,0x55565656,0x66565656,0x55565665,0x65656565,0x55565656
	.word 0x00000000,0x00000000,0x00000000,0x55555555,0x54555555,0x45555555,0x55545555,0x45455555
	.word 0x00000000,0x00000000,0x00000000,0x44445454,0x44454545,0x44544545,0x44444545,0x44454545
	.word 0x00000000,0x00000000,0x00000000,0x34344444,0x43343444,0x34344434,0x43343444,0x34434434
	.word 0x00000000,0x00000000,0x00000000,0x23233333,0x23233333,0x32333333,0x32323333,0x22333333
	.word 0x00000000,0x00000000,0x00000000,0x11112222,0x11112222,0x01121222,0x11212222,0x11122222
	.word 0x00000000,0x00000000,0x00000000,0x00000001,0x00000010,0x00000001,0x00000101,0x00000001

	.word 0xDDDDD000,0xDCDDD000,0xDDDDD000,0xDDDDD000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xCDCDDCDD,0xCDCCDDCD,0xCCDCDCDD,0xCCDCDDDC,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xBCDCCCDC,0xDCCCCCCC,0xBCCCCCCD,0xDCCCCCCC,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xBBCCCCBC,0xCCBCBCCC,0xBBBCCCCC,0xCCDBBCCB,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xBBBBBBCB,0xBCBCBCBC,0xCBBBBCBC,0xBBBCBBCB,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xBBBBBBBB,0xBBBBBBBB,0xBBABBBBB,0xBBBBBBBB,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xBABBABBB,0xBBABBBBA,0xBABBBBAB,0xBBABABBB,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xABAABABB,0xBABBABAA,0xAABABABB,0xABAABABA,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0xAAAABAAA,0xAABAAABA,0xAAAABABA,0xAAABAAAB,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xAAAAAAAA,0xAAAAAAAA,0xA9AAAAAA,0xAAAAAAAA,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xAA9AAA9A,0xA9AA9AAA,0x9AA9AA9A,0xAA9AAAAA,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xA99A9A99,0xA9A9A9AA,0xA9A9A9AA,0x9A9A9AA9,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x9A9A9999,0x99999AA9,0x99A9A999,0xA999A9AA,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x9999999A,0x99999999,0x99999999,0x999999A9,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x89999999,0x99899899,0x99999999,0x89898999,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x98989989,0x98989898,0x98989899,0x89898998,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x88888988,0x88988898,0x89888988,0x88889889,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x88888888,0x88888888,0x88888888,0x88888889,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x87878888,0x78888878,0x88787888,0x87888788,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x87787878,0x77878787,0x87877787,0x77787887,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x77777777,0x77777877,0x77777777,0x67777778,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x67667677,0x77777777,0x76767677,0x67677777,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x66676767,0x66766676,0x66667676,0x66766767,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x65656666,0x66666666,0x65666666,0x56656666,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x56565656,0x65656565,0x55555566,0x66566656,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x45555555,0x55555555,0x55455555,0x54555555,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x44544545,0x44445454,0x44454454,0x44445545,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x34334444,0x33444344,0x43433444,0x33434444,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x33323334,0x22333333,0x23323333,0x23233333,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x01111222,0x11112222,0x11122222,0x11112122,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000001,0x00000010,0x00000010,0x00000001,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0xEEEEE000,0xBDEBC000,0x0AE60000,0x0AE60000,0x0AE60000

	.word 0x00000000,0x00000000,0x00000000,0xEC0DE408,0xE72ED007,0xE08E8000,0xC0DE1000,0xD2EC0000
	.word 0x00000000,0x00000000,0x00000000,0x00DE2007,0x009E700A,0x003EC00D,0x000DE04E,0x0008E89E
	.word 0x00000000,0x00000000,0x00000000,0xDEED7000,0xEDDEE900,0x5004EE50,0x00008E90,0x00003EB0
	.word 0x00000000,0x00000000,0x00000000,0x00000006,0x0000009E,0x000004EE,0x000009E8,0x00000BE5
	.word 0x00000000,0x00000000,0x00000000,0xED000000,0xEE000000,0xEE000000,0xEE400000,0x9E700000
	.word 0x00000000,0x00000000,0x00000000,0x005ED003,0x005EE409,0x008EEA0D,0x00AEED3E,0x00BEAEAE
	.word 0x00000000,0x00000000,0x00000000,0xE9000006,0xE800009E,0xE80004EE,0xE80009E8,0xE8000BE5
	.word 0x00000000,0x00000000,0x00000000,0x008EA00D,0x007E908E,0x007E90DE,0x007E99ED,0x007EAEE9

	.word 0x00000000,0x00000000,0x00000000,0x08EEEEE0,0x07BDEBC0,0x000AE600,0x000AE600,0x000AE600
	.word 0x00000000,0x00000000,0x00000000,0xDE40AE90,0xCE009E80,0xCE009E80,0xCEAADE80,0xCEEEEE80
	.word 0x00000000,0x00000000,0x03100000,0x2EED3000,0x2DCEA000,0x138EB000,0x09EE6000,0x9EE70000
	.word 0x00000000,0x00000000,0x00000000,0x0009E900,0x0008E800,0x0008E800,0x0008E800,0x0008E800
	.word 0x00000000,0x00000000,0x00000000,0x0EE30000,0x7EE80000,0xCEDD0000,0xECAE2000,0xE77E9000
	.word 0x00000000,0x00000000,0x00000000,0xEEEE0000,0xDEBC0000,0xAE600000,0xAE600001,0xAE600008
	.word 0x00000000,0x00000000,0x00000000,0xEEE9008E,0xADE8007B,0x09E80000,0xADE80000,0xEEE80000
	.word 0x00000000,0x00000000,0x00000000,0xEE8000BE,0xDE80009A,0x9E800000,0x9E800008,0xDE80000B

	.word 0x00000000,0x00000000,0x00000000,0x0000007E,0x000003EE,0x000008E9,0x000007E9,0x000003EE
	.word 0x0AE60000,0x0AE60000,0x0AE60000,0x0BE70000,0x00000000,0x00000000,0xEEEEE000,0xEEEEE000
	.word 0xE9E70000,0xEEE00000,0xEEB00000,0xCE700000,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0x0001ECDE,0x0000DEEB,0x00008EE5,0x00002ED0,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0x00007E90,0x5004EE50,0xEDDEE900,0xDEED7000,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0x000009E8,0x000004EE,0x0000009E,0x00000007,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0x5E900000,0x0EB00000,0x0ED00000,0x0DE00000,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0x00DE4EED,0x00ED0DEA,0x00ED08E4,0x06EC01C0,0x00000020,0x00000000,0xEEEEEEEE,0xEEEEEEEE

	.word 0xE80009E8,0xE80004EE,0xE800009E,0xE9000007,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0x007EEE89,0x007EED09,0x007EE609,0x008ED00A,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0x000AE600,0x000AE600,0x000AE600,0x000BE700,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0xCE009E80,0xCE009E80,0xCE009E80,0xDE40AE90,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0xDE300000,0xED005000,0xDEDDD000,0x4DEED000,0x00040000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0x0008E800,0x0008E800,0x6BACE800,0x6EEEE900,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEAAED000,0xEEEEE400,0x7007EA00,0x2000EE10,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE

	.word 0xAE60000D,0xAE60003E,0xAE6000AE,0xBE7000EE,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0x19E80000,0x09E80000,0xADE80000,0xEEE90000,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEE800005,0xAE800000,0x9E80009A,0x9E9000BE,0x00000000,0x00000000,0xEEEEEEEE,0xEEEEEEEE
	.word 0x000003CE,0x00000DEB,0x00007EA0,0x0000DE70,0x00000000,0x00000000,0x0000EEEE,0x0000EEEE

	.section .rodata
	.align	2
	.global s0201_bn_graphicsMap		@ 2048 unsigned chars
	.hidden s0201_bn_graphicsMap
s0201_bn_graphicsMap:
	.hword 0x0001,0x0002,0x0003,0x0004,0x0005,0x0006,0x0007,0x0008
	.hword 0x0009,0x000A,0x000B,0x000C,0x000D,0x000E,0x000F,0x0010
	.hword 0x0011,0x0012,0x0013,0x0014,0x0015,0x0016,0x0017,0x0018
	.hword 0x0019,0x001A,0x001B,0x001C,0x001D,0x001E,0x001F,0x0000
	.hword 0x0020,0x0021,0x0022,0x0023,0x0024,0x0025,0x0026,0x0027
	.hword 0x0028,0x0029,0x002A,0x002B,0x002C,0x002D,0x002E,0x002F
	.hword 0x0030,0x0031,0x0032,0x0033,0x0034,0x0035,0x0036,0x0037
	.hword 0x0038,0x0039,0x003A,0x003B,0x003C,0x003D,0x003E,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x003F,0x0040
	.hword 0x0041,0x0042,0x0043,0x0044,0x0045,0x0042,0x0046,0x0047
	.hword 0x0048,0x0049,0x004A,0x0000,0x004B,0x004C,0x004D,0x004E
	.hword 0x004F,0x0050,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0051,0x0052
	.hword 0x0053,0x0054,0x0055,0x0056,0x0057,0x0054,0x0058,0x0059
	.hword 0x005A,0x005B,0x005C,0x005D,0x005E,0x005F,0x0060,0x0061
	.hword 0x0062,0x0063,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.section .rodata
	.align	2
	.global s0201_bn_graphicsPal		@ 32 unsigned chars
	.hidden s0201_bn_graphicsPal
s0201_bn_graphicsPal:
	.hword 0x0000,0x0C63,0x14A5,0x1CE7,0x2529,0x2D6B,0x35AD,0x3DEF
	.hword 0x4631,0x4E73,0x56D5,0x5EF7,0x6338,0x6739,0x7FFF,0x0000

@}}BLOCK(s0201_bn_graphics)
