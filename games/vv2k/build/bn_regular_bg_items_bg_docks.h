#ifndef BN_REGULAR_BG_ITEMS_BG_DOCKS_H
#define BN_REGULAR_BG_ITEMS_BG_DOCKS_H

#include "bn_regular_bg_item.h"

//{{BLOCK(bg_docks_bn_graphics)

//======================================================================
//
//	bg_docks_bn_graphics, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 391 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 32 + 12512 + 2048 = 14592
//
//	Time-stamp: 2021-12-10, 00:02:19
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG_DOCKS_BN_GRAPHICS_H
#define GRIT_BG_DOCKS_BN_GRAPHICS_H

#define bg_docks_bn_graphicsTilesLen 12512
extern const bn::tile bg_docks_bn_graphicsTiles[bn::max(3128 / 8, 1)];

#define bg_docks_bn_graphicsMapLen 2048
extern const bn::regular_bg_map_cell bg_docks_bn_graphicsMap[1024];

#define bg_docks_bn_graphicsPalLen 32
extern const bn::color bg_docks_bn_graphicsPal[16];

#endif // GRIT_BG_DOCKS_BN_GRAPHICS_H

//}}BLOCK(bg_docks_bn_graphics)

namespace bn::regular_bg_items
{
    constexpr inline regular_bg_item bg_docks(
            regular_bg_tiles_item(span<const tile>(bg_docks_bn_graphicsTiles, 391), bpp_mode::BPP_4, compression_type::NONE), 
            bg_palette_item(span<const color>(bg_docks_bn_graphicsPal, 16), bpp_mode::BPP_4, compression_type::NONE),
            regular_bg_map_item(bg_docks_bn_graphicsMap[0], size(32, 32), compression_type::NONE));
}

#endif
