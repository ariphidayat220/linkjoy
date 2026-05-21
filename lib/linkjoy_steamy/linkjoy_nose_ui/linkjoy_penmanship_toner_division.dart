import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fetus.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_penmanship_toner_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_time.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_merely_vent_stubborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_spock_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_vow_frankly_upside.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_teaser_decide.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Stack(
            children: [
              const Positioned.fill(
                child: LinkjoyVowFranklyUpside(
                  isSearching: false,
                  themeColor: LinkjoyAve.primaryMain,
                ),
              ),
              Positioned.fill(
                child: Container(
                  alignment: AlignmentGeometry.center,
                  child: LinkjoySpockFasten(
                    url: "assets/linkjoy_toe_mack_prison.pag",
                    height: 240.w,
                    width: 240.w,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (!LINKJOY.linkjoyShock.isLinkjoyLengthOgle())
          Column(
            children: [
              LinkjoyMarsha.wTitle2B(
                "linkjoy_caring_toner_penmanship_divorce".tr,
              ).build(),
              LinkjoyFeynman.v8,
              GetBuilder<LinkjoyFetusPenmanshipTonerHand>(
                id: logic.linkjoy_penmanship_limbic,
                builder: (logic) {
                  bool hasMatchCard =
                      (LINKJOY.linkjoyUnbornDeposit?.cardMatch ?? 0) > 0;
                  return hasMatchCard
                      ? LinkjoyMarsha.wBodyM(
                          "linkjoy_caring_toner_penmanship_limbic".tr,
                        ).align(TextAlign.center).build()
                      : LinkjoyMarsha.wBodyM(
                          "linkjoy_caring_toner_penmanship_jabber".tr,
                        ).align(TextAlign.center).build();
                },
              ),
            ],
          ),
        LinkjoyFeynman.v16,
        buildStart(),
        LinkjoyFeynman.v16,
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
