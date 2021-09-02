#include <string.h>
#include <cstdlib>
#include <cstring>
#include <sstream>
#include <list>

#include "bn_core.h"
#include "bn_keypad.h"
#include "bn_display.h"
#include "bn_blending_actions.h"
#include "bn_blending_fade_alpha.h"
#include "bn_blending_fade_alpha_hbe_ptr.h"
#include "bn_blending_transparency_attributes.h"
#include "bn_blending_transparency_attributes_hbe_ptr.h"
#include "bn_config_sprite_text.h"
#include "bn_sprite_text_generator.h"
#include "bn_regular_bg_ptr.h"
#include "bn_utf8_character.h"
#include "bn_log.h"

#include "bn_music.h"
#include "bn_sound_items.h"
#include "bn_music_items_info.h"

#include "common_info.h"
#include "common_variable_8x16_sprite_font.h"
#include "bn_sprite_items_a_button.h"

#include "bn_regular_bg_items_cinemint_studios.h"

#include "bn_sprite_items_enoki.h"
#include "bn_sprite_items_maple01.h"
#include "bn_sprite_items_maple02.h"
#include "bn_sprite_items_maple03.h"
#include "bn_sprite_items_maple04.h"
#include "bn_sprite_items_maple05.h"
#include "bn_sprite_items_enoki01.h"
#include "bn_sprite_items_enoki02.h"
#include "bn_sprite_items_enoki03.h"
#include "bn_sprite_items_enoki04.h"
#include "bn_sprite_items_aaron01.h"
#include "bn_sprite_items_aaron02.h"
#include "bn_sprite_items_delphine01.h"
#include "bn_sprite_items_delphine02.h"

#include "bn_regular_bg_items_castle_floor.h"
#include "bn_regular_bg_items_castle01.h"
#include "bn_regular_bg_items_castle02.h"
#include "bn_regular_bg_items_castle03.h"
#include "bn_regular_bg_items_s0101.h"
#include "bn_regular_bg_items_s0102.h"
#include "bn_regular_bg_items_s0103.h"
#include "bn_regular_bg_items_s0104.h"
#include "bn_regular_bg_items_s0105.h"
#include "bn_regular_bg_items_s0106.h"
#include "bn_regular_bg_items_s0107.h"
#include "bn_regular_bg_items_s0108.h"
#include "bn_regular_bg_items_s0109.h"

#include "bn_regular_bg_items_mountain.h"
#include "bn_regular_bg_items_ocean.h"

// Set pointer by integer reference
void set_sprite(bn::sprite_ptr chari, int value) {
    switch(value) {
        case 1:
            chari.set_item(bn::sprite_items::maple01);
            break;
        case 2:
            chari.set_item(bn::sprite_items::maple02);
            break;
        case 3:
            chari.set_item(bn::sprite_items::maple03);
            break;
        case 4:
            chari.set_item(bn::sprite_items::maple04);
            break;
        case 5:
            chari.set_item(bn::sprite_items::maple05);
            break;
        case 6:
            chari.set_item(bn::sprite_items::enoki01);
            break;
        case 7:
            chari.set_item(bn::sprite_items::enoki02);
            break;
        case 8:
            chari.set_item(bn::sprite_items::enoki03);
            break;
        case 9:
            chari.set_item(bn::sprite_items::enoki04);
            break;
        case 10:
            chari.set_item(bn::sprite_items::aaron01);
            break;
        case 11:
            chari.set_item(bn::sprite_items::aaron02);
            break;
        case 12:
            chari.set_item(bn::sprite_items::delphine01);
            break;
        case 13:
            chari.set_item(bn::sprite_items::delphine02);
            break;
        default:
            break;
    }
}

// Primary page
void dialogue_page(Concepts::line n[64], bool fullsize = true) {

    // Variable initialization
    bn::sprite_text_generator text_line0(common::variable_8x16_sprite_font);
    bn::sprite_text_generator text_line1(common::variable_8x16_sprite_font);
    bn::sprite_text_generator text_line2(common::variable_8x16_sprite_font);
    bn::sprite_text_generator text_line3(common::variable_8x16_sprite_font);
    bn::sprite_text_generator text_line4(common::variable_8x16_sprite_font);
    bn::sprite_text_generator text_line5(common::variable_8x16_sprite_font);
    bn::sprite_ptr chari_l = bn::sprite_items::maple01.create_sprite(-50, -17);
    bn::sprite_ptr chari_r = bn::sprite_items::maple01.create_sprite(50, -17);
    bn::regular_bg_ptr primary_bg = bn::regular_bg_items::castle_floor.create_bg(0, 0);
    bn::sprite_ptr a_button = bn::sprite_items::a_button.create_sprite(-90, -50);
    chari_l.set_visible(false);
    chari_r.set_visible(false);
    chari_r.set_horizontal_flip(true);
    primary_bg.set_visible(false);

    // While dialogue is going,
    int pos = 0;
    bool cont = true;
    while (cont) {

        // Set music
        if (strcmp(n[pos].text, "BG: 0") == 0) {
            int music_volume = 15;
            bn::music_items_info::span[0].first.play(bn::fixed(music_volume) / 100);
        } else if (strcmp(n[pos].text, "BG: 1") == 0) {
            int music_volume = 15;
            bn::music_items_info::span[1].first.play(bn::fixed(music_volume) / 100);
        } else if (strcmp(n[pos].text, "BG: 2") == 0) {
            int music_volume = 25;
            bn::music_items_info::span[2].first.play(bn::fixed(music_volume) / 100);
        } else if (strcmp(n[pos].text, "BG: fadeout") == 0) {
            if (bn::music::playing()) {
                bn::music::set_volume(0);
            }

        // Set backgrounds
        } else if (strcmp(n[pos].text, "BG: Ocean") == 0) {
            primary_bg.set_item(bn::regular_bg_items::ocean);
            primary_bg.set_visible(true);
        } else if (strcmp(n[pos].text, "BG: Forest") == 0) {
            primary_bg.set_item(bn::regular_bg_items::mountain);
            primary_bg.set_visible(true);
        } else if (strcmp(n[pos].text, "S01:01") == 0) {
            primary_bg.set_item(bn::regular_bg_items::s0101);
            primary_bg.set_visible(true);
        } else if (strcmp(n[pos].text, "S01:02") == 0) {
            primary_bg.set_item(bn::regular_bg_items::s0102);
            primary_bg.set_visible(true);
        } else if (strcmp(n[pos].text, "S01:03") == 0) {
            primary_bg.set_item(bn::regular_bg_items::s0103);
            primary_bg.set_visible(true);
        } else if (strcmp(n[pos].text, "S01:04") == 0) {
            primary_bg.set_item(bn::regular_bg_items::s0104);
            primary_bg.set_visible(true);
        } else if (strcmp(n[pos].text, "S01:05") == 0) {
            primary_bg.set_item(bn::regular_bg_items::s0105);
            primary_bg.set_visible(true);
        } else if (strcmp(n[pos].text, "S01:06") == 0) {
            primary_bg.set_item(bn::regular_bg_items::s0106);
            primary_bg.set_visible(true);
        } else if (strcmp(n[pos].text, "S01:07") == 0) {
            primary_bg.set_item(bn::regular_bg_items::s0107);
            primary_bg.set_visible(true);
        } else if (strcmp(n[pos].text, "S01:08") == 0) {
            primary_bg.set_item(bn::regular_bg_items::s0108);
            primary_bg.set_visible(true);
        } else if (strcmp(n[pos].text, "S01:09") == 0) {
            primary_bg.set_item(bn::regular_bg_items::s0109);
            primary_bg.set_visible(true);
        } else if (strcmp(n[pos].text, "S01:10") == 0) {
            primary_bg.set_item(bn::regular_bg_items::castle01);
            primary_bg.set_visible(true);
        } else if (strcmp(n[pos].text, "S01:11") == 0) {
            primary_bg.set_item(bn::regular_bg_items::castle02);
            primary_bg.set_visible(true);
        } else if (strcmp(n[pos].text, "S01:12") == 0) {
            primary_bg.set_item(bn::regular_bg_items::castle03);
            primary_bg.set_visible(true);

        // End dialogue
        } else if (strcmp(n[pos].text, "COM: Endscene") == 0) {
            cont = false;

        // Handle sprite/dialogue
        } else {

            // Process initial transparency states
            if (n[pos].img != 0) {
                if (n[pos].left) {
                    if (n[pos].transition || n[pos].img == -1) {
                        chari_l.set_visible(false);
                    }

                    if (!chari_l.visible() && n[pos].img != -1) {
                        chari_r.set_blending_enabled(false);
                        chari_l.set_blending_enabled(true);
                        bn::blending::set_transparency_alpha(0);
                        chari_l.set_x(-50);
                        chari_l.set_visible(true);
                    }

                    set_sprite(chari_l, n[pos].img);
                } else {
                    if (n[pos].transition || n[pos].img == -1) {
                        chari_r.set_visible(false);
                    }

                    if (!chari_r.visible() && n[pos].img != -1) {
                        chari_l.set_blending_enabled(false);
                        chari_r.set_blending_enabled(true);
                        bn::blending::set_transparency_alpha(0);
                        chari_r.set_x(50);
                        chari_r.set_visible(true);
                    }

                    set_sprite(chari_r, n[pos].img);
                }
            }

            // SFX
            bn::sound_items::pop.play(0.5);

            // Fresh init
            if (fullsize) {
                bn::vector<bn::sprite_ptr, 33> text_sprite0;
                bn::vector<bn::sprite_ptr, 33> text_sprite2;
                bn::vector<bn::sprite_ptr, 33> text_sprite3;
                bn::vector<bn::sprite_ptr, 33> text_sprite4;
                bn::vector<bn::sprite_ptr, 33> text_sprite5;
                
                // String initialization
                char line1[33], line3[33], line4[33], line5[33], line6[33];
                char txt[165] = "                                                                                                  ";
                strcpy(txt, n[pos].text);
                strncpy(line1, txt + (33 * 0), 33);
                strncpy(line3, txt + (33 * 1), 33);
                strncpy(line4, txt + (33 * 2), 33);
                strncpy(line5, txt + (33 * 3), 33);
                strncpy(line6, txt + (33 * 4), 33);

                text_line0.generate(-108, 21, line1, text_sprite0);
                text_line2.generate(-108, 33, line3, text_sprite2);
                text_line3.generate(-108, 45, line4, text_sprite3);
                text_line4.generate(-108, 57, line5, text_sprite4);
                text_line5.generate(-108, 69, line6, text_sprite5);

                bn::core::update();

                // Process visual effects
                while(!bn::keypad::a_pressed()) {
                    if (chari_l.visible() && chari_l.x().integer() < -40) {
                        chari_l.set_x(chari_l.x() + 1);
                    }
                    if (chari_r.visible() && chari_r.x().integer() > 40) {
                        chari_r.set_x(chari_r.x() - 1);
                    }
                    if (bn::blending::transparency_alpha().to_double() + 0.1 <= 1) {
                        bn::blending::set_transparency_alpha(bn::blending::transparency_alpha().to_double() + 0.1);
                    } else {
                        bn::blending::set_transparency_alpha(1);
                        chari_l.set_blending_enabled(false);
                    }
                    bn::core::update();
                }
            } else {

                bn::vector<bn::sprite_ptr, 33> text_sprite;
                
                // String initialization
                char line[33];
                char txt[33] = "                                ";
                strcpy(txt, n[pos].text);
                strncpy(line, txt + (33 * 0), 33);
                text_line5.generate(-108, 69, line, text_sprite);
            }
        }

        // Increment location
        pos++;
    }
}