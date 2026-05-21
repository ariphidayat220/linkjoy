import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_generator_vicious_fat.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyUREskimoGnome {
  static const int balance = 1 << 0;
  static const int vipExpire = 1 << 1;
  static const int cards = 1 << 2;
  static const int level = 1 << 3;
  static const int income = 1 << 4;
  static const int matchMode = 1 << 5;
  static const int noDisturb = 1 << 6;
  static const int all =
      balance | vipExpire | cards | level | income | matchMode | noDisturb;
}

class LinkjoyUnbornDeposit {
  late DateTime noDisturbExpire;

  late int balance;

  late int chargeCount;

  late int chargeTotal;

  late int todayIncome;

  late int totalIncome;

  late int cardVideo;
  late int cardMatch;
  late int cardIm;
  late int cardKey;

  late int matchMode;

  late DateTime vipExpire;

  late int level;

  late LinkjoyGeneratorShock userCurrLevel;

  late LinkjoyGeneratorShock userNextLevel;

  late LinkjoyGeneratorShock userMaxLevel;

  static LinkjoyUnbornDeposit fromJson(Map<String, dynamic> json) {
    LinkjoyUnbornDeposit u = LinkjoyUnbornDeposit()
      ..noDisturbExpire = DateTime.fromMillisecondsSinceEpoch(
        LinkjoySmearSister.intDef(json, 'no_disturb_expire', 0),
      )
      ..balance = LinkjoySmearSister.intDef(json, 'balance', 0)
      ..chargeCount = LinkjoySmearSister.intDef(json, 'charge_count', 0)
      ..chargeTotal = LinkjoySmearSister.intDef(json, 'charge_total', 0)
      ..todayIncome = LinkjoySmearSister.intDef(json, 'today_income', 0)
      ..totalIncome = LinkjoySmearSister.intDef(json, 'total_income', 0)
      ..cardVideo = LinkjoySmearSister.intDef(json, 'card_video', 0)
      ..cardMatch = LinkjoySmearSister.intDef(json, 'card_match', 0)
      ..cardIm = LinkjoySmearSister.intDef(json, 'card_im', 0)
      ..cardKey = LinkjoySmearSister.intDef(json, 'card_key', 0)
      ..matchMode = LinkjoySmearSister.intDef(json, 'match_mode', 0)
      ..vipExpire = DateTime.fromMillisecondsSinceEpoch(
        LinkjoySmearSister.intDef(json, 'vip_expire', 0),
      )
      ..level = LinkjoySmearSister.intDef(json, 'level', 0)
      ..userCurrLevel = LinkjoyGeneratorShock.fromJson(json['user_curr_level'])
      ..userNextLevel = LinkjoyGeneratorShock.fromJson(json['user_next_level'])
      ..userMaxLevel = LinkjoyGeneratorShock.fromJson(json['user_max_level']);

    return u;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "no_disturb_expire": noDisturbExpire.millisecondsSinceEpoch,
      "balance": balance,
      "charge_count": chargeCount,
      "charge_total": chargeTotal,
      "today_income": todayIncome,
      "total_income": totalIncome,
      "card_video": cardVideo,
      "card_match": cardMatch,
      "card_im": cardIm,
      "card_key": cardKey,
      "match_mode": matchMode,
      "vip_expire": vipExpire.millisecondsSinceEpoch,
      "level": level,
      "user_curr_level": userCurrLevel.toJson(),
      "user_next_level": userNextLevel.toJson(),
      "user_max_level": userMaxLevel.toJson(),
    };

    return map;
  }

  bool vip() {
    return vipExpire.isAfter(DateTime.now());
  }

  bool get hasVideoCard => cardVideo > 0;

  bool get hasChatCard => cardIm > 0;

  bool get hasMatchCard => cardMatch > 0;

  int get linkjoySterilizeShampoo => cardVideo + cardIm + cardMatch + cardKey;

  int get userLevel => level;

  bool isNoDisturb() {
    return noDisturbExpire.isAfter(DateTime.now());
  }

  bool isReceiveCall() {
    return !isNoDisturb();
  }

  bool isMatching() {
    return matchMode == 1;
  }

  void linkjoyButlerDuoNoFarrah(bool noDisturb) {
    DateTime expire = noDisturb
        ? DateTime.now().add(const Duration(days: 1))
        : DateTime.now().subtract(const Duration(days: 1));
    noDisturbExpire = expire;
  }
}
