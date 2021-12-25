#ifndef BN_SOUND_ITEMS_INFO_H
#define BN_SOUND_ITEMS_INFO_H

#include "bn_span.h"
#include "bn_sound_item.h"
#include "bn_string_view.h"

namespace bn::sound_items_info
{
    constexpr inline pair<sound_item, string_view> array[] = {
        make_pair(sound_item(0), string_view("ahoy")),
        make_pair(sound_item(1), string_view("birds")),
        make_pair(sound_item(12), string_view("ching")),
        make_pair(sound_item(13), string_view("cnaut")),
        make_pair(sound_item(14), string_view("ding")),
        make_pair(sound_item(15), string_view("door")),
        make_pair(sound_item(16), string_view("fireblast")),
        make_pair(sound_item(17), string_view("firecrackle")),
        make_pair(sound_item(18), string_view("firehit")),
        make_pair(sound_item(21), string_view("heymaple")),
        make_pair(sound_item(22), string_view("maple_alright_01")),
        make_pair(sound_item(23), string_view("maple_alright_02")),
        make_pair(sound_item(24), string_view("maple_alright_03")),
        make_pair(sound_item(25), string_view("maple_alright_04")),
        make_pair(sound_item(26), string_view("maple_hey_01")),
        make_pair(sound_item(27), string_view("maple_ugh_01")),
        make_pair(sound_item(28), string_view("maple_ugh_02")),
        make_pair(sound_item(29), string_view("motorboat")),
        make_pair(sound_item(35), string_view("pc_boot")),
        make_pair(sound_item(36), string_view("pc_whir")),
        make_pair(sound_item(37), string_view("pop")),
        make_pair(sound_item(38), string_view("rufus_01")),
        make_pair(sound_item(39), string_view("rufus_02")),
        make_pair(sound_item(40), string_view("shortclip")),
        make_pair(sound_item(41), string_view("squeak")),
        make_pair(sound_item(42), string_view("start")),
        make_pair(sound_item(51), string_view("ui_sfx01")),
        make_pair(sound_item(52), string_view("ui_sfx02")),
        make_pair(sound_item(53), string_view("ui_sfx03")),
        make_pair(sound_item(103), string_view("z08_rain")),
    };

    constexpr inline span<const pair<sound_item, string_view>> span(array);
}

#endif

