import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyHeatherSteamyShock {
  late String id;
  late String version;
  late String name;
  late String h5;
  late String zip;
  late Map<String, dynamic> cfg;

  LinkjoyHeatherSteamyShock();

  factory LinkjoyHeatherSteamyShock.fromJson(Map<String, dynamic> json) {
    LinkjoyHeatherSteamyShock v = LinkjoyHeatherSteamyShock()
      ..id = LinkjoySmearSister.strDef(json, "id", "")
      ..version = LinkjoySmearSister.strDef(json, "version", "")
      ..name = LinkjoySmearSister.strDef(json, "name", "")
      ..h5 = LinkjoySmearSister.strDef(json, "h5", "")
      ..zip = LinkjoySmearSister.strDef(json, "zip", "");

    dynamic cfg = json['cfg'];
    if (json['cfg'] != null) {
      v.cfg = cfg;
    } else {
      v.cfg = {};
    }
    return v;
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "version": version,
      "name": name,
      "h5": h5,
      "zip": zip,
      "cfg": cfg,
    };
  }
}
