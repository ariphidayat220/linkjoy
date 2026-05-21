import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_madness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

import 'linkjoy_terror_stubborn_freaked.dart';

class LinkjoyFondnessCompromiseFreaked {
  String? version;
  String? serverCouponVersion;

  bool googlePaid = false;

  bool lastVipUseSubscribe = false;

  String lastPaidPriceUsd = "";

  List<LinkjoyWedgieMadness>? coin;

  List<LinkjoyWedgieMadness>? vip;

  List<LinkjoyWedgieMadness>? first;

  List<LinkjoyWedgieMadness>? pkg;

  List<LinkjoyWedgieMadness>? sub;

  List<LinkjoyTerror>? userCoupons;

  static LinkjoyFondnessCompromiseFreaked fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessCompromiseFreaked()
      ..version = json["version"] as String
      ..googlePaid = LinkjoySmearSister.boolDef(json, 'google_paid', false)
      ..lastVipUseSubscribe = LinkjoySmearSister.boolDef(
        json,
        'last_vip_use_subscribe',
        false,
      )
      ..lastPaidPriceUsd = LinkjoySmearSister.strDef(
        json,
        'last_paid_price_usd',
        '',
      )
      ..coin = (json["coin"] as List<dynamic>?)
          ?.map((e) => LinkjoyWedgieMadness.fromJson(e as Map<String, dynamic>))
          .toList()
      ..vip = (json["vip"] as List<dynamic>?)
          ?.map((e) => LinkjoyWedgieMadness.fromJson(e as Map<String, dynamic>))
          .toList()
      ..first = (json["first"] as List<dynamic>?)
          ?.map((e) => LinkjoyWedgieMadness.fromJson(e as Map<String, dynamic>))
          .toList()
      ..pkg = (json["pkg"] as List<dynamic>?)
          ?.map((e) => LinkjoyWedgieMadness.fromJson(e as Map<String, dynamic>))
          .toList()
      ..sub = (json["sub"] as List<dynamic>?)
          ?.map((e) => LinkjoyWedgieMadness.fromJson(e as Map<String, dynamic>))
          .toList()
      ..serverCouponVersion = json["server_coupon_version"] as String
      ..userCoupons = (json["user_coupons"] as List<dynamic>?)
          ?.map((e) => LinkjoyTerror.fromJson(e as Map<String, dynamic>))
          .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      "version": version,
      "coin": coin?.map((e) => e.toJson()).toList(),
      "vip": vip?.map((e) => e.toJson()).toList(),
      "first": first?.map((e) => e.toJson()).toList(),
      "pkg": pkg?.map((e) => e.toJson()).toList(),
      "sub": sub?.map((e) => e.toJson()).toList(),
      'google_paid': googlePaid ? 1 : 0,
      'last_vip_use_subscribe': lastVipUseSubscribe ? 1 : 0,
      'last_paid_price_usd': lastPaidPriceUsd,
      "server_coupon_version": serverCouponVersion,
      "user_coupons": userCoupons?.map((e) => e.toJson()).toList(),
    };
  }
}
