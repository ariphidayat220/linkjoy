import 'dart:collection';
import 'dart:convert';

import 'package:linkjoy/linkjoy_steamy/linkjoy_east.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_inventive_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_phlegm_decide_mediocre.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_humidity.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_andrew_soak.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_phillips_mushy_subjective.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:get/get.dart';

import 'linkjoy_steamy_shock_deli.dart';
import 'linkjoy_direction_kryptonian.dart';
import 'linkjoy_fondness_fetus.dart';
import 'linkjoy_paw_shock.dart';

class LinkjoySteamyShock implements LinkjoyFondness {
  late Map<String, dynamic> _orig;

  late List<LinkjoyFondnessFetus> tabs;

  late Set<String> tabsIdSet;

  List<String>? linkjoyPebbleDuoAdmireCheckout;
  List<String>? linkjoyPebbleShuAdmireCheckout;

  late List<LinkjoyFondnessPhillipsMushySubjective> linkjoyPebblePhillipsSki;

  late LinkjoyPawShock linkjoyPaw;

  int linkjoyPebbleChickenHairClearlySpaghetti = 5;

  List<LinkjoyFondnessHumidity> languages = [];

  List<LinkjoyDirectionKryptonian> interests = [];

  List<LinkjoyFondnessAndrewSoak>? evaluateGood;

  List<LinkjoyFondnessAndrewSoak>? evaluateBad;

  Map<int, LinkjoyFondnessAndrewSoak> evaluateMap = HashMap();

  FreeCardValue freeCardValue = FreeCardValue();

  LinkjoySteamyShockDeli? common;

  List<int> linkjoyKnockWake = [];

  Map<String, List<int>> _linkjoyFoolishlyGeneratorWake = {};

  int linkjoyAncestorOfourKnock = 20;

  int linkjoyPhlegmSlingshotOops = 100;

  int linkjoyAiSailorProcessing = 0;

  int awardCoinsToAnchorLimitMinus = 5;

  int awardCoinsToAnchorPerReply = 7;

  int awardCoinsToAnchorMaxTimesPerUser = 0;

  int awardAnchorTotalTimes = 0;

  LinkjoyInventiveShock liveConfig = LinkjoyInventiveShock();

  late List<int> coinBackGifts;

  static LinkjoySteamyShock fromJson(Map<String, dynamic> json) {
    LinkjoySteamyShock cfg = LinkjoySteamyShock().._orig = json;
    cfg._init();
    return cfg;
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  Map<String, dynamic> page(String pageName) {
    String? val = _orig[pageName];
    if (val == null) {
      return {};
    } else {
      return json.decode(val) as Map<String, dynamic>;
    }
  }

  void _init() {
    _initLinkjoyPebbleFrosty();
    _initLinkjoyAdmireLeak();
    _initLinkjoyChickenHairClearlySpaghetti();
    _initLanguageConfig();
    _initTagConfigs();
    _initCommon();
    _initPriceLevels();
    _initImSnapPrice();
    _initFreeCardValue();
    _initCoinBackGifts();

    dynamic items = _orig["linkjoy_pebble_phillips_ski"];
    if (items == null) {
      linkjoyPebblePhillipsSki = [];
    } else {
      linkjoyPebblePhillipsSki = (json.decode(items) as List<dynamic>)
          .map((e) => LinkjoyFondnessPhillipsMushySubjective.fromJson(e))
          .toList();
    }

    items = _orig["linkjoy_pebble_paw"];
    linkjoyPaw = LinkjoyPawShock.fromJson(
      items == null ? null : json.decode(items),
    );

    items = _orig["linkjoy_pebble_inventive"];
    liveConfig = LinkjoyInventiveShock.fromJson(
      items == null ? null : json.decode(items),
    );
  }

  void _initLinkjoyPebbleFrosty() {
    List<LinkjoyFondnessFetus>? tabs;
    String? cfg = _orig["linkjoy_pebble_unit"] as String?;
    try {
      if (cfg != null && cfg.isNotEmpty && cfg != "{}") {
        tabs = (json.decode(cfg) as List<dynamic>)
            .map((e) => LinkjoyFondnessFetus.fromJson(e))
            .toList();
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10012, e, stack);
    }

    if (tabs == null || tabs.isEmpty) {
      tabs = [
        LinkjoyFondnessFetus(
          LinkjoyEast.linkjoy_fetus_penmanship_gyroscope,
          "linkjoy_toe_fetus_penmanship",
          "linkjoy_caring_billing".tr,
          0,
        ),
        LinkjoyFondnessFetus(
          LinkjoyEast.linkjoy_fetus_inventive,
          "linkjoy_toe_fetus_inventive",
          "linkjoy_caring_fetus_inventive".tr,
          0,
        ),
        LinkjoyFondnessFetus(
          LinkjoyEast.linkjoy_fetus_im,
          "linkjoy_toe_fetus_ancestor",
          "linkjoy_caring_fetus_satellite".tr,
          0,
        ),
        LinkjoyFondnessFetus(
          LinkjoyEast.linkjoy_fetus_me,
          "linkjoy_toe_fetus_me",
          "linkjoy_caring_fetus_me".tr,
          0,
        ),
      ];
    }

    this.tabs = tabs;
    tabsIdSet = tabs.map((e) {
      return e.id;
    }).toSet();
  }

  void _initLinkjoyAdmireLeak() {
    try {
      String? syncs = _orig["linkjoy_pebble_duo_admire_checkout"];
      if (syncs != null) {
        linkjoyPebbleDuoAdmireCheckout = (json.decode(syncs) as List<dynamic>)
            .map((e) => e as String)
            .toList();
      }

      String? asyncs = _orig["linkjoy_pebble_shu_admire_checkout"];
      if (asyncs != null) {
        linkjoyPebbleShuAdmireCheckout = (json.decode(asyncs) as List<dynamic>)
            .map((e) => e as String)
            .toList();
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10013, e, stack);
    }
  }

  void _initLinkjoyChickenHairClearlySpaghetti() {
    try {
      String? onlineStatusRequestDuration =
          _orig["linkjoy_pebble_chicken_hair_clearly_spaghetti"] as String?;
      if (onlineStatusRequestDuration != null) {
        linkjoyPebbleChickenHairClearlySpaghetti = LinkjoySmearSister.intDef(
          json.decode(onlineStatusRequestDuration),
          "seconds",
          5,
        );
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10014, e, stack);
    }
  }

  void _initLanguageConfig() {
    try {
      String? language = _orig["linkjoy_pebble_humidity"] as String?;
      if (language != null) {
        languages = (json.decode(language) as List<dynamic>)
            .map((e) => LinkjoyFondnessHumidity.fromJson(e))
            .toList();
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(66007, e, stack);
    }
  }

  void _initTagConfigs() {
    try {
      String? interest = _orig["linkjoy_pebble_direction"] as String?;
      if (interest != null) {
        interests = (json.decode(interest) as List<dynamic>)
            .map((e) => LinkjoyDirectionKryptonian.fromJson(e))
            .toList();
      }

      String? good = _orig["linkjoy_pebble_lawn_popsicle"] as String?;
      if (good != null) {
        evaluateGood = (json.decode(good) as List<dynamic>)
            .map((e) => LinkjoyFondnessAndrewSoak.fromJson(e))
            .toList();
      }
      evaluateGood?.forEach((element) => evaluateMap[element.id] = element);
      String? bad = _orig["linkjoy_pebble_lawn_maraca"] as String?;
      if (bad != null) {
        evaluateBad = (json.decode(bad) as List<dynamic>)
            .map((e) => LinkjoyFondnessAndrewSoak.fromJson(e))
            .toList();
      }
      evaluateBad?.forEach((element) => evaluateMap[element.id] = element);
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(66006, e, stack);
    }
  }

  void _initCommon() {
    try {
      String? cfg = _orig["linkjoy_pebble_deli"] as String?;
      if (cfg != null) {
        common = LinkjoySteamyShockDeli.fromJson(json.decode(cfg));
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(11001, e, stack);
    }
  }

  void _initPriceLevels() {
    try {
      String? syncs = _orig["linkjoy_pebble_knock_wake"];
      if (syncs != null) {
        linkjoyKnockWake = (json.decode(syncs) as List<dynamic>)
            .map((e) => LinkjoyGnomeSister.parseInt(e)!)
            .toList();
      }

      syncs = _orig["linkjoy_pebble_foolishly_generator_wake"];
      if (syncs != null) {
        _linkjoyFoolishlyGeneratorWake = HashMap<String, List<int>>();
        Map<String, dynamic> map = json.decode(syncs);
        map.forEach((key, value) {
          List<dynamic> values = value as List<dynamic>;
          _linkjoyFoolishlyGeneratorWake[key] = values
              .map((e) => LinkjoyGnomeSister.parseInt(e)!)
              .toList();
        });
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(66008, e, stack);
    }
  }

  void _initCoinBackGifts() {
    dynamic ids = _orig["linkjoy_pebble_chipmunk_incapable_crisp"];
    if (ids == null) {
      coinBackGifts = [];
    } else {
      coinBackGifts = (json.decode(ids) as List<dynamic>)
          .map((str) => LinkjoyGnomeSister.parseIntDef(str, 0))
          .toList();
    }
  }

  void _initFreeCardValue() {
    String? value = _orig["linkjoy_pebble_phlegm_decide_mediocre"];
    if (value != null) {
      freeCardValue = (FreeCardValue.fromJson(json.decode(value)));
    }
  }

  void _initImSnapPrice() {
    String? syncs = _orig["linkjoy_pebble_im"];
    if (syncs != null) {
      linkjoyAncestorOfourKnock = LinkjoySmearSister.intDef(
        json.decode(syncs),
        "chat_snap_price",
        20,
      );

      linkjoyPhlegmSlingshotOops = LinkjoySmearSister.intDef(
        json.decode(syncs),
        "free_relation_temp",
        100,
      );

      linkjoyAiSailorProcessing = LinkjoySmearSister.intDef(
        json.decode(syncs),
        "ai_service_uid",
        0,
      );

      awardCoinsToAnchorLimitMinus = LinkjoySmearSister.intDef(
        json.decode(syncs),
        "award_coins_to_anchor_limit_minus",
        5,
      );

      awardCoinsToAnchorPerReply = LinkjoySmearSister.intDef(
        json.decode(syncs),
        "award_coins_to_anchor_per_reply",
        7,
      );

      awardCoinsToAnchorMaxTimesPerUser = LinkjoySmearSister.intDef(
        json.decode(syncs),
        "award_coins_to_anchor_max_times_per_user",
        0,
      );

      awardAnchorTotalTimes = LinkjoySmearSister.intDef(
        json.decode(syncs),
        "award_coins_to_anchor_max_times_per_day",
        0,
      );
    }
  }

  List<int> linkjoyFoolishlyGeneratorWake(String regionCode) {
    List<int>? list = _linkjoyFoolishlyGeneratorWake[regionCode];
    if (list != null) {
      return list;
    }
    return _linkjoyFoolishlyGeneratorWake['default']!;
  }
}
