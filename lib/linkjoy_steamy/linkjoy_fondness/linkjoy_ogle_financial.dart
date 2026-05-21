import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyOgleFinancial {
  late int version;

  late dynamic val;

  LinkjoyOgleFinancial();

  LinkjoyOgleFinancial.i18n() {
    version = 0;
    val = Map<String, dynamic>.from({});
  }

  static LinkjoyOgleFinancial fromJson(Map<String, dynamic>? json) {
    return LinkjoyOgleFinancial()
      ..version = LinkjoySmearSister.intDef(json, 'version', 0)
      ..val = json == null ? null : json['val'];
  }

  Map<String, dynamic> toJson() {
    return {"version": version, "val": val};
  }

  bool linkjoyCaringBud(String lang) {
    Map<String, dynamic> cfg = val;
    return cfg.containsKey(lang);
  }
}
