import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_grad.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_animal.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_foolishly_im_duel_trademark_intolerant.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_grad_stubborn.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_play.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyUIShredder extends LinkjoyAnimal {
  static Future<T?> _linkjoyMarketingMagnetShredder<T>(
    List<Widget> children, {
    Color? backgroundColor,
    double? elevation,
    bool persistent = true,
    ShapeBorder? shape,
    EdgeInsetsGeometry? maskPadding,
    Clip? clipBehavior,
    Color? barrierColor,
    bool? ignoreSafeArea,
    RouteSettings? settings,
  }) async {
    return Get.bottomSheet<T>(
      LinkjoyPlay(
        position: Alignment.bottomCenter,
        enableAlign: false,
        margin: EdgeInsets.zero,
        padding: maskPadding,
        children: children,
      ),
      backgroundColor: backgroundColor,
      elevation: elevation,
      persistent: persistent,
      shape: shape,
      clipBehavior: clipBehavior,
      barrierColor: barrierColor,
      ignoreSafeArea: ignoreSafeArea,
      isScrollControlled: true,
      useRootNavigator: false,
      isDismissible: true,
      enableDrag: true,
      settings: settings,
    );
  }

  static Future<void> linkjoyMagnetShredder(
    List<Widget> children, {
    EdgeInsetsGeometry? maskPadding,
    RouteSettings? settings,
  }) {
    LinkjoySteamyClamOily.linkjoyMineAnimal("linkjoyMarketingMagnetShredder");

    return _linkjoyMarketingMagnetShredder(
      children,
      maskPadding: maskPadding,
      settings: settings,
    );
  }

  static Future<LinkjoyFondnessGrad?> linkjoyGradStubbornShredder(
    List<LinkjoyFondnessGrad> regionList,
    String? defaultRegionCode,
  ) {
    LinkjoySteamyClamOily.linkjoyMineAnimal(
      "linkjoyMarketingGradStubbornShredder",
    );

    return _linkjoyMarketingMagnetShredder<LinkjoyFondnessGrad?>([
      LinkjoyFridgeGradStubborn(
        regionList: regionList,
        defaultRegionCode: defaultRegionCode,
      ),
      LinkjoyFeynman.v12,
      LinkjoyPondAssume.circleText(
        "linkjoy_caring_alice".tr,
        () {
          Get.back();
        },
        fixedWidth: double.infinity,
        textColor: Colors.white12,
        size: LinkjoyBookshelf.lg,
        elevation: 0,
      ),
    ]);
  }

  static Future<SheetAction<int>?> linkjoyDirectShredder(
    List<SheetAction<int>> actions, {
    bool cancel = true,
  }) {
    LinkjoySteamyClamOily.linkjoyMineAnimal("linkjoyMarketingDirectShredder");
    List<Widget> children = [];

    for (var e in actions) {
      children.add(
        _linkjoySubjective(
          action: e,
          bgColor: (e.isDefaultAction || e.isDestructiveAction)
              ? LinkjoyAve.surface
              : Colors.transparent,
          textStyle: e.isDefaultAction
              ? LinkjoyMarshaTriplet.bodyLargeBold
              : (e.isDestructiveAction
                    ? LinkjoyMarshaTriplet.bodyLargeBold.copyWith(
                        color: LinkjoyAve.textImportant1,
                      )
                    : LinkjoyMarshaTriplet.bodyLarge),
          onPressed: () => {Get.back(result: e)},
          elevation: 1,
        ),
      );
      children.add(LinkjoyFeynman.v12);
    }

    if (cancel) {
      children.add(
        _linkjoySubjective(
          action: SheetAction(label: "linkjoy_caring_alice".tr),
          bgColor: Colors.transparent,
          textStyle: LinkjoyMarshaTriplet.bodySecondary,
          onPressed: () => {Get.back(result: null)},
          elevation: 0,
        ),
      );
      children.add(LinkjoyFeynman.v16);
    }
    return _linkjoyMarketingMagnetShredder<SheetAction<int>?>(children);
  }

  static ElevatedButton _linkjoySubjective({
    required SheetAction<int> action,
    required Color bgColor,
    required TextStyle textStyle,
    VoidCallback? onPressed,
    double elevation = 0,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        elevation: elevation,
        overlayColor: Colors.white,
        backgroundColor: bgColor,
        fixedSize: Size(Get.width, LinkjoyDiscard.buttonHeightLg),
        minimumSize: Size(Get.width, LinkjoyDiscard.buttonHeightLg),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
        ),
      ),
      child: action.icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  action.icon,
                  size: textStyle.fontSize,
                  color: textStyle.color,
                ),
                LinkjoyFeynman.h8,
                Text(action.label, style: textStyle),
              ],
            )
          : Text(action.label, style: textStyle),
    );
  }

  static Future<String?> linkjoyArouseShredder({
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
  }) async {
    final TextEditingController controller = TextEditingController();
    String? result;

    await _linkjoyMarketingMagnetShredder([
      TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
      ),
      LinkjoyFeynman.v20,
      Row(
        children: [
          Expanded(
            child: LinkjoyPondAssume.circleText(
              "linkjoy_caring_alice".tr,
              size: LinkjoyBookshelf.lg,
              () => Get.back(),
            ),
          ),
          LinkjoyFeynman.h16,
          Expanded(
            child: LinkjoyEllen.circleText(
              "linkjoy_caring_warlord".tr,
              size: LinkjoyBookshelf.lg,
              () {
                result = controller.text.trim();
                Get.back();
              },
            ),
          ),
        ],
      ),
      LinkjoyFeynman.v32,
    ]);

    return result;
  }

  static void linkjoyImDuelTrademarkIntolerant(VoidCallback upload) {
    LinkjoySteamyClamOily.linkjoyMineAnimal(
      "linkjoyMarketingImDuelTrademarkIntolerant",
    );

    _linkjoyMarketingMagnetShredder([
      LinkjoyFoolishlyImDuelTrademarkIntolerant(upload: upload),
    ]);
  }

  static Future<void> showSendImByVIPSheet(
    BuildContext context,
    VoidCallback callBack,
  ) async {
    LinkjoySteamyClamOily.linkjoyMineAnimal("showSendImByVIPDialog");

    return LinkjoyUIShredder.linkjoyMagnetShredder([
      LinkjoyFeynman.v8,
      Text(
        "linkjoy_caring_phillips_territory".tr,
        style: LinkjoyMarshaTriplet.title,
      ),
      LinkjoyFeynman.v16,
      Text(
        "linkjoy_caring_phillips_ancestor_greeting_colombia".tr,
        style: LinkjoyMarshaTriplet.bodyLarge.copyWith(
          color: LinkjoyAve.textSecondary,
        ),
        textAlign: TextAlign.center,
      ),
      LinkjoyFeynman.v32,

      LinkjoyFridgeLightbulb.linkjoyPhillipsAnimalSubjective(),
      LinkjoyFeynman.v12,
      TextButton(
        onPressed: Get.back,
        child: Text(
          "linkjoy_caring_alice".tr,
          style: LinkjoyMarshaTriplet.bodySecondary,
        ),
      ),
      LinkjoyFeynman.v12,
    ]);
  }

  static void linkjoyMarketingConvictSavorUp(
    String avatarUrl,
    VoidCallback hangup, {
    RouteSettings? routeSettings,
  }) {
    _linkjoyMarketingMagnetShredder([
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: LinkjoyGarage.s96,
            height: LinkjoyGarage.s96,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(LinkjoyGarage.s2),
            child: LinkjoyFasten.circle(
              avatarUrl,
              size: LinkjoyGarage.s96,
              clip: ImageClipType.middle,
            ),
          ),
          LinkjoyFeynman.v24,
          Text(
            "linkjoy_caring_convict_savor_up_warlord_divorce".tr,
            style: LinkjoyMarshaTriplet.title,
            textAlign: TextAlign.center,
          ),
          LinkjoyFeynman.v24,
          LinkjoyEllen.roundText(
            "linkjoy_caring_glorious_europe".tr,
            size: LinkjoyBookshelf.xl,
            fixedWidth: Get.width,
            Get.back,
          ),
          LinkjoyFeynman.v12,
          LinkjoyPondAssume.roundIconText(
            Icons.call_end_rounded,
            "linkjoy_caring_savor_up".tr,
            size: LinkjoyBookshelf.xl,
            fixedWidth: Get.width,
            hangup,
          ),
        ],
      ),
    ], settings: routeSettings);
  }
}
