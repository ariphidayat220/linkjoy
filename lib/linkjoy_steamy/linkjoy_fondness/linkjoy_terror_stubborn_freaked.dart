import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';

import '../linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyTerrorStubbornFreaked {
  List<LinkjoyTerror>? coupons;

  static LinkjoyTerrorStubbornFreaked fromJson(Map<String, dynamic> json) {
    return LinkjoyTerrorStubbornFreaked()
      ..coupons =
          (json['coupons'] as List<dynamic>?)
              ?.map((e) => LinkjoyTerror.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [];
  }
}

class LinkjoyTerror {
  String id = "";

  int offNum = 0;
  int startTime = 0;
  int expireTime = 0;

  bool used = false;

  List<String> useForProducts = [];

  bool isExpired() {
    if (expireTime == 0) {
      return true;
    }
    final int nowMillis = DateTime.now().millisecondsSinceEpoch;
    return nowMillis > expireTime;
  }

  DateTime expireDate() {
    return DateTime.fromMillisecondsSinceEpoch(expireTime);
  }

  int getCouponBonusCoins(double priceUsd) {
    int linkjoyIncenseShiftVain = LINKJOY.linkjoyShock
        .getLinkjoyIncenseShiftVain();
    return (priceUsd / (1 * (1 - (offNum / 100)) / linkjoyIncenseShiftVain))
        .toInt();
  }

  LinkjoyTerror();

  factory LinkjoyTerror.fromJson(Map<String, dynamic> json) => LinkjoyTerror()
    ..id = LinkjoySmearSister.strDef(json, "id", "")
    ..offNum = LinkjoySmearSister.intDef(json, "off_num", 0)
    ..startTime = LinkjoySmearSister.intDef(json, "start_time", 0)
    ..expireTime = LinkjoySmearSister.intDef(json, "expire_time", 0)
    ..used = LinkjoySmearSister.boolDef(json, "used", false)
    ..useForProducts =
        (LinkjoySmearSister.listByKey(json, 'use_for_products') ?? []);

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "off_num": offNum,
      "start_time": startTime,
      "expire_time": expireTime,
      "used": used,
      "use_for_products": useForProducts,
    };
  }

  bool linkjoyJoyfulGeography(double priceUsd) {
    String price = priceUsd.toStringAsFixed(2);
    return useForProducts.contains(price);
  }
}
