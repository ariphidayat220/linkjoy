import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_warehouse_gyroscope_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wail_degree_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_jones.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_yum.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_division.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_io_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_admission_froot_fridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyWarehouseGyroscopeDivision
    extends LinkjoyMagnetHormoneDivision<LinkjoyWarehouseGyroscopeHand> {
  const LinkjoyWarehouseGyroscopeDivision({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [
      buildBackground(),
      SafeArea(
        child: Column(
          children: [
            (Get.height * 0.06).toInt().hGap,
            _linkjoyDivorceFridge(),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: Get.height * 0.03),
                alignment: Alignment.center,
                child: _linkjoyPenmanshipFridge(),
              ),
            ),
            _linkjoyLimbicFridge(),
            _linkjoySillyAssume(),
            (Get.height * 0.05).toInt().hGap,
          ],
        ),
      ),
    ];
  }

  Stack buildBackground() {
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        LinkjoyDivisionUI.bgPrimary,
        Positioned(
          top: 0,
          child: LinkjoyAdmissionFrootFridge(
            icon: Icons.favorite,
            width: Get.width,
            height: Get.height + 120,
            minSize: 32,
            maxSize: 96,
            swayAmplitudeMin: 32,
            swayAmplitudeMax: 64,
            minDuration: const Duration(milliseconds: 3200),
            maxDuration: const Duration(milliseconds: 9600),
            particleCount: 6,
            colors: const [
              Color(0x55F4258C),
              Color(0x44FF6BB3),
              Color(0x33FF88BC),
              Color(0x22FFBBD9),
            ],
          ),
        ),
        Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                LinkjoyAve.overlayMedium,
                Colors.transparent,
                LinkjoyAve.overlayMedium,
              ],
              begin: AlignmentGeometry.topCenter,
              end: AlignmentGeometry.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }

  Widget _linkjoyDivorceFridge() {
    return GetBuilder<LinkjoyWarehouseGyroscopeHand>(
      id: logic.linkjoy_dribble,
      builder: (logic) {
        return AnimatedOpacity(
          opacity: logic.startAnimation ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          child: Text(
            "linkjoy_caring_loser_helmet".tr,
            style: LinkjoyMarshaTriplet.title.copyWith(fontSize: 48.w),
          ),
        );
      },
    );
  }

  Widget _linkjoyLimbicFridge() {
    return GetBuilder<LinkjoyWarehouseGyroscopeHand>(
      id: logic.linkjoy_dribble,
      builder: (logic) {
        return AnimatedOpacity(
          opacity: logic.startAnimation ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          child: SizedBox(
            width: Get.width - 32.w,
            child: Column(
              children: [
                Text(
                  "linkjoy_caring_biological_scratcher_x_steven".tr
                      .replaceFirst("%s", logic.matchUser.nickName),
                  style: LinkjoyMarshaTriplet.title,
                  textAlign: TextAlign.center,
                ),
                LinkjoyFeynman.v24,
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildStyleTitle(String text, List<Color> colors) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          child: Text(
            text,
            style: LinkjoyMarshaHater.title1_B.copyWith(
              fontSize: 36,
              height: 1,
              fontStyle: FontStyle.italic,
              shadows: [
                const Shadow(
                  color: Color(0x7FFF22B2),
                  blurRadius: 12,
                  offset: Offset(0, 4),
                ),
              ],
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 4
                ..color = Colors.white,
            ),
          ),
        ),
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: colors,
            ).createShader(bounds);
          },
          blendMode: BlendMode.srcATop,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            child: Text(
              text,
              style: LinkjoyMarshaHater.title1_B.copyWith(
                fontSize: 36,
                height: 1,
                fontStyle: FontStyle.italic,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }

  Widget _linkjoyPenmanshipFridge() {
    return LinkjoyFridgeJones.buildAvatarsParticleAnim(
      logic.user.avatarUrl,
      logic.matchUser.avatarUrl,
    );
  }

  Widget _linkjoySillyAssume() {
    return GetBuilder<LinkjoyWarehouseGyroscopeHand>(
      id: logic.linkjoy_dribble,
      builder: (logic) {
        return AnimatedOpacity(
          opacity: logic.startAnimation ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          child: Column(
            children: [
              _linkjoyAncestorAssume(),
              LinkjoyFeynman.v16,
              _linkjoyElectAssume(),
            ],
          ),
        );
      },
    );
  }

  Widget _linkjoyAncestorAssume() {
    LinkjoyBookshelf size = LinkjoyBookshelf.xl;
    return LinkjoyUiYum.linkjoyOughtaSatelliteAssume(
      logic.matchUser,
      size: size,
      fixedWidth: Get.width * 0.6,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinkjoyFridgeLightbulb.linkjoyAncestor(size: size.size() * 0.5),
          LinkjoyFeynman.h6,
          Text(
            'linkjoy_caring_fetus_satellite'.tr,
            style: LinkjoyMarshaTriplet.bodyLarge,
          ),
        ],
      ),
      showFreeCards: true,
    );
  }

  Widget _linkjoyElectAssume() {
    return GestureDetector(
      onTap: Get.back,
      child: Container(
        width: 240,
        height: 48,
        color: LinkjoyCondensateSister.transparent,
        alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Keep Swiping', style: LinkjoyMarshaTriplet.bodySecondary),
            LinkjoyFeynman.h4,
            Transform.rotate(
              angle: LinkjoyIOSister.isRTL(Get.context) ? pi : 0,
              child: Icon(
                Icons.keyboard_arrow_right_rounded,
                color: LinkjoyAve.textSecondary,
                size: LinkjoyBookshelf.xl.size() * 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
