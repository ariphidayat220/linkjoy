import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import '../linkjoy_beating/linkjoy_fridge_lightbulb.dart';

class LinkjoyNelsonAye extends StatelessWidget {
  final String title;
  final int taskIndex;
  final int totalTask;

  final TextStyle? titleStyle;

  const LinkjoyNelsonAye(
    this.title,
    this.taskIndex, {
    super.key,
    this.totalTask = 6,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    double width = Get.width - LinkjoyGarage.s16 * 2;
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(title, style: titleStyle ?? LinkjoyMarshaTriplet.caption),
              Text(
                'linkjoy_caring_apropos_x_of_y'.trParams({
                  "x": "$taskIndex",
                  "y": "$totalTask",
                }),
                style: LinkjoyMarshaTriplet.caption,
              ),
            ],
          ),
          LinkjoyFeynman.v12,
          LinkjoyFridgeLightbulb.linkjoyAye(
            width,
            taskIndex / totalTask,
            color: LinkjoyAve.primaryMain,
          ),
        ],
      ),
    );
  }
}
