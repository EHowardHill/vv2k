#ifndef BN_REGULAR_BG_ITEMS_CINEMINT_STUDIOS_H
#define BN_REGULAR_BG_ITEMS_CINEMINT_STUDIOS_H

#include "bn_regular_bg_item.h"

//{{BLOCK(cinemint_studios_bn_graphics)

//======================================================================
//
//	cinemint_studios_bn_graphics, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 176 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 32 + 5632 + 2048 = 7712
//
//	Time-stamp: 2021-10-26, 01:25:49
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CINEMINT_STUDIOS_BN_GRAPHICS_H
#define GRIT_CINEMINT_STUDIOS_BN_GRAPHICS_H

#define cinemint_studios_bn_graphicsTilesLen 5632
extern const bn::tile cinemint_studios_bn_graphicsTiles[bn::max(1408 / 8, 1)];

#define cinemint_studios_bn_graphicsMapLen 2048
extern const bn::regular_bg_map_cell cinemint_studios_bn_graphicsMap[1024];

#define cinemint_studios_bn_graphicsPalLen 32
extern const bn::color cinemint_studios_bn_graphicsPal[16];

#endif // GRIT_CINEMINT_STUDIOS_BN_GRAPHICS_H

//}}BLOCK(cinemint_studios_bn_graphics)

namespace bn::regular_bg_items
{
    constexpr inline regular_bg_item cinemint_studios(
            regular_bg_tiles_item(span<const tile>(cinemint_studios_bn_graphicsTiles, 176), bpp_mode::BPP_4, compression_type::NONE), 
            bg_palette_item(span<const color>(cinemint_studios_bn_graphicsPal, 16), bpp_mode::BPP_4, compression_type::NONE),
            regular_bg_map_item(cinemint_studios_bn_graphicsMap[0], size(32, 32), compression_type::NONE));
}

#endif

