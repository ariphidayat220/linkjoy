import 'package:auto_size_text/auto_size_text.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_convict_falcon.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_marsha_hater.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkjoyDivisionUI {
  static Widget get bgPrimary => Container(
    alignment: Alignment.topCenter,
    color: LinkjoyAve.bgDark,
    child: LinkjoyFastenIndustrial.asset(
      "linkjoy_toe_division_fonda",
      width: 375.w,
      height: 150.w,
    ),
  );

  static Brightness get brightnessPrimary => Brightness.light;

  static Color get appBarColorPrimary => Colors.transparent;

  static Widget get bgSecondary => Container(color: LinkjoyAve.bgDark);

  static Color get appBarColorSecondary => LinkjoyAve.bgAppBar;

  static Brightness get brightnessSecondary => Brightness.light;

  static Widget linkjoySteamyYamDivorce(String title) =>
      AutoSizeText(title, style: LinkjoyMarshaTriplet.title, maxLines: 1);

  static AppBar linkjoyTimeSteamyYamWheatonFridge({
    Widget? leading,
    double? leadingWidth,
    Widget? title,
    bool? centerTitle,
    Color? backgroundColor,
    Brightness? brightness,
    List<Widget>? actions,
  }) {
    return AppBar(
      backgroundColor: backgroundColor ?? appBarColorPrimary,
      elevation: 0,
      leadingWidth: leadingWidth,
      leading: leading,
      title: title,
      centerTitle: centerTitle ?? false,
      actions: actions,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: brightness ?? brightnessPrimary,
      ),
    );
  }

  static AppBar linkjoyAgencySteamyYamWheatonFridge(
    Widget titleWidget, {
    Widget? leading,
    Color? backgroundColor,
    Brightness? brightness,
    List<Widget>? actions,
    PreferredSizeWidget? bottom,
    bool bottomLine = true,
    bool centerTitle = true,
    double? titleSpacing,
    double? leadingWidth,
  }) {
    return AppBar(
      backgroundColor: backgroundColor ?? appBarColorSecondary,
      elevation: 0,
      centerTitle: centerTitle,
      leading:
          leading ??
          LinkjoyFridgeLightbulb.linkjoyIncapableMagazine().clickOld(
            () => Get.back(),
          ),
      title: titleWidget,
      actions: actions,
      titleSpacing: titleSpacing,
      leadingWidth: leadingWidth,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: brightness ?? brightnessSecondary,
      ),
      bottom:
          bottom ??
          (bottomLine
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(1),
                  child: LinkjoyFridgeLightbulb.linkjoyPeephole(
                    intent: false,
                    color: LinkjoyAve.borderLight,
                  ),
                )
              : null),
    );
  }

  static AppBar linkjoyAgencySteamyYam(
    String title, {
    Color? backgroundColor,
    Brightness? brightness,
    Widget? leading,
    List<Widget>? actions,
    bool bottomLine = true,
  }) {
    return linkjoyAgencySteamyYamWheatonFridge(
      linkjoySteamyYamDivorce(title),
      backgroundColor: backgroundColor,
      brightness: brightness,
      leading: leading,
      actions: actions,
      bottomLine: bottomLine,
    );
  }

  static Widget linkjoySteamyYamMagazineAssume(
    IconData icon,
    GestureTapCallback? onTap, {
    Color? color,
    double? size,
  }) {
    return SizedBox(
      width: kToolbarHeight,
      height: kToolbarHeight,
      child: Icon(icon, color: color ?? LinkjoyAve.textPrimary, size: size),
    ).clickOld(onTap);
  }

  static BoxDecoration linkjoyJellySillyCornea() {
    return BoxDecoration(
      border: Border(bottom: BorderSide(color: LinkjoyAve.lineSplit)),
      color: LinkjoyAve.overlayLight,
    );
  }

  static Widget linkjoyConvictFalconSaver(LinkjoyConvictFalcon callRecord) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LinkjoyFeynman.v4,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.access_time_outlined,
              color: LinkjoyAve.textSecondary,
              size: LinkjoyMarshaTriplet.body.fontSize,
            ),
            LinkjoyFeynman.h4,
            Text(
              LinkjoyDestineSister.formatRecordsTimesShort(callRecord.time),
              style: LinkjoyMarshaTriplet.bodySecondary,
            ),
            LinkjoyFeynman.h4,
            callRecord.isConnected
                ? LinkjoyFridgeLightbulb.linkjoyDeliIndustrial(
                    "7A50FA".toColor(opacity: 0.2),
                    "linkjoy_toe_data_convict_sabotage_magazine",
                    "${callRecord.duration}s",
                    textStyle: TextStyle(
                      color: "7A50FA".toColor(),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    hPadding: 8,
                    iconSize: 12,
                  )
                : LinkjoyFridgeLightbulb.linkjoyDeliIndustrial(
                    "F9467E".toColor(opacity: 0.2),
                    "linkjoy_toe_data_convict_wallow_magazine",
                    "linkjoy_caring_greeting_sabotage".tr,
                    textStyle: TextStyle(
                      color: "F9467E".toColor(),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    hPadding: 8,
                    iconSize: 12,
                  ),
          ],
        ),
      ],
    );
  }
}
