#include <bn_sprite_builder.h>
#include <bn_sprite_animate_actions.h>

// UI elements
#include "bn_sprite_items_a_button_2.h"

// Characters
#include "bn_sprite_items_maple_walking.h"
#include "bn_sprite_items_maple_walking_spring.h"
#include "bn_sprite_items_enoki_walking_pj.h"
#include "bn_sprite_items_enoki_walking_spring.h"
#include "bn_sprite_items_aaron_sleep.h"
#include "bn_sprite_items_aaron_walking_spring.h"
#include "bn_sprite_items_scout_walking_spring.h"
#include "bn_sprite_items_del_sleep.h"

// Items
#include "bn_sprite_items_fireball.h"
#include "bn_sprite_items_fireplace_anim.h"
#include "bn_sprite_items_bookshelf.h"

// Backgrounds
#include "bn_sprite_items_environment_stone.h"
#include "bn_sprite_items_trailer_home.h"
#include "bn_regular_bg_items_castle_floor.h"
#include "bn_sprite_items_ocean_terrain.h"
#include "bn_regular_bg_items_grassy_knoll.h"
#include "bn_sprite_items_water_animation.h"
#include "bn_sprite_items_scout_lab.h"

#include "bn_regular_bg_items_dialogue_bg.h"

// Projectiles
class projectile {
    public:
        bn::sprite_item fireball_item = bn::sprite_items::fireball;
        bn::sprite_ptr fireball = fireball_item.create_sprite(0,0);
        bn::sprite_animate_action<4> fireball_anim = bn::create_sprite_animate_action_forever(fireball, 3, fireball_item.tiles_item(), 00, 1, 2, 3);
        bn::sprite_animate_action<4> fireball_anim_end = bn::create_sprite_animate_action_forever(fireball, 3, fireball_item.tiles_item(), 4, 5, 6, 7);
        int dir = 1, dur = 0;
        bool active = false;
        void update() {
            dur++;
            if (dur < 16) {
                fireball_anim.update();
                fireball = fireball_anim.sprite();
                switch(dir) {
                    case 1:
                        fireball.set_x(fireball.x() + 4);
                        break;
                    case 2:
                        fireball.set_x(fireball.x() - 4);
                        break;
                    case 3:
                        fireball.set_y(fireball.y() - 4);
                        break;
                    default:
                        fireball.set_y(fireball.y() + 4);
                        break;
                };
            } else {
                if (dur < 23) {
                    if (dur == 16) bn::sound_items::firehit.play();
                    fireball = fireball_anim_end.sprite();
                    fireball_anim_end.update();
                } else {
                    fireball.set_visible(false);
                }
            }
        }
};

// Individual tiles
class stone {
    public:
        bn::sprite_ptr entity = bn::sprite_items::environment_stone.create_sprite(300,300,0);
        void set(int x, int y, const bn::sprite_item sprite, int loc = 0) {
            entity = sprite.create_sprite(x,y,loc);
        };
};

// Dungeon return type
class dungeon_return {
    public:
    int spawn_x = 0;
    int spawn_y = 0;
    int world_index = 0;
};

// Room setup object
class room {
    public:
    int width = 29;
    int height = 14;
    int start_x = 8;
    int start_y = 3;
    std::vector<int> local_tileset = {0};
    std::vector<int> collisions = {0};

    void init(int w, int h, int x, int y) {
        width = w;
        height = h;
        start_x = x;
        start_y = y;
    }
};

// Custom character class
class character {
    public:
    int identity = 0;

    // 0 = Maple
    // 1 = Enoki
    // 2 = Aaron

    int dir = 0;
    int last_dir = 0;
    bool done = false;
    bool is_walking = false;
    bn::sprite_item entity_item = bn::sprite_items::maple_walking;
    bn::sprite_ptr entity = entity_item.create_sprite(0,0);
    bn::sprite_animate_action<4> entity_anim = bn::create_sprite_animate_action_forever(entity, 8, entity_item.tiles_item(), 00, 1, 00, 2);
    
    int role = 0;
    // 0 = follower
    // 1 = main
    // 2 = independent

    int collideFrom = 1;
    room* current_room;

    character(const bn::sprite_item sprite, room &new_room, float x = 00, float y = 00, int main = 0) {
        entity = sprite.create_sprite(x * 32, y * 32);
        entity.set_visible(true);
        entity_item = sprite;
        entity_anim = bn::create_sprite_animate_action_forever(entity, 8, entity_item.tiles_item(), 00, 1, 00, 2);
        role = main;
        current_room = &new_room;
    }

    // Get position on board
    int get_loc() {
        return ((entity.x().round_integer() / 32) + 5) + (((entity.y().round_integer() / 32) + 1) * 8) + 5;
    }

    // Run this regularly!
    void update(int x = 00, int y = 0) {

        // Collision detection
        int x_int = entity.x().integer();
        int y_int = entity.y().integer();
        int close[4] = {
            roundDown(x_int + 6),
            roundUp(x_int - 6),
            roundDown(y_int + 6) * current_room->width,
            roundUp(y_int) * current_room->width
        };

        int col[8] = {
            current_room->collisions[close[0] + close[2]] == 1,
            current_room->collisions[close[0] + close[3]] == 1,

            current_room->collisions[close[1] + close[2]] == 1,
            current_room->collisions[close[1] + close[3]] == 1,

            current_room->collisions[close[0] + close[2]] == 1,
            current_room->collisions[close[1] + close[2]] == 1,

            current_room->collisions[close[0] + close[3]] == 1,
            current_room->collisions[close[1] + close[3]] == 1
        };

        bool canLeft = !(((col[4] && col[5]) ^ col[0]) || ((col[6] && col[7]) ^ col[1]));
        bool canRite = !(((col[4] && col[5]) ^ col[2]) || ((col[6] && col[7]) ^ col[3]));
        //
        //
        // !(((0 && 1) ^ 1) || (1 && 1) ^ 0)

        bool canUp =   !(((col[0] && col[1]) ^ col[4]) || ((col[2] && col[3]) ^ col[5]));
        bool canDn =   !(((col[0] && col[1]) ^ col[6]) || ((col[2] && col[3]) ^ col[7]));

        int block = current_room->local_tileset.at(close[0] + close[1]) - 1;
        /*
        BN_LOG(
            identity,
            " = ",
            close[0],
            " ",
            close[1],
            " ",
            close[2],
            " ",
            close[3],
            " x ",
            current_room->local_tileset.at(close[0] + close[2]] - 1,
            " ",
            current_room->local_tileset.at(close[0] + close[3]] - 1,
            " ",
            current_room->local_tileset.at(close[1] + close[2]] - 1,
            " ",
            current_room->local_tileset.at(close[1] + close[3]] - 1,
            " ",
            current_room->local_tileset.at(close[0] + close[2] - current_room->width] - 1,
            " ",
            current_room->local_tileset.at(close[1] + close[2] + current_room->width] - 1,
            " ",
            current_room->local_tileset.at(close[0] + close[3] - current_room->width] - 1,
            " ",
            current_room->local_tileset.at(close[1] + close[3] + current_room->width] - 1,
            " x ",
            col[0],
            " ",
            col[1],
            " ",
            col[2],
            " ",
            col[3],
            " ",
            col[4],
            " ",
            col[5],
            " ",
            col[6],
            " ",
            col[7],
            " ",
            "&",
            canRite
        );
        */

        // If following...
        if (role == 0) {

            // Collision detection
            done = true;
            is_walking = false;

            // Follow player
            bool isXTravel = false;
            if (x < entity.x() - 24) {
                if (true) {
                    isXTravel = true;
                    entity.set_x(entity.x() - 1);
                    dir = 2;
                    if (last_dir != dir) done = false;
                    last_dir = dir;
                    is_walking = true;
                }
            } else
            if (x > entity.x() + 24) {
                if (true) {
                    isXTravel = true;
                    entity.set_x(entity.x() + 1);
                    dir = 1;
                    if (last_dir != dir) done = false;
                    last_dir = dir;
                    is_walking = true;
                }
            }
            if (y < entity.y() - 24) {
                if (true) {
                    entity.set_y(entity.y() - 1);
                    if (!isXTravel) {
                        dir = 3;
                        if (last_dir != dir) done = false;
                        last_dir = dir;
                        is_walking = true;
                    }
                }
            } else
            if (y > entity.y() + 24) {
                if (true) {
                    entity.set_y(entity.y() + 1);
                    if (!isXTravel) {
                        dir = 0;
                        if (last_dir != dir) done = false;
                        last_dir = dir;
                        is_walking = true;
                    }
                }
            }
        
            // Animate
            if (!done) {
                switch(dir) {
                    case 1:
                        entity_anim = bn::create_sprite_animate_action_forever(entity, 8, entity_item.tiles_item(), 4, 3, 5, 3);
                        break;
                    case 2:
                        entity_anim = bn::create_sprite_animate_action_forever(entity, 8, entity_item.tiles_item(), 7, 6, 8, 6);
                        break;
                    case 3:
                        entity_anim = bn::create_sprite_animate_action_forever(entity, 8, entity_item.tiles_item(), 10, 9, 11, 9);
                        break;
                    default:
                        entity_anim = bn::create_sprite_animate_action_forever(entity, 8, entity_item.tiles_item(), 1, 00, 2, 0);
                        break;
                }
            }

            // Walk
            if (is_walking || (entity_anim.current_index() % 2 == 1)) {
                entity_anim.update();
            }
        }

        // If main character....
        else if (role == 1) {

            if (entity.blending_enabled()) {
                if (bn::blending::intensity_alpha() > 0.2) {
                    bn::blending::set_intensity_alpha(bn::blending::intensity_alpha() - 0.02);
                } else {
                    entity.set_blending_enabled(false);
                }
            }

            // Keyboard controls
            if (!bn::keypad::l_held()) {
                if (bn::keypad::up_released() || bn::keypad::down_released() || bn::keypad::left_released() || bn::keypad::right_released()) {
                    if (bn::keypad::down_held()) {
                        dir = 0;
                    } else if (bn::keypad::right_held()) {
                        dir = 1;
                    } else if (bn::keypad::left_held()) {
                        dir = 2;
                    } else if (bn::keypad::up_held()) {
                        dir = 3;
                    }
                } else {
                    if (bn::keypad::down_pressed()) {
                        dir = 0;
                    } else if (bn::keypad::right_pressed()) {
                        dir = 1;
                    } else if (bn::keypad::left_pressed()) {
                        dir = 2;
                    } else if (bn::keypad::up_pressed()) {
                        dir = 3;
                    }
                }
            }

            // Manage the previously handled value
            if (last_dir != dir) {
                done = false;
                last_dir = dir;
            }

            // Control directional animation
            if (!done) {
                switch(dir) {
                    case 1:
                        entity_anim = bn::create_sprite_animate_action_forever(entity, 8, entity_item.tiles_item(), 4, 3, 5, 3);
                        break;
                    case 2:
                        entity_anim = bn::create_sprite_animate_action_forever(entity, 8, entity_item.tiles_item(), 7, 6, 8, 6);
                        break;
                    case 3:
                        entity_anim = bn::create_sprite_animate_action_forever(entity, 8, entity_item.tiles_item(), 10, 9, 11, 9);
                        break;
                    default:
                        entity_anim = bn::create_sprite_animate_action_forever(entity, 8, entity_item.tiles_item(), 1, 00, 2, 0);
                        break;
                }
                done = true;
            }

            // Key controls
            if (bn::keypad::left_held()) {
                entity.set_x(entity.x() + (-1 * canLeft));
            }
            if (bn::keypad::right_held()) {
                entity.set_x(entity.x() + (1 * canRite));
            }
            if (bn::keypad::up_held()) {
                entity.set_y(entity.y() + (-1 * canUp));
            }
            if (bn::keypad::down_held()) {
                entity.set_y(entity.y() + (1 * canDn));
            }

            // Move
            if ((bn::keypad::down_held() || bn::keypad::up_held() || bn::keypad::left_held() || bn::keypad::right_held()) || (entity_anim.current_index() % 2 == 1)) {
                entity_anim.update();
            } else {
                if (bn::keypad::r_pressed()) {
                    switch(dir) {
                        case 1:
                            entity_anim = bn::create_sprite_animate_action_forever(entity, 8, entity_item.tiles_item(), 13, 3, 3, 3);
                            break;
                        case 2:
                            entity_anim = bn::create_sprite_animate_action_forever(entity, 8, entity_item.tiles_item(), 14, 6, 6, 6);
                            break;
                        case 3:
                            entity_anim = bn::create_sprite_animate_action_forever(entity, 8, entity_item.tiles_item(), 15, 9, 9, 9);
                            break;
                        default:
                            entity_anim = bn::create_sprite_animate_action_forever(entity, 8, entity_item.tiles_item(), 12, 00, 00, 0);
                            break;
                    }
                    entity_anim.update();
                } else {
                    if (bn::keypad::r_released()) {
                        entity_anim.update();
                    }
                }
            }
        }

        // If generic dude....
        else if (role == 2) {

            if (abs(entity.x() - x) + abs(entity.y() - y) < 64) {
                if (x < entity.x() - 24) {
                    entity_anim = bn::create_sprite_animate_action_forever(entity, 4, entity_item.tiles_item(), 6, 6, 6, 6);
                } else
                if (x > entity.x() + 24) {
                    entity_anim = bn::create_sprite_animate_action_forever(entity, 4, entity_item.tiles_item(), 3, 3, 3, 3);
                }
                if (y < entity.y() - 24) {
                    entity_anim = bn::create_sprite_animate_action_forever(entity, 4, entity_item.tiles_item(), 9, 9, 9, 9);
                } else
                if (y > entity.y() + 24) {
                    entity_anim = bn::create_sprite_animate_action_forever(entity, 4, entity_item.tiles_item(), 00, 00, 00, 0);
                }
                entity_anim.update();
            }
        }

        // Handle update
        entity = entity_anim.sprite();
        //entity.set_camera(camera);
    }
};

// Animated objects
class anim_object {
    public:
    int id = 0;
    bn::sprite_item entity_item = bn::sprite_items::aaron_sleep;
    bn::sprite_ptr entity = entity_item.create_sprite(0,0);
    bn::sprite_animate_action<4> entity_anim = bn::create_sprite_animate_action_forever(entity, 18, entity_item.tiles_item(), 00, 00, 00, 1);
};

dungeon_return dungeon(dungeon_return &dt, struct save_struct &so, bool door_noise = true) {

    if (door_noise) bn::sound_items::door.play();
    if (bn::music::playing()) bn::music::stop();

    // Constants
    const int w_size = 96;
    stone local_walls[w_size];
    int local_walls_p = 0;
    static room current_room;

    // If different than default, reset
    if (dt.spawn_x > 0 && dt.spawn_y > 0) {
        current_room.start_x = dt.spawn_x;
        current_room.start_y = dt.spawn_y;
    }

    // Camera setup
    int sx = current_room.start_x * 32;
    int sy = current_room.start_y * 32;

    bn::camera_ptr camera = bn::camera_ptr::create(sx, sy);
    bn::regular_bg_ptr primary_bg = bn::regular_bg_items::castle_floor.create_bg(0, 0);
    primary_bg.set_camera(camera);
    bn::vector<anim_object,3> anim_objects;

    // Create initial characters
    bn::vector<character, 4> chari;

    // World generation
    switch(dt.world_index) {
        case 0: {
            current_room.init(12, 6, 8, 3);
            std::vector<int> local {
                4,3,8,11,13,3,3,3,8,3,5,0,
                2,18,0,0,0,18,2,9,0,9,2,0,
                2,0,0,0,0,0,2,10,0,10,2,0,
                2,0,0,0,0,0,0,0,0,0,2,0,
                17,0,0,0,0,0,0,0,0,18,2,0,
                7,3,3,3,3,3,3,3,16,3,6,0
                };
            deep_copy(local, current_room.local_tileset);
            break;
        }
        case 1: {
            current_room.init(21,12,18,1);
            std::vector<int> local {
                4,3,3,16,12,3,13,12,3,8,12,8,3,12,3,3,12,13,16,3,5,
                2,18,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,0,18,2,
                2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,
                12,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,
                12,1,1,1,1,0,0,0,0,25,25,0,0,0,0,0,0,0,0,0,2,
                12,1,1,1,1,1,1,0,0,21,23,0,0,0,0,1,1,1,1,1,17,
                12,1,1,1,1,1,0,0,25,22,24,25,0,0,1,1,1,1,1,1,17,
                12,1,1,1,1,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,2,
                12,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,
                2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,
                2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,18,2,
                7,3,14,3,12,3,3,12,3,3,12,3,13,12,3,3,12,3,14,13,6
            };
            deep_copy(local, current_room.local_tileset);

            anim_object fp;
            fp.entity_item = bn::sprite_items::fireplace_anim;
            fp.entity = fp.entity_item.create_sprite(0,0);
            fp.entity_anim = bn::create_sprite_animate_action_forever(fp.entity, 2, fp.entity_item.tiles_item(), 00, 1, 00, 2);
            fp.entity.set_visible(false);
            fp.entity.set_camera(camera);
            fp.entity.set_position(304,176);
            anim_objects.push_back(fp);
            break;
        }
        case 2: {
            current_room.init(11,8,9,6);
            std::vector<int> local {
                4,11,8,12,8,3,3,3,3,3,5,
                2,18,9,9,26,27,2,0,0,0,2,
                2,0,10,10,0,0,2,19,1,20,2,
                2,0,0,0,0,0,2,3,0,0,2,
                2,0,1,1,1,0,2,0,0,18,2,
                2,0,1,1,1,0,2,0,3,3,12,
                2,18,0,0,0,0,0,0,0,0,17,
                7,3,3,14,3,3,3,3,3,3,6
            };
            deep_copy(local, current_room.local_tileset);

            anim_object aaron;
            aaron.entity.set_visible(true);
            aaron.entity.set_camera(camera);
            aaron.entity.set_position(64,48);
            anim_objects.push_back(aaron);

            anim_object del;
            del.id = 1;
            del.entity_item = bn::sprite_items::del_sleep;
            del.entity = del.entity_item.create_sprite(0,0);
            del.entity_anim = bn::create_sprite_animate_action_forever(del.entity, 20, del.entity_item.tiles_item(), 00, 1, 00, 0);
            del.entity.set_visible(true);
            del.entity.set_camera(camera);
            del.entity.set_position(256,48);
            anim_objects.push_back(del);
            break;
        }
        case 3: {
            current_room.init(24,12,22,1);
            std::vector<int> local {
                4,8,11,12,3,3,12,11,8,5,1,1,1,1,0,0,1,1,1,1,1,4,14,5,
                2,18,0,0,0,0,0,0,18,2,1,1,1,1,0,0,1,1,1,1,1,2,0,2,
                2,0,0,0,0,0,0,0,0,2,1,1,1,1,0,0,1,1,1,1,1,2,0,2,
                2,0,0,0,0,0,0,0,0,2,1,1,1,1,0,0,1,1,1,1,1,2,0,2,
                2,0,0,0,1,1,0,0,0,2,1,1,1,1,0,0,1,1,1,1,1,2,0,2,
                2,0,0,1,1,1,1,0,0,2,1,1,1,1,1,1,1,1,1,1,1,2,0,2,
                2,0,0,1,1,1,1,0,0,2,1,1,1,1,1,1,1,1,1,1,1,2,0,2,
                2,0,0,0,1,1,0,0,0,2,1,1,1,1,1,1,1,1,1,1,1,2,0,2,
                2,0,0,0,0,0,0,0,0,2,1,1,1,1,1,1,1,1,1,1,1,2,0,2,
                2,0,0,0,0,0,0,0,0,7,3,3,3,3,3,3,3,3,3,3,3,2,0,2,
                2,18,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,
                7,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,6
            };
            deep_copy(local, current_room.local_tileset);

            anim_object fp;
            fp.entity_item = bn::sprite_items::bookshelf;
            fp.entity = fp.entity_item.create_sprite(0,0);
            fp.entity_anim = bn::create_sprite_animate_action_forever(fp.entity, 2, fp.entity_item.tiles_item(), 00, 00, 00, 0);
            fp.entity.set_visible(true);
            fp.entity.set_camera(camera);
            fp.entity.set_position(144,16);
            anim_objects.push_back(fp);

            //character enoki(bn::sprite_items::enoki_walking_pj, current_room, current_room.start_x - 0.9, current_room.start_y, false);
            /*
            if (current_room.local_tileset.at((current_room.start_x - 1) + (current_room.start_y * current_room.width)] > 0) {
                enoki.entity.set_position(4 + current_room.start_x * 32, current_room.start_y * 32);
                maple.entity.set_position(-4 + current_room.start_x * 32, (current_room.start_y * 32));
            }
            */

            for (int t = 0; t < 2; t++) {
                chari.at(t).entity.set_camera(camera);
            }

            break;
        }
        case 4: {
            bn::music_items_info::span[11].first.play(bn::fixed(50) / 100);

            current_room.init(20,20,9,17);
            std::vector<int> local_col {
                00,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,
                00,1,1,1,0,0,0,0,22,24,0,0,0,0,0,1,0,1,1,0,
                00,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,
                00,1,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,1,0,
                00,1,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,1,0,
                00,1,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,0,
                00,1,0,0,0,0,0,0,0,14,0,0,0,0,0,0,0,0,1,0,
                00,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,
                00,1,1,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,0,
                01,1,1,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,0,
                01,23,21,0,0,0,0,1,20,0,0,1,0,0,0,0,0,0,1,0,
                01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,
                01,1,1,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,0,
                01,1,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,0,
                01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,
                01,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,
                01,0,0,0,0,0,0,0,1,0,1,0,1,1,1,1,0,0,1,0,
                01,0,0,0,0,0,0,1,1,0,1,1,1,0,0,0,0,0,1,0,
                01,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,
                00,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0
            };
            
            std::vector<int> local {
                31,32,31,32,39,27,27,27,44,0,27,27,27,27,27,42,43,42,12,13,
                30,33,32,39,0,0,0,0,0,0,0,0,0,0,0,43,3,43,11,26,
                31,34,39,0,0,0,0,0,0,0,0,0,1,0,0,5,2,3,12,26,
                30,39,0,0,0,15,18,18,18,18,18,18,18,23,0,4,3,2,11,26,
                30,38,0,0,1,16,19,19,19,19,19,19,19,24,1,5,2,3,12,26,
                31,39,0,0,27,17,20,21,20,22,20,21,20,25,27,4,3,2,11,26,
                30,38,0,0,0,0,0,0,0,3,0,0,0,0,0,4,2,3,12,26,
                31,39,1,0,0,0,0,0,0,2,0,0,0,0,0,5,3,2,11,26,
                30,38,27,0,0,0,0,0,40,3,42,0,0,0,0,4,2,3,12,26,
                31,39,44,0,0,0,0,1,41,2,43,1,0,14,7,6,3,2,11,26,
                00,0,0,0,0,0,0,27,2,3,3,27,0,4,2,3,2,3,12,26,
                38,0,1,0,0,0,0,0,2,2,3,0,0,5,3,2,3,2,11,26,
                30,36,27,0,0,0,0,14,42,3,42,8,7,6,2,3,2,3,12,26,
                31,37,0,0,0,0,14,6,43,2,43,2,3,2,3,2,3,46,45,26,
                34,0,0,0,0,0,5,2,3,3,2,3,2,46,9,10,9,45,13,26,
                35,7,8,7,8,7,6,3,3,2,3,2,46,45,13,26,26,26,26,26,
                42,2,3,2,3,2,3,46,42,3,42,10,45,26,26,26,26,26,26,26,
                43,10,9,10,9,10,9,45,43,2,43,26,26,26,26,26,26,0,0,0,
                26,26,26,26,13,26,26,26,26,10,26,26,26,26,26,26,26,0,0,0,
                26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,0,0,0
            };

            deep_copy(local, current_room.local_tileset);
            deep_copy(local_col, current_room.collisions);

            primary_bg = bn::regular_bg_items::grassy_knoll.create_bg(0, 0);
            primary_bg.set_camera(camera);
            break;
        }
        case 5: {
            bn::music_items_info::span[2].first.play(bn::fixed(50) / 100);

            current_room.init(11,5,5,3);
            std::vector<int> local_col {
                01,1,1,1,1,1,1,1,1,1,1,
                01,1,0,0,17,0,18,0,0,0,1,
                01,1,0,0,1,0,0,1,0,1,1,
                01,1,16,1,1,13,0,1,0,1,1,
                01,1,1,1,1,1,1,1,1,1,1
            };
            std::vector<int> local {
                1,6,0,0,0,0,0,0,0,0,51,
                2,7,0,0,0,0,0,0,0,0,52,
                3,8,0,0,0,0,0,0,0,0,53,
                4,9,0,0,0,0,0,0,0,0,54,
                5,10,0,0,0,0,0,0,0,0,55
            };
            deep_copy(local, current_room.local_tileset);
            deep_copy(local_col, current_room.collisions);

            primary_bg = bn::regular_bg_items::bg_trailer_home.create_bg(0, 0);
            primary_bg.set_camera(camera);

            if (so.last_char_id != 0) {
                character maple(bn::sprite_items::maple_walking_spring, current_room, 5, 1, false);
                maple.entity.set_position(5 * 32, 1 * 32);
                maple.entity.set_camera(camera);
                maple.role = 2;
                maple.identity = 0;
                chari.push_back(maple);
            }

            if (so.last_char_id != 1) {
                character enoki(bn::sprite_items::enoki_walking_spring, current_room, 6, 2, false);
                enoki.entity.set_position(6 * 32, 2 * 32);
                enoki.entity.set_camera(camera);
                enoki.role = 2;
                enoki.identity = 1;
                chari.push_back(enoki);
            }

            if (so.last_char_id != 2) {
                character aaron(bn::sprite_items::aaron_walking_spring, current_room, 4, 1, false);
                aaron.entity.set_position(4 * 32, 1 * 32);
                aaron.entity.set_camera(camera);
                aaron.role = 2;
                aaron.identity = 2;
                chari.push_back(aaron);
            }

            break;
        }
        case 6: {
            bn::music_items_info::span[17].first.play(bn::fixed(50) / 100);
            current_room.init(9,11,7,3);
            std::vector<int> local {
                00,0,0,0,0,0,0,12,0,
                00,0,0,0,0,0,0,12,0,
                00,0,0,0,0,0,1,12,1,
                00,0,0,0,0,0,1,0,1,
                1,1,1,1,1,1,1,0,1,
                1,2,4,8,9,11,0,0,1,
                1,3,5,0,10,0,0,0,1,
                1,0,0,0,0,0,0,0,1,
                1,6,0,0,0,13,14,0,1,
                1,7,0,0,0,0,0,0,1,
                1,1,1,1,1,1,1,1,1
            };
            std::vector<int> local_col {
                00,0,0,0,0,0,0,0,0,
                00,0,0,0,0,0,1,1,1,
                00,0,0,0,0,0,1,1,1,
                00,0,0,0,0,0,1,19,1,
                1,1,1,1,1,1,1,0,1,
                1,1,0,1,1,1,0,0,1,
                1,1,0,0,0,0,0,0,1,
                1,0,0,0,0,0,0,0,1,
                1,1,0,0,0,1,1,0,1,
                1,1,0,0,0,0,0,0,1,
                1,1,1,1,1,1,1,1,1
            };
            deep_copy(local, current_room.local_tileset);
            deep_copy(local_col, current_room.collisions);

            if (so.last_char_id != 3) {
                character scout(bn::sprite_items::scout_walking_spring, current_room, 4, 8, false);
                scout.entity.set_position(4 * 32, 8 * 32);
                scout.entity.set_camera(camera);
                scout.role = 2;
                scout.identity = 3;
                chari.push_back(scout);
            }

            primary_bg = bn::regular_bg_items::velvet.create_bg(0, 0);
            primary_bg.set_camera(camera);
        }
        default: {
            break;
        }
    };

    switch(so.last_char_id) {
        default: {
            character default_chari(bn::sprite_items::maple_walking_spring, current_room, current_room.start_x, current_room.start_y, false);
            default_chari.entity.set_camera(camera);
            default_chari.entity.set_position(sx, sy);
            default_chari.role = 1;
            default_chari.identity = so.last_char_id;
            chari.push_back(default_chari);
            break;
        }
        case 1:{
            character default_chari(bn::sprite_items::enoki_walking_spring, current_room, current_room.start_x, current_room.start_y, false);
            default_chari.entity.set_camera(camera);
            default_chari.entity.set_position(sx, sy);
            default_chari.role = 1;
            default_chari.identity = so.last_char_id;
            chari.push_back(default_chari);
            break;
        }
        case 2:{
            character default_chari(bn::sprite_items::aaron_walking_spring, current_room, current_room.start_x, current_room.start_y, false);
            default_chari.entity.set_camera(camera);
            default_chari.entity.set_position(sx, sy);
            default_chari.role = 1;
            default_chari.identity = so.last_char_id;
            chari.push_back(default_chari);
            break;
        }
        case 3: {
            character default_chari(bn::sprite_items::scout_walking_spring, current_room, current_room.start_x, current_room.start_y, false);
            default_chari.entity.set_camera(camera);
            default_chari.entity.set_position(sx, sy);
            default_chari.role = 1;
            default_chari.identity = so.last_char_id;
            chari.push_back(default_chari);
            break;
        }
    }
    
    // A header
    bn::sprite_ptr a_notif = bn::sprite_items::a_button_2.create_sprite(0, 0);
    a_notif.set_camera(camera);
    a_notif.set_visible(false);

    // Make a fireball!
    int p_index = 0;
    int p_size = 3;
    projectile p[3];
    for (int t = 0; t < 3; t++) {
        p[t].fireball.set_camera(camera);
        p[t].fireball.set_visible(false);
    }

    // GAMELOOP
    int update_counter = 0;
    bool firstThing = true;
    int flex = 84;
    int follow_x = 0;
    int follow_y = 0;
    int follow_id = 0;

    int anim8 = 0;
    int max_chari = chari.size();

    while(true) {

        if (bn::keypad::start_pressed()) {
            bn::core::update();
            bn::music::pause();
            bn::sound_items::cnaut.play();
            while(!bn::keypad::start_pressed()) {
                bn::core::update();
            }
            bn::music::resume();
            bn::sound_items::pop.play();
        }

        // Animate NPCs
        for (int t = 0; t < anim_objects.size(); t++) {
            anim_objects.at(t).entity_anim.update();
            anim_objects.at(t).entity = anim_objects.at(t).entity_anim.sprite();
        }

        // Create projectiles
        if (bn::keypad::r_pressed()) {
            if (chari.at(follow_id).identity == 0) {
                bn::sound_items::fireblast.play();
                p[p_index].active = true;
                p[p_index].fireball.set_x(follow_x);
                p[p_index].fireball.set_y(follow_y);
                p[p_index].dir = chari.at(follow_id).dir;
                p[p_index].dur = 0;
                p[p_index].fireball.set_visible(true);
                p_index++;
                if (p_index >= p_size) p_index = 0;
            } else {
                bn::sound_items::squeak.play();
            }
        }

        // Update projectiles
        for (int t = 0; t < p_size; t++) {
            if (p[t].active) {
                if (p[t].dir == 3) p[t].fireball.put_above();
                p[t].update();
                if (p[t].dur < 16 && (
                    current_room.local_tileset.at(
                        (p[t].fireball.x().integer() / 32) +
                        ((p[t].fireball.y().integer() / 32) * current_room.width)
                        ) > 0
                    )) {
                    p[t].dur = 16;
                }
            }
        }

        // Control actions
        a_notif.set_visible(false);
        int possible_action = current_room.collisions.at(((follow_x + 16) / 32) + (((follow_y + 16) / 32) * current_room.width));
        if (possible_action > 1) {
            a_notif.set_visible(true);
            a_notif.put_above();
            a_notif.set_x(follow_x);
            a_notif.set_y(follow_y - 28);
            if (bn::keypad::a_pressed()) {

                // Start action
                a_notif.set_visible(false);
                bn::core::update();

                int me = chari.at(follow_id).identity;
                
                switch (possible_action) {
                    case 0: {
                        line lc[8] = {
                            {true, true, 00, "                                                                  ENOKI                            Let's go for the room with-"},
                            {true, true, 00, "                                                                  ENOKI                            -the big bookshelf!"},
                            {true, true, 00, "                                                                  ENOKI                            There's gotta be secrets!"},
                            {true, true, 00, "                                                                  ENOKI                            If you want me to lead,"},
                            {true, true, 00, "                                                                  ENOKI                            just press 'B'."},
                            {true, true, 00, "                                                                  MAPLE                            ...Huh?"},
                            {true, true, 00, "                                                                  ENOKI                            What?"},
                            {true, true, 00, "COM: Endscene"}
                        };
                        bn::sound_item hm = bn::sound_items::heymaple;
                        hm.play();
                        dialogue_page_lite(lc);
                        break;
                    };

                    case 1: {
                        line lc[5] = {
                            {true, true, 00, "                                                                  You stare at the art."},
                            {true, true, 00, "                                                                  And as such...."},
                            {true, true, 00, "                                                                  So the art stares unto you."},
                            {true, true, 00, "                                                                  Art is weird."},
                            {true, true, 00, "COM: Endscene"}
                        };
                        dialogue_page_lite(lc);
                        break;
                    };

                    case 2: {
                        line lc[10] = {
                            {true, true, 00, "                                                                  MAPLE                            Enoki, there's no window."},
                            {true, true, 00, "                                                                  ENOKI                            Uh-huh?"},
                            {true, true, 00, "                                                                  MAPLE                            What happens if someone tries-"},
                            {true, true, 00, "                                                                  MAPLE                            to break in?"},
                            {true, true, 00, "                                                                  ENOKI                            Aaron punches 'em."},
                            {true, true, 00, "                                                                  ENOKI                            In the face."},
                            {true, true, 00, "                                                                  MAPLE                            He's not here, though."},
                            {true, true, 00, "                                                                  ENOKI                            Then I'll punch 'em."},
                            {true, true, 00, "                                                                  MAPLE                            I.... Hmm. Alright, then."},
                            {true, true, 00, "COM: Endscene"}
                        };
                        dialogue_page_lite(lc);
                        break;
                    };

                    case 3: {
                        line l2[10] = {
                            {true, true, 00, "                                                                  You see a pot."},
                            {true, true, 00, "                                                                  You feel compelled to smash it."},
                            {true, true, 00, "                                                                  However, this is not possible."},
                            {true, true, 00, "                                                                  You feel strangely disappointed."},
                            {true, true, 00, "COM: Endscene"}
                        };
                        dialogue_page_lite(l2);
                        break;
                    };

                    case 4: {
                        line lc[19] = {
                            {true, true, 00, "                                                                  MAPLE                            Hey, let's head out. I don't want"},
                            {true, true, 00, "                                                                  MAPLE                            to wake him up."},
                            {true, true, 00, "                                                                  ENOKI                            I dunno, it doesn't matter,"},
                            {true, true, 00, "                                                                  ENOKI                            there's no way he'll wake up."},
                            {true, true, 00, "                                                                  ENOKI                            He likes the light on, too."},
                            {true, true, 00, "                                                                  MAPLE                            I thought you didn't have"},
                            {true, true, 00, "                                                                  MAPLE                            electricity..?"},
                            {true, true, 00, "                                                                  ENOKI                            Oh, we do- just that one plug."},
                            {true, true, 00, "                                                                  ENOKI                            It's a very important plug."},
                            {true, true, 00, "                                                                  MAPLE                            You sure you like this place?"},
                            {true, true, 00, "                                                                  ENOKI                            You gonna come here and insult"},
                            {true, true, 00, "                                                                  ENOKI                            my house?"},
                            {true, true, 00, "                                                                  MAPLE                            Well, when you put it THAT way..."},
                            {true, true, 00, "                                                                  ENOKI                            Uh huh, that's what I thought."},
                            {true, true, 00, "                                                                  MAPLE                            Je m'excuse."},
                            {true, true, 00, "                                                                  ENOKI                            Merci."},
                            {true, true, 00, "                                                                  MAPLE                            But when you both move in with me"},
                            {true, true, 00, "                                                                  MAPLE                            don't say I didn't warn y'all."},
                            {true, true, 00, "COM: Endscene"}
                        };
                        dialogue_page_lite(lc);
                        break;
                    };

                    case 8: {
                        line lc[9] = {
                            {true, true, 00, "                                                                  ENOKI                            Y'know, back when Del was my"},
                            {true, true, 00, "                                                                  ENOKI                            nanny, my parents gave her like"},
                            {true, true, 00, "                                                                  ENOKI                            three different rooms she could"},
                            {true, true, 00, "                                                                  ENOKI                            stay in. I don't think she ever"},
                            {true, true, 00, "                                                                  ENOKI                            slept anywhere but the tub."},
                            {true, true, 00, "                                                                  MAPLE                            That actually sounds pretty nice."},
                            {true, true, 00, "                                                                  ENOKI                            Yeah, I tried it but my skin"},
                            {true, true, 00, "                                                                  ENOKI                            didn't like it very much."},
                            {true, true, 00, "COM: Endscene"}
                        };
                        dialogue_page_lite(lc);
                        break;
                    };

                    case 9: {
                        line lc[9] = {
                            {true, true, 00, "                                                                  MAPLE                            Enoki, this one's locked."},
                            {true, true, 00, "                                                                  ENOKI                            Oh. Yeah, I think that's"},
                            {true, true, 00, "                                                                  ENOKI                            the kitchen. We don't know where"},
                            {true, true, 00, "                                                                  ENOKI                            the key is."},
                            {true, true, 00, "                                                                  MAPLE                            So how do you eat??"},
                            {true, true, 00, "                                                                  ENOKI                            We make most of our food over the"},
                            {true, true, 00, "                                                                  ENOKI                            big fire pit!"},
                            {true, true, 00, "                                                                  MAPLE                            You two, I *swear*...."},
                            {true, true, 00, "COM: Endscene"}
                        };
                        dialogue_page_lite(lc);
                        break;
                    };

                    case 10: {
                        line lc[20] = {
                            {true, true, 00, "                                                                  ENOKI                            Isn't he so cute when he"},
                            {true, true, 00, "                                                                  ENOKI                            sleeps like that? <3"},
                            {true, true, 00, "                                                                  MAPLE                            You've been married for, what,"},
                            {true, true, 00, "                                                                  MAPLE                            a few months now?"},
                            {true, true, 00, "                                                                  MAPLE                            Aren't you supposed to be at the"},
                            {true, true, 00, "                                                                  MAPLE                            stage where neither of you talk"},
                            {true, true, 00, "                                                                  MAPLE                            to each other at meals and both"},
                            {true, true, 00, "                                                                  MAPLE                            of you've gained ten pounds?"},
                            {true, true, 00, "                                                                  ENOKI                            Huh, I think I've lost weight."},
                            {true, true, 00, "                                                                  MAPLE                            I guess I don't get it."},
                            {true, true, 00, "                                                                  ENOKI                            Just cos you always get in"},
                            {true, true, 00, "                                                                  ENOKI                            fights with your ex-boyfriends"},
                            {true, true, 00, "                                                                  ENOKI                            doesn't mean every couple's like"},
                            {true, true, 00, "                                                                  ENOKI                            that, tu sais."},
                            {true, true, 00, "                                                                  ENOKI                            I mean, you've got this nasty"},
                            {true, true, 00, "                                                                  ENOKI                            habit of-"},
                            {true, true, 00, "                                                                  MAPLE                            You finish that sentence, and"},
                            {true, true, 00, "                                                                  MAPLE                            I'll burn your eyebrows off."},
                            {true, true, 00, "                                                                  ENOKI                            ......doing that."},
                            {true, true, 00, "COM: Endscene"}
                        };
                        dialogue_page_lite(lc);
                        break;
                    };

                    case 11: {
                        line lc[32] = {
                            {true, true, 00, "                                                                  ENOKI                            Nous sommes ici!"},
                            {true, true, 00, "                                                                  ENOKI                            The bookshelf room."},
                            {true, true, 00, "                                                                  MAPLE                            You weren't kidding about there"},
                            {true, true, 00, "                                                                  MAPLE                            literally being just a bookshelf"},
                            {true, true, 00, "                                                                  MAPLE                            room, were you?"},
                            {true, true, 00, "                                                                  ENOKI                            Bon, so I can't move it and Aaron"},
                            {true, true, 00, "                                                                  ENOKI                            can't either, so I was wondering,"},
                            {true, true, 00, "                                                                  ENOKI                            how about using that elf magic?"},
                            {true, true, 00, "                                                                  MAPLE                            Let me get this straight..."},
                            {true, true, 00, "                                                                  MAPLE                            You want me to *burn* a perfectly"},
                            {true, true, 00, "                                                                  MAPLE                            good bookshelf?"},
                            {true, true, 00, "                                                                  ENOKI                            Yeah! I wanna see if there's a"},
                            {true, true, 00, "                                                                  ENOKI                            secret passage behind it or"},
                            {true, true, 00, "                                                                  ENOKI                            somethin', y'know?"},
                            {true, true, 00, "                                                                  MAPLE                            I refuse. This is rediculous."},
                            {true, true, 00, "                                                                  MAPLE                            These are perfectly good books."},
                            {true, true, 00, "                                                                  ENOKI                            Most are rotting away, so"},
                            {true, true, 00, "                                                                  ENOKI                            it's probably best that they get"},
                            {true, true, 00, "                                                                  ENOKI                            burned. I checked."},
                            {true, true, 00, "                                                                  MAPLE                            Are you sure?"},
                            {true, true, 00, "                                                                  ENOKI                            Absolutely."},
                            {true, true, 00, "                                                                  MAPLE                            Alright... I'll make a deal."},
                            {true, true, 00, "                                                                  MAPLE                            I'll burn this, but you need to"},
                            {true, true, 00, "                                                                  MAPLE                            save at least one book."}, //j'ai compris?
                            {true, true, 00, "                                                                  MAPLE                            J'ai compris? Oui?"},
                            {true, true, 00, "                                                                  ENOKI                            Oui!"},
                            {true, true, 00, "                                                                  ENOKI                            ....alright, I got my book."},
                            {true, true, 00, "                                                                  ENOKI                            Remember, use the 'R' trigger"},
                            {true, true, 00, "                                                                  ENOKI                            to send out a bolt of fire!"},
                            {true, true, 00, "                                                                  MAPLE                            ...What are you talking about??"},
                            {true, true, 00, "                                                                  ENOKI                            Huh? Oh, nothing"},
                            {true, true, 00, "COM: Endscene"}
                        };
                        dialogue_page_lite(lc);
                        break;
                    };

                    case 12: {
                        line lc[32] = {
                            {true, true, 00, "                                                                  MAPLE                            ...."},
                            {true, true, 00, "                                                                  ENOKI                            Well, there's no passage."},
                            {true, true, 00, "                                                                  MAPLE                            You don't say."},
                            {true, true, 00, "                                                                  ENOKI                            That's weird."},
                            {true, true, 00, "                                                                  MAPLE                            Enoki... Look here."},
                            {true, true, 00, "                                                                  MAPLE                            I guess it doesn't make any sense"},
                            {true, true, 00, "                                                                  MAPLE                            to be angry, so I won't be, but.."},
                            {true, true, 00, "                                                                  MAPLE                            You need to stop being like this."},
                            {true, true, 00, "                                                                  MAPLE                            You and Aaron just spent all this"},
                            {true, true, 00, "                                                                  MAPLE                            money on a barely furnished"},
                            {true, true, 00, "                                                                  MAPLE                            castle without basic faculties"},
                            {true, true, 00, "                                                                  MAPLE                            for what? So you could play like"},
                            {true, true, 00, "                                                                  MAPLE                            you're a princess? While I'm over"},
                            {true, true, 00, "                                                                  MAPLE                            in Carolina, sacrificing the best"},
                            {true, true, 00, "                                                                  MAPLE                            parts of my life for an apartment"},
                            {true, true, 00, "                                                                  MAPLE                            with the bare essentials?"},
                            {true, true, 00, "                                                                  MAPLE                            Enoki... Please."},
                            {true, true, 00, "                                                                  MAPLE                            I don't want to be the bad guy."},
                            {true, true, 00, "                                                                  MAPLE                            I know you didn't really have a"},
                            {true, true, 00, "                                                                  MAPLE                            childhood or parents, I get it."},
                            {true, true, 00, "                                                                  MAPLE                            That's me too."},
                            {true, true, 00, "                                                                  MAPLE                            But you can't keep going on like"},
                            {true, true, 00, "                                                                  MAPLE                            this. Do you understand?"},
                            {true, true, 00, "                                                                  ENOKI                            I do understand."}, //j'ai compris?
                            {true, true, 00, "                                                                  MAPLE                            It's 5:00 in the morning, I'm"},
                            {true, true, 00, "                                                                  MAPLE                            going back to bed. I'll see y'all"},
                            {true, true, 00, "                                                                  MAPLE                            in the morning, oui?"},
                            {true, true, 00, "                                                                  ENOKI                            Oui.."},
                            {true, true, 00, "                                                                  MAPLE                            Hey, don't beat yourself up about"},
                            {true, true, 00, "                                                                  MAPLE                            it. S'il te plait.. Bonne nuit."},
                            {true, true, 00, "                                                                  ENOKI                            Bonne nuit.."},
                            {true, true, 00, "COM: Endscene"}
                        };
                        dialogue_page_lite(lc);
                        break;
                    };
                
                    case 13: {
                        dt.spawn_x = 9;
                        dt.spawn_y = 6;
                        dt.world_index = 4;
                        return dt;
                        break;
                    };

                    case 14: {
                        dt.spawn_x = 5;
                        dt.spawn_y = 3;
                        dt.world_index = 5;
                        return dt;
                        break;
                    };

                    case 16: {
                        if (me == 0) {
                            line lc[32] = {
    
                            {true, true, 00, "                                                                  (Every single one of these are   Enoki's, aren't they?)"},
                            {true, true, 00, "                                                                  (Of course Aaron would pick up   around here.)"},
                            {true, true, 00, "                                                                  (They're so different... How on  earth are they not fighting-"},
                            {true, true, 00, "                                                                  -all the time? I don't get it.)"},
                            {true, true, 00, "                                                                  (If I had a boyfriend, I'd make  him pick up these clothes-"},
                            {true, true, 00, "                                                                  -immediately.)"},
                            {true, true, 00, "COM: Endscene"}
                            };
                            dialogue_page_lite(lc);
                        }

                        if (me == 1) {
                            line lc[32] = {
    
                            {true, true, 00, "                                                                  (If I knew Maple was coming so   soon I probably would'a cleaned="},
                            {true, true, 00, "                                                                  -these up a little sooner....)"},
                            {true, true, 00, "                                                                  (Maybe I can pick 'em up now and she won't notice.)"},
                            {true, true, 00, "                                                                  (Then again, maybe she already   saw it and is already judging.)"},
                            {true, true, 00, "                                                                  (..This one's cute enough, maybe I'll just leave it on the floor-"},
                            {true, true, 00, "                                                                  -and wear it tomorrow.)"},
                            {true, true, 00, "COM: Endscene"}
                            };
                            dialogue_page_lite(lc);
                            }

                        if (me == 2) {
                            line lc[32] = {
    
                            {true, true, 00, "                                                                  (Enoki wasn't this messy when we lived in the castle.)"},
                            {true, true, 00, "                                                                  (Maybe she thinks we're finally  moved in for good, so she-"},
                            {true, true, 00, "                                                                  -feels comfortable here.)"},
                            {true, true, 00, "                                                                  (I know it's probably too soon tocall, but Aaron Tremblay-"},
                            {true, true, 00, "                                                                  -you've done it. You've got your own place, and you've got yourself-"},
                            {true, true, 00, "                                                                  -a wife to leave her clothes on  the floor.)"},
                            {true, true, 00, "                                                                  (I can't think of anything else  I could want, now.)"},
                            {true, true, 00, "                                                                  (Well.....                       I miss my car.)"},
                            {true, true, 00, "                                                                  (Maybe I'll talk to Scout about  putting in a racetrack.)"},
                            {true, true, 00, "COM: Endscene"}
                            };
                            dialogue_page_lite(lc);
                            }

                        break;
                    };

                    case 17: {
                        if (me == 0) {
                            line lc[32] = {
    
                            {true, true, 00, "                                                                  (At least when they were living  in that castle, their bed was in-"},
                            {true, true, 00, "                                                                  -the center of the room. What's  this supposed to be?)"},
                            {true, true, 00, "                                                                  (Who's shoved up awkwardly in thecorner? Aaron probably.)"},
                            {true, true, 00, "                                                                  (I swear, that girl is going to  give him grey hairs ten years    early.)"},
                            {true, true, 00, "COM: Endscene"}
                            };
                            dialogue_page_lite(lc);
                        }

                        if (me == 1) {
                            line lc[32] = {

                            {true, true, 00, "                                                                  (I'm so glad I don't have'ta     sleep in the middle of the room.)"},
                            {true, true, 00, "                                                                  (Rolling over off the bed onto   that stone really really hurt.)"},
                            {true, true, 00, "                                                                  (Now I getta roll either into    the wall or into Aaron.)"},
                            {true, true, 00, "                                                                  (I'm so glad he doesn't seem to  mind that much.)"},
                            {true, true, 00, "COM: Endscene"}
                            };
                            dialogue_page_lite(lc);
                            }
                        
                        if (me == 2) {
                            line lc[32] = {

                            {true, true, 00, "                                                                  (Maple isn't gonna be happy when she sees this room.)"},
                            {true, true, 00, "                                                                  (I remember when she used to be  so easy-going...)"},
                            {true, true, 00, "                                                                  (She's just so frustrating to be around these days.)"},
                            {true, true, 00, "                                                                  (Maybe she shouldn't have come.  Every time I try to do something-"},
                            {true, true, 00, "                                                                  -to help her out, she just spits all over me and pouts.)"},
                            {true, true, 00, "                                                                  (Maybe she'll get tired of       living here and just go home.)"},
                            {true, true, 00, "                                                                  (Maybe she's right. Maybe I'm    just living Enoki's fantasy.)"},
                            {true, true, 00, "                                                                  (But Enoki's the first bit of    happiness I've had in years.)"},
                            {true, true, 00, "                                                                  (Maybe we'll both change...      I hope something changes.)"},
                            {true, true, 00, "COM: Endscene"}
                            };
                            dialogue_page_lite(lc);
                        }

                        break;
                    };

                    case 18: {
                        if (me == 0) {
                            line lc[32] = {
    
                            {true, true, 00, "                                                                  MAPLE                            So, uh, what's the book?"},
                            {true, true, 00, "                                                                  AARON                            Oh, that's mine."},
                            {true, true, 00, "                                                                  AARON                            You know I'm not a fiction guy,"},
                            {true, true, 00, "                                                                  AARON                            But Enoki is stubborn."},
                            {true, true, 00, "                                                                  ENOKI                            You ever heard'a Yellow?"},
                            {true, true, 00, "                                                                  ENOKI                            It's kinda fun, I got Aaron into it."},
                            {true, true, 00, "                                                                  MAPLE                            ...does this have pictures?"},
                            {true, true, 00, "                                                                  MAPLE                            Do you still read picture books?"},
                            {true, true, 00, "                                                                  ENOKI                            It's got cigarettes in it though!"},
                            {true, true, 00, "                                                                  ENOKI                            That means its for kids AND      adults."},
                            {true, true, 00, "                                                                  MAPLE                            Huh, they make books like that?"},
                            {true, true, 00, "COM: Endscene"}
                            };
                            dialogue_page_lite(lc);
                        }

                        if (me == 1) {
                            line lc[32] = {
    
                            {true, true, 00, "                                                                  ENOKI                            Oh, oh Maple? You want juice?"},
                            {true, true, 00, "                                                                  MAPLE                            What kind of juice?"},
                            {true, true, 00, "                                                                  ENOKI                            It's a secret."},
                            {true, true, 00, "                                                                  MAPLE                            I'm not drinking mystery liquid."},
                            {true, true, 00, "                                                                  ENOKI                            ...."},
                            {true, true, 00, "                                                                  ENOKI                            Ok fine, it's orange juice."},
                            {true, true, 00, "                                                                  MAPLE                            You don't think I would have"},
                            {true, true, 00, "                                                                  MAPLE                            found that out?"},
                            {true, true, 00, "                                                                  ENOKI                            Maybe?"},
                            {true, true, 00, "                                                                  MAPLE                            No. Merci."},
                            {true, true, 00, "COM: Endscene"}
                            };
                            dialogue_page_lite(lc);
                        }

                        if (me == 2) {
                            line lc[32] = {

                            {true, true, 00, "                                                                  (We're kind of low on orange     juice.)"},
                            {true, true, 00, "                                                                  (I'll probably need to head to   town and sell some produce.)"},
                            {true, true, 00, "                                                                  (Selling one fruit to get        another fruit, heh.)"},
                            {true, true, 00, "                                                                  (If only cucumber juice tasted   a little better."},
                            {true, true, 00, "COM: Endscene"}
                            };
                            dialogue_page_lite(lc);
                        }

                        break;
                    };
                
                    case 19: {
                        dt.spawn_x = 8;
                        dt.spawn_y = 10;
                        dt.world_index = 4;
                        return dt;
                        break;
                    };

                    case 20: {
                        dt.spawn_x = 7;
                        dt.spawn_y = 3;
                        dt.world_index = 6;
                        return dt;
                        break;
                    };

                    case 21: {
                            line lc[32] = {
                            {true, true, 00, "                                                                  ENOKI'S GARDEN                   You touch it, I kill you"},
                            {true, true, 00, "COM: Endscene"},
                            };
                            dialogue_page_lite(lc);
                            break;
                    };

                    case 22: {
                            line lc[32] = {
                            {true, true, 00, "                                                                  WHOP CHOPPING SPOT               Where wood is chopped"},
                            {true, true, 00, "COM: Endscene"}
                            };
                            dialogue_page_lite(lc);
                            break;
                    };

                    case 23: {
                        if (me == 1) {
                            dt.spawn_x = 2;
                            dt.spawn_y = 0;
                            dt.world_index = 99;
                            return dt;
                        }
                        break;
                    };
                }
            }
        }

        // Swap characters
        if (max_chari > 1) {
            if (bn::keypad::b_pressed()) {
                bn::sound_items::cnaut.play();
                bn::blending::set_intensity_alpha(1);
                int new_chari = (follow_id + 1) % max_chari;
                int old_role = chari.at(new_chari).role;
                chari.at(new_chari).role = 1;
                chari.at(new_chari).entity.set_blending_enabled(true);
                chari.at(follow_id).role = old_role;
                chari.at(follow_id).entity.set_blending_enabled(false);

                so.last_char_id = chari.at(new_chari).identity;
            }
        }

        // Character operations
        for (int t = 0; t < max_chari; t++) {

            // Set primary camera following X/Y coordinates

            if (chari.at(t).role == 1) {
                chari.at(t).update();
                follow_x = chari.at(t).entity.x().integer();
                follow_y = chari.at(t).entity.y().integer();
                follow_id = t;
            } else {
                chari.at(t).update(follow_x,follow_y);
            }

            // Z-Order followers
            for (int c = 0; c < max_chari; c++) {
                if (t != c) {
                    if (chari.at(t).entity.y() > chari.at(c).entity.y()) {
                        chari.at(c).entity.set_z_order(3);
                    } else {
                        chari.at(c).entity.set_z_order(2);
                    }
                }
            }
        }

        // Camera follows primary player
        if (camera.x() > follow_x + 30) {
            camera.set_x(camera.x() - 1);
        } else if (camera.x() < follow_x - 30) {
            camera.set_x(camera.x() + 1);
        }

        if (camera.y() > follow_y + 30) {
            camera.set_y(camera.y() - 1);
        } else if (camera.y() < follow_y - 30) {
            camera.set_y(camera.y() + 1);
        }

        // Camera adjustment
        if (camera.x().integer() > (current_room.width * 32) - (flex * 2) + 16) {
            camera.set_x((current_room.width * 32) - (flex * 2) + 16);
        } else if (camera.x().integer() < flex + 32) {
            camera.set_x(flex + 32);
        }
        
        if (current_room.height > 12) {
            if (camera.y().integer() > (current_room.height * 32) - (flex * 2) + 64) {
                camera.set_y((current_room.height * 32) - (flex * 2) + 64);
            } else if (camera.y().integer() < flex - 8) {
                camera.set_y(flex - 8);
            }
        }

        // Regularly update the tileset based on new camera coordinates
        if (update_counter == 0) {
            update_counter = 0;
            local_walls_p = 0;
            int f_x_a = camera.x().integer() / 32;
            int f_y_a = camera.y().integer() / 32;
            int min_y = f_y_a - 4;
            if (min_y < 0) min_y = 0;
            int min_x = f_x_a - 4;
            if (min_x < 0) min_x = 0;
            int max_y = f_y_a + 7;
            if (max_y > current_room.height) max_y = current_room.height;
            int max_x = f_x_a + 7;
            if (max_x > current_room.width) max_x = current_room.width;
            for (int y = min_y; y < max_y; y++) {
                for (int x = min_x; x < max_x; x++) {
                    int loc = current_room.local_tileset.at((current_room.width * y) + x);
                    if (local_walls_p < w_size && loc > 0) {

                        if (dt.world_index < 4) {
                            local_walls[local_walls_p].entity = bn::sprite_items::environment_stone.create_sprite(x * 32, y * 32, loc - 1);
                            local_walls[local_walls_p].entity.set_z_order(4);
                        } else if (dt.world_index == 4) {
                            if (loc == 26) {
                                local_walls[local_walls_p].entity = bn::sprite_items::water_animation.create_sprite(x * 32, y * 32, anim8);
                                anim8++;
                                anim8 = anim8 % 8;
                                local_walls[local_walls_p].entity.set_z_order(4);
                            } else {
                                local_walls[local_walls_p].entity = bn::sprite_items::ocean_terrain.create_sprite(x * 32, y * 32, loc - 1);
                                if (loc == 1) {
                                    local_walls[local_walls_p].entity.set_z_order(0);
                                } else {
                                    local_walls[local_walls_p].entity.set_z_order(4);
                                }
                            }
                        } else if (dt.world_index == 5) {
                            local_walls[local_walls_p].entity = bn::sprite_items::trailer_home.create_sprite(x * 32, y * 32, loc - 1);
                            local_walls[local_walls_p].entity.set_z_order(4);
                        } else if (dt.world_index == 6) {
                            local_walls[local_walls_p].entity = bn::sprite_items::scout_lab.create_sprite(x * 32, y * 32, loc - 1);
                            local_walls[local_walls_p].entity.set_z_order(4);
                        }
                        
                        local_walls[local_walls_p].entity.set_camera(camera);
                        local_walls_p++;
                    }
                }
            }
        }
        update_counter++;
        if (update_counter > 16) update_counter = 0;

        a_notif.put_above();
        bn::core::update();

        // To run before everything else
        if (firstThing) {
            // After world load
            switch(dt.world_index) {
                case 0: {
                    if (so.checkpoint == 0) {
                        bn::sound_items::shortclip.play();
                        exec_dialogue(3);
                        so.checkpoint = 1;
                    }

                    if (!bn::music::playing()) {
                        int music_volume = 50;
                        bn::music_items_info::span[2].first.play(bn::fixed(music_volume) / 100);
                    }

                    break;
                }
                default: {}
            };
            firstThing = false;
        } else {

            // World-specific special events
            switch(dt.world_index) {
                case 1:
                    for (int i = 0; i < p_size; i++) {
                        if (p[i].active) {
                            int my_x = p[i].fireball.x().integer() / 32;
                            int my_y = p[i].fireball.y().integer() / 32;
                            if (my_x >= 8 && my_x <= 11 && my_y >= 4 && my_y <= 7) {
                                anim_objects.at(0).entity.set_visible(true);
                            }
                        }
                    }
                    break;
                case 2:
                    for (int i = 0; i < p_size; i++) {
                        if (p[i].active && p[i].dur < 16) {
                            int my_x = p[i].fireball.x().integer() / 32;
                            int my_y = p[i].fireball.y().integer() / 32;
                            if (my_x >= 2 && my_x <= 3 && my_y >= 2 && my_y <= 3) {
                                p[i].dur = 16;
                                anim_objects.at(0).entity_anim = bn::create_sprite_animate_action_forever(anim_objects.at(0).entity, 18, anim_objects.at(0).entity_item.tiles_item(), 2, 1, 00, 1);
                                anim_objects.at(0).entity.set_horizontal_flip(!anim_objects.at(0).entity.horizontal_flip());
                                anim_objects.at(0).entity_anim.update();
                            }
                        }
                    }
                    break;
                case 3:
                    //(144,16);
                    for (int i = 0; i < p_size; i++) {
                        if (p[i].active && p[i].dur < 16) {
                            int my_x = p[i].fireball.x().integer() / 32;
                            int my_y = p[i].fireball.y().integer() / 32;
                            if (my_x >= 4 && my_x <= 5 && my_y >= 0 && my_y <= 1) {
                                p[i].dur = 16;
                                bn::sound_items::firecrackle.play();
                                anim_objects.at(0).entity_anim = bn::create_sprite_animate_action_forever(anim_objects.at(0).entity, 18, anim_objects.at(0).entity_item.tiles_item(), 1, 1, 1, 1);
                                anim_objects.at(0).entity_anim.update();
                                a_notif.set_visible(false);
                                bn::music::stop();
                                for (int t = 0; t < 128; t++) {
                                    chari.at(0).update();
                                    p[i].update();
                                    bn::core::update();
                                }
                                projectile pro[3];
                                for (int t = 0; t < p_size; t++) {
                                    pro[t].fireball.set_visible(false);
                                }
                                exec_dialogue(12);
                                dt.world_index = -1;
                                return dt;
                            }
                        }
                    }
                    break;
                default: {}
            }
        }
    }
}