#include <string.h>
#include <cstdlib>
#include <cstring>
#include <sstream>
#include <list>
#include <math.h>

#include "bn_core.h"
#include "bn_log.h"

#include "bn_music.h"
#include "bn_keypad.h"
#include "bn_display.h"
#include "bn_bg_palettes.h"
#include "bn_bgs_mosaic.h"
#include "bn_sprites_mosaic.h"
#include "bn_colors.h"

#include "bn_sound_items.h"
#include "bn_music_items_info.h"

#include "common_info.h"

#include "objects.h"
#include "save.h"
#include "dialogue.h"
#include "scripts.h"
#include "wander.h"

// Special items
#include "bn_regular_bg_items_cinemint_studios.h"
#include "bn_regular_bg_items_titlebackground.h"
#include "bn_regular_bg_items_velvet.h"
#include "bn_sprite_items_biglogo.h"
#include "bn_sprite_items_titlebackground_trees.h"

#include "bn_sprite_items_arrow.h"
#include "bn_regular_bg_items_file_select_bg.h"

#include "bn_regular_bg_items_intro_final_1.h"
#include "bn_regular_bg_items_intro_final_2.h"

void timer(int delay) {
    for (int t = 0; t < delay; t++) {
        bn::core::update();
    }
}

void fadein() {
    bn::sound_items::birds.play();
    bn::music_items_info::span[9].first.play(bn::fixed(25) / 100);
    bn::regular_bg_ptr f1 = bn::regular_bg_items::intro_final_1.create_bg(0,0);
    bn::regular_bg_ptr f2 = bn::regular_bg_items::intro_final_2.create_bg(0,0);
    f2.set_blending_enabled(true);
    bn::blending::set_transparency_alpha(0);
    f1.put_below();
    timer(32);
    float see = 0;
    f2.set_visible(true);
    for (int t = 0; t < 256; t++) {
        bn::blending::set_transparency_alpha(see);
        float c_see = see + 0.01;
        if (c_see <= 1) see = c_see;
        bn::core::update();
    }
}

void startup() {

    bn::regular_bg_ptr header = bn::regular_bg_items::cinemint_studios.create_bg(0,0);
    bn::regular_bg_ptr ocean = bn::regular_bg_items::titlebackground.create_bg(0,0);
    ocean.set_visible(false);

    header.set_mosaic_enabled(true);
    float glow = 0.5;
    int intro_stage = 0;
    int height = -24;
    bn::sprite_ptr item0 = bn::sprite_items::biglogo.create_sprite(-32 - 48, -32 + height, 0);
    bn::sprite_ptr item1 = bn::sprite_items::biglogo.create_sprite(32 - 48, -34 + height, 2);
    bn::sprite_ptr item2 = bn::sprite_items::biglogo.create_sprite(-32 - 48, 32 + height, 1);
    bn::sprite_ptr item3 = bn::sprite_items::biglogo.create_sprite(32 - 48, 30 + height, 3);
    item0.set_mosaic_enabled(true);
    item1.set_mosaic_enabled(true);
    item2.set_mosaic_enabled(true);
    item3.set_mosaic_enabled(true);

    bn::sprite_ptr tree1 = bn::sprite_items::titlebackground_trees.create_sprite(64 + 16,-32);
    bn::sprite_ptr tree2 = bn::sprite_items::titlebackground_trees.create_sprite(64 + 32,-32);
    bn::sprite_animate_action<2> trees_left = bn::create_sprite_animate_action_forever(tree1, 12, bn::sprite_items::titlebackground_trees.tiles_item(), 0, 1);
    bn::sprite_animate_action<2> trees_right = bn::create_sprite_animate_action_forever(tree2, 12, bn::sprite_items::titlebackground_trees.tiles_item(), 2, 3);
    tree1.set_visible(false);
    tree2.set_visible(false);
    double sinewave = 0;

    while(!bn::keypad::start_pressed()) {
        trees_left.update();
        trees_right.update();
        tree1 = trees_left.sprite();
        tree2 = trees_right.sprite();
        sinewave += 0.08;
        if (sinewave >= 2 * 3.1415) sinewave = 0;

        switch(intro_stage) {
            case 0:
                item0.set_visible(false);
                item1.set_visible(false);
                item2.set_visible(false);
                item3.set_visible(false);
                if (glow - 0.02 > 0) {
                    glow -= 0.02;
                    bn::bgs_mosaic::set_horizontal_stretch(glow);
                    bn::bgs_mosaic::set_vertical_stretch(glow);
                } else {
                    header.set_mosaic_enabled(false);
                    intro_stage++;
                }
                break;
            case 1:
                bn::sound_items::ahoy.play();
                header.set_blending_enabled(true);
                intro_stage++;
                break;
            case 2:
                timer(32);
                glow = 1;
                intro_stage++;
                break;
            case 3:
                if (glow - 0.02 > 0) {
                    glow -= 0.02;
                    bn::blending::set_transparency_alpha(glow);
                } else {
                    intro_stage++;
                }
                break;
            case 4:
                glow = 0.5;
                bn::music_items_info::span[3].first.play(bn::fixed(50) / 100);
                timer(16);
                intro_stage++;
                break;
            case 5:
                item0.set_visible(true);
                item1.set_visible(true);
                item2.set_visible(true);
                item3.set_visible(true);
                if (glow - 0.01 > 0) {
                    glow -= 0.01;
                    bn::sprites_mosaic::set_horizontal_stretch(glow);
                    bn::sprites_mosaic::set_vertical_stretch(glow);
                } else {
                    intro_stage++;
                    sinewave = 0;
                }
                break;
            case 6:
                ocean.set_visible(true);
                tree1.set_visible(true);
                tree2.set_visible(true);
                intro_stage++;
                break;
            case 7:
                item0.set_y(-32 + height + sin(sinewave) * 5);
                item1.set_y(-34 + height + sin(sinewave) * 5);
                item2.set_y(32 + height + sin(sinewave) * 5);
                item3.set_y(30 + height + sin(sinewave) * 5);
                break;
        }
        bn::core::update();
    }
}

void load_save() {

    if (true) {
        bn::regular_bg_ptr velvet = bn::regular_bg_items::velvet.create_bg(0,0);
        bn::regular_bg_ptr ui = bn::regular_bg_items::file_select_bg.create_bg(0,0);
        bn::sprite_ptr arrow = bn::sprite_items::arrow.create_sprite(-98, - 32);

        bn::sprite_text_generator file1_gen(common::variable_8x16_sprite_font);
        bn::vector<bn::sprite_ptr, 12> file1_spr;
        file1_gen.generate(-72, -32, "Slot 1", file1_spr);

        bn::sprite_text_generator file2_gen(common::variable_8x16_sprite_font);
        bn::vector<bn::sprite_ptr, 12> file2_spr;
        file2_gen.generate(-72, 0, "Slot 2", file2_spr);

        bn::sprite_text_generator file3_gen(common::variable_8x16_sprite_font);
        bn::vector<bn::sprite_ptr, 12> file3_spr;
        file3_gen.generate(-72, 32, "Slot 3", file3_spr);

        int t = 0;
        int c = 0;

        bn::music_items_info::span[8].first.play(bn::fixed(50) / 100);

        while(!bn::keypad::a_pressed()) {
            
            // Scrolling background
            t++;
            t = t % 256;
            velvet.set_position(t,t);

            //
            if (bn::keypad::up_pressed()) {
                c -= 1;
                if (c < 0) c = 2;
                bn::sound_items::pop.play();
            } else if (bn::keypad::down_pressed()) {
                c += 1;
                if (c > 2) c = 0;
                bn::sound_items::pop.play();
            }

            arrow.set_y(-32 + (32 * c));

            bn::core::update();
        }
    }


    bn::sound_items::firehit.play();
    bn::music::stop();
    
    timer(256);
}

int main()
{
    bn::core::init();

    // Reset thing
    while(true) {
        
        fadein();
        exec_dialogue(13);
        
        startup();
        load_save();
        //exec_dialogue(0);
        //exec_dialogue(1);
        //exec_dialogue(2);


        dungeon_return dt(0,0,0);
        dt.spawn_x = 0;
        dt.spawn_y = 0;
        dt.world_index = 0;
        while (true) {
            dungeon_return dt = dungeon(dt);
            if (dt.world_index == -1) {
                break;
            }
        };
    }
}