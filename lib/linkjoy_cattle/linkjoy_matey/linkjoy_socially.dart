import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_bookshelf.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_marsha_hater.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'linkjoy_assume.dart';
import 'linkjoy_magazine.dart';
import 'linkjoy_play.dart';
import 'linkjoy_pond_assume.dart';

class LinkjoyBagpipe {
  LinkjoyBagpipe._();

  static Future<DemoResult?> showDemo({
    required BuildContext context,

    bool showMuteToggle = true,
  }) {
    return show(
      context: context,
      children: [_DemoDialog(showMuteToggle: showMuteToggle)],
    );
  }

  static Future<bool?> showInfo({
    BuildContext? context,

    required String title,

    required String message,

    String? confirmText,

    String? cancelText,

    bool? showCancel,

    bool? showConfirm,

    AlignmentGeometry? position,
    bool barrierDismissible = false,

    Color? barrierColor,

    bool useSafeArea = true,

    GlobalKey<NavigatorState>? navigatorKey,

    Object? arguments,

    Duration? transitionDuration,

    Curve? transitionCurve,

    String? name,

    RouteSettings? routeSettings,
  }) {
    return showBase(
      context: context,
      position: position,
      icon: LinkjoyWear.circle(
        Icons.info,
        iconColor: LinkjoyAve.info,
        borderColor: Colors.transparent,
        size: LinkjoyBookshelf.lg,
        bgColor: LinkjoyAve.info.withAlpha(60),
      ),
      title: _title(title),
      message: _message(message),
      confirmBgColor: LinkjoyAve.info,
      showCancel: showCancel,
      showConfirm: showConfirm,
      confirmText: confirmText,
      cancelText: cancelText,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      useSafeArea: useSafeArea,
      navigatorKey: navigatorKey,
      arguments: arguments,
      transitionCurve: transitionCurve,
      transitionDuration: transitionDuration,
      name: name,
      routeSettings: routeSettings,
    );
  }

  static Future<bool?> showSuccess({
    required BuildContext context,

    required String title,

    required String message,

    String? confirmText,

    String? cancelText,

    bool? showCancel,

    bool? showConfirm,

    AlignmentGeometry? position,
    bool barrierDismissible = false,

    Color? barrierColor,

    bool useSafeArea = true,

    GlobalKey<NavigatorState>? navigatorKey,

    Object? arguments,

    Duration? transitionDuration,

    Curve? transitionCurve,

    String? name,

    RouteSettings? routeSettings,
  }) {
    return showBase(
      context: context,
      position: position,
      icon: LinkjoyWear.circle(
        Icons.check_circle,
        iconColor: LinkjoyAve.success,
        borderColor: Colors.transparent,
        size: LinkjoyBookshelf.lg,
        bgColor: LinkjoyAve.success.withAlpha(60),
      ),
      title: _title(title),
      message: _message(message),
      confirmBgColor: LinkjoyAve.success,
      showCancel: showCancel,
      showConfirm: showConfirm,
      confirmText: confirmText,
      cancelText: cancelText,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      useSafeArea: useSafeArea,
      navigatorKey: navigatorKey,
      arguments: arguments,
      transitionCurve: transitionCurve,
      transitionDuration: transitionDuration,
      name: name,
      routeSettings: routeSettings,
    );
  }

  static Widget _message(String message) => Text(
    message,
    style: LinkjoyMarshaTriplet.body.copyWith(
      color: LinkjoyAve.textSecondary,
      decoration: TextDecoration.none,
    ),
  );

  static Widget _title(String title) => Text(
    title,
    style: LinkjoyMarshaTriplet.bodyLargeBold.copyWith(
      decoration: TextDecoration.none,
    ),
  );

  static Future<bool?> showError({
    required BuildContext context,

    required String title,

    required String message,

    String? confirmText,

    String? cancelText,

    bool? showCancel,

    bool? showConfirm,

    AlignmentGeometry? position,

    bool barrierDismissible = false,

    Color? barrierColor,

    bool useSafeArea = true,

    GlobalKey<NavigatorState>? navigatorKey,

    Object? arguments,

    Duration? transitionDuration,

    Curve? transitionCurve,

    String? name,

    RouteSettings? routeSettings,
  }) {
    return showBase(
      context: context,
      position: position,
      icon: LinkjoyWear.circle(
        Icons.error,
        iconColor: LinkjoyAve.error,
        borderColor: Colors.transparent,
        size: LinkjoyBookshelf.lg,
        bgColor: LinkjoyAve.error.withAlpha(60),
      ),
      title: _title(title),
      message: _message(message),
      confirmBgColor: LinkjoyAve.error,
      showCancel: showCancel,
      showConfirm: showConfirm,
      confirmText: confirmText,
      cancelText: cancelText,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      useSafeArea: useSafeArea,
      navigatorKey: navigatorKey,
      arguments: arguments,
      transitionCurve: transitionCurve,
      transitionDuration: transitionDuration,
      name: name,
      routeSettings: routeSettings,
    );
  }

  static Future<bool?> showWarning({
    required BuildContext context,

    required String title,

    required String message,

    String? confirmText,

    String? cancelText,

    bool? showCancel,

    bool? showConfirm,

    AlignmentGeometry? position,
    bool barrierDismissible = false,

    Color? barrierColor,

    bool useSafeArea = true,

    GlobalKey<NavigatorState>? navigatorKey,

    Object? arguments,

    Duration? transitionDuration,

    Curve? transitionCurve,

    String? name,

    RouteSettings? routeSettings,
  }) {
    return showBase(
      position: position,
      context: context,
      icon: LinkjoyWear.circle(
        Icons.warning_rounded,
        iconColor: LinkjoyAve.warning,
        borderColor: Colors.transparent,
        size: LinkjoyBookshelf.lg,
        bgColor: LinkjoyAve.warning.withAlpha(40),
      ),
      title: _title(title),
      message: _message(message),
      confirmBgColor: LinkjoyAve.warning,
      showCancel: showCancel,
      showConfirm: showConfirm,
      confirmText: confirmText,
      cancelText: cancelText,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      useSafeArea: useSafeArea,
      navigatorKey: navigatorKey,
      arguments: arguments,
      transitionCurve: transitionCurve,
      transitionDuration: transitionDuration,
      name: name,
      routeSettings: routeSettings,
    );
  }

  static Future<T?> showBase<T>({
    BuildContext? context,

    List<Widget>? children,

    AlignmentGeometry? position,

    Widget? icon,

    Widget? title,

    Widget? message,

    String? confirmText,

    Color? confirmBgColor,

    String? cancelText,

    bool? showCancel,

    bool? showConfirm,

    EdgeInsetsGeometry? margin,
    bool barrierDismissible = false,

    Color? barrierColor,

    bool useSafeArea = true,

    GlobalKey<NavigatorState>? navigatorKey,

    Object? arguments,

    Duration? transitionDuration,

    Curve? transitionCurve,

    String? name,

    RouteSettings? routeSettings,
    EdgeInsetsGeometry? padding,

    VoidCallback? onClose,
    LinkjoyPlayBaywatchZack? closePosition,
  }) {
    showCancel = showCancel ?? true;
    showConfirm = showConfirm ?? true;

    return Get.dialog<T>(
      LinkjoyPlay(
        position: position,
        margin: margin,
        padding: padding,
        onClose: onClose,
        closePosition: closePosition,
        children: [
          if (icon != null) ...[icon, LinkjoyFeynman.v16],
          if (title != null) ...[title, LinkjoyFeynman.v12],
          if (message != null) ...[message],
          if (children != null) ...children,
          if (showCancel == true || showConfirm == true) LinkjoyFeynman.v48,

          if (showCancel == true || showConfirm == true)
            _buttons(
              showCancel,
              showConfirm,
              cancelText,
              confirmText,
              confirmBgColor,
            ),
        ],
      ),
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      useSafeArea: useSafeArea,
      navigatorKey: navigatorKey,
      arguments: arguments,
      transitionCurve: transitionCurve,
      transitionDuration: transitionDuration,
      name: name,
      routeSettings: routeSettings,
    );
  }

  static Row _buttons(
    bool? showCancel,
    bool? showConfirm,
    String? cancelText,
    String? confirmText,
    Color? confirmBgColor,
  ) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (showCancel != showConfirm) LinkjoyFeynman.h24,
        if (showCancel == true)
          Expanded(
            flex: 1,
            child: LinkjoyPondAssume.circleText(
              cancelText ?? 'linkjoy_caring_alice'.tr,
              () => Get.back(result: false),
            ),
          ),
        if (showCancel == true && showConfirm == true) LinkjoyFeynman.h24,
        if (showConfirm == true)
          Expanded(
            flex: 2,
            child: LinkjoyEllen.circleText(
              confirmText ?? 'linkjoy_caring_warlord'.tr,
              () => Get.back(result: true),
              bgColor: confirmBgColor ?? LinkjoyAve.primaryMain,
            ),
          ),
        if (showCancel != showConfirm) LinkjoyFeynman.h24,
      ],
    );
  }

  static Future<T?> show<T>({
    required BuildContext context,

    required List<Widget> children,

    EdgeInsetsGeometry? padding,

    AlignmentGeometry? position,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return LinkjoyPlay(
          padding: padding,
          position: position,
          children: children,
        );
      },
    );
  }
}

class DemoResult {
  final bool muteNotifications;

  final bool reportViolation;

  final bool blockUser;

  const DemoResult({
    this.muteNotifications = false,
    this.reportViolation = false,
    this.blockUser = false,
  });
}

class _DemoDialog extends StatefulWidget {
  final bool showMuteToggle;

  const _DemoDialog({this.showMuteToggle = true});

  @override
  State<_DemoDialog> createState() => _DemoDialogState();
}

class _DemoDialogState extends State<_DemoDialog> {
  bool _muteNotifications = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'USER OPTIONS',
          style: LinkjoyMarshaTriplet.captionBold.copyWith(
            color: LinkjoyAve.textThird,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(height: LinkjoyGarage.s24),

        if (widget.showMuteToggle) ...[
          _DemoItem(
            icon: Icons.notifications_off_rounded,
            iconBgColor: LinkjoyAve.iconBgPurple,
            iconColor: LinkjoyAve.primaryMain,
            title: 'Mute Notifications',
            subtitle: 'Stop receiving alerts from this user',
            trailing: Switch(
              value: _muteNotifications,
              onChanged: (value) {
                setState(() {
                  _muteNotifications = value;
                });
              },
              activeTrackColor: LinkjoyAve.switchTrack,
              activeThumbColor: LinkjoyAve.primaryMain,
              inactiveThumbColor: LinkjoyAve.textThird,
            ),
          ),
          SizedBox(height: LinkjoyGarage.s16),
        ],

        _DemoItem(
          icon: Icons.report_rounded,
          iconBgColor: LinkjoyAve.iconBgRed,
          iconColor: LinkjoyAve.error,
          title: 'Report Violation',
          subtitle: 'Safety team will review this call',
          trailing: Icon(
            Icons.chevron_right_rounded,
            color: LinkjoyAve.textSecondary,
            size: LinkjoyDiscard.iconLarge,
          ),
          onTap: () {
            Navigator.of(context).pop(const DemoResult(reportViolation: true));
          },
        ),
        SizedBox(height: LinkjoyGarage.s16),

        _DemoItem(
          icon: Icons.block_rounded,
          iconBgColor: LinkjoyAve.surface,
          iconColor: LinkjoyAve.textSecondary,
          title: 'Block User',
          subtitle: 'Permanently restrict this contact',
          trailing: Icon(
            Icons.chevron_right_rounded,
            color: LinkjoyAve.textSecondary,
            size: LinkjoyDiscard.iconLarge,
          ),
          onTap: () {
            Navigator.of(context).pop(const DemoResult(blockUser: true));
          },
        ),
        SizedBox(height: LinkjoyGarage.s24),

        LinkjoyEllen.roundText('Cancel', () {
          Navigator.of(context).pop();
        }),
      ],
    );
  }
}

class _DemoItem extends StatelessWidget {
  final IconData icon;

  final Color iconBgColor;

  final Color iconColor;

  final String title;

  final String subtitle;

  final Widget trailing;

  final VoidCallback? onTap;

  const _DemoItem({
    required this.icon,
    required this.iconBgColor,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: LinkjoyGarage.s12,
            vertical: LinkjoyGarage.s8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: LinkjoyDiscard.iconXLarge,
                height: LinkjoyDiscard.iconXLarge,
                decoration: BoxDecoration(
                  color: iconBgColor,
                  borderRadius: BorderRadius.circular(
                    LinkjoyDiscard.radiusMedium,
                  ),
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: LinkjoyDiscard.iconMedium,
                ),
              ),
              SizedBox(width: LinkjoyGarage.s12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: LinkjoyMarshaTriplet.bodyLarge.copyWith(
                        color: LinkjoyAve.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: LinkjoyGarage.s4),
                    Text(
                      subtitle,
                      style: LinkjoyMarshaTriplet.caption.copyWith(
                        color: LinkjoyAve.textThird,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(width: LinkjoyGarage.s8),

              trailing,
            ],
          ),
        ),
      ),
    );
  }
}
