#ifndef BN_REGULAR_BG_ITEMS_CASTLE2_H
#define BN_REGULAR_BG_ITEMS_CASTLE2_H

#include "bn_regular_bg_item.h"

//{{BLOCK(castle2_bn_graphics)

//======================================================================
//
//	castle2_bn_graphics, 256x256@8, 
//	+ palette 48 entries, not compressed
//	+ 680 tiles (t|f reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 96 + 43520 + 2048 = 45664
//
//	Time-stamp: 2021-08-01, 20:54:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CASTLE2_BN_GRAPHICS_H
#define GRIT_CASTLE2_BN_GRAPHICS_H

#define castle2_bn_graphicsTilesLen 43520
extern const bn::tile castle2_bn_graphicsTiles[bn::max(10880 / 8, 1)];

#define castle2_bn_graphicsMapLen 2048
extern const bn::regular_bg_map_cell castle2_bn_graphicsMap[1024];

#define castle2_bn_graphicsPalLen 96
extern const bn::color castle2_bn_graphicsPal[48];

#endif // GRIT_CASTLE2_BN_GRAPHICS_H

//}}BLOCK(castle2_bn_graphics)

namespace bn::regular_bg_items
{
    constexpr inline regular_bg_item castle2(
            regular_bg_tiles_item(span<const tile>(castle2_bn_graphicsTiles, 1360), bpp_mode::BPP_8, compression_type::NONE), 
            bg_palette_item(span<const color>(castle2_bn_graphicsPal, 48), bpp_mode::BPP_8, compression_type::NONE),
            regular_bg_map_item(castle2_bn_graphicsMap[0], size(32, 32), compression_type::NONE));
}

#endif

