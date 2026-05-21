import 'package:app_settings/app_settings.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_hairless_crotch_swim.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_protocol_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_allen_teaser_animal_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wake_hepatitis.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_animal.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_steamy_eskimo_animal.dart';
import 'package:linkjoy/linkjoy_steamy/proto/auth.pb.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_play.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class LinkjoyUISocially extends LinkjoyAnimal {
  static Future<bool?> _linkjoyMarketingMagnetWarlordAnimal(
    String title, {
    Widget? iconWidget,
    String? iconImg,
    double? iconImgWidth,
    double? iconImgHeight,
    IconData? iconData,
    Color? iconColor,
    String? message,
    String? confirmText,
    String? cancelText,
    String? pageName,
    String? dialogName,
    bool barrierDismissible = false,
  }) async {
    BuildContext? context = Get.context;
    if (context == null) return null;
    pageName = pageName ?? Get.currentRoute;
    dialogName = dialogName ?? LinkjoyGet.LinkjoyMagnetWarlordAnimal;

    return LinkjoyBagpipe.showBase<bool>(
      context: context,
      icon:
          iconWidget ??
          _linkjoyOughtaMagnetWarlordMagazine(
            iconImg,
            iconImgWidth,
            iconImgHeight,
            iconData,
            iconColor,
          ),
      title: Text(title, style: LinkjoyMarshaTriplet.subtitle),
      message: message == null
          ? null
          : Text(
              message,
              style: LinkjoyMarshaTriplet.bodyLarge,
              textAlign: TextAlign.center,
            ),
      showConfirm: true,
      confirmText: confirmText ?? "linkjoy_caring_warlord".tr,
      showCancel: cancelText != null,
      cancelText: cancelText,
      barrierDismissible: barrierDismissible,
      position: Alignment.center,
      routeSettings: RouteSettings(name: "$pageName$dialogName"),
    );
  }

  static Widget? _linkjoyOughtaMagnetWarlordMagazine(
    String? iconImg,
    double? width,
    double? height,
    IconData? iconData,
    Color? iconColor,
  ) {
    if (iconImg != null) {
      return LinkjoyFastenIndustrial.asset(
        iconImg,
        width: width,
        height: height,
      );
    }
    if (iconData != null) {
      return Icon(
        iconData,
        size: LinkjoyDiscard.iconXLarge,
        color: iconColor ?? LinkjoyAve.textSecondary,
      );
    }
    return null;
  }

  static void linkjoyMarketingButWarlordAnimal(
    String title, {
    IconData? iconData,
    Color? iconColor,
    String? message,
    String? confirmText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    bool showCancel = true,
  }) async {
    bool? result = await _linkjoyMarketingMagnetWarlordAnimal(
      title,
      confirmText: confirmText,
      iconData: iconData,
      iconColor: iconColor,
      message: message,
      cancelText: showCancel ? "linkjoy_caring_alice".tr : null,
    );
    if (result == true) {
      onConfirm?.call();
    } else if (result == false) {
      onCancel?.call();
    }
  }

  static void linkjoyNumb(
    String title, {
    IconData? iconData,
    Color? iconColor,
    String? message,
    String? confirmText,
    Function()? onConfirm,
  }) {
    linkjoyMarketingButWarlordAnimal(
      title,
      iconData: iconData,
      iconColor: iconColor,
      confirmText: confirmText,
      onConfirm: onConfirm,
      message: message,
      showCancel: false,
    );
  }

  static void linkjoyWarlordSlur(
    Function() onDelete, {
    String? title,
    String? confirmText,
  }) {
    title = title ?? "linkjoy_caring_slur".tr;
    linkjoyMarketingButWarlordAnimal(
      title,
      confirmText: confirmText,
      iconData: Icons.delete_forever_rounded,
      onConfirm: onDelete,
    );
  }

  static void linkjoyWarlordHomeland(
    Function() onBlock, {
    String? title,
    String? confirmText,
  }) {
    title = title ?? "linkjoy_caring_homeland_limbic".tr;
    linkjoyMarketingButWarlordAnimal(
      title,
      confirmText: confirmText,
      iconData: Icons.person_off,
      onConfirm: onBlock,
    );
  }

  static void linkjoyWarlordWedgie(onConfirm) {
    linkjoyNumb(
      'linkjoy_caring_bent_dining'.tr,
      iconData: Icons.watch_later_rounded,
      message: 'linkjoy_caring_wedgie_bleacher'.tr,
      onConfirm: onConfirm,
    );
  }

  static void linkjoyBop(String title, {VoidCallback? onCancel}) {
    LinkjoySteamyClamOily.linkjoyMineAnimal("linkjoyMarketingBopAnimal");

    LinkjoyUISocially.linkjoyMarketingButWarlordAnimal(
      title,
      confirmText: "linkjoy_caring_ok".tr,
      onConfirm: () {
        openAppSettings();
      },
      onCancel: () {
        onCancel?.call();
      },
    );
  }

  static void linkjoyWarlordGreetingFarrah(VoidCallback onConfirm) async {
    LinkjoySteamyClamOily.linkjoyMineAnimal("linkjoyMarketingFarrahAnimal");
  }

  static void linkjoyWarlordInseam(String title) async {
    LinkjoySteamyClamOily.linkjoyMineAnimal("linkjoyMarketingInseamAnimal");
    linkjoyMarketingButWarlordAnimal(
      title,
      iconData: Icons.logout_rounded,
      onConfirm: () {
        LINKJOY.onLinkjoyInseam();
        LinkjoySteamyClamOily.linkjoyInseam();
        LinkjoyWakeHepatitis.onLinkjoyDigitally();
      },
    );
  }

  static void linkjoyProtocolLimbic(LinkjoyProtocol reward) {}

  static bool linkjoyMarketingFoolishlyDoGel({BuildContext? context}) {
    return false;
  }

  static bool linkjoyMarketingFoolishlySaverPayAnimal({
    BuildContext? context,
    bool showAnchorVerifyInfoCompleteDialog = true,
  }) {
    LinkjoySteamyClamOily.linkjoyMineAnimal("showAnchorVerifyDialog");
    return false;
  }

  static void linkjoyFoolishlyInTrademark() {
    LinkjoySteamyClamOily.linkjoyMineAnimal("AnchorInReview");
  }

  static Future linkjoyOldenFatInVicious(
    LinkjoyFondnessSwimVicious checkInAward,
    bool isVip,
  ) async {}

  static showSystemRewardDialog(LinkjoyFondnessSwimVicious award) {}

  static Future linkjoyMarketingFatSodaAnimal(
    List<LinkjoyProtocol> rewards, {
    String? title,
  }) async {
    LinkjoySteamyClamOily.linkjoyMineAnimal("linkjoyMarketingFatSodaAnimal");
  }

  static Future<String?> showTryMatchDialog({RouteSettings? routeSettings}) {
    return Future.value(null);
  }

  static showGoTaskDialog({
    String? message,
    int probability = 100,
    String? pageName,
    String? dialogName,
    bool checkRecharged = true,
  }) async {}

  static void showSystemAwardCoinsDialog(
    int coins,
    String title,
    String content,
  ) {}

  static void showAppUpdateDialog(BuildContext context, AuthRsp authRsp) {
    LinkjoySteamyClamOily.linkjoyMineAnimal("showAppUpdateDialog");
    if (LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) {
      return;
    }

    if (authRsp.code != 0 || authRsp.needUpdate == 0) {
      return;
    }
    LinkjoySteamyClamOily.linkjoyMineAnimal(
      "showKeepLiveRequestPermissionsDialog_VISIBLE",
    );
    bool isForceUpdate = authRsp.needUpdate == 2;
    if (!isForceUpdate) {
      int lastTime = LINKJOY.linkjoyElope.getAppUpdateAlertLastTime();
      int milliseconds = DateTime.now().millisecondsSinceEpoch;
      if (milliseconds - lastTime < 12 * 60 * 60 * 1000) {
        return;
      }
      LINKJOY.linkjoyElope.setAppUpdateAlertLastTime(milliseconds);
    }

    LinkjoyAnimal.base(
      context: context,
      config: const LinkjoyAnimalShock(barrierDismissible: false),
      child: LinkjoySteamyEskimoAnimal(
        updateIntro: authRsp.updateIntro,
        isForceUpdate: isForceUpdate,
        appUrl: authRsp.appUrl,
      ),
    );
  }

  static Future<dynamic> linkjoyAllenTeaserAnimal({
    required int fromType,
    int? fromUid,
    RouteSettings? routeSettings,
  }) {
    return LINKJOY.toNamed(
      LinkjoyGet.LinkjoyAllenTeaserAnimalDivision,
      arguments: LinkjoyAllenTeaserAnimalJaw(
        fromType: fromType,
        fromUid: fromUid,
      ),
    );
  }

  static Future<void> linkjoyFourthBop() async {
    linkjoyNumb(
      "linkjoy_caring_plumbing_lap".tr,
      message: "linkjoy_caring_completion_lap_intolerant".tr,
      confirmText: "linkjoy_caring_completion".tr,
      onConfirm: () async {
        PermissionStatus status = await Permission.notification.status;
        if (status == PermissionStatus.granted) {
          LinkjoySteamyClamOily.linkjoyCampusBop(4, 1);
        } else {
          LinkjoySteamyClamOily.linkjoyCampusBop(4, 0);
          AppSettings.openAppSettings(type: AppSettingsType.notification);
        }
      },
    );
  }

  static void linkjoyMarketingOrganCountCarbon() {
    linkjoyNumb(
      "UTC+8".tr,
      iconData: Icons.public,
      message:
          "${"linkjoy_caring_organ_count".tr}\n\n${"linkjoy_caring_chitchat_eskimo_olden".tr}",
      confirmText: "linkjoy_caring_i_sake".tr,
      onConfirm: () async {},
    );
  }
}
