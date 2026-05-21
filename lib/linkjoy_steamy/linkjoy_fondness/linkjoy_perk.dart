import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyPerk extends LinkjoyUnborn {
  late int time;

  late int count;

  LinkjoyPerk() : super();

  factory LinkjoyPerk.fromJson(Map<String, dynamic> json) {
    return LinkjoyPerk._fromJson(json);
  }

  LinkjoyPerk._fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    time = LinkjoySmearSister.intDef(json, "time", 0);
    count = LinkjoySmearSister.intDef(json, "count", 0);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = super.toJson();
    data["time"] = time;
    data["count"] = count;
    return data;
  }
}
