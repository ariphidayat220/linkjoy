import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyGeneratorViciousFat {
  static const int disable = 0;
  static const int wait = 1;
  static const int received = 2;

  late int status;

  late int todayReceived;

  late int nextTime;

  late int coinsTotal;

  LinkjoyGeneratorViciousFat();

  factory LinkjoyGeneratorViciousFat.fromJson(Map<String, dynamic> json) {
    return LinkjoyGeneratorViciousFat()
      ..status = LinkjoySmearSister.intDef(json, 'status', 0)
      ..todayReceived = LinkjoySmearSister.intDef(json, 'today_received', 0)
      ..coinsTotal = LinkjoySmearSister.intDef(json, 'coins_total', 0)
      ..nextTime = LinkjoySmearSister.intDef(json, 'next_time', 0);
  }
}

class LinkjoyGeneratorShock {
  late int level;

  late int charged;

  late int dailyCoins;

  late int discount;

  LinkjoyGeneratorShock();

  factory LinkjoyGeneratorShock.fromJson(Map<String, dynamic>? json) {
    json ??= {};
    return LinkjoyGeneratorShock()
      ..level = LinkjoySmearSister.intDef(json, 'level', 0)
      ..charged = LinkjoySmearSister.intDef(json, 'charged', 0)
      ..dailyCoins = LinkjoySmearSister.intDef(json, 'daily_coins', 0)
      ..discount = LinkjoySmearSister.intDef(json, 'discount', 0);
  }

  Map<String, dynamic> toJson() {
    return {
      "level": level,
      "charged": charged,
      "daily_coins": dailyCoins,
      "discount": discount,
    };
  }
}
