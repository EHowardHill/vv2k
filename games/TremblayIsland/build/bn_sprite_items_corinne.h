#ifndef BN_SPRITE_ITEMS_CORINNE_H
#define BN_SPRITE_ITEMS_CORINNE_H

#include "bn_sprite_item.h"

//{{BLOCK(corinne_bn_graphics)

//======================================================================
//
//	corinne_bn_graphics, 32x32@4, 
//	+ palette 16 entries, not compressed
//	+ 16 tiles not compressed
//	Total size: 32 + 512 = 544
//
//	Time-stamp: 2021-12-16, 19:29:48
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CORINNE_BN_GRAPHICS_H
#define GRIT_CORINNE_BN_GRAPHICS_H

#define corinne_bn_graphicsTilesLen 512
extern const bn::tile corinne_bn_graphicsTiles[bn::max(128 / 8, 1)];

#define corinne_bn_graphicsPalLen 32
extern const bn::color corinne_bn_graphicsPal[16];

#endif // GRIT_CORINNE_BN_GRAPHICS_H

//}}BLOCK(corinne_bn_graphics)

namespace bn::sprite_items
{
    constexpr inline sprite_item corinne(sprite_shape_size(sprite_shape::SQUARE, sprite_size::BIG), 
            sprite_tiles_item(span<const tile>(corinne_bn_graphicsTiles, 16), bpp_mode::BPP_4, compression_type::NONE, 1), 
            sprite_palette_item(span<const color>(corinne_bn_graphicsPal, 16), bpp_mode::BPP_4, compression_type::NONE));
}

#endif
