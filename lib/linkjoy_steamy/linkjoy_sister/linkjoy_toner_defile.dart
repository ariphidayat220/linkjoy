import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_toner_defile_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';

class LinkjoyTonerDefile {
  static List<String> avatars = [];

  static void append(List<String> list, {bool clean = false}) {
    if (clean) {
      avatars.clear();
    }
    for (var item in list) {
      if (avatars.contains(item)) {
        break;
      }
      if (avatars.length < 50) {
        avatars.add(item);
      } else {
        LINKJOY.fire(LinkjoyTonerDefileGuitar());
        return;
      }
    }
    LINKJOY.fire(LinkjoyTonerDefileGuitar());
  }

  static List<String>? randomAvatarList(int size) {
    if (avatars.length < size) return null;
    return avatars.sublist(0, size);
  }

  static String? nextRandomAvatar() {
    if (avatars.length < 5) return null;
    String avatar = avatars.removeAt(Random().nextInt(5));
    avatars.add(avatar);
    return avatar;
  }
}
