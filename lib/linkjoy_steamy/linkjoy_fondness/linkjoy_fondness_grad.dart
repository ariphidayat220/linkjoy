import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFondnessGrad {
  LinkjoyFondnessGrad(
    this.code,
    this.name, [
    this.vip_only,
    this.icon = "",
    this.avatars,
    this.user_count = 0,
  ]);

  String code;
  String name;
  int? vip_only;
  String icon;
  List<String>? avatars;
  int user_count;

  bool get isVipOnly => vip_only == 1;

  factory LinkjoyFondnessGrad.fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessGrad(
      LinkjoySmearSister.strDef(json, "code", ""),
      LinkjoySmearSister.strDef(json, "name", ""),
      LinkjoySmearSister.intDef(json, "vip_only", 0),
      LinkjoySmearSister.strDef(json, "icon", ""),
      LinkjoySmearSister.listByKey(json, 'avatars'),
      LinkjoySmearSister.intDef(json, "user_count", 0),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{"code": code, "name": name, "vip_only": vip_only};
  }
}
