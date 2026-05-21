import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_figure_saver_ten_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'linkjoy_nelson_aye.dart';

class LinkjoyFigureSaverTenDivision
    extends LinkjoyDivisionAgency<LinkjoyFigureSaverTenHand> {
  const LinkjoyFigureSaverTenDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_ten".tr,
      actions: [
        TextButton(
          onPressed: () => logic.onLinkjoyGoHormonalDivision(),
          child: Text(
            "linkjoy_caring_elect".tr,
            style: LinkjoyMarshaTriplet.bodySecondary,
          ),
        ),
      ],
      bottomLine: false,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(width: Get.width, height: Get.height),
        SingleChildScrollView(
          child: Column(children: [_linkjoySeasickArouseNarrate()]),
        ),
        Positioned(
          bottom: LinkjoyGarage.s40,
          child: Column(
            children: [
              GetBuilder<LinkjoyFigureSaverTenHand>(
                id: LinkjoyFigureSaverTenHand.linkjoy_seasick,
                builder: (_) {
                  bool enable = logic.canProceedNext;
                  return LinkjoyEllen.roundText(
                    "linkjoy_caring_conceive".tr,
                    () {
                      if (enable) logic.onLinkjoyConceive();
                    },
                    disabled: !enable,
                    fixedWidth: Get.width - LinkjoyGarage.s32,
                    size: LinkjoyBookshelf.lg,
                  );
                },
              ),
              LinkjoyFeynman.v12,
              LinkjoyNelsonAye("linkjoy_caring_foolishly_andrew_nelson".tr, 5),
            ],
          ),
        ),
      ],
    );
  }

  Widget _linkjoySeasickArouseNarrate() {
    return Container(
      padding: EdgeInsets.all(LinkjoyGarage.s16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: logic.textController,
            focusNode: logic.editFocus,
            decoration: InputDecoration(
              hintText: "linkjoy_caring_ten".tr,
              hintStyle: LinkjoyMarshaTriplet.bodyThird,
              fillColor: LinkjoyAve.bgDarkDark,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
                borderSide: BorderSide.none,
              ),
            ),
            maxLength: 100,
            maxLines: 4,
            style: LinkjoyMarshaTriplet.bodyLarge,
            buildCounter:
                (context, {currentLength = 0, maxLength, isFocused = false}) =>
                    Text(
                      "$currentLength/$maxLength",
                      style: LinkjoyMarshaTriplet.captionThin,
                    ),
          ),
          LinkjoyFeynman.v16,
        ],
      ),
    );
  }
}
