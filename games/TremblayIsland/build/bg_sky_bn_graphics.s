
@{{BLOCK(bg_sky_bn_graphics)

@=======================================================================
@
@	bg_sky_bn_graphics, 64x256@4, 
@	+ palette 16 entries, not compressed
@	+ 256 tiles not compressed
@	Total size: 32 + 8192 = 8224
@
@	Time-stamp: 2021-12-02, 22:59:38
@	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global bg_sky_bn_graphicsTiles		@ 8192 unsigned chars
	.hidden bg_sky_bn_graphicsTiles
bg_sky_bn_graphicsTiles:
	.word 0xAAAAEEEE,0xAEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xAA5EEAEE,0xA5AEA5AA,0xAAA5AEAE,0xA5A4AA9E,0x4A5EEAEE,0xAE9AEAEE,0xAAAEAAEE,0x5E5A5EEE
	.word 0x5AAAAAAA,0xAAAA5AAA,0x5A4AAA54,0x9AAA5A4A,0x95A4AEEE,0xC6E7AAEE,0xC7D6A55A,0xCC7B97EA
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEE959,0xEEEAE799,0xEEEEED95,0xEEEEECC7,0xEEEEEDC5,0xEEEEEEBB
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEE5E,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEDEEE,0xEEDDDDDD,0xDDDDDDEE,0xDCDCCEEE,0xCDCCDCEE,0xDCCDEDEE,0xBBDDDEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEDEEEE,0xEC7CC7EE,0xDCBDCDEE,0xCBDBBBDD,0x77C7CC4D,0xB8787BB7
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEA5AEAE9,0xEAEAEAE9,0xEEEAEE9D,0xEAEE9EDD,0xEEE7BBBB,0xEEEBCBB7

	.word 0x5EEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0x5EEEEEEE,0xEEEE5EEE,0x9EEEEEEE,0xEEAEEEAE,0x7EEE9EEE
	.word 0xEAEAEEEE,0x59EAEEEE,0xEEEEEAEE,0x9E8E9EEE,0x7E7EEEEE,0xBBEEBDEE,0xDEDCCEBE,0xCECEDCED
	.word 0xB67B596A,0x76BB9BE9,0xBBB5B5B9,0xCBBBBDBE,0xBBBBBB77,0xCBCC6BBE,0xBBCCBBCB,0xBBCDCBDC
	.word 0xEEEEEDBB,0xEEEEEECB,0xEEEDDCBB,0xDDDDDCCC,0xDCBCCB5C,0xCCCBBCBB,0xCCBCBBBB,0xCCCBBCBC
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEDDD,0xDEEEDDDD,0xDEDDDDCD,0xDDDDDDCC,0xCBDDBCCC
	.word 0xBDBDDEEE,0xDDCDDEDE,0xDCDDDDDD,0xDCDECDCE,0xCCCCCCDD,0xCCBABCBD,0xBBBBCBCC,0xBBBEBBBE
	.word 0xBBBBBBBB,0xCCCCCCBC,0xDDDDCDCC,0xDDDDDCDC,0xEEDDDCCC,0xEDDCDC9C,0xDDDCCCBC,0xDDCECCBE
	.word 0xEE8BBBBB,0xEE7C67BC,0xEBBCBBCC,0xECDDCCDC,0xEDDEDDED,0xEEEEDEEE,0xEEEEEEEE,0xEEEEEEED

	.word 0xEEEEEEEE,0xEEBEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xCEBEDEEB,0xCECEEDEE,0xEEEEEDEE,0xEDEDEEEE,0xEDEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEDEEEEE
	.word 0xCBDCBBDE,0xCCCCBDEC,0xDCCCCDCD,0xDDDCCCCE,0xCDDDCCDE,0xCDDDDDDD,0xCDEDDDED,0xBCEDDDEE
	.word 0xBCBBCBCB,0xC6CCCCCC,0xBC5CBCCC,0x8555BBCC,0x8855C89C,0x555888CC,0x5558B5BC,0x555555CB
	.word 0xBCCCCCCC,0x8CCBCC6B,0x585BB8B5,0x58558B55,0x55555855,0x55555555,0x22525525,0x26225555
	.word 0x8BB5B4BB,0x5E55588B,0x55555555,0x5E5E5555,0x55555551,0x55555555,0x55555222,0x555E2242
	.word 0xCDCCCBBB,0xCDDBBBB5,0xCCCBB588,0xCCBEB55E,0xBBBB5555,0xBB885E55,0xBB555555,0x585E555E
	.word 0xEEEEEEED,0xEEEEDDDC,0xEEEEDCDD,0xEDDEDDDE,0xEDDDEDDC,0xEDDDDCCB,0xDEDDCBBB,0xDDCCBBBE

	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xDEEEEEDE,0xDEEEEDEE,0x8ECCEEEE,0xCCCCEAAC,0x5B5BCEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEDEEEEE,0xEEEEEDED,0xECEEDCEE,0x2C8EECEC,0x3CCCACCC,0x22B2CB5B
	.word 0xBCDDDEDE,0x5CBBEEED,0xB5BCDEDE,0x88B8DCCD,0x444CBBDD,0x3334388C,0x2222232C,0x22222222
	.word 0x5255587B,0x25525588,0x22522555,0x42442444,0x44412424,0x33332132,0x22222222,0x22122E22
	.word 0x52555552,0x55555552,0x55555255,0x44444444,0x44444444,0x33333333,0x22222222,0x22222222
	.word 0x55555525,0x55555555,0x55555555,0x444E4444,0x44444444,0x33333333,0x22222222,0x2222222E
	.word 0x55555555,0x5E555E55,0x55555555,0x444E444E,0x44444444,0x33333333,0x22222222,0x22222222
	.word 0xCCBBB8B5,0xCBBB0E85,0xBB551B55,0xB084444E,0x41444114,0x33333133,0x21112222,0x1122222E

	.word 0x25B5C22D,0x12555555,0x11111512,0x22222521,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x22B25225,0x11112122,0x11122112,0x22222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x31111111,0x11111111,0x11111111,0x22212222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x1111D121,0x111D1111,0x11D1D111,0x222E0122,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x11111111,0x11111111,0x11111111,0x22222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x11111111,0x11111111,0x11111111,0x22222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x11111111,0x11111111,0x11111111,0x22222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x11111111,0x11111111,0x11111111,0x22222222,0x00000000,0x00000000,0x00000000,0x00000000

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

	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEAEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xAEEEEEEE,0xEEEEEEEE,0xAEEEEEEE,0xEEEEEEEE
	.word 0x5AAEEEEE,0xA5AEEEEE,0x5EEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEAEAEAEA,0xAEEAEEAA,0xEEEEEEEE,0xEEEEEEEA,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE

	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEE5EEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE

	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEDD,0xEEEEEEDD,0xEEECCEDD
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEE5,0xEEEEEEEA,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE

	.word 0xEEECCDED,0x8CECCCCB,0xBCDECCBB,0xBCCCBCBB,0xECBB5B55,0xC1C5BB58,0x00255555,0x02258555
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEBEEED,0xAEBEE4BE,0xEE2BCBBB,0xE2E2E2C2,0x22222E22,0x222E2E22
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEAEE5E,0xEAE4EEEE,0xEAE2AEEA,0x22E2E2E2,0xEEE2EE2E,0xEEE2EE2E
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEA,0xEEEEEEEA,0xE2EEE2EE,0xEEEEEEEE,0xEEEEEEE2
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEE2EEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEE2E

	.word 0x10155555,0x11055555,0x11155555,0x22055555,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x55111101,0x11111111,0x15151110,0xE2222120,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x51555151,0x11111111,0x15155511,0x2EE2E222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x55555515,0x11111111,0x55515155,0xEEEEE2EE,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x55555555,0x11111111,0x55555551,0xEEEEEEEE,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x55555555,0x11111111,0x51555555,0xEEEE2EEE,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x55555555,0x11111111,0x55555155,0xE2EEEEEE,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x55551555,0x11111111,0x55555555,0x22E2E2E2,0x00000000,0x00000000,0x00000000,0x00000000

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

	.word 0xEEEAEEEE,0xAAAAEEEE,0xAEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0x5AAAEAEE,0xAA5EEAEE,0xA5AEA5AA,0xAAA4AEAE,0xA4A5AAAE,0x5A4EEAEE,0xAEAAEAEE,0xAAAEAAEE
	.word 0xEEEE5AAA,0x5AAAAAAA,0xA9AA5AAA,0x5A5A9A54,0xAAAA5A4A,0x95A4AEEE,0xE5E5AAEE,0xE9E5A45A
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEE989,0xEEE9E999,0xEEEEEE97,0xEEEEEEE9,0xEEEEEEE7
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEECE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEDEEDEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xDDDDECEC,0xEEEEEDED,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE

	.word 0xEEEEEEEE,0x5EEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0x5EEEEEEE,0xEEEE5EEE,0xAEEEEEEE,0xEEAEEEAE
	.word 0x5E5A5EEE,0xEAEAEEEE,0x4AEAEEEE,0xEEEEEAEE,0xAE5EAEEE,0xAEAEEEEE,0x9AEEAEEE,0xAEEAEEAE
	.word 0xEE5AA5EA,0xE9AA4A5A,0x75A5AAEA,0xE9A5A4AA,0xE5A69EAE,0xEA5AA6A5,0xE5A4A5AE,0x5AAA5A4A
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEE8E,0xEEEEEEE9,0xEEEEE9E9
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEDEEEEEE,0xDDDDDEEE,0xDDDDDDEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEDE,0xEEEEEDEE,0xEEDEDDCE,0xDDDDDDDD
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEED,0xEEEEEEDE,0xDEEDDEED
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEDEE

	.word 0xAEEEAEEE,0xEEEEEEEE,0xEEAEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xAEAEEAEE,0xAE5E5EEA,0x5EAEE9EE,0xEEEEEAEE,0xE5EAEEEE,0xEAEEEEEE,0xAEEEEEEE,0xEEEEEEEE
	.word 0x95A4A5AE,0xA9AA54AE,0x5334A5EA,0x22326555,0x23266469,0x3625555E,0x325A6455,0x255546EE
	.word 0xEEEEEE9E,0xEEE9E9E8,0xE9EEEE59,0x9E5E9552,0x99AA3522,0x95222232,0x23223235,0x42323355
	.word 0xDBDDBDEE,0xBDDDDDEE,0xBDD6DDEE,0x668D879E,0x46996949,0x99999696,0x36622322,0x62233444
	.word 0xDDDDDCDD,0xCDDCDBDD,0xCCBDBCBD,0xCBBBB6B6,0xBBBBB846,0xBB666499,0x468644A9,0x98644643
	.word 0xDDEDDDDD,0xDDDDDDDD,0xCDDDCDCC,0xCCDCCCCB,0xCCCCCCBB,0xCACABBBB,0xBBBBBB68,0xBBBE6487
	.word 0xEDDDDDDD,0xDDDDDDDD,0xDDCDDDDD,0xDDCCDCCD,0xCCCCDCCD,0xCCCCCCCC,0xCCCCCCAC,0xCCABCABB

	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEAEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0x2E2EEEEE,0xEEEE2EEE
	.word 0x22645AEE,0x55654E5E,0x2459EEEE,0x55E5EEEE,0x4444EEEE,0xA22E2EEE,0x22222E2E,0x22222222
	.word 0x22333256,0x222323A5,0x22222252,0x52222252,0x42442424,0x22222222,0x22222222,0x22222222
	.word 0x42442462,0x66662646,0x55554555,0x54545555,0x44444444,0x22222222,0x22222222,0x22222222
	.word 0x44444484,0x66264666,0xE2994555,0x52955545,0xE4444444,0x2E222222,0x22222222,0x22222222
	.word 0xB44B4864,0x668E7874,0x885555E5,0x558E5E5E,0x44444444,0x22222E2E,0x22222222,0x222E222E
	.word 0xBBBBBBBB,0xBBBBBB44,0xBBB54485,0x545E8898,0x48848444,0x22222222,0x22222222,0x2222222E

	.word 0xEEEEEEEE,0xEEEEE11E,0xEE1EEE1E,0x2222222E,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xE2E2EEEE,0xEEE1EE1E,0x1111EE11,0x22222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x222222E2,0x11111111,0x11111111,0x22222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x2222EE22,0x1111E111,0x11111111,0x2222E222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x22222222,0x11111111,0x11111111,0x22222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x22222222,0x11111111,0x11111111,0x22222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x22222222,0x11111111,0x11111111,0x22222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x22222222,0x11111111,0x11111111,0x22222222,0x00000000,0x00000000,0x00000000,0x00000000

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

	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEDD,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEAE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEAEE,0xEEEEEEEE,0xEEEEEAEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xAEEAAA6A,0xEEEEE4EE,0xEEEEAEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEAEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE

	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEE8EEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0x5EEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE

	.word 0xEEEEEDDE,0xEEDDEDDD,0xEDCDDDCD,0xDDCCDCCD,0xDDCCDCCC,0xDDCCCCCC,0xCCCCCCCC,0xCCCCCCAC
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEED,0xEEEEEEDD,0xEEEEDDDC,0xEEEECDDC,0xEDDDCDDC
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEBEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE

	.word 0xCCCCCCBB,0xCCABCABB,0xACDBBBBB,0xBBBBBBB5,0xBBBB8444,0xBBB22222,0x22222222,0x222222E2
	.word 0xECDDCDCC,0xDDDDCCDC,0xDDDDCDCB,0xDCDDCCCA,0xDCCCCCCB,0xCCCCABBB,0xCC222222,0xC2222222
	.word 0xEEEEEEDD,0xDEEDDEDD,0xEEEDDEDD,0xEDEDDEDD,0xDEDCDDCD,0xDDDCDCCD,0xC2ECCCCC,0x2CCC2C22
	.word 0xEEEEEEEE,0xEEEEEEED,0xEEEEDEEE,0xEDEEEEEE,0xEEEEEEEE,0xEEEEEEEC,0xEEEECCCC,0xECCCCE2E
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEDE,0xEEEEEEEE,0xEEECEEEE,0xCEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEDEEEE,0xEEEEEEEE,0xCEECECEE,0xECECEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE
	.word 0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEEEEEEE,0xEEE2EEE2,0xE2EEEEEE

	.word 0x22222222,0x11111111,0x11111111,0x22222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x22222222,0x11111111,0x11111111,0x22222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x22222222,0x11111111,0x11111111,0x22222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xE2E2E222,0x1E111111,0x11111111,0xE2222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x2E2EEE22,0xE1E1111E,0x1111E111,0x2E222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x2E2E2E2E,0xE11E11E1,0xE1E1E111,0xE2222222,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0xEEEEEEEE,0xEE1EEE1E,0xEEEEEEE1,0xEE2EEE22,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x2EEEEEEE,0xEEEEEEEE,0x1E1E1E1E,0x22E2EEEE,0x00000000,0x00000000,0x00000000,0x00000000

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

	.section .rodata
	.align	2
	.global bg_sky_bn_graphicsPal		@ 32 unsigned chars
	.hidden bg_sky_bn_graphicsPal
bg_sky_bn_graphicsPal:
	.hword 0x0000,0x4E4B,0x72CE,0x72EE,0x7730,0x7750,0x7750,0x7771
	.hword 0x7772,0x7791,0x7BB2,0x7BD4,0x7BF9,0x7FFB,0x7FFF,0x0000

@}}BLOCK(bg_sky_bn_graphics)