#ifndef BN_REGULAR_BG_ITEMS_CASTLE01_H
#define BN_REGULAR_BG_ITEMS_CASTLE01_H

#include "bn_regular_bg_item.h"

//{{BLOCK(castle01_bn_graphics)

//======================================================================
//
//	castle01_bn_graphics, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 542 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 32 + 17344 + 2048 = 19424
//
//	Time-stamp: 2021-10-26, 01:25:49
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CASTLE01_BN_GRAPHICS_H
#define GRIT_CASTLE01_BN_GRAPHICS_H

#define castle01_bn_graphicsTilesLen 17344
extern const bn::tile castle01_bn_graphicsTiles[bn::max(4336 / 8, 1)];

#define castle01_bn_graphicsMapLen 2048
extern const bn::regular_bg_map_cell castle01_bn_graphicsMap[1024];

#define castle01_bn_graphicsPalLen 32
extern const bn::color castle01_bn_graphicsPal[16];

#endif // GRIT_CASTLE01_BN_GRAPHICS_H

//}}BLOCK(castle01_bn_graphics)

namespace bn::regular_bg_items
{
    constexpr inline regular_bg_item castle01(
            regular_bg_tiles_item(span<const tile>(castle01_bn_graphicsTiles, 542), bpp_mode::BPP_4, compression_type::NONE), 
            bg_palette_item(span<const color>(castle01_bn_graphicsPal, 16), bpp_mode::BPP_4, compression_type::NONE),
            regular_bg_map_item(castle01_bn_graphicsMap[0], size(32, 32), compression_type::NONE));
}

#endif

