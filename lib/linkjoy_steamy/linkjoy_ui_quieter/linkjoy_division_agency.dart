import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_division.dart';
import 'package:flutter/material.dart';

abstract class LinkjoyDivisionAgency<T extends LinkjoyMagnetHormoneHand>
    extends LinkjoyMagnetHormoneDivision<T> {
  const LinkjoyDivisionAgency({super.key, super.tag});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [
      buildBackground(),
      Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: buildAppBar(),

        body: SafeArea(child: buildBody(context)),
      ),
    ];
  }

  Widget buildBackground() {
    return LinkjoyDivisionUI.bgSecondary;
  }

  AppBar buildAppBar();

  Widget buildBody(BuildContext context);
}
