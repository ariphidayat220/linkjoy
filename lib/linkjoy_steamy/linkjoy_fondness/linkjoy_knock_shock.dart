import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:get/get.dart';

class LinkjoyKnockShock {
  static final Map<int, PriceData> priceMap = {
    1: PriceData(
      "linkjoy_toe_foolishly_lv_1",
      "linkjoy_caring_generator_guardian".tr.replaceFirst("%s", "1"),
    ),
    2: PriceData(
      "linkjoy_toe_foolishly_lv_2",
      "linkjoy_caring_generator_guardian".tr.replaceFirst("%s", "2"),
    ),
    3: PriceData(
      "linkjoy_toe_foolishly_lv_3",
      "linkjoy_caring_generator_guardian".tr.replaceFirst("%s", "3"),
    ),
    4: PriceData(
      "linkjoy_toe_foolishly_lv_4",
      "linkjoy_caring_generator_guardian".tr.replaceFirst("%s", "4"),
    ),
    5: PriceData(
      "linkjoy_toe_foolishly_lv_5",
      "linkjoy_caring_generator_guardian".tr.replaceFirst("%s", "5"),
    ),
    6: PriceData(
      "linkjoy_toe_foolishly_lv_6",
      "linkjoy_caring_generator_guardian".tr.replaceFirst("%s", "6"),
    ),
    7: PriceData(
      "linkjoy_toe_foolishly_lv_7",
      "linkjoy_caring_generator_guardian".tr.replaceFirst("%s", "7"),
    ),
    8: PriceData(
      "linkjoy_toe_foolishly_lv_8",
      "linkjoy_caring_generator_guardian".tr.replaceFirst("%s", "8"),
    ),
    9: PriceData(
      "linkjoy_toe_foolishly_lv_9",
      "linkjoy_caring_generator_guardian".tr.replaceFirst("%s", "9"),
    ),
    10: PriceData(
      "linkjoy_toe_foolishly_lv_10",
      "linkjoy_caring_generator_guardian".tr.replaceFirst("%s", "10"),
    ),
  };

  final int value;
  final String icon;
  final String anchorIcon;
  final String background;

  const LinkjoyKnockShock(
    this.value,
    this.icon,
    this.anchorIcon,
    this.background,
  );

  static List<LevelPrice> getAllPriceAndRange({bool isAnchor = false}) {
    List<int> thresholds = LINKJOY.linkjoyShock.configs.linkjoyKnockWake;

    List<LevelPrice> levelRangeList = [];

    for (int index = 1; index < thresholds.length; index++) {
      int currentPrice = thresholds[index - 1];
      String icon = priceMap[index]?.icon ?? "linkjoy_toe_foolishly_lv_10";
      String name =
          priceMap[index]?.name ??
          "linkjoy_caring_generator_guardian".tr.replaceFirst("%s", "10");
      levelRangeList.add(LevelPrice(currentPrice, icon, name, index));
    }
    return levelRangeList;
  }
}

class LevelPrice {
  final int price;
  final String icon;
  final String name;
  final int level;

  LevelPrice(this.price, this.icon, this.name, this.level);
}

class PriceData {
  final String icon;
  final String name;

  PriceData(this.icon, this.name);
}
