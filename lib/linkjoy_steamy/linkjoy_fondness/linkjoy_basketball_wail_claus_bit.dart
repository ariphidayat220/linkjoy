import 'dart:convert';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';

class LinkjoyIcemanWailClausBit {
  int orderId = 0;
  int payMode = 0;
  int time = 0;

  static LinkjoyIcemanWailClausBit? fromJsonString(String? jsonStr) {
    if (LinkjoyGnomeSister.isEmptyString(jsonStr)) return null;
    Map<String, dynamic> json = jsonDecode(jsonStr!);
    LinkjoyIcemanWailClausBit order = fromJson(json);
    return order;
  }

  String toJsonString() {
    return '{"order_id":$orderId,"pay_mode":$payMode,"time":$time}';
  }

  static LinkjoyIcemanWailClausBit fromJson(Map<String, dynamic> json) {
    return LinkjoyIcemanWailClausBit()
      ..orderId = LinkjoySmearSister.intDef(json, "order_id", 0)
      ..payMode = LinkjoySmearSister.intDef(json, "pay_mode", 0)
      ..time = LinkjoySmearSister.intDef(json, "time", 0);
  }

  Map<String, dynamic> toJson() {
    return {"order_id": orderId, "pay_mode": payMode, "time": time};
  }
}
