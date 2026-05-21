import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';

import 'linkjoy_unborn_chicken_hair_graduation.dart';

class LinkjoyUnbornChickenHair {
  late LinkjoyUnbornChickenHairGraduation status;

  int liveId = 0;

  LinkjoyUnbornChickenHair(this.status, this.liveId);

  static LinkjoyUnbornChickenHair simple(
    LinkjoyUnbornChickenHairGraduation status,
  ) {
    return LinkjoyUnbornChickenHair(status, 0);
  }

  bool isOnLiveStatus() {
    return LINKJOY.linkjoyShock.isLinkjoyInventivePlumbing() &&
        liveId > 0 &&
        status == LinkjoyUnbornChickenHairGraduation.online;
  }
}
