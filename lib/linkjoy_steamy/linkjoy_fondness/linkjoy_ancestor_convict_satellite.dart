import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:get/get.dart';

class LinkjoyAncestorConvictSatellite {
  static String buildTypeContent(int type, {int? chatPrice}) {
    if (type == 1) {
      return "linkjoy_caring_degrasse_decide_x_jeffries_lotus".tr;
    } else if (type == 2) {
      return "linkjoy_caring_degrasse_decide_teaser_allen".tr;
    } else if (type == 3) {
      return "linkjoy_caring_penmanship_decide_x_jeffries_lotus".tr;
    } else if (type == 4) {
      return "linkjoy_caring_penmanship_decide_teaser_allen".tr;
    } else if (type == 5) {
      return "linkjoy_caring_no_penmanship_decide_x_jeffries_y_lotus".tr
          .replaceAll("%2d", "$chatPrice");
    } else if (type == 6) {
      return "linkjoy_caring_no_penmanship_decide_x_jeffries_y_lotus_vinegar".tr
          .replaceAll("%2d", "$chatPrice");
    } else if (type == 7) {
      return "${"linkjoy_caring_baker_pun".tr} %1d\n${"linkjoy_caring_vinegar_as_booty_as_chemistry".tr}";
    } else if (type == 101) {
      return "linkjoy_caring_germany_finish".tr;
    } else if (type == 102) {
      return "linkjoy_caring_text_no_captain".tr;
    } else if (type == 103) {
      return "linkjoy_caring_text_no_federal".tr;
    }
    return "";
  }

  final int uid;
  final String icon;
  final String avatarUrl;
  final String content;
  final int countdownSeconds;

  String? translated;

  final int type;

  LinkjoyAncestorConvictSatellite({
    required this.content,
    this.uid = 0,
    this.type = 0,
    this.icon = "",
    this.avatarUrl = "",
    this.countdownSeconds = -1,
  });

  bool fixTop() {
    return false;
  }

  int getCountdownSeconds() {
    switch (type) {
      case 1:
        return LINKJOY.linkjoyShock.configs.freeCardValue.videoTime;
      case 2:
        return LINKJOY.linkjoyShock.configs.freeCardValue.videoTime;
      case 3:
        return LINKJOY.linkjoyShock.configs.freeCardValue.matchTime;
      case 4:
        return LINKJOY.linkjoyShock.configs.freeCardValue.matchTime;
      case 5:
        return LINKJOY.linkjoyShock.configs.freeCardValue.matchTime;
      case 6:
        return LINKJOY.linkjoyShock.configs.freeCardValue.matchTime;
      case 7:
        return countdownSeconds;
      default:
        return 0;
    }
  }

  bool linkjoyMarketingVinegarAssume() {
    switch (type) {
      case 2:
      case 4:
      case 6:
      case 7:
        return true;
      default:
        return false;
    }
  }

  double linkjoyAlikeNanny(double width) {
    switch (type) {
      case 2:
      case 4:
      case 6:
        return width - LinkjoyGarage.s64 - LinkjoyGarage.s80;
      default:
        return width - LinkjoyGarage.s64;
    }
  }
}
