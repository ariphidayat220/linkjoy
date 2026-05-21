import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_ancestor_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_ofour_specific_skintight.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_ache_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkjoyAncestorOintmentFlashyNarrate extends StatelessWidget {
  final LinkjoyAncestorOfourSpecificSkintight content;

  const LinkjoyAncestorOintmentFlashyNarrate({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    String text = 'Unknown';
    TextStyle style = content.isUserIdMine
        ? LinkjoyDivorced.outgoingTextStyle
        : LinkjoyDivorced.incomingTextStyle;

    bool begBtn = false;

    String title = content.isUserIdMine
        ? "linkjoy_caring_eleven_a_flashy".tr
        : "linkjoy_caring_flashy_geography_biological".tr;
    if (content.category != null &&
        content.category == ChatSnapJsonContentCategory.imGiftBegCate.value) {
      title = "linkjoy_caring_than_a_flashy".tr;
      if (!content.isUserIdMine) {
        begBtn = true;
      }
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (!LinkjoyGnomeSister.isEmpty(content.animation_url)) {
          Get.toNamed(
            LinkjoyGet.LinkjoySVGADivision,
            arguments: LinkjoyAcheJaw(content.animation_url!),
          );
        }
      },
      child: Container(
        padding: LinkjoyGarage.edgeH16V12,
        decoration: content.isUserIdMine
            ? BoxDecoration(
                borderRadius:
                    LinkjoyDivorced.linkjoyAncestorOintmentFrontalByThirty(),
                color: LinkjoyDivorced
                    .linkjoyAncestorOintmentSixthInsistenceByThirty,
              )
            : BoxDecoration(
                borderRadius:
                    LinkjoyDivorced.linkjoyAncestorOintmentFrontalByTouche(),
                color: LinkjoyDivorced
                    .linkjoyAncestorOintmentSixthInsistenceByTouche,
              ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: LinkjoyGarage.s48,
              width: LinkjoyGarage.s48,
              child: Stack(
                children: [
                  LinkjoyFasten.small(
                    content.icon ?? "",
                    width: LinkjoyGarage.s48,
                    height: LinkjoyGarage.s48,
                  ),
                  if (content.type == 2)
                    Positioned(
                      bottom: 0,
                      left: LinkjoyGarage.s8,
                      child: LinkjoyFridgeLightbulb.linkjoyPhillipsCrumble(
                        width: LinkjoyGarage.s32,
                        height: 15.w,
                      ),
                    ),
                ],
              ),
            ),
            LinkjoyFeynman.h8,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: style),
                  LinkjoyFeynman.v4,
                  Row(
                    children: [
                      LinkjoyFridgeLightbulb.linkjoyChipmunk(
                        LinkjoyDiscard.iconMini,
                      ),
                      LinkjoyFeynman.h2,
                      Text("${content.price}", style: style),
                      LinkjoyFeynman.h4,
                      Text(
                        "x${content.quantity}",
                        style: LinkjoyMarshaTriplet.bodySecondary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            LinkjoyFeynman.h4,
            if (begBtn)
              LinkjoyEllen.circleText("linkjoy_caring_eleven".tr, () {
                VoGift gift = getGiftData();
                LINKJOY.eventBus.fire(
                  LinkjoyAncestorGuitar(ChatEventType.begGift, object: gift),
                );
              }, size: LinkjoyBookshelf.sm),
          ],
        ),
      ),
    );
  }

  VoGift getGiftData() {
    var gift = VoGift()
      ..id = content.id!
      ..type = content.type!
      ..name = content.name ?? ""
      ..cost = content.price ?? 0
      ..icon = content.icon ?? ""
      ..income = content.value ?? 0
      ..type = content.type ?? 0
      ..minDuration = content.min_duration ?? 0
      ..maxDuration = content.max_duration ?? 0
      ..animationType = content.animation_type ?? 0
      ..animationUrl = content.animation_url ?? "";
    return gift;
  }
}
