#ifndef BN_SPRITE_ITEMS_B_BUTTON_H
#define BN_SPRITE_ITEMS_B_BUTTON_H

#include "bn_sprite_item.h"

//{{BLOCK(b_button_bn_graphics)

//======================================================================
//
//	b_button_bn_graphics, 64x64@4, 
//	+ palette 16 entries, not compressed
//	+ 64 tiles not compressed
//	Total size: 32 + 2048 = 2080
//
//	Time-stamp: 2021-11-02, 01:27:17
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_B_BUTTON_BN_GRAPHICS_H
#define GRIT_B_BUTTON_BN_GRAPHICS_H

#define b_button_bn_graphicsTilesLen 2048
extern const bn::tile b_button_bn_graphicsTiles[bn::max(512 / 8, 1)];

#define b_button_bn_graphicsPalLen 32
extern const bn::color b_button_bn_graphicsPal[16];

#endif // GRIT_B_BUTTON_BN_GRAPHICS_H

//}}BLOCK(b_button_bn_graphics)

namespace bn::sprite_items
{
    constexpr inline sprite_item b_button(sprite_shape_size(sprite_shape::SQUARE, sprite_size::HUGE), 
            sprite_tiles_item(span<const tile>(b_button_bn_graphicsTiles, 64), bpp_mode::BPP_4, compression_type::NONE, 1), 
            sprite_palette_item(span<const color>(b_button_bn_graphicsPal, 16), bpp_mode::BPP_4, compression_type::NONE));
}

#endif
