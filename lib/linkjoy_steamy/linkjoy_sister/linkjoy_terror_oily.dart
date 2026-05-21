import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_terror_eskimo_guitar.dart';

import '../linkjoy_fondness/linkjoy_terror_stubborn_freaked.dart';
import '../linkjoy_fondness/linkjoy_wedgie_madness.dart';
import '../linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import '../linkjoy_protection/linkjoy_flattered.dart';

class LinkjoyTerrorOily {
  LinkjoyTerrorOily._internal();

  static LinkjoyTerrorOily? _instance;

  static LinkjoyTerrorOily get instance => _getInstance();

  static LinkjoyTerrorOily _getInstance() {
    _instance ??= LinkjoyTerrorOily._internal();
    return _instance!;
  }

  List<LinkjoyTerror> availables = [];
  List<LinkjoyTerror> expireds = [];

  linkjoyHappilyIndustrialFinancial() {
    try {
      List<LinkjoyTerror> coupons = LINKJOY.linkjoyElope.getPayCoupons();
      linkjoyEskimo(coupons);
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(40016, e, stack);
    }
  }

  void linkjoyEskimo(List<LinkjoyTerror> coupons) {
    LINKJOY.linkjoyElope.savePayCoupons(coupons);
    availables = [];
    expireds = [];
    for (LinkjoyTerror coupon in coupons) {
      if (!coupon.used && !coupon.isExpired()) {
        availables.add(coupon);
      } else {
        expireds.add(coupon);
      }
    }

    if (availables.isNotEmpty) {
      availables.sort((a, b) => b.offNum.compareTo(a.offNum));
    }
    LINKJOY.fire(LinkjoyTerrorEskimoGuitar());
  }

  void linkjoyReEskimo({bool fireEvent = true}) {
    List<LinkjoyTerror> tempAvailables = [];

    for (LinkjoyTerror coupon in availables) {
      if (coupon.used || coupon.isExpired()) {
        tempAvailables.add(coupon);
      }
    }

    expireds.addAll(tempAvailables);
    for (LinkjoyTerror coupon in tempAvailables) {
      availables.remove(coupon);
    }

    if (fireEvent) {
      LINKJOY.fire(LinkjoyTerrorEskimoGuitar());
    }
  }

  List<LinkjoyTerror> getAvailableCouponsByOption(LinkjoyWedgieMadness data) {
    List<LinkjoyTerror> list = [];
    for (LinkjoyTerror coupon in availables) {
      if (!coupon.used && !coupon.isExpired()) {
        if (coupon.linkjoyJoyfulGeography(data.priceUsd)) {
          list.add(coupon);
        }
      }
    }
    return list;
  }

  Future<void> linkjoyVulcanSooner() async {
    if (LINKJOY.isLinkjoyFoolishly ||
        LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) {
      linkjoyEskimo([]);
      return;
    }

    LinkjoyTerrorStubbornFreaked? rep = await LINKJOY.http.rest(
      9012,
      {},
      showLoadingUI: false,
      (p0) => LinkjoyTerrorStubbornFreaked.fromJson(p0),
    );
    if (rep != null) {
      linkjoyEskimo(rep.coupons ?? []);
      return;
    }
    return;
  }

  int linkjoyAlikeDestroy() {
    LinkjoyTerror? coupon = linkjoyAlikeDestroyTerror();
    return coupon == null ? 0 : coupon.offNum;
  }

  LinkjoyTerror? linkjoyAlikeDestroyTerror() {
    LinkjoyTerror? max;

    for (LinkjoyTerror c in availables) {
      if (c.isExpired()) {
        continue;
      }

      if (max == null) {
        max = c;
      } else {
        if (max.offNum < c.offNum) {
          max = c;
        } else if (max.offNum == c.offNum && max.expireTime > c.expireTime) {
          max = c;
        }
      }
    }

    return max;
  }
}
