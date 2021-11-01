#ifndef BN_SPRITE_ITEMS_DELPHINE01_H
#define BN_SPRITE_ITEMS_DELPHINE01_H

#include "bn_sprite_item.h"

//{{BLOCK(delphine01_bn_graphics)

//======================================================================
//
//	delphine01_bn_graphics, 64x64@4, 
//	+ palette 16 entries, not compressed
//	+ 64 tiles not compressed
//	Total size: 32 + 2048 = 2080
//
//	Time-stamp: 2021-10-26, 01:25:49
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_DELPHINE01_BN_GRAPHICS_H
#define GRIT_DELPHINE01_BN_GRAPHICS_H

#define delphine01_bn_graphicsTilesLen 2048
extern const bn::tile delphine01_bn_graphicsTiles[bn::max(512 / 8, 1)];

#define delphine01_bn_graphicsPalLen 32
extern const bn::color delphine01_bn_graphicsPal[16];

#endif // GRIT_DELPHINE01_BN_GRAPHICS_H

//}}BLOCK(delphine01_bn_graphics)

namespace bn::sprite_items
{
    constexpr inline sprite_item delphine01(sprite_shape_size(sprite_shape::SQUARE, sprite_size::HUGE), 
            sprite_tiles_item(span<const tile>(delphine01_bn_graphicsTiles, 64), bpp_mode::BPP_4, compression_type::NONE, 1), 
            sprite_palette_item(span<const color>(delphine01_bn_graphicsPal, 16), bpp_mode::BPP_4, compression_type::NONE));
}

#endif

