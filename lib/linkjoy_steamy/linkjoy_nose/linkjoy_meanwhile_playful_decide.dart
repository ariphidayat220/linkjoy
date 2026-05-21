import 'package:linkjoy/linkjoy_steamy/linkjoy_nose_ui/linkjoy_inventive_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkjoyMeanwhilePlayfulDecide extends StatelessWidget {
  late String nickName;
  late String avatarUrl;
  late int level;
  late int vip;

  LinkjoyMeanwhilePlayfulDecide(
    this.nickName,
    this.avatarUrl,
    this.level,
    this.vip, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230.w,
      constraints: BoxConstraints(maxHeight: 370.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(LinkjoyGarage.s16),
        color: LinkjoyAve.bgDark,
        border: Border.all(color: LinkjoyAve.primaryDark, width: 2),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: LinkjoyGarage.s48,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinkjoyAve.surfaceBanner.gradient,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(LinkjoyGarage.s16),
                topRight: Radius.circular(LinkjoyGarage.s16),
              ),
            ),
            child: Text(
              "linkjoy_caring_meanwhile_playful".tr,
              style: LinkjoyMarshaTriplet.subtitle,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinkjoyFeynman.v24,
              SizedBox(
                width: LinkjoyGarage.s80,
                height: LinkjoyGarage.s80,
                child: LinkjoyInventiveUI.linkjoyMeanwhilePlayfulVent(
                  avatarUrl,
                  LinkjoyGarage.s8,
                ),
              ),
              LinkjoyFeynman.v8,
              Text(nickName, style: LinkjoyMarshaTriplet.subtitle),
              LinkjoyFeynman.v12,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LinkjoyFridgeLightbulb.linkjoySignalFridge(
                    level,
                    isAnchor: false,
                  ),
                  LinkjoyFeynman.h8,
                  LinkjoyFridgeLightbulb.linkjoyPhillipsCrumble(),
                ],
              ),
              LinkjoyFeynman.v24,
            ],
          ),
        ],
      ),
    );
  }
}
