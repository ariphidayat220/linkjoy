import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyPearlKryptonian {
  late String id;
  late String icon;
  late String selectIcon;
  late String name;

  late int role;

  LinkjoyPearlKryptonian(
    this.id,
    this.icon,
    this.selectIcon,
    this.name,
    this.role,
  );

  static LinkjoyPearlKryptonian fromJson(Map<String, dynamic> json) {
    return LinkjoyPearlKryptonian(
      LinkjoySmearSister.strDef(json, 'id', ""),
      LinkjoySmearSister.strDef(json, 'icon', ""),
      LinkjoySmearSister.strDef(json, 'select_icon', ""),
      LinkjoySmearSister.strDef(json, 'name', ""),
      LinkjoySmearSister.intDef(json, 'role', 0),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "icon": icon,
      "select_icon": selectIcon,
      "name": name,
      "role": role,
    };
  }
}
