/*
 * Copyright (c) 2020-2021 Gustavo Valiente gustavo.valiente@protonmail.com
 * zlib License, see LICENSE file.
 */

#include "bn_core.h"
#include "bn_music.h"
#include "bn_keypad.h"
#include "bn_display.h"
#include "bn_regular_bg_ptr.h"
#include "bn_blending_actions.h"
#include "bn_blending_fade_alpha.h"
#include "bn_sprite_text_generator.h"
#include "bn_blending_fade_alpha_hbe_ptr.h"
#include "bn_blending_transparency_attributes.h"
#include "bn_blending_transparency_attributes_hbe_ptr.h"

#include "bn_sprite_items_a_button.h"
#include "bn_regular_bg_items_mountain.h"
#include "bn_regular_bg_items_ocean.h"
#include "bn_sprite_items_variable_8x16_font_yellow.h"

#include "bn_sound_items.h"
#include "bn_music_items_info.h"

#include "common_info.h"
#include "common_variable_8x16_sprite_font.h"

#include "bn_config_sprite_text.h"
#include "bn_sprite_font.h"
#include "bn_sprite_text_generator.h"
#include "bn_utf8_character.h"

#include <string.h>
#include <cstdlib>
#include <cstring>
#include <sstream>

#include "objects.h"
#include "scenes.h"

// Custom variables

namespace
{
    const int TEXT_X = -108;
    const int TEXT_Y = 24;
    const int TEXT_MAX_CHARS = 33;
    const int WAITFOR = 100000;

    static bn::vector<bn::sprite_ptr, 32> text_sprite01;
    static bn::vector<bn::sprite_ptr, 32> text_sprite02;
    static bn::vector<bn::sprite_ptr, 32> text_sprite03;
    static bn::vector<bn::sprite_ptr, 32> text_sprite04;
    static bn::vector<bn::sprite_ptr, 32> text_sprite05;
    static bn::vector<bn::sprite_ptr, 32> text_sprite06;
    static bn::sprite_text_generator text_line01(common::variable_8x16_sprite_font);
    static bn::sprite_text_generator text_line02(common::variable_8x16_sprite_font);
    static bn::sprite_text_generator text_line03(common::variable_8x16_sprite_font);
    static bn::sprite_text_generator text_line04(common::variable_8x16_sprite_font);
    static bn::sprite_text_generator text_line05(common::variable_8x16_sprite_font);
    static bn::sprite_text_generator text_line06(common::variable_8x16_sprite_font);

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
            default:
                break;
        }
    }

    void dialogue_page(const Concepts::line n[99])
    {   
        bn::sprite_ptr chari_l = bn::sprite_items::maple01.create_sprite(-50, -17);
        bn::sprite_ptr chari_r = bn::sprite_items::maple01.create_sprite(50, -17);
        bn::regular_bg_ptr primary_bg = bn::regular_bg_items::ocean.create_bg(0, 0);
        bn::sprite_ptr a_button = bn::sprite_items::a_button.create_sprite(-90, -50);

        chari_l.set_scale(1);
        chari_l.set_visible(false);
        chari_r.set_scale(1);
        chari_r.set_visible(false);
        chari_r.set_horizontal_flip(true);

        int pos = 0;
        bool cont = true;
        while (cont) {

            // Set music
            if (strcmp(n[pos].text, "BG: 0") == 0) {
                int music_item_index = 0;
                int music_volume = 15;
                bn::music_items_info::span[music_item_index].first.play(bn::fixed(music_volume) / 100);

            } else if (strcmp(n[pos].text, "BG: fadeout") == 0) {
                bn::music::set_volume(0);

            // Set backgrounds
            } else if (strcmp(n[pos].text, "BG: Ocean") == 0) {
                primary_bg.set_item(bn::regular_bg_items::ocean);
            } else if (strcmp(n[pos].text, "BG: Forest") == 0) {
                primary_bg.set_item(bn::regular_bg_items::mountain);
            } else if (strcmp(n[pos].text, "S01:01") == 0) {
                primary_bg.set_item(bn::regular_bg_items::s0101);
            } else if (strcmp(n[pos].text, "S01:02") == 0) {
                primary_bg.set_item(bn::regular_bg_items::s0102);
            } else if (strcmp(n[pos].text, "S01:03") == 0) {
                primary_bg.set_item(bn::regular_bg_items::s0103);
            } else if (strcmp(n[pos].text, "S01:04") == 0) {
                primary_bg.set_item(bn::regular_bg_items::s0104);
            } else if (strcmp(n[pos].text, "S01:05") == 0) {
                primary_bg.set_item(bn::regular_bg_items::s0105);
            } else if (strcmp(n[pos].text, "S01:06") == 0) {
                primary_bg.set_item(bn::regular_bg_items::s0106);
            } else if (strcmp(n[pos].text, "S01:07") == 0) {
                primary_bg.set_item(bn::regular_bg_items::s0107);
            } else if (strcmp(n[pos].text, "S01:08") == 0) {
                primary_bg.set_item(bn::regular_bg_items::s0108);
            } else if (strcmp(n[pos].text, "S01:09") == 0) {
                primary_bg.set_item(bn::regular_bg_items::s0109);

            } else if (strcmp(n[pos].text, "COM: Endscene") == 0) {
                cont = false;

            // Handle sprite/dialogue
            } else {

                if (n[pos].img > 0) {
                    if (n[pos].left) {
                        if (!chari_l.visible()) {
                            chari_r.set_blending_enabled(false);
                            chari_l.set_blending_enabled(true);
                            bn::blending::set_transparency_alpha(0);
                            chari_l.set_x(-50);
                            chari_l.set_visible(true);
                        }

                        set_sprite(chari_l, n[pos].img);
                    } else {
                        if (!chari_r.visible()) {
                            chari_l.set_blending_enabled(false);
                            chari_r.set_blending_enabled(true);
                            bn::blending::set_transparency_alpha(0);
                            chari_r.set_x(50);
                            chari_r.set_visible(true);
                        }

                        set_sprite(chari_r, n[pos].img);
                    }
                }

                bn::sound_items::pop.play(0.5);

                char line1[33], line2[33], line3[33], line4[33], line5[33], line6[33];
                char txt[198] = "                                                                                                                                                                                                     ";
                strcpy(txt, n[pos].text);
                strncpy(line1, txt + (33 * 0), 33);
                strncpy(line2, txt + (33 * 1), 33);
                strncpy(line3, txt + (33 * 2), 33);
                strncpy(line4, txt + (33 * 3), 33);
                strncpy(line5, txt + (33 * 4), 33);
                strncpy(line6, txt + (33 * 5), 33);

                text_sprite01.clear();
                text_line01.generate(-108, 22, line1, text_sprite01);

                text_sprite02.clear();
                text_line02.generate(-108, 32, line2, text_sprite02);

                text_sprite03.clear();
                text_line03.generate(-108, 42, line3, text_sprite03);

                text_sprite04.clear();
                text_line04.generate(-108, 52, line4, text_sprite04);

                text_sprite05.clear();
                text_line05.generate(-108, 62, line5, text_sprite05);

                text_sprite06.clear();
                text_line06.generate(-108, 72, line6, text_sprite06);

                bn::core::update();

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
            }

            pos++;
        }
    }
}

int main()
{
    bn::core::init();

    while(true) {
        dialogue_page(scenes::n1);
        bn::core::update();

        dialogue_page(scenes::n2);
        bn::core::update();
    }
}
