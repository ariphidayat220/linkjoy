import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_hilarious.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_humidity.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_protocol_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_perk.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wail_degree_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_shredder.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_headline.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_therapist_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_io_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_unborn_silliness_hair.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_unborn_chicken_hair.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';
import '../linkjoy_nose/linkjoy_phillips_stubborn_jaw.dart';
import 'linkjoy_hail.dart';

abstract class LinkjoyFridgeLightbulb {
  static AppBar linkjoySteamyYam(Widget? title, {Widget? leading}) {
    return AppBar(
      leading: leading,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: title,
    );
  }

  static Widget linkjoyAlikeNannyMarsha(
    Text text,
    double maxWidth, {
    double? minWidth,
  }) {
    return Container(
      constraints: BoxConstraints(minWidth: minWidth ?? 0, maxWidth: maxWidth),
      child: text,
    );
  }

  static Stack strokeText(
    String text,
    double maxWidth, {
    Color fontColor = Colors.white,
    Color strokeColor = Colors.white,
    double fontSize = AppDimen.font_small,
    int maxLines = 1,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) {
    return Stack(
      children: [
        LinkjoyFridgeLightbulb.linkjoyAlikeNannyMarsha(
          Text(
            text,
            maxLines: maxLines,
            overflow: overflow,
            style: TextStyle(
              fontSize: fontSize,
              fontFamily: AppText.fontFamily,
              decoration: TextDecoration.none,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 2
                ..color = strokeColor,
            ),
          ),
          maxWidth,
        ),
        LinkjoyFridgeLightbulb.linkjoyAlikeNannyMarsha(
          Text(
            text,
            maxLines: maxLines,
            overflow: overflow,
            style: TextStyle(
              fontSize: fontSize,
              color: fontColor,
              fontFamily: AppText.fontFamily,
              decoration: TextDecoration.none,
            ),
          ),
          maxWidth,
        ),
      ],
    );
  }

  static Widget linkjoyAndrewSonVisaCrumble(int gender, int age) {
    return LinkjoyUiHeadline.genderAgeTag(gender: gender, age: age);
  }

  static Row linkjoyUnbornSaverHilarious(LinkjoyUnborn user) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: user.getUserCountry() != null,
          child: LinkjoyFasten.circle(
            user.getUserCountry()?.flag ?? "",
            size: 12,
            fit: BoxFit.cover,
            clip: ImageClipType.origin,
          ),
        ),
        LinkjoyFeynman.h2,
        Visibility(
          visible: user.getUserCountry() != null,
          child: LinkjoyFridgeLightbulb.linkjoyAlikeNannyMarsha(
            Text(
              user.getUserCountry()?.code ?? "",
              style: LinkjoyMarshaGreen.white12,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            160,
          ),
        ),
      ],
    );
  }

  static Header linkjoyVulcanTail() {
    return const BezierHeader(
      triggerOffset: 60,
      backgroundColor: Colors.transparent,
      onlySpin: true,
      spinWidget: SpinKitFadingCircle(color: Color(0x99999999), size: 40),
    );
  }

  static Header linkjoyVulcanOrganismTail({
    Color? txtColor,
    IndicatorPosition position = IndicatorPosition.locator,
  }) {
    return ClassicHeader(
      clamping: false,
      iconTheme: txtColor != null
          ? IconThemeData(color: txtColor)
          : const IconThemeData(color: LinkjoyAve.textThird),
      textStyle: txtColor != null
          ? TextStyle(color: txtColor)
          : const TextStyle(color: LinkjoyAve.textThird),
      position: position,
      mainAxisAlignment: MainAxisAlignment.end,
      dragText: 'linkjoy_caring_mamma_vulcan_mamma'.tr,
      armedText: 'linkjoy_caring_mamma_vulcan_chanel'.tr,
      readyText: 'linkjoy_caring_cinnamon'.tr,
      processingText: 'linkjoy_caring_cinnamon'.tr,
      processedText: 'linkjoy_caring_soda'.tr,
      noMoreText: 'linkjoy_caring_mamma_vulcan_entice'.tr,
      failedText: 'linkjoy_caring_happily_assemble'.tr,
      showMessage: false,
    );
  }

  static Footer linkjoyVulcanTenth() {
    return const BezierFooter(
      triggerOffset: 40,
      backgroundColor: Colors.transparent,
      onlySpin: true,
      spinWidget: SpinKitFadingCircle(color: LinkjoyAve.textThird, size: 40),
    );
  }

  static Footer linkjoyVulcanOrganismTenth({
    Color? txtColor,
    IndicatorPosition position = IndicatorPosition.locator,
  }) {
    return ClassicFooter(
      iconTheme: txtColor != null
          ? IconThemeData(color: txtColor)
          : const IconThemeData(color: LinkjoyAve.textThird),
      textStyle: txtColor != null
          ? TextStyle(color: txtColor)
          : const TextStyle(color: LinkjoyAve.textThird),
      position: position,
      dragText: 'linkjoy_caring_mamma_happily_mamma'.tr,
      armedText: 'linkjoy_caring_mamma_vulcan_chanel'.tr,
      readyText: 'linkjoy_caring_wrench'.tr,
      processingText: 'linkjoy_caring_wrench'.tr,
      processedText: 'linkjoy_caring_soda'.tr,
      noMoreText: 'linkjoy_caring_mamma_vulcan_entice'.tr,
      failedText: 'linkjoy_caring_happily_assemble'.tr,
      showMessage: false,
    );
  }

  static Widget linkjoyIncapableMagazine() {
    return const Icon(Icons.arrow_back_ios, color: LinkjoyAve.textPrimary);
  }

  static Widget linkjoyIncapableInhibitionMagazine() {
    return const Icon(Icons.arrow_back_ios, color: LinkjoyAve.textPrimary);
  }

  static Widget linkjoySillinessMagazine(
    IconData icon,
    VoidCallback onTap, {
    Color color = Colors.white,
  }) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(icon, color: color, size: LinkjoyDiscard.iconMedium),
    );
  }

  static bool linkjoyFatFoolishlyGeneratorScratcherFlammable(
    int requiredLevel,
  ) {
    return false;
  }

  static void linkjoyAIVAnimal(String fileName, String title, String iconText) {
    if (Get.isDialogOpen == true) return;

    Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              constraints: const BoxConstraints(minHeight: 188),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: LinkjoyCondensateSister.black_60p,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinkjoyFasten.asset(fileName, width: 40, height: 40),
                  const SizedBox(height: 8),
                  Text(
                    title.tr,
                    style: LinkjoyMarshaGreen.linkjoy_marsha_c1_bros,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: 180,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    alignment: Alignment.center,
                    child: Text(iconText.tr, style: LinkjoyMarshaGreen.white14),
                  ).clickOld(() => Get.back(), borderRadius: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      barrierColor: Colors.transparent,
    );
  }

  static void linkjoyMarketingPostFairness(
    Function(String weight) callback, {
    int defaultWeight = 65,
  }) {
    int initialIndex = defaultWeight - 30;

    LinkjoyUIShredder.linkjoyMagnetShredder([
      SizedBox(
        height: 180,
        child: CupertinoPicker(
          scrollController: FixedExtentScrollController(
            initialItem: initialIndex,
          ),
          itemExtent: LinkjoyDiscard.buttonHeightMd,
          onSelectedItemChanged: (int index) {
            defaultWeight = index + 30;
          },
          children: List<Widget>.generate(41, (int index) {
            return Center(
              child: Text(
                "${index + 30}"
                "${'linkjoy_caring_kg'.tr}",
                style: LinkjoyMarshaTriplet.body,
              ),
            );
          }),
        ),
      ),
      LinkjoyEllen.roundText("linkjoy_caring_morgan".tr, () {
        callback("$defaultWeight");
        Get.back();
      }, fixedWidth: double.infinity),
    ]);
  }

  static void linkjoyMarketingPrepareFairness(
    Function(String weight) callback, {
    int defaultHeight = 170,
    double? bottom,
  }) {
    int initialIndex = defaultHeight - 150;

    LinkjoyUIShredder.linkjoyMagnetShredder([
      SizedBox(
        height: 180,
        child: CupertinoPicker(
          scrollController: FixedExtentScrollController(
            initialItem: initialIndex,
          ),
          itemExtent: LinkjoyDiscard.buttonHeightMd,
          onSelectedItemChanged: (int index) {
            defaultHeight = index + 150;
          },
          children: List<Widget>.generate(51, (int index) {
            return Center(
              child: Text(
                "${index + 150}"
                "${'linkjoy_caring_cm'.tr}",
                style: LinkjoyMarshaTriplet.body,
              ),
            );
          }),
        ),
      ),
      LinkjoyEllen.roundText("linkjoy_caring_morgan".tr, () {
        callback("$defaultHeight");
        Get.back();
      }, fixedWidth: double.infinity),
    ]);
  }

  static Widget linkjoyDeliAssume(Function(String date) callback) {
    return ElevatedButton(
      onPressed: () {
        Get.back();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: LinkjoyCondensateSister.white,
        minimumSize: const Size(180, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text(
        "linkjoy_caring_morgan".tr,
        style: const TextStyle(
          color: LinkjoyCondensateSister.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static Widget linkjoyHumidityKudos(
    String title,
    String icon,
    List<String> infos,
  ) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                LinkjoyFasten.asset(icon, width: 16, height: 16),
                LinkjoyFeynman.h8,
                Text(title, style: LinkjoyMarshaGreen.TextWhite_50p_14),
              ],
            ),
            20.wGap,
            Container(
              width: 200,
              height: 24,
              alignment: Alignment.centerRight,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(infos.length, (index) {
                    return Container(
                      height: 24,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      margin: const EdgeInsets.only(right: 4),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: LinkjoyCondensateSister.white_20p,
                      ),
                      child: Center(
                        child: Text(
                          infos[index],
                          style: LinkjoyMarshaGreen.TextWhite_12,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
        12.hGap,
        LinkjoyFeynman.lineH1p2White_10p,
      ],
    );
  }

  static Widget linkjoySaverKudos(
    String title,
    String icon,
    List<String> infos,
  ) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  LinkjoyFasten.asset(icon, width: 16, height: 16),
                  LinkjoyFeynman.h8,
                  Text(title, style: LinkjoyMarshaGreen.TextWhite_50p_14),
                ],
              ),
              20.wGap,
              Row(
                children: List.generate(infos.length, (index) {
                  return Container(
                    height: 24,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    margin: const EdgeInsets.only(right: 4),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: LinkjoyCondensateSister.white_20p,
                    ),
                    child: Center(
                      child: Text(
                        infos[index],
                        style: LinkjoyMarshaGreen.TextWhite_12,
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
          12.hGap,
          LinkjoyFeynman.lineH1p2White_10p,
        ],
      ),
    );
  }

  static Widget linkjoyNoFinancialMagazine({
    required bool error,
    Function? function,
    EdgeInsets? padding,
    bool showIcon = true,
  }) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(top: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showIcon)
            error
                ? LinkjoyWear.circle(
                    Icons.warning,
                    iconColor: LinkjoyAve.warning.withValues(alpha: 0.7),
                    bgColor: LinkjoyAve.surface,
                    size: LinkjoyBookshelf.lg,
                    borderWidth: 0,
                  ).clickOld(() => function)
                : LinkjoyWear.circle(
                    Icons.info,
                    iconColor: LinkjoyAve.textThird.withValues(alpha: 0.3),
                    bgColor: LinkjoyAve.surface,
                    size: LinkjoyBookshelf.lg,
                    borderWidth: 0,
                  ).clickOld(() => function),
          if (showIcon) LinkjoyFeynman.v20,
          Text(
            error
                ? "linkjoy_caring_happily_assemble".tr
                : "linkjoy_caring_entice_point".tr,
            style: LinkjoyMarshaTriplet.bodyThird,
          ),
        ],
      ),
    );
  }

  static Widget linkjoyEarplugVisa(
    int gender,
    int birthday, {
    double height = 24,
    double iconSize = 16,
    Color bgColor = Colors.transparent,
  }) {
    if (gender == 0) return const SizedBox.shrink();

    int age = LinkjoyDestineSister.getAge(birthday);

    bgColor = gender == 1
        ? const Color(0x4D3384FF)
        : LinkjoyCondensate.black_10p;

    return Container(
      height: height,
      padding: const EdgeInsets.only(left: 4, right: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(height / 2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LinkjoyFasten.asset(
            gender == 1
                ? "linkjoy_toe_andrew_son_unclog"
                : "linkjoy_toe_andrew_son_dolphins",
            width: iconSize,
            height: iconSize,
          ),
          if (age > 0) ...[
            LinkjoyFeynman.h4,
            Text("$age", style: LinkjoyMarshaTriplet.caption),
          ],
        ],
      ),
    );
  }

  static Widget linkjoyWantFridge() {
    return Container(
      height: LinkjoyGarage.s24,
      decoration: BoxDecoration(
        color: const Color(0x4D079B6E),
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
      ),
      padding: EdgeInsetsDirectional.only(
        start: LinkjoyGarage.s4,
        end: LinkjoyGarage.s6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.verified,
            size: LinkjoyGarage.s16,
            color: const Color(0xFF079B6E),
          ),
          LinkjoyFeynman.h4,
          Text(
            "linkjoy_caring_want".tr,
            style: LinkjoyMarshaTriplet.captionBold.copyWith(
              color: const Color(0xFF079B6E),
            ),
          ),
        ],
      ),
    );
  }

  static Widget linkjoyHilariousFridge(
    LinkjoyFondnessHilarious? country, {
    TextStyle textStyle = LinkjoyMarshaGreen.TextB2_12_Bold,
  }) {
    if (country == null) return const SizedBox.shrink();
    return linkjoyDeliBicycleKryptonian(
      LinkjoyCondensateSister.black_20p,
      country.flag,
      country.code,
      iconBorder: 2,
      textStyle: LinkjoyMarshaTriplet.caption,
    );
  }

  static Widget linkjoyDeliBicycleKryptonian(
    Color bgColor,
    String iconUrl,
    String text, {
    double height = 24,
    double iconSize = 16,
    double iconBorder = 0,
    Color borderColor = const Color(0xFFFFFFFF),
    double hPadding = 4,
    TextStyle? textStyle,
  }) {
    return linkjoyDeliFridgeKryptonian(
      bgColor,
      Container(
        width: iconSize + iconBorder,
        height: iconSize + iconBorder,
        decoration: BoxDecoration(shape: BoxShape.circle, color: borderColor),
        alignment: Alignment.center,
        child: LinkjoyFasten.circle(
          iconUrl,
          size: iconSize - iconBorder,
          clip: ImageClipType.origin,
          fit: BoxFit.cover,
        ),
      ),
      text,
      height: height,
      hPadding: hPadding,
      textStyle: textStyle,
    );
  }

  static Widget linkjoyDeliIndustrial(
    Color bgColor,
    String iconUrl,
    String text, {
    double height = 24,
    double iconSize = 16,
    double hPadding = 4,
    TextStyle? textStyle,
  }) {
    return linkjoyDeliFridgeKryptonian(
      bgColor,
      LinkjoyFasten.asset(
        iconUrl,
        width: iconSize,
        height: iconSize,
        fit: BoxFit.cover,
      ),
      text,
      height: height,
      hPadding: hPadding,
      textStyle: textStyle,
    );
  }

  static Widget linkjoyDeliFridgeKryptonian(
    Color bgColor,
    Widget widget,
    String text, {
    double height = 24,
    double hPadding = 4,
    TextStyle? textStyle,
  }) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(horizontal: hPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height / 2),
        color: bgColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          widget,
          LinkjoyFeynman.h4,
          Text(text, style: textStyle),
          LinkjoyFeynman.h4,
        ],
      ),
    );
  }

  static BoxDecoration buildGradientDecoration(
    List<Color> colors, {
    BorderRadiusGeometry? borderRadius,
    List<double> stops = const [0, 1.0],
    AlignmentGeometry begin = Alignment.topCenter,
    AlignmentGeometry end = Alignment.bottomCenter,
    List<BoxShadow>? boxShadow,
  }) {
    return BoxDecoration(
      borderRadius: borderRadius,
      gradient: LinearGradient(
        colors: colors,
        stops: stops,
        begin: begin,
        end: end,
      ),
      boxShadow: boxShadow,
    );
  }

  static Widget linkjoyHumidity(LinkjoyAncestorUnborn user) {
    String? languages = user.languages;
    if (LinkjoyGnomeSister.isEmpty(languages)) return Container();

    List<LinkjoyFondnessHumidity>? showList = LINKJOY.linkjoyShock
        .getLanguagesByIds(languages!);

    if (showList == null || showList.isEmpty) return Container();

    var list = showList.take(2).toList();

    return Row(
      children: List.generate(list.length, (index) {
        return Container(
          height: 24,
          padding: const EdgeInsets.symmetric(horizontal: 6),
          margin: const EdgeInsets.only(right: 4),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            color: "1A99FF".toColor(opacity: 0.2),
          ),
          child: Row(
            children: [
              LinkjoyFasten.asset("linkjoy_toe_prison", width: 16, height: 16),
              4.wGap,
              Text(
                list[index].name,
                style: LinkjoyMarshaGreen.style(
                  color: "4889EB".toColor(),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  static Widget linkjoySignalFridge(
    int level, {
    bool isAnchor = true,
    double? height,
  }) {
    if (level == 0 || LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()) {
      return const SizedBox.shrink();
    }

    if (isAnchor) {
      if (level < 10) {
        return LinkjoyFasten.asset(
          "linkjoy_toe_foolishly_lv_$level",
          width: height ?? LinkjoyGarage.s24,
          height: height ?? LinkjoyGarage.s24,
        );
      } else {
        return Stack(
          alignment: Alignment.center,
          children: [
            LinkjoyFasten.asset(
              "linkjoy_toe_foolishly_lv_x",
              width: height ?? LinkjoyGarage.s24,
              height: height ?? LinkjoyGarage.s24,
            ),
            Text(
              "$level",
              style: TextStyle(
                fontSize: LinkjoyGarage.s8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        );
      }
    } else {
      if (level < 10) {
        return LinkjoyFasten.asset(
          "linkjoy_toe_lv_$level",
          width: height != null ? height * 64 / 24 : LinkjoyGarage.s64,
          height: height ?? LinkjoyGarage.s24,
        );
      } else {
        return Stack(
          alignment: Alignment.centerRight,
          children: [
            LinkjoyFasten.asset(
              "linkjoy_toe_lv_x",
              width: height != null ? height * 64 / 24 : LinkjoyGarage.s64,
              height: height ?? LinkjoyGarage.s24,
            ),
            PositionedDirectional(
              end: LinkjoyGarage.s2,
              child: Text(
                "Lv.$level ",
                style: TextStyle(
                  fontSize: LinkjoyGarage.s10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      }
    }
  }

  static linkjoyAssertMediocre(
    int? count, {
    TextStyle textStyle = LinkjoyMarshaGreen.TextWhite_16_Bold,
  }) {
    return Row(
      children: [
        Text("${count ?? "0"}", style: textStyle),
        4.wGap,
        LinkjoyFridgeLightbulb.linkjoyChipmunk(LinkjoyDiscard.iconSmall),
      ],
    );
  }

  static Widget linkjoyCollieChafeSubjectiveFridge(
    List<LinkjoyProtocol>? signRewards, {
    double iconSize = 24,
    TextStyle style = LinkjoyMarshaGreen.TextB1_14_Medium,
    bool showAdd = true,
  }) {
    if (LinkjoyGnomeSister.isEmptyList(signRewards)) {
      return const SizedBox(height: 20);
    }

    List<Widget> children = [];

    for (LinkjoyProtocol task in signRewards!) {
      children.add(_linkjoyPhillipsSubjectiveDecide(task, iconSize, style));
      if (showAdd) children.add(_linkjoyNetflixFridge());
    }
    if (showAdd) children.removeLast();

    return Row(children: children);
  }

  static Widget _linkjoyPhillipsSubjectiveDecide(
    LinkjoyProtocol reward,
    double size,
    TextStyle style,
  ) {
    return Row(
      children: [
        LinkjoyFasten.asset(reward.url, width: size, height: size),
        4.wGap,
        Text("x${reward.amount}", style: style),
        4.wGap,
      ],
    );
  }

  static Widget _linkjoyNetflixFridge() {
    return Container(
      margin: const EdgeInsets.only(right: 4),
      child: LinkjoyFasten.asset(
        "linkjoy_toe_netflix_magazine",
        width: 7,
        height: 7,
      ),
    );
  }

  static Widget linkjoyMarshaAssume(
    double height,
    Color bgColor,
    String textStr,
    TextStyle style,
  ) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(height / 2)),
      ),
      child: Center(child: Text(textStr, style: style)),
    );
  }

  static Widget linkjoyPhlegmDecideFridge(
    String fileUrl,
    double height,
    Color bgColor,
    String textStr,
    TextStyle style, {
    double iconSize = 16,
  }) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s8),
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(width: 1, color: LinkjoyCondensate.black_10p),
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinkjoyFasten.asset(fileUrl, width: iconSize, height: iconSize),
          LinkjoyFeynman.h4,
          Text(textStr, style: style),
        ],
      ),
    );
  }

  static Widget buildCallItem(LinkjoyPerk entry, {Widget? action}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              LinkjoyFasten.circle(
                entry.avatarUrl,
                size: 56,
                clip: ImageClipType.small,
                fit: BoxFit.cover,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: LinkjoyFridgeUnbornChickenHair(uid: entry.uid),
              ),
            ],
          ),
          16.wGap,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(entry.nickName, style: LinkjoyMarshaGreen.TextB1_16_Bold),
                _buildTypeRow(entry),
                LinkjoyFridgeLightbulb.linkjoyDeliIndustrial(
                  Colors.transparent,
                  "linkjoy_toe_data_destine_magazine",
                  LinkjoyDestineSister.formatRecordsTimes(entry.time),
                  textStyle: const TextStyle(
                    color: LinkjoyCondensateSister.b1_60p,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hPadding: 0,
                  iconSize: 12,
                ),
              ],
            ),
          ),
          action ??
              LinkjoyFridgeUnbornSillinessHair(user: entry, freeTag: true),
        ],
      ),
    ).clickOld(() {
      LinkjoyTherapistSister.onLinkjoyWizardAndrew(entry);
    });
  }

  static Widget _buildTypeRow(LinkjoyPerk entry) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        LinkjoyFridgeLightbulb.linkjoyEarplugVisa(entry.gender, entry.birthday),
        if (entry.gender > 0) LinkjoyFeynman.h8,
        LinkjoyFridgeLightbulb.linkjoyHilariousFridge(entry.getUserCountry()),
      ],
    );
  }

  static Widget linkjoyPhillipsAnimalSubjective({
    LinkjoyPhillipsStubbornJaw? argument,
  }) {
    return LinkjoyEllen.circle(
      Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          LinkjoyFridgeLightbulb.linkjoyPhillipsMagazine(
            LinkjoyDiscard.iconXLarge,
          ),
          LinkjoyFeynman.h8,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LinkjoyFeynman.v10,
                Text(
                  "linkjoy_caring_mouse_sudden".tr,
                  style: LinkjoyMarshaTriplet.subtitle.copyWith(
                    fontStyle: FontStyle.italic,
                    height: 1,
                  ),
                ),
                LinkjoyFeynman.v4,
                Text(
                  "linkjoy_caring_mouse_phillips_intolerant".tr,
                  style: LinkjoyMarshaTriplet.bodySecondary,
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: LinkjoyAve.textPrimary,
            size: LinkjoyDiscard.iconMedium,
          ),
        ],
      ),
      fixedHeight: LinkjoyGarage.s64,
      () => Get.toNamed(
        LinkjoyGet.LinkjoyPhillipsFailDivision,
        arguments: argument,
      ),
    );
  }

  static Widget linkjoyPancake({
    LinkjoyBookshelf size = LinkjoyBookshelf.xs,
    bool open = false,
  }) {
    Color color = open ? LinkjoyAve.success : LinkjoyAve.white;
    return LinkjoyWear.circle(
      Icons.translate,
      size: size,
      iconColor: color,
      borderWidth: 1,
      borderColor: color,
    );
  }

  static Widget linkjoyChipmunk(double size) {
    return LinkjoyFasten.asset(
      LinkjoyDivorced.linkjoyChipmunkFasten,
      width: size,
      height: size,
    );
  }

  static Widget linkjoyPhillipsMagazine(double size) {
    return LinkjoyFasten.asset(
      "linkjoy_toe_phillips_magazine",
      width: size,
      height: size,
    );
  }

  static Widget linkjoyPhillipsCrumble({
    bool isVip = true,
    double? width,
    double? height,
  }) {
    width = width ?? LinkjoyGarage.s48;
    height = height ?? LinkjoyGarage.s20;

    if (isVip) {
      return LinkjoyFasten.asset(
        "linkjoy_toe_phillips_crumble",
        width: width,
        height: height,
      );
    } else {
      return ColorFiltered(
        colorFilter: const ColorFilter.matrix([
          0.2126,
          0.7152,
          0.0722,
          0,
          80,
          0.2126,
          0.7152,
          0.0722,
          0,
          80,
          0.2126,
          0.7152,
          0.0722,
          0,
          80,
          0,
          0,
          0,
          1,
          0,
        ]),
        child: LinkjoyFasten.asset(
          "linkjoy_toe_phillips_crumble",
          width: width,
          height: height,
        ),
      );
    }
  }

  static Widget linkjoyPeephole({
    bool intent = true,
    Color? color,
    double height = 1,
  }) {
    double intentVal = intent ? LinkjoyGarage.s12 : 0;
    return Divider(
      height: height,
      thickness: 1,
      color: color ?? LinkjoyAve.borderLight,
      indent: intentVal,
      endIndent: intentVal,
    );
  }

  static Widget linkjoyAncestor({double? size, Color color = Colors.white}) {
    size = size ?? LinkjoyBookshelf.md.size() * 0.6;
    return LinkjoyFasten.asset(
      "linkjoy_toe_magazine_satellite",
      width: size,
      height: size,
    );
  }

  static Widget linkjoyFlashy({double? size, Color color = Colors.white}) {
    size = size ?? LinkjoyBookshelf.md.size() * 0.6;
    return LinkjoyFasten.asset(
      "linkjoy_toe_magazine_flashy",
      width: size,
      height: size,
    );
  }

  static Widget linkjoyConvict({double? size, Color color = Colors.white}) {
    size = size ?? LinkjoyBookshelf.md.size() * 0.6;
    return LinkjoyFasten.asset(
      "linkjoy_toe_magazine_degrasse_ancestor",
      width: size,
      height: size,
    );
  }

  static Widget linkjoyForgotLap(double size) {
    return LinkjoyFasten.asset(
      "linkjoy_toe_ancestor_forgot_lap",
      width: size,
      height: size,
    );
  }

  static const Gradient linkjoySaltwaterSillyInhibition = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0x00FFFFFF), Colors.white60],
  );

  static const Gradient linkjoySaltwaterSillyEnforce = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black45, Colors.black54],
  );

  static const Gradient linkjoySaltwaterSillyBg = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, LinkjoyAve.bgDark, LinkjoyAve.bgDark],
  );

  static Widget linkjoyEmergePineDuel({
    double? width,
    double? height,
    BorderRadiusGeometry? borderRadius,
    double? iconSize,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: LinkjoyAve.bgDark,
      ),
      child: Icon(
        Icons.photo_rounded,
        size: iconSize,
        color: LinkjoyAve.bgDarkDark,
      ),
    );
  }

  static Widget linkjoyEmergePineDegrasse({
    double? width,
    double? height,
    BorderRadiusGeometry? borderRadius,
    double? iconSize,
  }) {
    return Container(
      decoration: BoxDecoration(borderRadius: borderRadius, color: Colors.grey),
      child: Icon(Icons.video_file_rounded, size: iconSize),
    );
  }

  static Widget linkjoyAssumeBaywatch(
    VoidCallback onPressed, {
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    Color? iconColor,
    Color? bgColor,
    double? elevation,
  }) {
    iconColor = iconColor ?? LinkjoyAve.textPrimary;
    bgColor = bgColor ?? iconColor.withValues(alpha: 0.1);
    return Center(
      child: LinkjoyEllen.circle(
        Icon(Icons.close, size: size.size() * 0.5, color: iconColor),
        onPressed,
        size: size,
        fixedWidth: size.size(),
        fixedHeight: size.size(),
        bgColor: bgColor,
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        elevation: elevation,
      ),
    );
  }

  static Widget linkjoyCampUptight({
    IconData iconData = Icons.arrow_circle_right_rounded,
    Color color = Colors.white,
    double? size,
  }) {
    return Icon(
      iconData,
      color: color,
      size: size ?? LinkjoyBookshelf.lg.size() * 0.5,
    );
  }

  static Widget linkjoyProtocolKudos(
    List<LinkjoyProtocol> rewards, {
    double? minWidth,
  }) {
    List<Widget> children = linkjoyProtocolFridgeStubborn(rewards);

    if (children.isNotEmpty) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: children,
      );
    }
    return const SizedBox.shrink();
  }

  static List<Widget> linkjoyProtocolFridgeStubborn(
    List<LinkjoyProtocol> rewards,
  ) {
    List<Widget> children = [];
    for (int i = 0; i < rewards.length; i++) {
      LinkjoyProtocol reward = rewards[i];
      String titleUnit = reward.type == RewardKinds.coins ? "+" : "x";

      Widget widget = const SizedBox();
      if (rewards.length == 1) {
        widget = _cardRowWidget(
          reward.url,
          reward.name,
          "$titleUnit${reward.amount}",
        );
      } else if (rewards.length < 3) {
        widget = _cardRowWidget(
          reward.url,
          reward.name,
          "$titleUnit${reward.amount}",
        );
      } else {
        widget = _cardColumnWidget(reward.url, "$titleUnit${reward.amount}");
      }

      children.add(
        widget.click(() => LinkjoyUISocially.linkjoyProtocolLimbic(reward)),
      );
    }
    return children;
  }

  static Widget _cardRowWidget(
    String icon,
    String title,
    String countUnit, {
    double? minWidth,
  }) {
    minWidth = minWidth ?? ((Get.width - LinkjoyGarage.s96) / 3);
    return Container(
      decoration: LinkjoyAve.surfaceDecoration,
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s12,
        vertical: LinkjoyGarage.s12,
      ),
      constraints: BoxConstraints(minWidth: minWidth),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LinkjoyFasten.asset(
            icon,
            width: LinkjoyGarage.s32,
            height: LinkjoyGarage.s32,
            fit: BoxFit.contain,
          ),
          LinkjoyFeynman.h4,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: LinkjoyMarshaTriplet.caption.copyWith(
                  color: Colors.white,
                ),
              ),
              LinkjoyFeynman.v4,
              Text(
                countUnit,
                style: LinkjoyMarshaTriplet.bodyBold.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static Widget _cardColumnWidget(String icon, String title) {
    return Container(
      decoration: LinkjoyAve.surfaceDecoration,
      padding: EdgeInsets.all(LinkjoyGarage.s12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LinkjoyFasten.asset(
            icon,
            width: LinkjoyGarage.s32,
            height: LinkjoyGarage.s32,
            fit: BoxFit.contain,
          ),
          LinkjoyFeynman.h4,
          Text(title, style: LinkjoyMarshaTriplet.captionBold),
        ],
      ),
    );
  }

  static Widget linkjoyProtocol(LinkjoyProtocol reward) {
    return linkjoyDeliIndustrial(
      Colors.transparent,
      reward.url,
      "x${reward.amount}",
      iconSize: 36,
      height: 36,
      textStyle: TextStyle(
        color: "834CFF".toColor(),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ).clickOld(() {
      LinkjoyUISocially.linkjoyProtocolLimbic(reward);
    });
  }

  static Widget linkjoyWrench() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SpinKitCircle(size: 30, color: Colors.grey),
          Text("${"linkjoy_caring_wrench".tr}..."),
        ],
      ),
    );
  }

  static Widget linkjoyDwarfMousePhillips({
    int fromType = LinkjoyWailImitateGnome.UNKNOWN,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s20,
        vertical: LinkjoyGarage.s12,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [LinkjoyAve.vipButtonBg, LinkjoyAve.info],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(LinkjoyDiscard.buttonRadiusFull),
        boxShadow: [
          BoxShadow(
            color: LinkjoyAve.info.withValues(alpha: 0.4),
            blurRadius: LinkjoyGarage.s8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Text(
        'linkjoy_caring_mouse_phillips'.tr,
        style: LinkjoyMarshaTriplet.bodyBold,
      ),
    ).click(() {
      LINKJOY.toNamed(
        LinkjoyGet.LinkjoyPhillipsFailDivision,
        arguments: LinkjoyPhillipsStubbornJaw(fromType: fromType),
      );
    });
  }

  static Widget linkjoyAye(
    double width,
    double progress, {
    Color? color,
    double? height,
  }) {
    return Container(
      height: height ?? LinkjoyGarage.s6,
      width: width,
      decoration: BoxDecoration(
        color: LinkjoyAve.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
      ),
      child: Stack(
        children: [
          Container(
            width: max(1, min(1, progress) * width),
            decoration: BoxDecoration(
              color: color ?? LinkjoyAve.textPrimary,
              borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
              boxShadow: [
                BoxShadow(
                  color: (color ?? LinkjoyAve.textPrimary).withValues(
                    alpha: 0.7,
                  ),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget linkjoyGrape({
    required String msg,
    bool warning = false,
    double marginBottom = 0,
    double marginHorizontal = 0,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s16,
        vertical: LinkjoyGarage.s8,
      ),
      margin: EdgeInsets.only(
        bottom: marginBottom,
        left: marginHorizontal,
        right: marginHorizontal,
      ),
      decoration: BoxDecoration(
        color: warning
            ? LinkjoyAve.warning.withValues(alpha: 0.6)
            : LinkjoyAve.surface,
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
      ),
      child: Text(msg, style: LinkjoyMarshaTriplet.caption),
    );
  }

  static linkjoyMagazineTerror(Color color, double size) {
    return Icon(Icons.discount, color: color, size: size);
  }

  static Widget linkjoyUnbornProtocolStay() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: LinkjoyAve.surface.withValues(alpha: 0.2),
          width: 0.5,
        ),
        color: LinkjoyAve.overlayLight,
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
      ),
      child: Column(
        children: [
          _linkjoyUnbornProtocolSilliness(
            "linkjoy_toe_magazine_wave_despite",
            "linkjoy_caring_wave_collie".tr,
            () {
              Get.toNamed(LinkjoyGet.LinkjoyWaveCollieDivision);
            },
          ),
          _linkjoyUnbornProtocolSilliness(
            "linkjoy_toe_magazine_quinto",
            "linkjoy_caring_olden_chafe".tr,
            () {
              Get.toNamed(LinkjoyGet.LinkjoyOldenChafeDivision);
            },
          ),
          _linkjoyUnbornProtocolSilliness(
            "linkjoy_toe_magazine_my_generator",
            "linkjoy_caring_olden_phlegm_incense".tr,
            () {
              Get.toNamed(LinkjoyGet.LinkjoyUnbornGeneratorViciousDivision);
            },
          ),

          _linkjoyUnbornProtocolSilliness(
            "linkjoy_toe_phillips_magazine",
            "linkjoy_caring_phillips_chafe".tr,
            () {
              Get.toNamed(
                LinkjoyGet.LinkjoyPhillipsFailDivision,
                arguments: LinkjoyPhillipsStubbornJaw(
                  fromType: LinkjoyWailImitateGnome.FROM_HOME_AFFORDABLE,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  static Widget _linkjoyUnbornProtocolSilliness(
    String icon,
    String title,
    VoidCallback click,
  ) {
    return Container(
      height: LinkjoyGarage.s44,
      alignment: Alignment.center,
      padding: EdgeInsetsDirectional.only(
        start: LinkjoyGarage.s12,
        end: LinkjoyGarage.s16,
      ),
      decoration: BoxDecoration(
        color: LinkjoyAve.overlayLight,
        border: Border(
          bottom: BorderSide(
            color: LinkjoyAve.borderLight.withValues(alpha: 0.1),
          ),
        ),
      ),
      child: Row(
        children: [
          LinkjoyFastenIndustrial.asset(
            icon,
            width: LinkjoyGarage.s32,
            height: LinkjoyGarage.s32,
          ),
          LinkjoyFeynman.h4,
          Expanded(
            child: Text(title, style: LinkjoyMarshaTriplet.bodySecondary),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: LinkjoyGarage.s12,
            color: LinkjoyAve.textSecondary,
          ),
        ],
      ),
    ).click(click);
  }
}
