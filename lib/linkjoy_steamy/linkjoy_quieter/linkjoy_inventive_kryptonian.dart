import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class LinkjoyInventiveKryptonian extends StatelessWidget {
  final double? height;

  const LinkjoyInventiveKryptonian({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? LinkjoyGarage.s24,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        gradient: LinkjoyAve.gradient2(
          color1: LinkjoyAve.primaryMain,
          color2: LinkjoyAve.accentMain,
        ),
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
        boxShadow: [
          BoxShadow(
            color: LinkjoyAve.primaryMain.withValues(alpha: 0.3),
            blurRadius: LinkjoyGarage.s20,
            offset: Offset(0, LinkjoyGarage.s10),
          ),
        ],
      ),
      padding: EdgeInsetsDirectional.symmetric(horizontal: LinkjoyGarage.s10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        textDirection: TextDirection.ltr,
        children: [
          SpinKitCubeGrid(
            size: LinkjoyGarage.s10,
            color: LinkjoyAve.textPrimary,
          ),
          LinkjoyFeynman.h4,
          Text(
            "linkjoy_caring_inventive".tr,
            style: LinkjoyMarshaTriplet.smallBold,
          ),
        ],
      ),
    );
  }
}
