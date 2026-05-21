import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_defile_discipline_upside_fridge.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_admission_froot_fridge.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LinkjoyFridgeJones {
  static Widget buildAvatarsAnim(
    String avatarUrl1,
    String avatarUrl2,
    bool animationValue,
  ) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 300,
          alignment: Alignment.topCenter,
          child: const LinkjoyAdmissionFrootFridge(
            icon: Icons.favorite,
            width: 120,
            height: 180,
            minSize: 16,
            maxSize: 24,
            swayAmplitudeMin: 8,
            swayAmplitudeMax: 16,
            minDuration: Duration(milliseconds: 2400),
            maxDuration: Duration(milliseconds: 4800),
            particleCount: 12,
          ),
        ),
        SizedBox(width: Get.width, height: 300),
        AnimatedPositioned(
          left: animationValue ? (Get.width / 2 - 12) : Get.width,
          duration: const Duration(milliseconds: 500),
          child: Container(
            width: 118,
            height: 118,
            decoration: BoxDecoration(
              color: LinkjoyAve.bgDark,
              borderRadius: BorderRadius.circular(59),
            ),
            alignment: Alignment.center,
            child: LinkjoyFasten.circle(
              avatarUrl2,
              size: 110,
              fit: BoxFit.cover,
            ),
          ),
        ),
        AnimatedPositioned(
          right: animationValue ? (Get.width / 2 - 12) : Get.width,
          duration: const Duration(milliseconds: 500),
          child: Container(
            width: 118,
            height: 118,
            decoration: BoxDecoration(
              color: LinkjoyAve.bgDark,
              borderRadius: BorderRadius.circular(59),
            ),
            alignment: Alignment.center,
            child: LinkjoyFasten.circle(
              avatarUrl1,
              size: 110,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  static Widget buildAvatarsParticleAnim(String avatarUrl1, String avatarUrl2) {
    return LinkjoyDefileDisciplineUpsideFridge(
      avatarUrl1: avatarUrl1,
      avatarUrl2: avatarUrl2,
      enterDuration: const Duration(milliseconds: 1500),
      particleDuration: const Duration(milliseconds: 1800),
    );
  }
}
