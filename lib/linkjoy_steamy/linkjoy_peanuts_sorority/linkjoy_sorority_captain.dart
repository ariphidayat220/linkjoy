import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoySororityCaptain {
  late int version;

  LinkjoySororityCaptain();

  factory LinkjoySororityCaptain.fromJson(Map<String, dynamic> json) {
    return LinkjoySororityCaptain()
      ..version = LinkjoySmearSister.intDef(json, 'version', 0);
  }
}
