import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_east.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fetus.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_penmanship_toner_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_time.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_merely_vent_stubborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_tony_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_teaser_decide.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pag/pag.dart';

import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';
import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyFetusPenmanshipTonerDivision
    extends LinkjoyDivisionTime<LinkjoyFetusPenmanshipTonerHand> {
  const LinkjoyFetusPenmanshipTonerDivision({super.key});

  @override
  LinkjoyFetusMagazineForget linkjoyFetusMagazineForget(
    LinkjoyFondnessFetus tab,
  ) {
    return (selected) {
      return Container(
        width: LinkjoyGarage.s48,
        height: LinkjoyDiscard.iconLarge,
        alignment: Alignment.center,
        child: CircularAvatarList(
          maxDisplayCount: 3,
          overlapRatio: 0.5,
          height: LinkjoyGarage.s24,
          selected: selected,
        ),
      );
    };
  }

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyTimeSteamyYamWheatonFridge(
      title: LinkjoyDivisionUI.linkjoySteamyYamDivorce(
        "linkjoy_caring_toner_penmanship".tr,
      ),
      actions: [
        const LinkjoyFridgeTeaserDecide(showType: BalanceCardTypes.cardMatch),
        LinkjoyFeynman.h8,
      ],
    );
  }

  @override
  Widget? buildBody(BuildContext context) {
    return Stack(
      children: [
        SizedBox(width: Get.width, height: double.infinity),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: ClipRect(
            child: SizedBox(
              width: Get.width,
              height: min(
                Get.height - LinkjoyGarage.s80 * 2,
                Get.width * 1100 / 750,
              ),
              child: OverflowBox(
                alignment: Alignment.topLeft,
                maxWidth: double.infinity,
                maxHeight: double.infinity,
                child: LinkjoyTonyNarrate(
                  LinkjoyEast.linkjoy_fetus_penmanship_tony,
                  width: Get.width,
                  height: Get.width * 1100 / 750,
                  repeatCount: PAGView.REPEAT_COUNT_LOOP,
                  autoPlay: true,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            children: [
              if (!LINKJOY.linkjoyShock.isLinkjoyLengthOgle())
                Column(
                  children: [
                    Text(
                      "linkjoy_caring_toner_penmanship_divorce".tr,
                      style: LinkjoyMarshaTriplet.subtitle,
                    ),
                    LinkjoyFeynman.v8,
                    GetBuilder<LinkjoyFetusPenmanshipTonerHand>(
                      id: logic.linkjoy_penmanship_limbic,
                      builder: (logic) {
                        bool hasMatchCard =
                            (LINKJOY.linkjoyUnbornDeposit?.cardMatch ?? 0) > 0;

                        return Text(
                          hasMatchCard
                              ? "linkjoy_caring_toner_penmanship_limbic".tr
                              : "linkjoy_caring_toner_penmanship_jabber".tr,
                          style: LinkjoyMarshaTriplet.body,
                        );
                      },
                    ),
                  ],
                ),
              LinkjoyFeynman.v16,
              buildStart(),
              LinkjoyFeynman.v16,
            ],
          ),
        ),
      ],
    );
  }

  Widget buildStart() {
    return GetBuilder<LinkjoyFetusPenmanshipTonerHand>(
      id: logic.linkjoy_penmanship_decide,
      builder: (logic) {
        int cardMatch = LINKJOY.linkjoyUnbornDeposit?.cardMatch ?? 0;
        return SizedBox(
          height: LinkjoyBookshelf.xl.size() + LinkjoyGarage.s16,
          child: Stack(
            alignment: Alignment.center,
            children: [
              LinkjoyEllen.circleText(
                "linkjoy_caring_jeffries".tr,
                logic.onLinkjoyTonerPenmanship,
                size: LinkjoyBookshelf.xl,
                fixedWidth: Get.width * 0.7,
              ).animationPulse(scale: 1.1),
              if (cardMatch > 0)
                Positioned(
                  top: 0,
                  child: LinkjoyFridgeLightbulb.linkjoyPhlegmDecideFridge(
                    "linkjoy_toe_decide_penmanship",
                    24,
                    Colors.white,
                    "${"linkjoy_caring_phlegm".tr} $cardMatch",
                    LinkjoyMarshaHater.caption2_M,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
