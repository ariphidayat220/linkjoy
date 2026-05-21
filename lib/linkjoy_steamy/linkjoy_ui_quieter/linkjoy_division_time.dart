import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fetus.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_division.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_fetus_magazine.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_fetus_fasten.dart';
import 'package:flutter/material.dart';

typedef LinkjoyFetusMagazineForget = Widget Function(bool selected);

abstract class LinkjoyDivisionTime<T extends LinkjoyMagnetHormoneHand>
    extends LinkjoyMagnetHormoneDivision<T> {
  const LinkjoyDivisionTime({super.key});

  LinkjoyFetusMagazineForget linkjoyFetusMagazineForget(
    LinkjoyFondnessFetus tab,
  ) {
    return (selected) {
      if (tab.icon != "") {
        return LinkjoyFetusFasten(selected: selected, asset: tab.icon);
      } else {
        return LinkjoyFetusMagazine(
          selected: selected,
          iconData: Icons.space_dashboard_rounded,
        );
      }
    };
  }

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    List<Widget> widgets = [];

    widgets.add(buildBackground());

    buildImmersiveWidgets(context)?.let((it) => widgets.addAll(it));

    buildBody(context)?.let((it) => widgets.add(SafeArea(child: it)));

    buildCover(context)?.let((it) => widgets.add(it));

    return [
      Scaffold(
        extendBodyBehindAppBar: true,
        appBar: buildAppBar(),
        body: Stack(children: widgets),
      ),
    ];
  }

  Widget buildBackground() {
    return LinkjoyDivisionUI.bgPrimary;
  }

  List<Widget>? buildImmersiveWidgets(BuildContext context) {
    return null;
  }

  AppBar? buildAppBar() {
    return null;
  }

  Widget? buildBody(BuildContext context) {
    return null;
  }

  Widget? buildCover(BuildContext context) {
    return null;
  }
}
