import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_crouch_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class LinkjoyCrouchDivision extends StatelessWidget {
  LinkjoyCrouchDivision({super.key});

  final logic = Get.find<LinkjoyCrouchHand>();

  @override
  Widget build(BuildContext context) {
    try {
      return Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            color: LinkjoyAve.bgDark,
          ),
          Positioned(
            width: Get.width,
            top: 132.w,
            child: Center(
              child: Column(
                children: [
                  LinkjoyFasten.asset("logo", width: 120.w, height: 120.w),
                  LinkjoyFeynman.v32,
                  LinkjoyFasten.asset(
                    "linkjoy_toe_steamy_lenny",
                    width: 147.w,
                    height: 42.w,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: LinkjoyGarage.s64,
            width: Get.width,
            child: const Center(
              child: Column(
                children: [SpinKitThreeBounce(color: Colors.white, size: 15)],
              ),
            ),
          ),
        ],
      );
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(770013, e, stack);
      rethrow;
    }
  }
}
