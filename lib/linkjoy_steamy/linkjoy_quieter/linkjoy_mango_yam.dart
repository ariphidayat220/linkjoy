import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_io_sister.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyMangoYam extends StatelessWidget {
  const LinkjoyMangoYam({
    super.key,
    required this.leading,
    this.middle,
    this.action,
    this.color,
  });

  final Widget? leading;
  final Widget? middle;
  final Widget? action;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: LinkjoyDivorced.linkjoyDivisionBroadwayYamPrepare,
      margin: const EdgeInsets.symmetric(
        horizontal: LinkjoyDivorced.linkjoyDivisionBroadwayYamFunctional,
      ),
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            constraints: const BoxConstraints(
              minWidth: LinkjoyDivorced.linkjoyDivisionBroadwayYamPrepare,
            ),
            height: LinkjoyDivorced.linkjoyDivisionBroadwayYamPrepare,
            alignment: Alignment.center,
            child: InkWell(
              onTap: () => Get.back(),
              child: Transform.rotate(
                angle: LinkjoyIOSister.isARLanguage() ? pi : 0,
                child: leading,
              ),
            ),
          ),
          Container(
            height: LinkjoyDivorced.linkjoyDivisionBroadwayYamPrepare,
            margin: const EdgeInsets.symmetric(
              horizontal: LinkjoyDivorced.linkjoyDivisionBroadwayYamFunctional,
            ),
            alignment: Alignment.center,
            child: middle,
          ),
          Container(
            constraints: const BoxConstraints(
              minWidth: LinkjoyDivorced.linkjoyDivisionBroadwayYamPrepare,
            ),
            height: LinkjoyDivorced.linkjoyDivisionBroadwayYamPrepare,
            alignment: Alignment.center,
            child: action,
          ),
        ],
      ),
    );
  }
}
