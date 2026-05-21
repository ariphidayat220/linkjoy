import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_figure_saver_vent_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose_ui/linkjoy_nelson_aye.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';

class LinkjoyFigureSaverVentDivision
    extends LinkjoyDivisionAgency<LinkjoyFigureSaverVentHand> {
  const LinkjoyFigureSaverVentDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_my_andrew_box".tr,
      bottomLine: false,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return GetBuilder<LinkjoyFigureSaverVentHand>(
      id: LinkjoyFigureSaverVentHand.linkjoy_division,
      builder: (logic) {
        if (!logic.hasInit) {
          return const SizedBox.shrink();
        }

        return Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
              height: Get.height,
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LinkjoyFeynman.v20,

                  LinkjoyFridgeLightbulb.linkjoyGrape(
                    msg: "linkjoy_caring_my_andrew_vent_figure_grape".tr,
                    warning: false,
                    marginBottom: LinkjoyGarage.s16,
                  ),
                  GetBuilder<LinkjoyFigureSaverVentHand>(
                    id: LinkjoyFigureSaverVentHand.linkjoy_vent,
                    builder: (_) {
                      return _linkjoyUnbornVentNarrate();
                    },
                  ),
                  LinkjoyFeynman.v16,
                ],
              ),
            ),
            Positioned(
              bottom: LinkjoyGarage.s40,
              child: Column(
                children: [
                  GetBuilder<LinkjoyFigureSaverVentHand>(
                    id: LinkjoyFigureSaverVentHand.linkjoy_vent,
                    builder: (_) {
                      bool enable = logic.uploadedAvatarUrl != null;
                      return LinkjoyEllen.roundText(
                        "linkjoy_caring_conceive".tr,
                        () {
                          if (enable) logic.onLinkjoyConceive();
                        },
                        disabled: !enable,
                        fixedWidth: Get.width - LinkjoyGarage.s16 * 2,
                        size: LinkjoyBookshelf.lg,
                      );
                    },
                  ),
                  LinkjoyFeynman.v12,
                  LinkjoyNelsonAye(
                    "linkjoy_caring_foolishly_andrew_nelson".tr,
                    1,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _linkjoyUnbornVentNarrate() {
    double size = 160.w;

    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: LinkjoyDivorced.linkjoyMarshaAgencyInsistence,
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          if (logic.info.user.avatarUrl != "")
            LinkjoyFasten.circle(
              logic.info.user.avatarUrl,
              size: size,
              fit: BoxFit.cover,
              clip: ImageClipType.middle,
            ),
          if (logic.info.user.avatarUrl == "")
            Container(
              width: size,
              height: size,
              decoration: LinkjoyAve.surfaceImportantDecoration.copyWith(
                borderRadius: BorderRadius.circular(size / 2),
              ),
              child: Icon(
                Icons.person_pin,
                size: LinkjoyDiscard.iconXLarge,
                color: LinkjoyAve.disabled,
              ),
            ),
          LinkjoyEllen.circleIconText(
            Icons.upload_outlined,
            "linkjoy_caring_veto".tr,
            logic.onLinkjoyVentSilliness,
            size: LinkjoyBookshelf.sm,
          ),
        ],
      ),
    ).click(() => logic.onLinkjoyVentSilliness());
  }
}
