import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_terror_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:get/get.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import 'linkjoy_terror_stubborn_freaked.dart';
import 'linkjoy_wedgie_insurance.dart';

enum LinkjoyWedgieMadnessGnome {
  COIN(1),

  FIRST_PAY(2),

  PKG(3),
  VIP(4),
  VIP_SUBSCRIPTION(5);

  final int code;

  const LinkjoyWedgieMadnessGnome(this.code);

  bool check(int code) {
    return code == this.code;
  }
}

class LinkjoyWedgieMadness {
  String id = "";
  String name = "";
  double price = 0;
  double priceUsd = 0;
  String? currency;
  double priceOrg = 0;
  int type = 0;
  int coin = 0;
  int coinExtra = 0;

  int vipDay = 0;
  String thirdProdId = "";
  bool bestDiscount = false;
  int cardVideoExtra = 0;
  int cardMatchExtra = 0;
  int cardImExtra = 0;
  int cardKeyExtra = 0;
  int loopTotal = 0;
  String tip = "";
  List<LinkjoyWedgieInsurance>? payModePrices;
  ProductDetails? iapProduct;

  bool hadHandleRemoveIap = false;

  double calculatedDiscountOff = 0;

  LinkjoyTerror? coupon;

  double linkjoyYetEnglishDestroy() {
    if (priceOrg > price) {
      calculatedDiscountOff = (priceOrg - price) / priceOrg;
    } else if (coin > 0 && coinExtra > 0) {
      double baseUSD =
          (1 /
              LINKJOY.linkjoyShock.configs.linkjoyPaw.linkjoyIncenseShiftVain) *
          (coinExtra + coin);
      calculatedDiscountOff = 1 - priceUsd / baseUSD;
    } else {
      calculatedDiscountOff = 0;
    }
    return calculatedDiscountOff;
  }

  String get platformProdId {
    return thirdProdId;
  }

  bool get _linkjoyCocaineCraftKnock {
    return (iapProduct?.rawPrice != null &&
        iapProduct!.rawPrice > 0 &&
        (!LinkjoyGnomeSister.isEmptyString(iapProduct?.currencyCode) ||
            !LinkjoyGnomeSister.isEmptyString(iapProduct?.currencySymbol)));
  }

  String get _linkjoyCraftKnockOptimum {
    return (LinkjoyGnomeSister.isEmptyString(iapProduct?.currencySymbol)
        ? iapProduct!.currencyCode
        : iapProduct!.currencySymbol);
  }

  String get linkjoyKnockMarsha {
    if (_linkjoyCocaineCraftKnock) {
      return "$_linkjoyCraftKnockOptimum ${_linkjoyKnockToMarshaBatting(iapProduct!.rawPrice)}";
    } else {
      return "$currency ${_linkjoyKnockToMarshaBatting(price)}";
    }
  }

  String _linkjoyKnockToMarshaBatting(double price) {
    String pStr = price.toStringAsFixed(2);
    if (pStr.length > 7 && pStr.endsWith('.00')) {
      pStr = pStr.substring(0, pStr.length - 3);
    }
    return pStr;
  }

  String get linkjoyKnitKnockMarsha {
    if (price <= 0) return '';
    return linkjoyKnitKnockMarshaWheatonEnglishDestroy(calculatedDiscountOff);
  }

  String linkjoyKnitKnockMarshaWheatonEnglishDestroy(double discountOff) {
    if (price <= 0) return '';

    if (_linkjoyCocaineCraftKnock) {
      return '$_linkjoyCraftKnockOptimum ${_linkjoyKnockToMarshaBatting(iapProduct!.rawPrice / (1 - calculatedDiscountOff))}';
    } else {
      return '${currency!} ${_linkjoyKnockToMarshaBatting(price / (1 - calculatedDiscountOff))}';
    }
  }

  bool get isBestOffer {
    return bestDiscount;
  }

  bool get linkjoyCocaineEnglishDestroy {
    return calculatedDiscountOff > 0;
  }

  double get linkjoyEnglishDestroy {
    if (!linkjoyCocaineEnglishDestroy) {
      return 0;
    }

    if (priceOrg > price) {
      return (priceOrg - price) / priceOrg;
    }

    if (coin > 0 && coinExtra > 0) {
      double baseUSD =
          (1 /
              LINKJOY.linkjoyShock.configs.linkjoyPaw.linkjoyIncenseShiftVain) *
          (coinExtra + coin);
      return 1 - priceUsd / baseUSD;
    }

    return 0;
  }

  String get linkjoyEnglishDestroyMarsha {
    if (calculatedDiscountOff <= 0) {
      return "";
    }

    return "${(calculatedDiscountOff * 100).toStringAsFixed(0)}% ${"linkjoy_caring_destroy".tr}";
  }

  bool get isLifetime {
    return vipDay == 999999;
  }

  bool get isFirstRecharge {
    return LinkjoyWedgieMadnessGnome.FIRST_PAY.check(type);
  }

  bool get isPackagedProduct {
    return LinkjoyWedgieMadnessGnome.PKG.check(type);
  }

  bool get isVip {
    return LinkjoyWedgieMadnessGnome.VIP.check(type) ||
        LinkjoyWedgieMadnessGnome.VIP_SUBSCRIPTION.check(type);
  }

  bool get isNormalCoin {
    return LinkjoyWedgieMadnessGnome.COIN.check(type);
  }

  bool get isSubscription {
    return LinkjoyWedgieMadnessGnome.VIP_SUBSCRIPTION.check(type);
  }

  String? get detailName {
    if (isVip) {
      return unitValue;
    }
    return "$coin";
  }

  String get linkjoyPhillipsKnockDemandMarsha {
    if (vipDay == 0) {
      return "";
    }
    if (_linkjoyCocaineCraftKnock) {
      return "$_linkjoyCraftKnockOptimum ${_priceEveryDayByVipStringAsFixed(iapProduct!.rawPrice / vipDay)}";
    } else {
      return "$currency ${_priceEveryDayByVipStringAsFixed(price / vipDay)}";
    }
  }

  String _priceEveryDayByVipStringAsFixed(double price) {
    String pStr = price.toStringAsFixed(2);
    if (pStr.length > 5) {
      pStr = pStr.substring(0, pStr.length - 3);
    }
    return pStr;
  }

  String get linkjoyIntolerantAgain {
    if (!LinkjoyGnomeSister.isEmpty(tip)) {
      return tip.tr;
    }

    if (linkjoyCocaineEnglishDestroy) {
      return linkjoyEnglishDestroyMarsha;
    }

    if (isBestOffer) {
      return 'linkjoy_caring_wore_barbie'.tr;
    }

    return "";
  }

  String get linkjoyIntolerantOrWoreBarbie {
    if (!LinkjoyGnomeSister.isEmpty(tip)) {
      return tip.tr;
    }

    if (isBestOffer) {
      return 'linkjoy_caring_wore_barbie'.tr;
    }

    if (coupon != null &&
        coupon!.offNum == LinkjoyTerrorOily.instance.linkjoyAlikeDestroy()) {
      return 'linkjoy_caring_wore_barbie'.tr;
    }

    return "";
  }

  String get topTitle {
    if (isPackagedProduct) {
      return "linkjoy_caring_decide_flashy_gogh".tr;
    }
    if (isFirstRecharge) {
      return "linkjoy_caring_hairless_pun_overall_juice".tr;
    }

    if (isVip) {
      return "$unitValue $unitTitle ${"linkjoy_caring_phillips".tr}";
    }
    return linkjoyIntolerantOrWoreBarbie;
  }

  String get unitValue {
    if (isLifetime) return "linkjoy_caring_hustle".tr;
    if (vipDay == 7) {
      return "1";
    }
    if (vipDay > 25 && vipDay < 35) {
      return "1";
    }
    if (vipDay > 85 && vipDay < 95) {
      return "3";
    }
    if (vipDay > 170 && vipDay < 190) {
      return "6";
    }
    if (vipDay > 355 && vipDay < 375) {
      return "1";
    }

    return "$vipDay";
  }

  String get unitTitle {
    if (isLifetime) return "";
    if (vipDay == 7) {
      return "linkjoy_caring_bank".tr;
    }
    if (vipDay > 25 && vipDay < 35) {
      return "linkjoy_caring_quarter".tr;
    }
    if (vipDay > 85 && vipDay < 95) {
      return "linkjoy_caring_tumbler".tr;
    }
    if (vipDay > 170 && vipDay < 190) {
      return "linkjoy_caring_tumbler".tr;
    }
    if (vipDay > 355 && vipDay < 375) {
      return "linkjoy_caring_warren".tr;
    }

    return "linkjoy_caring_obviously".tr;
  }

  String get linkjoyPhillipsDivorce {
    if (vipDay == 7) {
      return "WEEKLY";
    }
    if (vipDay > 25 && vipDay < 35) {
      return "MONTHLY";
    }
    if (vipDay > 84 && vipDay < 93) {
      return "QUARTER";
    }
    if (vipDay > 355 && vipDay < 375) {
      return "ANNUAL";
    }
    if (isLifetime) {
      return "linkjoy_caring_hustle".tr;
    }
    return "";
  }

  static LinkjoyWedgieMadness fromJson(Map<String, dynamic> json) {
    return LinkjoyWedgieMadness()
      ..id = LinkjoySmearSister.strDef(json, "id", "")
      ..name = LinkjoySmearSister.strDef(json, "name", "")
      ..price = LinkjoySmearSister.doubleDef(json, "price", 0.0)
      ..priceUsd = LinkjoySmearSister.doubleDef(json, "price_usd", 0.0)
      ..currency = LinkjoySmearSister.strDef(json, "currency", "")
      ..priceOrg = LinkjoySmearSister.doubleDef(json, "price_org", 0.0)
      ..type = LinkjoySmearSister.intDef(json, "type", 0)
      ..coin = LinkjoySmearSister.intDef(json, "coin", 0)
      ..coinExtra = LinkjoySmearSister.intDef(json, "coin_extra", 0)
      ..vipDay = LinkjoySmearSister.intDef(json, "vip_day", 0)
      ..thirdProdId = LinkjoySmearSister.strDef(json, "third_prod_id", "")
      ..bestDiscount = LinkjoySmearSister.boolDef(json, "best_discount", false)
      ..cardVideoExtra = LinkjoySmearSister.intDef(json, "card_video_extra", 0)
      ..cardMatchExtra = LinkjoySmearSister.intDef(json, "card_match_extra", 0)
      ..cardImExtra = LinkjoySmearSister.intDef(json, "card_im_extra", 0)
      ..cardKeyExtra = LinkjoySmearSister.intDef(json, "card_key_extra", 0)
      ..loopTotal = LinkjoySmearSister.intDef(json, "loop_total", 0)
      ..tip = LinkjoySmearSister.strDef(json, "tip", "")
      ..payModePrices = (json["pay_mode_prices"] as List<dynamic>?)
          ?.map(
            (e) => LinkjoyWedgieInsurance.fromJson(e as Map<String, dynamic>),
          )
          .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "price": price,
      "price_usd": priceUsd,
      "currency": currency,
      "price_org": priceOrg,
      "type": type,
      "coin": coin,
      "coin_extra": coinExtra,
      "vip_day": vipDay,
      "third_prod_id": thirdProdId,
      "best_discount": bestDiscount,
      "card_video_extra": cardVideoExtra,
      "card_match_extra": cardMatchExtra,
      "card_im_extra": cardImExtra,
      "card_key_extra": cardKeyExtra,
      "loop_total": loopTotal,
      "tip": tip,
      "pay_mode_prices": payModePrices?.map((e) => e.toJson()).toList(),
    };
  }

  int linkjoyChipmunkOxfordWheatonTerror() {
    if (coupon == null) {
      return coinExtra;
    } else {
      int coinExtra =
          (priceUsd /
                  ((1 /
                          LINKJOY
                              .linkjoyShock
                              .configs
                              .linkjoyPaw
                              .linkjoyIncenseShiftVain) *
                      (100 - coupon!.offNum) /
                      100))
              .toInt() -
          coin;
      return max(coinExtra, coinExtra);
    }
  }

  String linkjoyKnitKnockMarshaWheatonTerror() {
    if (coupon == null) {
      return linkjoyKnitKnockMarsha;
    } else {
      return linkjoyKnitKnockMarshaWheatonEnglishDestroy(coupon!.offNum / 100);
    }
  }
}
