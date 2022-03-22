#ifndef BN_REGULAR_BG_ITEMS_S0207_H
#define BN_REGULAR_BG_ITEMS_S0207_H

#include "bn_regular_bg_item.h"

//{{BLOCK(s0207_bn_graphics)

//======================================================================
//
//	s0207_bn_graphics, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 309 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 32 + 9888 + 2048 = 11968
//
//	Time-stamp: 2022-03-21, 06:46:36
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_S0207_BN_GRAPHICS_H
#define GRIT_S0207_BN_GRAPHICS_H

#define s0207_bn_graphicsTilesLen 9888
extern const bn::tile s0207_bn_graphicsTiles[bn::max(2472 / 8, 1)];

#define s0207_bn_graphicsMapLen 2048
extern const bn::regular_bg_map_cell s0207_bn_graphicsMap[1024];

#define s0207_bn_graphicsPalLen 32
extern const bn::color s0207_bn_graphicsPal[16];

#endif // GRIT_S0207_BN_GRAPHICS_H

//}}BLOCK(s0207_bn_graphics)

namespace bn::regular_bg_items
{
    constexpr inline regular_bg_item s0207(
            regular_bg_tiles_item(span<const tile>(s0207_bn_graphicsTiles, 309), bpp_mode::BPP_4, compression_type::NONE), 
            bg_palette_item(span<const color>(s0207_bn_graphicsPal, 16), bpp_mode::BPP_4, compression_type::NONE),
            regular_bg_map_item(s0207_bn_graphicsMap[0], size(32, 32), compression_type::NONE));
}

#endif

