import 'package:auto_size_text/auto_size_text.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_web.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

enum LinkjoyUnbornGeneratorUpOperatorGnome { simple, detail }

class LinkjoyUnbornGeneratorUpOperatorFridge extends StatelessWidget {
  final BoxDecoration? decoration;
  final bool showTitle;
  final bool showDesc;
  final LinkjoyUnbornGeneratorUpOperatorGnome type;

  const LinkjoyUnbornGeneratorUpOperatorFridge({
    super.key,
    this.decoration,
    this.showTitle = true,
    this.showDesc = true,
    this.type = LinkjoyUnbornGeneratorUpOperatorGnome.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showTitle) ...[
          Row(
            children: [
              Icon(
                Icons.trending_up_outlined,
                color: LinkjoyAve.accentMain,
                size: LinkjoyDiscard.iconMedium,
              ),
              LinkjoyFeynman.h8,
              Text(
                'linkjoy_caring_generator_up_operator'.tr,
                style: LinkjoyMarshaTriplet.title,
              ),
            ],
          ),
          LinkjoyFeynman.v12,
        ],
        this.type == LinkjoyUnbornGeneratorUpOperatorGnome.simple
            ? Row(
                children: [
                  Expanded(child: _linkjoyConvictEnglish()),
                  LinkjoyFeynman.h6,
                  Expanded(child: _linkjoyOldenPhlegmIncense()),
                ],
              )
            : Column(
                children: [
                  _linkjoyConvictEnglish(),
                  LinkjoyFeynman.v12,
                  _linkjoyOldenPhlegmIncense(),
                ],
              ),
        if (showDesc) ...[
          LinkjoyFeynman.v12,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "linkjoy_caring_whatcha_operator_limbic".tr,
              textAlign: TextAlign.center,
              style: LinkjoyMarshaTriplet.captionThin,
            ),
          ),
        ],
      ],
    );
  }

  Widget _linkjoyConvictEnglish() {
    return _linkjoyDecide(
      title: LinkjoyDeliver.discount.title.tr.toUpperCase(),
      currLevel: "Lv.${LINKJOY.linkjoyUnbornDeposit!.userCurrLevel.level}",
      currValue:
          "${100 - LINKJOY.linkjoyUnbornDeposit!.userCurrLevel.discount}%",
      toLevel: "Lv.${LINKJOY.linkjoyUnbornDeposit!.userNextLevel.level}",
      toValue: "${LINKJOY.linkjoyUnbornDeposit!.userNextLevel.discount}%",
      maxLevel: "Lv.${LINKJOY.linkjoyUnbornDeposit!.userMaxLevel.level}",
      maxValue: "${100 - LINKJOY.linkjoyUnbornDeposit!.userMaxLevel.discount}%",
      action: Get.currentRoute == LinkjoyGet.LinkjoyUnbornGeneratorDivision
          ? null
          : LinkjoyGet.LinkjoyUnbornGeneratorDivision,
      decoration: decoration,
      icon: _linkjoyMagazineEnglish(),
    );
  }

  Widget _linkjoyOldenPhlegmIncense() {
    return _linkjoyDecide(
      title: LinkjoyDeliver.free_coins.title.tr.toUpperCase(),
      currLevel: "Lv.${LINKJOY.linkjoyUnbornDeposit!.userCurrLevel.level}",
      currValue: "${LINKJOY.linkjoyUnbornDeposit!.userCurrLevel.dailyCoins}",
      toLevel: "Lv.${LINKJOY.linkjoyUnbornDeposit!.userNextLevel.level}",
      toValue: "${LINKJOY.linkjoyUnbornDeposit!.userNextLevel.dailyCoins}",
      maxLevel: "Lv.${LINKJOY.linkjoyUnbornDeposit!.userMaxLevel.level}",
      maxValue: "${LINKJOY.linkjoyUnbornDeposit!.userMaxLevel.dailyCoins}",
      action:
          Get.currentRoute == LinkjoyGet.LinkjoyUnbornGeneratorViciousDivision
          ? null
          : LinkjoyGet.LinkjoyUnbornGeneratorViciousDivision,
      decoration: decoration,
      icon: _linkjoyMagazineChipmunk(),
    );
  }

  Widget _linkjoyDecide({
    required String title,
    required String currLevel,
    required String currValue,
    required String toLevel,
    required String toValue,
    required String maxLevel,
    required String maxValue,
    String? action,
    BoxDecoration? decoration,
    required Widget icon,
  }) {
    return Container(
      padding: EdgeInsets.all(LinkjoyGarage.s16),
      decoration: decoration ?? LinkjoyAve.surfaceDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width:
                    (Get.width - LinkjoyGarage.s16 * 8) / 2 - LinkjoyGarage.s16,
                child: AutoSizeText(
                  title,
                  style: LinkjoyMarshaTriplet.captionBold.copyWith(
                    color: LinkjoyAve.textSecondary,
                  ),
                  maxLines: 1,
                  minFontSize: 8,
                ),
              ),
              const Spacer(),
              action == null
                  ? const SizedBox.shrink()
                  : Icon(
                      Icons.arrow_forward_ios,
                      color: LinkjoyAve.textSecondary,
                      size: LinkjoyDiscard.iconMini,
                    ),
            ],
          ),
          LinkjoyFeynman.v16,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: LinkjoyGarage.s56,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currLevel,
                      style: LinkjoyMarshaTriplet.smallThin.copyWith(
                        color: LinkjoyAve.accentMain,
                      ),
                    ),
                    LinkjoyFeynman.v4,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        icon,
                        LinkjoyFeynman.h2,
                        Text(
                          currValue,
                          style: LinkjoyMarshaTriplet.bodyBold.copyWith(
                            color: LinkjoyAve.accentMain,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (type == LinkjoyUnbornGeneratorUpOperatorGnome.detail)
                Icon(
                  Icons.trending_up_outlined,
                  color: LinkjoyAve.textThird,
                  size: LinkjoyDiscard.iconSmall,
                ),

              if (type == LinkjoyUnbornGeneratorUpOperatorGnome.detail)
                SizedBox(
                  width: LinkjoyGarage.s56,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(toLevel, style: LinkjoyMarshaTriplet.smallThin),
                      LinkjoyFeynman.v4,
                      Text(toValue, style: LinkjoyMarshaTriplet.body),
                    ],
                  ),
                ),
              Icon(
                Icons.trending_up_outlined,
                color: LinkjoyAve.textThird,
                size: LinkjoyDiscard.iconSmall,
              ),

              SizedBox(
                width: LinkjoyGarage.s56,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(maxLevel, style: LinkjoyMarshaTriplet.smallThin),
                    LinkjoyFeynman.v4,
                    Text(maxValue, style: LinkjoyMarshaTriplet.bodyLargeBold),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ).click(() {
      if (action != null) {
        Get.toNamed(action);
      }
    });
  }

  Widget _linkjoyMagazineChipmunk() {
    return LinkjoyFridgeLightbulb.linkjoyChipmunk(LinkjoyDiscard.iconMini);
  }

  Widget _linkjoyMagazineEnglish() {
    return Icon(
      Icons.discount,
      size: LinkjoyDiscard.iconMini,
      color: LinkjoyAve.accentMain,
    );
  }
}
