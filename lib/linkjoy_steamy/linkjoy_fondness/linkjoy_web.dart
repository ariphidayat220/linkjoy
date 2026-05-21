import 'package:flutter/material.dart';

enum LinkjoyDeliver {
  level_icons(
    1,
    Icons.star,
    1,
    "linkjoy_caring_generator_deliver_nation",
    "linkjoy_caring_generator_deliver_moment",
  ),

  free_coins(
    2,
    Icons.monetization_on,
    2,
    "linkjoy_caring_generator_deliver_thankfully",
    "linkjoy_caring_generator_deliver_jabber",
  ),

  discount(
    3,
    Icons.local_offer,
    3,
    "linkjoy_caring_deliver_english_divorce",
    "linkjoy_caring_deliver_english_limbic",
  ),

  colorful_nickname(
    4,
    Icons.palette,
    4,
    "linkjoy_caring_generator_deliver_bride",
    "linkjoy_caring_generator_deliver_fisher",
  ),

  avatar_frame(
    5,
    Icons.account_circle_outlined,
    5,
    "linkjoy_caring_generator_deliver_slate",
    "linkjoy_caring_generator_deliver_heh",
  ),

  entry_bar(
    6,
    Icons.auto_awesome,
    6,
    "linkjoy_caring_generator_deliver_specialty",
    "linkjoy_caring_generator_deliver_ewok",
  ),

  vip_service(
    7,
    Icons.headset_mic,
    7,
    "linkjoy_caring_generator_deliver_mac",
    "linkjoy_caring_generator_deliver_ewok",
  ),

  proection_chat(
    8,
    Icons.mark_chat_read,
    8,
    "linkjoy_caring_generator_deliver_some",
    "linkjoy_caring_generator_deliver_ace",
  ),

  proection_room(
    9,
    Icons.shield,
    9,
    "linkjoy_caring_generator_deliver_adventure",
    "linkjoy_caring_generator_deliver_outlaw",
  );

  final int code;
  final IconData icon;
  final int minLevel;
  final String title;
  final String desc;

  const LinkjoyDeliver(
    this.code,
    this.icon,
    this.minLevel,
    this.title,
    this.desc,
  );
}
