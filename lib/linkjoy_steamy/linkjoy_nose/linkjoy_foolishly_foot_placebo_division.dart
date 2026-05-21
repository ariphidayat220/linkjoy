import 'dart:io';

import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_division_paw.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkjoyFoolishlyFootPlaceboDivision extends StatelessWidget {
  final bool success;

  final String? failReason;

  final bool retryable;

  const LinkjoyFoolishlyFootPlaceboDivision({
    super.key,
    required this.success,
    this.retryable = true,
    this.failReason,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: LinkjoyGarage.edgeH16,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: Platform.isIOS ? 80.w : 200.w),
                _linkjoyPlaceboNarrate(),
                SizedBox(height: LinkjoyGarage.s40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    success
                        ? "linkjoy_caring_dig_soda_divorce".tr
                        : "linkjoy_caring_dig_midnight_divorce".tr,
                    style: LinkjoyMarshaTriplet.subtitle,
                  ),
                ),
                LinkjoyFeynman.v8,
                if (!success)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      failReason ?? "linkjoy_caring_dig_midnight_limbic".tr,
                      style: LinkjoyMarshaTriplet.bodySecondary,
                    ),
                  ),

                SizedBox(height: Platform.isIOS ? 60.w : 120.w),
                if (success)
                  LinkjoyEllen.circleText(
                    "linkjoy_caring_conceive".tr,
                    () {
                      LINKJOY.offNamed(
                        LinkjoyGet.LinkjoyFigureSaverVentDivision,
                      );
                    },
                    size: LinkjoyBookshelf.lg,
                    fixedWidth: double.infinity,
                  ),

                if (!success && retryable)
                  LinkjoyEllen.circleIconText(
                    Icons.update,
                    "linkjoy_caring_re_veto".tr,
                    () {
                      Get.back();
                      LinkjoyGet.linkjoyFoolishlyGoGel();
                    },
                    size: LinkjoyBookshelf.xl,
                    fixedWidth: double.infinity,
                  ),

                LinkjoyFeynman.v32,
                if (!success &&
                    LINKJOY.linkjoyElope.linkjoyCoyoteCaptainDestine() > 3)
                  LinkjoyPondAssume.circleIconText(
                    Icons.headset_mic_outlined,
                    "linkjoy_caring_canada_sailor".tr,
                    () {
                      LinkjoyAncestorDivisionJeffriesUp.linkjoyCanadaSailor(
                        isOffPage: true,
                      );
                    },
                    size: LinkjoyBookshelf.lg,
                    fixedWidth: double.infinity,
                  ),
              ],
            ),
          ),
          PositionedDirectional(
            start: LinkjoyGarage.s20,
            top: LinkjoyGarage.s40,
            child: LinkjoyFridgeLightbulb.linkjoyAssumeBaywatch(() {
              Get.back();
            }),
          ),
        ],
      ),
    );
  }

  Widget _linkjoyPlaceboNarrate() {
    Color color;
    IconData icon;
    if (success) {
      color = LinkjoyAve.success;
      icon = Icons.check;
    } else {
      color = LinkjoyAve.disabled;
      icon = Icons.face;
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                color.withValues(alpha: 0.3),
                color.withValues(alpha: 0.1),
                Colors.transparent,
              ],
              stops: const [0.3, 0.6, 1.0],
            ),
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [color.withValues(alpha: 0.8), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: color.withValues(alpha: 0.5),
                blurRadius: 30,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Icon(icon, color: LinkjoyAve.bgDark, size: 60),
        ),
      ],
    );
  }
}
