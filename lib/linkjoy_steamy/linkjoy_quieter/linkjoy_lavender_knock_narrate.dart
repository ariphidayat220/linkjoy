import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_foolishly_generator_sorority.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_knock_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyLavenderKnockNarrate extends StatefulWidget {
  static void show({
    required LinkjoyFoolishlyGeneratorSorority priceInfo,
    required Function(int price) func,
  }) {
    showCupertinoModalPopup(
      context: Get.context!,
      barrierColor: LinkjoyCondensateSister.black_60p,
      builder: (context) {
        return LinkjoyLavenderKnockNarrate(info: priceInfo, callBack: func);
      },
    );
  }

  const LinkjoyLavenderKnockNarrate({
    super.key,
    required this.info,
    required this.callBack,
  });

  final LinkjoyFoolishlyGeneratorSorority info;
  final Function(int price) callBack;

  @override
  State<LinkjoyLavenderKnockNarrate> createState() =>
      _LinkjoyLavenderKnockNarrateStatus();
}

class _LinkjoyLavenderKnockNarrateStatus
    extends State<LinkjoyLavenderKnockNarrate> {
  Function(int price)? callBack;

  late LinkjoyFoolishlyGeneratorSorority levelInfo;

  late int price;

  @override
  void initState() {
    super.initState();

    levelInfo = widget.info;
    callBack = widget.callBack;
    price = levelInfo.price;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 400,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: 24.rectTopBg,
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "linkjoy_caring_lavender_knock".tr,
            style: LinkjoyMarshaGreen.TextB1_22_Medium,
          ),
          16.hGap,
          Expanded(child: _linkjoyKnockStubborn()),
        ],
      ),
    );
  }

  Widget _linkjoyKnockStubborn() {
    List<LevelPrice> list = LinkjoyKnockShock.getAllPriceAndRange(
      isAnchor: true,
    );

    List<LevelPrice> cp = [];

    LevelPrice prev = list[0];
    cp.add(prev);
    for (LevelPrice p in list) {
      if (p.price != prev.price) {
        cp.add(p);
        prev = p;
      }
    }

    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: cp.length,
      itemBuilder: (context, index) {
        return _linkjoyStubbornSubjective(cp[index]);
      },
    );
  }

  Widget _linkjoyStubbornSubjective(LevelPrice levelPrice) {
    bool isChecked = price == levelPrice.price;

    bool isVisible = levelPrice.price <= levelInfo.current().maxPrice;

    BoxDecoration decoration;
    Widget rightWidget;

    if (isVisible) {
      if (isChecked) {
        decoration = BoxDecoration(
          borderRadius: 8.rectBg,
          color: Colors.white,
          border: Border.all(color: "874BFF".toColor(), width: 1),
        );
        rightWidget = LinkjoyFasten.asset(
          "linkjoy_toe_lavender_knock_poetry_magazine",
          width: 20,
          height: 20,
        );
      } else {
        decoration = BoxDecoration(
          borderRadius: 8.rectBg,
          color: Colors.white,
          border: Border.all(color: "F5F5F7".toColor(), width: 1),
        );
        rightWidget = LinkjoyFasten.asset(
          "linkjoy_toe_lavender_knock_un_fat_magazine",
          width: 20,
          height: 20,
        );
      }
    } else {
      decoration = BoxDecoration(
        borderRadius: 8.rectBg,
        color: "F5F5F7".toColor(),
      );
      rightWidget = Text(
        "${"linkjoy_caring_generator_guardian".tr.replaceFirst("%s", "${levelPrice.level}")} ${"linkjoy_caring_doll".tr}",
        style: LinkjoyMarshaGreen.TextB3_12,
      );
    }

    return Container(
      height: 56,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: decoration,
      child: Row(
        children: [
          LinkjoyFridgeLightbulb.linkjoyAssertMediocre(
            levelPrice.price,
            textStyle: LinkjoyMarshaGreen.TextB1_14_Middle,
          ),
          4.wGap,
          Text(
            "linkjoy_caring_hunter_shampoo".tr.replaceFirst("%s", ""),
            style: LinkjoyMarshaGreen.TextB3_14_Medium,
          ),
          const Spacer(),
          rightWidget,
        ],
      ),
    ).clickOld(() {
      if (!isVisible) return;

      int min = LinkjoyKnockShock.getAllPriceAndRange(
        isAnchor: true,
      ).first.price;
      if (levelPrice.price > min) {
        LinkjoyUISocially.linkjoyMarketingButWarlordAnimal(
          "linkjoy_caring_speak_knock_cassie".tr,
          iconData: Icons.warning_rounded,
          iconColor: LinkjoyAve.warning,
          onConfirm: () => _setPrice(levelPrice.price),
        );
        return;
      } else {
        _setPrice(levelPrice.price);
      }
    });
  }

  void _setPrice(int price) {
    if (mounted) {
      setState(() {
        this.price = price;
      });
    }
    callBack?.call(price);
    Get.until(
      (route) =>
          ((route.settings.name == LinkjoyGet.LinkjoyAncestorKnock) &&
          Get.isDialogOpen != true &&
          Get.isBottomSheetOpen != true),
    );
  }
}
