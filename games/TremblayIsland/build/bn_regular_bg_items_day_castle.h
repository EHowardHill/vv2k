#ifndef BN_REGULAR_BG_ITEMS_DAY_CASTLE_H
#define BN_REGULAR_BG_ITEMS_DAY_CASTLE_H

#include "bn_regular_bg_item.h"

//{{BLOCK(day_castle_bn_graphics)

//======================================================================
//
//	day_castle_bn_graphics, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 648 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 32 + 20736 + 2048 = 22816
//
//	Time-stamp: 2022-05-17, 22:36:29
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.18
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_DAY_CASTLE_BN_GRAPHICS_H
#define GRIT_DAY_CASTLE_BN_GRAPHICS_H

#define day_castle_bn_graphicsTilesLen 20736
extern const bn::tile day_castle_bn_graphicsTiles[bn::max(5184 / 8, 1)];

#define day_castle_bn_graphicsMapLen 2048
extern const bn::regular_bg_map_cell day_castle_bn_graphicsMap[1024];

#define day_castle_bn_graphicsPalLen 32
extern const bn::color day_castle_bn_graphicsPal[16];

#endif // GRIT_DAY_CASTLE_BN_GRAPHICS_H

//}}BLOCK(day_castle_bn_graphics)

namespace bn::regular_bg_items
{
    constexpr inline regular_bg_item day_castle(
            regular_bg_tiles_item(span<const tile>(day_castle_bn_graphicsTiles, 648), bpp_mode::BPP_4, compression_type::NONE), 
            bg_palette_item(span<const color>(day_castle_bn_graphicsPal, 16), bpp_mode::BPP_4, compression_type::NONE),
            regular_bg_map_item(day_castle_bn_graphicsMap[0], size(32, 32), compression_type::NONE));
}

#endif

