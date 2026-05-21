import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_time.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFondnessFetus {
  static int ICON_PNG = 0;
  static int ICON_PAG = 1;

  late String id;
  late String icon;
  late String name;

  late int role;

  late String? url;

  String? supportVersion;

  String? offlineVersion;

  late LinkjoyFetusMagazineForget iconWidget;

  LinkjoyFondnessFetus(
    this.id,
    this.icon,
    this.name,
    this.role, {
    this.supportVersion,
    this.offlineVersion,
    this.url,
  });

  static LinkjoyFondnessFetus fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessFetus(
      LinkjoySmearSister.strDef(json, 'id', ""),
      LinkjoySmearSister.strDef(json, 'icon', ""),
      LinkjoySmearSister.strDef(json, 'name', ""),
      LinkjoySmearSister.intDef(json, 'role', 0),
      supportVersion: LinkjoySmearSister.str(json, "support_version"),
      offlineVersion: LinkjoySmearSister.str(json, "offline_version"),
      url: LinkjoySmearSister.str(json, 'url'),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "icon": icon,
      "url": url,
      "role": role,
      "support_version": supportVersion,
      "offline_version": offlineVersion,
    };
  }

  bool isSupport(int userRole) {
    if (role != 0 && role != userRole) {
      return false;
    }
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
}
