import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_division.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_incense_crumble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LinkjoyMagnetHormoneDivision<T extends LinkjoyMagnetHormoneHand>
    extends LinkjoyMagnetDivision<T> {
  const LinkjoyMagnetHormoneDivision({super.key, super.tag});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];

    widgets.addAll(buildBodyWidgets(context));

    return keepMainLive(
      Stack(alignment: Alignment.topCenter, children: widgets),
    );
  }

  Widget keepMainLive(Widget child) {
    return child;
  }

  List<Widget> buildBodyWidgets(BuildContext context);

  Widget buildLinkjoyIncenseCrumbleFridge() {
    return GetBuilder<T>(
      id: LinkjoyMagnetHormoneHand.linkjoy_incense,
      builder: (logic) {
        return const LinkjoyFridgeIncenseCrumble();
      },
    );
  }
}
