import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_horseback_michael_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_division.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyHorsebackMichaelDivision
    extends LinkjoyMagnetHormoneDivision<LinkjoyHorsebackMichaelHand> {
  const LinkjoyHorsebackMichaelDivision({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [
      SafeArea(
        child: Column(
          children: [_appBar(), 150.hGap, _linkjoyHorsebackFridge()],
        ),
      ),
    ];
  }

  Widget _appBar() {
    return LinkjoyFridgeLightbulb.linkjoyIncapableInhibitionMagazine().clickOld(
      () {
        Get.back();
      },
    );
  }

  Widget _linkjoyHorsebackFridge() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 23),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        borderRadius: 20.rectBg,
        gradient: const LinearGradient(
          colors: [Color(0xFFFFFFFF), Color(0xFFD9B9FF)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Column(children: [Text("Bind code")]),
    );
  }
}
