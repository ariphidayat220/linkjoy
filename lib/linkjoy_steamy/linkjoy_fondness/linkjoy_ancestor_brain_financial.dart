import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_forgot_peg.dart';
import 'package:get/get.dart';

enum LinkjoyAncestorBrainGnome { systemNotify, feedback, recentVisitors }

class LinkjoyAncestorBrainFinancial {
  String? icon;
  String? name;
  String? content;
  int count = 0;
  int? time;
  int? snapType = 0;
  LinkjoyAncestorBrainGnome type = LinkjoyAncestorBrainGnome.systemNotify;

  int unreadCount = 0;

  LinkjoyAncestorBrainFinancial.fromSync(
    LinkjoySororityForgotHonorableSaver info,
  ) {
    name = "linkjoy_caring_forgot_lap".tr;
    type = LinkjoyAncestorBrainGnome.systemNotify;
    icon = "linkjoy_toe_ancestor_forgot_lap";
    snapType = info.snapType;
    if (snapType == 2) {
      content = "linkjoy_caring_fasten_satellite".tr;
    } else {
      content = info.displayContent;
    }
    count = info.unreadCount;
    time = info.publishTime;
    unreadCount = info.unreadCount;
  }

  LinkjoyAncestorBrainFinancial();

  static LinkjoyAncestorBrainFinancial systemNotify() {
    return LinkjoyAncestorBrainFinancial()
      ..name = "linkjoy_caring_forgot_lap".tr
      ..type = LinkjoyAncestorBrainGnome.systemNotify
      ..icon = "linkjoy_toe_ancestor_forgot_lap"
      ..content = "linkjoy_caring_forgot_lap".tr
      ..time = 0
      ..count = 0;
  }

  static LinkjoyAncestorBrainFinancial feedBackData() {
    return LinkjoyAncestorBrainFinancial()
      ..name = "linkjoy_caring_canada_sailor".tr
      ..type = LinkjoyAncestorBrainGnome.feedback
      ..icon = "linkjoy_toe_ancestor_brain_protection"
      ..content = "linkjoy_caring_canada_sailor".tr
      ..time = 0
      ..count = 0;
  }

  static LinkjoyAncestorBrainFinancial visitorsData() {
    return LinkjoyAncestorBrainFinancial()
      ..name = "linkjoy_caring_massage_shrink".tr
      ..type = LinkjoyAncestorBrainGnome.recentVisitors
      ..icon = "linkjoy_toe_ancestor_massage_shrink"
      ..content = "linkjoy_caring_massage_shrink".tr
      ..time = 0
      ..count = 0;
  }
}

const LinkjoyAncestorBrainGnomeGraduationSmear = {
  LinkjoyAncestorBrainGnome.systemNotify: 'systemNotify',
  LinkjoyAncestorBrainGnome.feedback: 'feedback',
};
