import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFondnessLifelongMarshaWherever {
  late String text;

  late String img;

  late String url;

  late bool iav;

  late int role;

  late int auth;

  String? tips;

  String? supportVersion;

  String? offlineVersion;

  late int minLevel;

  late int maxLevel;

  late int minScore;

  late int maxScore;

  LinkjoyFondnessLifelongMarshaWherever();

  factory LinkjoyFondnessLifelongMarshaWherever.fromJson(
    Map<String, dynamic> json,
  ) => LinkjoyFondnessLifelongMarshaWherever()
    ..text = LinkjoySmearSister.strDef(json, "text", "")
    ..img = LinkjoySmearSister.strDef(json, "img", "")
    ..url = LinkjoySmearSister.strDef(json, "url", "")
    ..iav = LinkjoySmearSister.boolDef(json, "iav", false)
    ..tips = LinkjoySmearSister.str(json, "tips")
    ..role = LinkjoySmearSister.intDef(json, "role", 0)
    ..auth = LinkjoySmearSister.intDef(json, "auth", 0)
    ..supportVersion = LinkjoySmearSister.str(json, "support_version")
    ..offlineVersion = LinkjoySmearSister.str(json, "offline_version")
    ..minLevel = LinkjoySmearSister.intDef(json, "min_level", 0)
    ..maxLevel = LinkjoySmearSister.intDef(json, "max_level", 99999)
    ..minScore = LinkjoySmearSister.intDef(json, "min_score", 0)
    ..maxScore = LinkjoySmearSister.intDef(json, "max_score", 99999);

  bool linkjoyPlumbing() {
    if (role != 0 && role != LINKJOY.linkjoyJog!.role) {
      return false;
    }

    if (!isSupport()) {
      return false;
    }

    if (!(iav || !LINKJOY.linkjoyShock.iav)) {
      return false;
    }

    if (LINKJOY.isLinkjoyFoolishly == true) {
      if (url.contains('m://common/#/withdraw') ||
          url.contains('m://common/#/anchor_invite')) {
        if (LINKJOY.linkjoyJog?.isLinkjoyFoolishlySaverPay != true &&
            LINKJOY.linkjoyJog?.withdraw != true) {
          return false;
        }
      }
    }

    if (LINKJOY.linkjoyJog!.user.level > 0) {
      if (LINKJOY.linkjoyJog!.user.level < minLevel ||
          (maxLevel > 0 && LINKJOY.linkjoyJog!.user.level > maxLevel)) {
        return false;
      }
    }

    if (LINKJOY.isLinkjoyFoolishly == true &&
        LINKJOY.linkjoyJog!.user.score > 0) {
      if (LINKJOY.linkjoyJog!.user.score < minScore ||
          (maxScore > 0 && LINKJOY.linkjoyJog!.user.score > maxScore)) {
        return false;
      }
    }

    return true;
  }

  bool isSupport() {
    String? supportV = supportVersion;
    bool min = false;
    if (supportV == null || supportV.isEmpty) {
      min = true;
    } else {
      min = compareVersions(LinkjoyDivorced.linkjoySteamyOgle, supportV);
    }
    String? offlineV = offlineVersion;
    bool max = false;
    if (offlineV == null || offlineV.isEmpty) {
      max = true;
    } else {
      max = compareVersions(
        offlineV,
        LinkjoyDivorced.linkjoySteamyOgle,
        equalValue: false,
      );
    }
    return min && max;
  }

  bool compareVersions(
    String version1,
    String version2, {
    bool equalValue = true,
  }) {
    final v1Parts = version1.split('.').map((e) => int.parse(e)).toList();
    final v2Parts = version2.split('.').map((e) => int.parse(e)).toList();

    final maxLength = v1Parts.length > v2Parts.length
        ? v1Parts.length
        : v2Parts.length;

    for (int i = 0; i < maxLength; i++) {
      final v1 = i < v1Parts.length ? v1Parts[i] : 0;
      final v2 = i < v2Parts.length ? v2Parts[i] : 0;

      if (v1 != v2) {
        return v1 > v2;
      }
    }
    return equalValue;
  }

  bool get isWaitReg => auth == 1 && LINKJOY.linkjoyJog!.isAnchorRegDoing;

  bool get isWaitInfoCompleted =>
      auth == 2 && LINKJOY.linkjoyJog!.isAnchorInterception;
}
