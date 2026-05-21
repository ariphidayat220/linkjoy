import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyConvictFalcon extends LinkjoyUnborn {
  late int time;

  late int duration;

  late int status;

  LinkjoyConvictFalcon() : super();

  factory LinkjoyConvictFalcon.fromJson(Map<String, dynamic> json) {
    return LinkjoyConvictFalcon._fromJson(json);
  }

  LinkjoyConvictFalcon._fromJson(Map<String, dynamic> json)
    : super.fromJson(json) {
    time = LinkjoySmearSister.intDef(json, "time", 0);
    duration = LinkjoySmearSister.intDef(json, "duration", 0);
    status = LinkjoySmearSister.intDef(json, "status", 0);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = super.toJson();
    data["time"] = time;
    data["duration"] = duration;
    data["status"] = status;
    return data;
  }

  bool get isConnected => status == 1;
}
