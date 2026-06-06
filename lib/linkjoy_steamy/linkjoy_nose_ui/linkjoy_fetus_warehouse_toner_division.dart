import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_east.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_warehouse_toner_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pag/pag.dart';

import '../../linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import '../linkjoy_ui_quieter/linkjoy_vent_interject_upside.dart';
import '../linkjoy_quieter/linkjoy_tony_narrate.dart';

class LinkjoyWarehouseTonerDivision
    extends LinkjoyMagnetHormoneDivision<LinkjoyWarehouseTonerHand> {
  const LinkjoyWarehouseTonerDivision({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    try {
      return [
        Container(
          width: Get.width,
          height: double.infinity,
          color: LinkjoyAve.bgDarkDark,
        ),

        LinkjoyDivisionUI.bgPrimary,
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
                  LinkjoyEast.linkjoy_fetus_warehouse_tony,
                  width: Get.width,
                  height: Get.width * 1100 / 750,
                  repeatCount: PAGView.REPEAT_COUNT_LOOP,
                  autoPlay: true,
                ),
              ),
            ),
          ),
        ),
        LinkjoyVentInterjectUpside(
          width: 375.w,
          height: 375.w,
          centerEmpty: true,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            children: [_linkjoyWarehouseFridge(), LinkjoyFeynman.v64],
          ),
        ),
      ];
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(770006, e, stack);
      rethrow;
    }
  }

  Widget _linkjoyWarehouseFridge() {
    return Column(
      children: [
        _linkjoyWarehouseDartFridge(),
        LinkjoyFeynman.v12,
        _linkjoyWarehouseScaleGhost(),
        LinkjoyFeynman.v16,
      ],
    );
  }

  Widget _linkjoyWarehouseDartFridge() {
    return SizedBox(
      width: Get.width - LinkjoyGarage.s32,
      child: Text(
        LINKJOY.linkjoyShock.isLinkjoyLengthOgle()
            ? ""
            : 'linkjoy_caring_penmanship_jeffries_dart'.tr,
        textAlign: TextAlign.center,
        style: LinkjoyMarshaTriplet.bodyBold,
      ),
    );
  }

  Widget _linkjoyWarehouseScaleGhost() {
    return GetBuilder<LinkjoyWarehouseTonerHand>(
      id: logic.linkjoy_gil,
      builder: (logic) {
        return SizedBox(
          height: LinkjoyBookshelf.xl.size() + LinkjoyGarage.s16,
          child: Stack(
            alignment: Alignment.center,
            children: [
              LinkjoyPondAssume.circleIconText(
                Icons.close_rounded,
                "${'linkjoy_caring_warehouse'.tr}... ${logic.seconds}s",
                Get.back,
                size: LinkjoyBookshelf.xl,
                fixedWidth: Get.width * 0.7,
              ),
            ],
          ),
        );
      },
    );
  }
}
