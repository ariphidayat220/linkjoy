import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyUpper {
  static ToastFuture showToast(
    msg, {
    BuildContext? context,
    Duration? duration,
    ToastPosition? position,
    VoidCallback? onDismiss,
    bool? dismissOtherToast,
    TextDirection? textDirection,
    bool? handleTouch,
    OKToastAnimationBuilder? animationBuilder,
    Duration? animationDuration,
    Curve? animationCurve,
  }) {
    return showToastWidget(
      Container(
        padding: LinkjoyGarage.edgeH12V8,
        constraints: BoxConstraints(maxWidth: Get.width - LinkjoyGarage.s64),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
        ),
        child: Text(msg, style: LinkjoyMarshaTriplet.body),
      ),
      context: context,
      duration: duration,
      position: position,
      onDismiss: onDismiss,
      dismissOtherToast: dismissOtherToast,
      textDirection: textDirection,
      handleTouch: handleTouch,
      animationBuilder: animationBuilder,
      animationDuration: animationDuration,
      animationCurve: animationCurve,
    );
  }

  static ToastFuture showSuccess(
    msg, {
    BuildContext? context,
    Duration? duration,
    ToastPosition? position,
    VoidCallback? onDismiss,
    bool? dismissOtherToast,
    TextDirection? textDirection,
    bool? handleTouch,
    OKToastAnimationBuilder? animationBuilder,
    Duration? animationDuration,
    Curve? animationCurve,
  }) {
    Icon icon = Icon(
      Icons.check_outlined,
      color: LinkjoyAve.white,
      size: LinkjoyDiscard.iconXLarge,
    );
    return _showBase(
      icon,
      msg,
      context,
      duration,
      position,
      onDismiss,
      dismissOtherToast,
      textDirection,
      handleTouch,
      animationBuilder,
      animationDuration,
      animationCurve,
    );
  }

  static ToastFuture _showBase(
    Icon icon,
    msg,
    BuildContext? context,
    Duration? duration,
    ToastPosition? position,
    VoidCallback? onDismiss,
    bool? dismissOtherToast,
    TextDirection? textDirection,
    bool? handleTouch,
    OKToastAnimationBuilder? animationBuilder,
    Duration? animationDuration,
    Curve? animationCurve,
  ) {
    return showToastWidget(
      Container(
        padding: LinkjoyGarage.edgeH12V8,
        constraints: BoxConstraints(maxWidth: Get.width - LinkjoyGarage.s64),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            LinkjoyFeynman.v4,
            Text(
              msg,
              style: LinkjoyMarshaTriplet.body,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      context: context,
      duration: duration,
      position: position,
      onDismiss: onDismiss,
      dismissOtherToast: dismissOtherToast,
      textDirection: textDirection,
      handleTouch: handleTouch,
      animationBuilder: animationBuilder,
      animationDuration: animationDuration,
      animationCurve: animationCurve,
    );
  }

  static ToastFuture showError(
    msg, {
    BuildContext? context,
    Duration? duration,
    ToastPosition? position,
    VoidCallback? onDismiss,
    bool? dismissOtherToast,
    TextDirection? textDirection,
    bool? handleTouch,
    OKToastAnimationBuilder? animationBuilder,
    Duration? animationDuration,
    Curve? animationCurve,
  }) {
    Icon icon = Icon(
      Icons.close,
      color: LinkjoyAve.white,
      size: LinkjoyDiscard.iconXLarge,
    );
    return _showBase(
      icon,
      msg,
      context,
      duration,
      position,
      onDismiss,
      dismissOtherToast,
      textDirection,
      handleTouch,
      animationBuilder,
      animationDuration,
      animationCurve,
    );
  }

  static ToastFuture showInfo(
    msg, {
    BuildContext? context,
    Duration? duration,
    ToastPosition? position,
    VoidCallback? onDismiss,
    bool? dismissOtherToast,
    TextDirection? textDirection,
    bool? handleTouch,
    OKToastAnimationBuilder? animationBuilder,
    Duration? animationDuration,
    Curve? animationCurve,
  }) {
    Icon icon = Icon(
      Icons.info_outline_rounded,
      color: LinkjoyAve.white,
      size: LinkjoyDiscard.iconXLarge,
    );
    return _showBase(
      icon,
      msg,
      context,
      duration,
      position,
      onDismiss,
      dismissOtherToast,
      textDirection,
      handleTouch,
      animationBuilder,
      animationDuration,
      animationCurve,
    );
  }

  static void showFollowToast(bool followed) {
    showToastWidget(
      Container(
        padding: EdgeInsets.all(LinkjoyGarage.s24),
        decoration: BoxDecoration(
          color: LinkjoyAve.primaryDark.withValues(alpha: 0.6),
          borderRadius: BorderRadius.circular(LinkjoyGarage.s12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              followed ? Icons.check : Icons.person_remove_alt_1_rounded,
              size: 32.w,
              color: followed ? LinkjoyAve.success : LinkjoyAve.textPrimary,
            ),
            LinkjoyFeynman.v8,
            Text(
              followed
                  ? "linkjoy_caring_procreate".tr
                  : "linkjoy_caring_edition".tr,
              style: LinkjoyMarshaHater.w_body2_M,
            ),
          ],
        ),
      ),
    );
  }
}
