
@{{BLOCK(cave_bat_bn_graphics)

@=======================================================================
@
@	cave_bat_bn_graphics, 16x32@4, 
@	+ palette 16 entries, not compressed
@	+ 8 tiles not compressed
@	Total size: 32 + 256 = 288
@
@	Time-stamp: 2021-11-04, 22:07:53
@	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global cave_bat_bn_graphicsTiles		@ 256 unsigned chars
	.hidden cave_bat_bn_graphicsTiles
cave_bat_bn_graphicsTiles:
	.word 0x00111000,0x01444100,0x01224100,0x11224100,0x44124100,0x41141100,0x41113110,0x41133310
	.word 0x00011100,0x00144410,0x00142210,0x00142211,0x00142144,0x00114114,0x01131114,0x01333114
	.word 0x14113310,0x44133310,0x44111311,0x44133331,0x44111131,0x44111111,0x41000000,0x10000000
	.word 0x01331141,0x01333144,0x11311144,0x13333144,0x13111144,0x11111144,0x00000014,0x00000001
	.word 0x00111000,0x01444100,0x01224100,0x11224100,0x44124100,0x41141100,0x41111100,0x41133100
	.word 0x00011100,0x00144410,0x00142210,0x00142211,0x00142144,0x00114114,0x00131114,0x00133114
	.word 0x14113100,0x44131000,0x44131000,0x44111000,0x44131000,0x44111000,0x41331000,0x11111000
	.word 0x00131141,0x00013144,0x00013144,0x00011144,0x00013144,0x00011144,0x00013314,0x00011111

	.section .rodata
	.align	2
	.global cave_bat_bn_graphicsPal		@ 32 unsigned chars
	.hidden cave_bat_bn_graphicsPal
cave_bat_bn_graphicsPal:
	.hword 0x12E0,0x0000,0x1CE7,0x2108,0x318C,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

@}}BLOCK(cave_bat_bn_graphics)