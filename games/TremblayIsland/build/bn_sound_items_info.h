#ifndef BN_SOUND_ITEMS_INFO_H
#define BN_SOUND_ITEMS_INFO_H

#include "bn_span.h"
#include "bn_sound_item.h"
#include "bn_string_view.h"

namespace bn::sound_items_info
{
    constexpr inline pair<sound_item, string_view> array[] = {
        make_pair(sound_item(0), string_view("aaron_hey_01")),
        make_pair(sound_item(1), string_view("aaron_hey_02")),
        make_pair(sound_item(2), string_view("aaron_hey_03")),
        make_pair(sound_item(3), string_view("aaron_ugh_01")),
        make_pair(sound_item(4), string_view("aaron_ugh_02")),
        make_pair(sound_item(5), string_view("aaron_ugh_03")),
        make_pair(sound_item(6), string_view("aaron_ugh_04")),
        make_pair(sound_item(7), string_view("aaron_ugh_05")),
        make_pair(sound_item(8), string_view("aaron_ugh_06")),
        make_pair(sound_item(9), string_view("aaron_ugh_07")),
        make_pair(sound_item(10), string_view("aaron_ugh_08")),
        make_pair(sound_item(11), string_view("aaron_yeah_01")),
        make_pair(sound_item(12), string_view("aaron_yeah_02")),
        make_pair(sound_item(13), string_view("aaron_yeah_03")),
        make_pair(sound_item(14), string_view("ahoy")),
        make_pair(sound_item(15), string_view("birds")),
        make_pair(sound_item(26), string_view("ching")),
        make_pair(sound_item(27), string_view("cnaut")),
        make_pair(sound_item(28), string_view("diana_hey_01")),
        make_pair(sound_item(29), string_view("ding")),
        make_pair(sound_item(30), string_view("door")),
        make_pair(sound_item(31), string_view("eleanor_hey_01")),
        make_pair(sound_item(32), string_view("enoki_aw")),
        make_pair(sound_item(33), string_view("enoki_hey")),
        make_pair(sound_item(34), string_view("enoki_whoo")),
        make_pair(sound_item(35), string_view("fireblast")),
        make_pair(sound_item(36), string_view("firecrackle")),
        make_pair(sound_item(37), string_view("firehit")),
        make_pair(sound_item(40), string_view("guy_hey_01")),
        make_pair(sound_item(41), string_view("heymaple")),
        make_pair(sound_item(42), string_view("maple_alright_01")),
        make_pair(sound_item(43), string_view("maple_alright_02")),
        make_pair(sound_item(44), string_view("maple_alright_03")),
        make_pair(sound_item(45), string_view("maple_alright_04")),
        make_pair(sound_item(46), string_view("maple_hey_01")),
        make_pair(sound_item(47), string_view("maple_ugh_01")),
        make_pair(sound_item(48), string_view("maple_ugh_02")),
        make_pair(sound_item(49), string_view("motorboat")),
        make_pair(sound_item(55), string_view("pc_boot")),
        make_pair(sound_item(56), string_view("pc_whir")),
        make_pair(sound_item(57), string_view("pop")),
        make_pair(sound_item(58), string_view("rufus_01")),
        make_pair(sound_item(59), string_view("rufus_02")),
        make_pair(sound_item(60), string_view("scout_hey_01")),
        make_pair(sound_item(61), string_view("shortclip")),
        make_pair(sound_item(62), string_view("squeak")),
        make_pair(sound_item(63), string_view("start")),
        make_pair(sound_item(72), string_view("ui_sfx01")),
        make_pair(sound_item(73), string_view("ui_sfx02")),
        make_pair(sound_item(74), string_view("ui_sfx03")),
        make_pair(sound_item(83), string_view("vee_hey_01")),
        make_pair(sound_item(129), string_view("z08_rain")),
    };

    constexpr inline span<const pair<sound_item, string_view>> span(array);
}

#endif

