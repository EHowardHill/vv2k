#ifndef BN_SPRITE_ITEMS_OCEAN_TERRAIN_H
#define BN_SPRITE_ITEMS_OCEAN_TERRAIN_H

#include "bn_sprite_item.h"

//{{BLOCK(ocean_terrain_bn_graphics)

//======================================================================
//
//	ocean_terrain_bn_graphics, 32x1376@4, 
//	+ palette 16 entries, not compressed
//	+ 688 tiles not compressed
//	Total size: 32 + 22016 = 22048
//
//	Time-stamp: 2021-10-14, 01:14:21
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_OCEAN_TERRAIN_BN_GRAPHICS_H
#define GRIT_OCEAN_TERRAIN_BN_GRAPHICS_H

#define ocean_terrain_bn_graphicsTilesLen 22016
extern const bn::tile ocean_terrain_bn_graphicsTiles[bn::max(5504 / 8, 1)];

#define ocean_terrain_bn_graphicsPalLen 32
extern const bn::color ocean_terrain_bn_graphicsPal[16];

#endif // GRIT_OCEAN_TERRAIN_BN_GRAPHICS_H

//}}BLOCK(ocean_terrain_bn_graphics)

namespace bn::sprite_items
{
    constexpr inline sprite_item ocean_terrain(sprite_shape_size(sprite_shape::SQUARE, sprite_size::BIG), 
            sprite_tiles_item(span<const tile>(ocean_terrain_bn_graphicsTiles, 688), bpp_mode::BPP_4, compression_type::NONE, 43), 
            sprite_palette_item(span<const color>(ocean_terrain_bn_graphicsPal, 16), bpp_mode::BPP_4, compression_type::NONE));
}

#endif

