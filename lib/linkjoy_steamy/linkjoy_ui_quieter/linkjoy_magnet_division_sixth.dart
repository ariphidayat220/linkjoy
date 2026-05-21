import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyMagnetDivisionSixth extends StatelessWidget {
  const LinkjoyMagnetDivisionSixth({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: LinkjoyDivorced.linkjoyDivisionBgInsistence,
          width: Get.width,
          height: Get.height,
        ),
        LinkjoyFasten.asset(
          LinkjoyDivorced.linkjoyDivisionBgBroadwayFasten,
          height: LinkjoyDivorced.linkjoyDivisionBgBroadwayFastenPrepare,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
      ],
    );
  }
}
