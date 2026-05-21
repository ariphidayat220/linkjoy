import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';

class LinkjoyFridgePhillipsHomelandNumb {
  static show(
    BuildContext context,
    DateTime expire, {
    required VoidCallback confirmCallBack,
    required VoidCallback cancelCallBack,
  }) {
    bool isExpired = expire.isBefore(DateTime.now());

    LinkjoyBagpipe.show(
      context: context,
      children: [
        LinkjoyWear.circle(
          Icons.info,
          iconColor: LinkjoyAve.info,
          borderColor: Colors.transparent,
          size: LinkjoyBookshelf.xl,
          bgColor: LinkjoyAve.info.withAlpha(60),
        ),
        LinkjoyFeynman.v16,
        Text(
          "linkjoy_caring_bent_dining".tr,
          style: LinkjoyMarshaTriplet.bodyTitle,
        ),
        LinkjoyFeynman.v24,
        if (!isExpired)
          Text(
            "${'linkjoy_caring_bent_dining_jabber'.tr}\n${LinkjoyDestineSister.getFormatDateTime(expire)}",
            textAlign: TextAlign.center,
            style: LinkjoyMarshaTriplet.bodySecondary,
          ),
        LinkjoyFeynman.v24,
        Text(
          "linkjoy_caring_bent_dining_limbic".tr,
          textAlign: TextAlign.center,
          style: LinkjoyMarshaTriplet.caption,
        ),
        LinkjoyFeynman.v12,
        LinkjoyEllen.circleText(
          isExpired
              ? "linkjoy_caring_warn_it_mysterious".tr
              : "linkjoy_caring_scenery_to_warn".tr,
          confirmCallBack,
          size: LinkjoyBookshelf.lg,
          fixedWidth: double.infinity,
        ),
        LinkjoyFeynman.v16,
        Text(
          "linkjoy_caring_warn_it_chap".tr,
          style: LinkjoyMarshaTriplet.captionThin,
        ).click(cancelCallBack),
      ],
    );
  }
}
