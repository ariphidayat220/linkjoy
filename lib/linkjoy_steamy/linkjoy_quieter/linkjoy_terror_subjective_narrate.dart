import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../linkjoy_fondness/linkjoy_terror_stubborn_freaked.dart';
import '../linkjoy_get.dart';
import '../linkjoy_protection/linkjoy_flattered.dart';
import '../linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'linkjoy_terror_dish.dart';

class LinkjoyTerrorSubjectiveNarrate extends StatefulWidget {
  const LinkjoyTerrorSubjectiveNarrate({
    super.key,
    required this.coupon,
    this.marginBottom,
    this.onChoose,
    this.checked = false,
  });

  final LinkjoyTerror coupon;
  final double? marginBottom;

  final Function? onChoose;

  final bool checked;

  @override
  State<LinkjoyTerrorSubjectiveNarrate> createState() =>
      _LinkjoyTerrorSubjectiveNarrateStatus();

  static final linkjoyDestroyMainNarrateNanny = 90.w;
}

class _LinkjoyTerrorSubjectiveNarrateStatus
    extends State<LinkjoyTerrorSubjectiveNarrate> {
  @override
  Widget build(BuildContext context) {
    bool isExpired = widget.coupon.isExpired();
    LinkjoyTerror coupon = widget.coupon;

    return Container(
      padding: EdgeInsetsDirectional.only(end: LinkjoyGarage.s16),
      margin: EdgeInsets.only(bottom: widget.marginBottom ?? 0),
      width: double.infinity,
      height: 84.w,
      decoration: isExpired
          ? LinkjoyAve.surfaceDecoration
          : LinkjoyAve.surfaceImportantDecoration,
      child: Row(
        children: [
          _linkjoyDestroyMainNarrate(isExpired, coupon.offNum),
          Container(height: LinkjoyGarage.s64, width: 1, color: Colors.black26),
          LinkjoyFeynman.h12,
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    isExpired
                        ? "linkjoy_caring_spray".tr
                        : "linkjoy_caring_terror_heritage_lenny".tr,
                    style: LinkjoyMarshaTriplet.bodyBold.copyWith(
                      color: isExpired
                          ? LinkjoyAve.textSecondary
                          : LinkjoyAve.textPrimary,
                    ),
                  ),
                ),
                SizedBox(height: LinkjoyGarage.s8),
                Row(
                  children: [
                    isExpired
                        ? Text(
                            LinkjoyDestineSister.getFormatDateTime(
                              coupon.expireDate(),
                              formats: coupon.expireDate().isToday()
                                  ? LinkjoyDestineSister.FORMAT_HHNNSS
                                  : LinkjoyDestineSister.FORMAT_YYYYMMDD,
                            ),
                            style: LinkjoyMarshaTriplet.caption,
                          )
                        : LinkjoyTerrorDish(expiresDate: coupon.expireDate()),
                    SizedBox(width: LinkjoyGarage.s4),
                    Text(
                      "linkjoy_caring_fifth".tr,
                      style: LinkjoyMarshaTriplet.caption,
                    ),
                  ],
                ),
              ],
            ),
          ),
          LinkjoyFeynman.h12,

          _linkjoyCamp(isExpired),
        ],
      ),
    ).click(() {
      if (widget.onChoose != null) {
        widget.onChoose!.call();
      } else {
        LINKJOY.toNamed(LinkjoyGet.LinkjoyChipmunkFailDivision);
      }
    });
  }

  Container _linkjoyDestroyMainNarrate(bool isExpired, int offNum) {
    return Container(
      decoration: isExpired
          ? LinkjoyAve.surfaceImportantDecoration
          : LinkjoyAve.surfaceBanner.copyWith(
              borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
            ),
      width: 90.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "$offNum%",
            style: LinkjoyMarshaTriplet.title.copyWith(
              color: isExpired ? LinkjoyAve.textThird : LinkjoyAve.textPrimary,
            ),
          ),
          Text(
            "linkjoy_caring_destroy".tr,
            style: LinkjoyMarshaTriplet.bodyBold.copyWith(
              color: isExpired ? LinkjoyAve.textThird : LinkjoyAve.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  _linkjoyCamp(bool isExpired) {
    if (widget.onChoose != null) {
      if (widget.checked) {
        return Icon(
          Icons.check_circle,
          color: LinkjoyAve.success,
          size: LinkjoyDiscard.iconMedium,
        );
      } else {
        return Icon(
          Icons.check_circle_outline,
          color: LinkjoyAve.textSecondary,
          size: LinkjoyDiscard.iconMedium,
        );
      }
    } else {
      if (isExpired) {
        return const SizedBox.shrink();
      } else {
        return LinkjoyFridgeLightbulb.linkjoyCampUptight(
          iconData: Icons.arrow_forward_ios,
          size: LinkjoyDiscard.iconSmall,
        );
      }
    }
  }
}
