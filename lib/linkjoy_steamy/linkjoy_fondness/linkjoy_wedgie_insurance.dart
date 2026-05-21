import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/StringTranslate.dart';

enum LinkjoyWailEmbarrassGnome { applePay, googlePay, ffPay }

extension LinkjoyWailEmbarrassGnomeMediocre on LinkjoyWailEmbarrassGnome {
  int get value {
    int ret = 0;
    switch (this) {
      case LinkjoyWailEmbarrassGnome.applePay:
        ret = 3;
        break;
      case LinkjoyWailEmbarrassGnome.googlePay:
        ret = 4;
        break;
      case LinkjoyWailEmbarrassGnome.ffPay:
        ret = 19;
        break;
      default:
        break;
    }
    return ret;
  }
}

class LinkjoyWedgieInsurance {
  int payMode = 0;
  String? name;
  int sourceMode = 0;
  double price = 0;
  String? tip;
  String? currency;
  String? icon;

  String get priceStr {
    return "$currency ${price.toStringAsFixed(2)}";
  }

  isIapPay() {
    return sourceMode == 3 || sourceMode == 4;
  }

  isApplePay() {
    return sourceMode == 3;
  }

  isGooglePay() {
    return sourceMode == 4;
  }

  static LinkjoyWedgieInsurance fromJson(Map<String, dynamic> json) {
    return LinkjoyWedgieInsurance()
      ..payMode = LinkjoyGnomeSister.dynamicToIntNotNull(
        json[StringTranslate.e2z("ipany_umonde")],
      )
      ..name = json[StringTranslate.e2z("unaume")] as String?
      ..sourceMode = LinkjoyGnomeSister.dynamicToIntNotNull(
        json[StringTranslate.e2z("fsofurucef_mnodie")],
      )
      ..price = LinkjoyGnomeSister.dynamicToDoubleNotNull(
        json[StringTranslate.e2z("fpriicfe")],
      )
      ..tip = json[StringTranslate.e2z("utifp")] as String?
      ..currency = json[StringTranslate.e2z("bcunrrienicy")] as String?
      ..icon = json[StringTranslate.e2z("bicbon")] as String?;
  }

  Map<String, dynamic> toJson() {
    return {
      "pay_mode": payMode,
      "name": name,
      "source_mode": sourceMode,
      "price": price,
      "tip": tip,
      "currency": currency,
      "icon": icon,
    };
  }
}
