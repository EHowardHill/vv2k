#ifndef BN_AFFINE_BG_ITEMS_BG_CRYSTAL_BALL_H
#define BN_AFFINE_BG_ITEMS_BG_CRYSTAL_BALL_H

#include "bn_affine_bg_item.h"

//{{BLOCK(bg_crystal_ball_bn_graphics)

//======================================================================
//
//	bg_crystal_ball_bn_graphics, 256x256@8, 
//	+ palette 16 entries, not compressed
//	+ 71 tiles (t reduced) not compressed
//	+ affine map, not compressed, 32x32 
//	Total size: 32 + 4544 + 1024 = 5600
//
//	Time-stamp: 2021-12-01, 06:35:00
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG_CRYSTAL_BALL_BN_GRAPHICS_H
#define GRIT_BG_CRYSTAL_BALL_BN_GRAPHICS_H

#define bg_crystal_ball_bn_graphicsTilesLen 4544
extern const bn::tile bg_crystal_ball_bn_graphicsTiles[bn::max(1136 / 8, 1)];

#define bg_crystal_ball_bn_graphicsMapLen 1024
extern const bn::affine_bg_map_cell bg_crystal_ball_bn_graphicsMap[1024];

#define bg_crystal_ball_bn_graphicsPalLen 32
extern const bn::color bg_crystal_ball_bn_graphicsPal[16];

#endif // GRIT_BG_CRYSTAL_BALL_BN_GRAPHICS_H

//}}BLOCK(bg_crystal_ball_bn_graphics)

namespace bn::affine_bg_items
{
    constexpr inline affine_bg_item bg_crystal_ball(
            affine_bg_tiles_item(span<const tile>(bg_crystal_ball_bn_graphicsTiles, 142), compression_type::NONE), 
            bg_palette_item(span<const color>(bg_crystal_ball_bn_graphicsPal, 16), bpp_mode::BPP_8, compression_type::NONE),
            affine_bg_map_item(bg_crystal_ball_bn_graphicsMap[0], size(32, 32), compression_type::NONE));
}

#endif
