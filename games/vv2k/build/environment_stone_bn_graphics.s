
@{{BLOCK(environment_stone_bn_graphics)

@=======================================================================
@
@	environment_stone_bn_graphics, 32x32@4, 
@	+ palette 16 entries, not compressed
@	+ 16 tiles not compressed
@	Total size: 32 + 512 = 544
@
@	Time-stamp: 2021-08-26, 01:52:07
@	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global environment_stone_bn_graphicsTiles		@ 512 unsigned chars
	.hidden environment_stone_bn_graphicsTiles
environment_stone_bn_graphicsTiles:
	.word 0x33330133,0x33341433,0x23341333,0x23331433,0x33340433,0x33341433,0x41140444,0x11111111
	.word 0x33331333,0x33340333,0x33331333,0x33341332,0x33341433,0x33341433,0x34441443,0x00110111
	.word 0x33330133,0x33340433,0x33341333,0x33331433,0x32341433,0x33341433,0x43441444,0x01111111
	.word 0x33331333,0x33340333,0x33330333,0x33341333,0x33341433,0x33341433,0x34441443,0x01011111
	.word 0x01333333,0x13332333,0x13333333,0x14333334,0x13333334,0x14333334,0x14434344,0x11110111
	.word 0x03333333,0x13333334,0x14322334,0x14333333,0x13333334,0x14333334,0x14444344,0x00111111
	.word 0x01333333,0x13332333,0x13333333,0x14332334,0x13333334,0x14333334,0x04434344,0x11111111
	.word 0x13333333,0x13333334,0x14332234,0x14333333,0x13332334,0x04333334,0x04444344,0x10110111

	.word 0x33330133,0x33340433,0x33341333,0x33331433,0x32341433,0x33341433,0x43440444,0x11111110
	.word 0x33330333,0x33341333,0x32331332,0x32341333,0x33341433,0x33341433,0x34440443,0x11111111
	.word 0x33330133,0x33341433,0x32341333,0x22331433,0x33341433,0x33341433,0x43440444,0x01111110
	.word 0x33330333,0x33341323,0x33331333,0x33341333,0x33341433,0x33341433,0x34440443,0x00101111
	.word 0x01333333,0x13333233,0x03333333,0x14333334,0x13333334,0x14333334,0x14434344,0x11100111
	.word 0x13333333,0x13333334,0x14323334,0x14223333,0x13333334,0x14333334,0x04444344,0x11101111
	.word 0x01333333,0x13333333,0x13332333,0x14333334,0x13333334,0x14333334,0x04434344,0x11100111
	.word 0x03333333,0x13333334,0x14333334,0x14332233,0x13332234,0x04333334,0x04444344,0x00001111

	.section .rodata
	.align	2
	.global environment_stone_bn_graphicsPal		@ 32 unsigned chars
	.hidden environment_stone_bn_graphicsPal
environment_stone_bn_graphicsPal:
	.hword 0x0C42,0x1884,0x20C5,0x24E7,0x3549,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

@}}BLOCK(environment_stone_bn_graphics)
