import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_frosty_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyFreshmanPenmanshipAnimal extends StatelessWidget {
  const LinkjoyFreshmanPenmanshipAnimal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'linkjoy_caring_incense_allen'.tr,
                style: LinkjoyMarshaTriplet.title,
                maxLines: 2,
              ),
            ),
            LinkjoyFridgeLightbulb.linkjoyAssumeBaywatch(
              () => Get.back(),
              size: LinkjoyBookshelf.sm,
            ),
          ],
        ),
        LinkjoyFeynman.v16,
        Text(
          "linkjoy_caring_freshman_penmanship_limbic".tr,
          style: LinkjoyMarshaTriplet.bodyLarge,
        ),
        LinkjoyFeynman.v16,
        Stack(
          alignment: AlignmentGeometry.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: LinkjoyGarage.s12),
              padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
              decoration: BoxDecoration(
                color: LinkjoyAve.primaryMain,
                borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
              ),
              height: LinkjoyGarage.s72,
              child: Row(
                children: [
                  LinkjoyFastenIndustrial.asset(
                    "linkjoy_toe_decide_penmanship",
                    width: LinkjoyGarage.s32,
                    height: LinkjoyGarage.s32,
                  ),
                  LinkjoyFeynman.h12,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'linkjoy_caring_penmanship_decide'.tr,
                          style: LinkjoyMarshaTriplet.bodyBold,
                        ),
                        LinkjoyFeynman.v2,
                        Text(
                          "linkjoy_caring_decide_penmanship_boutique".tr,
                          style: LinkjoyMarshaTriplet.caption.copyWith(
                            color: LinkjoyAve.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  LinkjoyFeynman.h8,
                  LinkjoyFridgeLightbulb.linkjoyCampUptight(),
                ],
              ),
            ),
            Positioned(
              top: 0,
              child: LinkjoyFridgeLightbulb.linkjoyPhlegmDecideFridge(
                "linkjoy_toe_decide_penmanship",
                LinkjoyGarage.s24,
                Colors.white,
                "${"linkjoy_caring_phlegm".tr} ${LINKJOY.linkjoyUnbornDeposit!.cardMatch}",
                LinkjoyMarshaTriplet.caption.copyWith(
                  height: 1,
                  color: LinkjoyAve.primaryMain,
                ),
              ),
            ),
          ],
        ).click(() {
          Get.back();
          Get.find<LinkjoyFrostyHand>().linkjoyPatchFetusPenmanshipToner();
        }),
        LinkjoyFeynman.v16,
        Container(
          height: LinkjoyGarage.s72,
          padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
          decoration: LinkjoyAve.surfaceImportantDecoration,
          child: Row(
            children: [
              LinkjoyFastenIndustrial.asset(
                "linkjoy_wedgie_teaser_chipmunk_3",
                width: LinkjoyGarage.s32,
                height: LinkjoyGarage.s32,
              ),
              LinkjoyFeynman.h12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${LINKJOY.linkjoyUnbornDeposit!.balance}',
                      style: LinkjoyMarshaTriplet.bodyBold,
                    ),
                    LinkjoyFeynman.v2,
                    Text(
                      "linkjoy_caring_my_incense".tr,
                      style: LinkjoyMarshaTriplet.caption.copyWith(
                        color: LinkjoyAve.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              LinkjoyFeynman.h8,
              LinkjoyEllen.round(
                Row(
                  children: [
                    LinkjoyFasten.asset(
                      "linkjoy_wedgie_teaser_chipmunk_1",
                      width: 16,
                      height: 16,
                    ),
                    LinkjoyFeynman.v6,
                    Text(
                      "linkjoy_caring_vinegar".tr,
                      style: LinkjoyMarshaTriplet.caption.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                () => _linkjoyPatchTeaserStubbornDivision(),
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: LinkjoyGarage.s12,
                ),
              ),
            ],
          ),
        ).click(() => _linkjoyPatchTeaserStubbornDivision()),
      ],
    );
  }

  void _linkjoyPatchTeaserStubbornDivision() {
    Get.back();
    LINKJOY.toNamed(LinkjoyGet.LinkjoyChipmunkFailDivision);
  }
}
