import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_grad.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_magazine_marsha.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_lifelong_marsha.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fridge_sweetheart.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_matey/linkjoy_gangster.dart';
import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';

class LinkjoyUiHeadline {
  static Widget normalTag({
    required String text,
    String icon = "",
    LinkjoyFridgeBookshelf size = LinkjoyFridgeBookshelf.mini,
    Color bgColor = LinkjoyCondensate.black_10p,
    Color textColor = Colors.black,
  }) {
    LinkjoyLifelongMarsha imgText = LinkjoyLifelongMarsha()
        .size(size)
        .backgroundColor(bgColor)
        .textColor(textColor)
        .circle();
    if (LinkjoyGnomeSister.isEmpty(icon)) {
      return imgText.text(text);
    }
    return imgText.build(icon, text);
  }

  static Widget borderTag({
    required String text,
    String icon = "",
    LinkjoyFridgeBookshelf size = LinkjoyFridgeBookshelf.mini,
    Color bgColor = LinkjoyCondensate.black_10p,
    Color textColor = Colors.black,
    Color borderColor = LinkjoyCondensate.black_10p,
  }) {
    LinkjoyLifelongMarsha imgText = LinkjoyLifelongMarsha()
        .size(size)
        .border()
        .backgroundColor(bgColor)
        .textColor(textColor)
        .circle();
    if (LinkjoyGnomeSister.isEmpty(icon)) {
      return imgText.text(text);
    }
    return imgText.build(icon, text);
  }

  static Widget navTag({
    required int index,
    required LinkjoyFondnessGrad region,
    required VoidCallback onTap,
  }) {
    List<List<Color>> regionColors = [
      [const Color(0xFFFF6B88), const Color(0xFFFF6CD8)],
      [const Color(0xFFED9660), const Color(0xFFF0B774)],
      [const Color(0xFF2FC78D), const Color(0xFF69B3EA)],
      [const Color(0xFF8257DE), const Color(0xFFA769EF)],
      [const Color(0xFFFD5672), const Color(0xFFF89B57)],
      [const Color(0xFF5677FD), const Color(0xFF70CFFA)],
    ];
    List<Color> colors = regionColors[index % regionColors.length];
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 144.w,
        height: 56.w,
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              decoration: LinkjoyFridgeLightbulb.buildGradientDecoration(
                colors,
                borderRadius: BorderRadius.circular(LinkjoyGarage.s24),
                boxShadow: [
                  BoxShadow(
                    color: colors[1].withOpacity(0.6),
                    blurRadius: LinkjoyGarage.s8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              width: 144.w,
              height: 48.w,
              padding: EdgeInsetsDirectional.only(start: 50.w, end: 12.w),
              alignment: AlignmentDirectional.centerStart,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    region.name.toString(),
                    style: TextStyle(
                      fontSize: 14.w,
                      fontWeight: FontWeight.w400,
                      color: LinkjoyCondensateSister.white,
                      fontFamily: AppText.fontFamily,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LinkjoyFasten.asset(
                        "linkjoy_toe_pearl_personally_magazine",
                        width: 12.w,
                        height: 12.w,
                      ),
                      2.wGap,
                      Text(
                        region.user_count.toString(),
                        style: TextStyle(
                          fontSize: 12.w,
                          color: LinkjoyCondensateSister.white_60p,
                          fontFamily: AppText.fontFamily,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            PositionedDirectional(
              start: 4.w,
              bottom: 0,
              child: region.icon.isEmpty
                  ? const SizedBox.shrink()
                  : LinkjoyFasten.middle(
                      region.icon,
                      width: 42.w,
                      height: 56.w,
                    ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget regionTag({
    required String iconPath,
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
    EdgeInsetsGeometry? margin,
    LinkjoyFridgeBookshelf size = LinkjoyFridgeBookshelf.mini,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: LinkjoyDiscard.buttonHeightSm,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
          color: isSelected ? LinkjoyAve.primaryMain : Colors.white12,
        ),
        padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s12),
        constraints: BoxConstraints(
          minWidth: LinkjoyDiscard.enlargedTouchTarget,
        ),
        alignment: AlignmentGeometry.center,
        child: Text(
          text,
          style: isSelected
              ? LinkjoyMarshaTriplet.buttonTextSm
              : LinkjoyMarshaTriplet.buttonTextSm.copyWith(
                  color: LinkjoyAve.textDisabled,
                ),
        ),
      ),
    );
  }

  static Widget coinsLabelTag(int balance, {BoxDecoration? decoration}) {
    return GestureDetector(
      onTap: () {
        LINKJOY.goto(LinkjoyGet.LinkjoyChipmunkFailDivision);
      },
      child: Container(
        height: LinkjoyGarage.s32,
        padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s10),
        decoration:
            decoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusXLarge),
              color: LinkjoyAve.primaryDark,
            ),
        alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LinkjoyFridgeLightbulb.linkjoyChipmunk(LinkjoyDiscard.iconSmall),
            LinkjoyFeynman.h4,
            Text('$balance', style: LinkjoyMarshaTriplet.captionBold),
            LinkjoyFeynman.h4,
            Icon(
              Icons.arrow_forward_ios,
              color: LinkjoyAve.textPrimary,
              size: LinkjoyDiscard.iconMini,
            ),
          ],
        ),
      ),
    );
  }

  static Widget realTag({
    Color bgColor = LinkjoyCondensate.black_40p,
    Color textColor = Colors.white,
  }) {
    return LinkjoyLifelongMarsha()
        .mini()
        .backgroundColor(bgColor)
        .textColor(textColor)
        .imageCircle()
        .circle()
        .build("linkjoy_toe_andrew_want_fat", "linkjoy_caring_want".tr);
  }

  static Widget flagIcon({
    required String flagPath,
    required String name,
    Color bgColor = Colors.white30,
    Color textColor = Colors.white,
  }) {
    return iconTag(
      flagPath: flagPath,
      name: name,
      bgColor: bgColor,
      textColor: textColor,
    );
  }

  static Widget iconTag({
    required String flagPath,
    required String name,
    Color bgColor = Colors.white30,
    EdgeInsetsGeometry? padding,
    Color textColor = Colors.white,
  }) {
    padding =
        padding ??
        EdgeInsetsDirectional.only(
          start: LinkjoyGarage.s4,
          top: LinkjoyGarage.s4,
          bottom: LinkjoyGarage.s4,
          end: LinkjoyGarage.s8,
        );
    return LinkjoyLifelongMarsha()
        .mini()
        .backgroundColor(bgColor)
        .padding(padding)
        .textColor(textColor)
        .imageCircle()
        .circle()
        .build(flagPath, name);
  }

  static Widget genderAgeTag({
    required int gender,
    required int age,
    Color? bgColor,
    Color? textColor,
  }) {
    String text = age > 0 && age <= 35 ? "$age" : "";
    double spacing = age > 0 && age <= 35 ? 2 : 0;
    bgColor =
        bgColor ??
        (gender == 1 ? const Color(0xFF3384FF) : const Color(0xFFFF4E8F));
    textColor = textColor ?? Colors.white;
    return LinkjoyMagazineMarsha()
        .mini()
        .backgroundColor(bgColor)
        .textColor(textColor)
        .circle()
        .spacing(spacing)
        .padding(
          const EdgeInsetsDirectional.only(start: 4, top: 4, bottom: 4, end: 8),
        )
        .build(gender == 1 ? Icons.male_rounded : Icons.female_rounded, text);
  }

  static Widget copyIDWidget(String ucode, {TextStyle? textStyle}) {
    textStyle =
        textStyle ??
        LinkjoyMarshaTriplet.caption.copyWith(color: Colors.white, height: 1);

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("ID:$ucode", style: textStyle),
        LinkjoyFeynman.h2,
        Icon(
          Icons.copy_rounded,
          size: textStyle.fontSize,
          color: textStyle.color,
        ),
      ],
    ).click(() {
      Clipboard.setData(ClipboardData(text: ucode));
      LinkjoyGangster.showInfo("linkjoy_caring_chocolates_soda".tr, ucode);
    });
  }

  static Widget linkjoySingingKryptonian(
    String lang, {
    LinkjoyFridgeBookshelf size = LinkjoyFridgeBookshelf.mini,
    Color bgColor = Colors.white30,
    Color textColor = Colors.white,
  }) {
    return LinkjoyLifelongMarsha()
        .size(size)
        .backgroundColor(bgColor)
        .textColor(textColor)
        .circle()
        .text(lang);
  }

  static Widget freeTag(
    double height, {
    Decoration? decoration,
    TextStyle? style,
  }) {
    return Container(
      height: height,
      decoration:
          decoration ??
          BoxDecoration(
            gradient: LinkjoyDivorced.linkjoyPhlegmBgSaltwater,
            borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
          ),
      padding: EdgeInsets.symmetric(horizontal: height / 2),
      alignment: Alignment.center,
      child: LinkjoyMarsha.captionB(
        "linkjoy_caring_phlegm".tr,
      ).style(style ?? LinkjoyMarshaHater.caption_B).build(),
    );
  }

  static Widget interestTag(String text, {int index = 0}) {
    const List tagColors = [
      Colors.pinkAccent,
      Colors.blueAccent,
      Colors.greenAccent,
      Colors.amberAccent,
      Colors.cyanAccent,
      Colors.deepPurpleAccent,
    ];
    Color color = tagColors[index % tagColors.length];
    return LinkjoyUiHeadline.normalTag(
      text: text,
      bgColor: color.withValues(alpha: 0.5),
      textColor: Colors.white,
    );
  }

  static Widget interestTagWithIds(String tagIds) {
    List<String> labels = LINKJOY.linkjoyShock.linkjoyDirectionIndicator(
      tagIds,
    );
    if (labels.isEmpty) {
      return const SizedBox.shrink();
    }

    return Wrap(
      alignment: WrapAlignment.start,
      spacing: LinkjoyGarage.s6,
      runSpacing: LinkjoyGarage.s6,
      children: List.generate(labels.length, (index) {
        return interestTag(labels[index], index: index);
      }),
    );
  }

  static Widget interestTags(List<String> labels) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: LinkjoyGarage.s6,
      runSpacing: LinkjoyGarage.s6,
      children: List.generate(labels.length, (index) {
        return interestTag(labels[index], index: index);
      }),
    );
  }

  static Widget rewardCardTag({
    required String iconPath,
    required String text,
    double height = 50,
    Color bgColor = LinkjoyCondensate.black_05p,
    double radius = 8,
  }) {
    return _buildRewardCardTag(
      iconPath: iconPath,
      text: text,
      height: height,
      bgColor: bgColor,
      radius: radius,
      isVertical: false,
      size: LinkjoyFridgeBookshelf.small,
    );
  }

  static Widget rewardCardVerticalTag({
    required String iconPath,
    required String text,
    double height = 50,
    Color bgColor = LinkjoyCondensate.black_05p,
    double radius = 8,
  }) {
    return _buildRewardCardTag(
      iconPath: iconPath,
      text: text,
      height: height,
      bgColor: bgColor,
      radius: radius,
      isVertical: true,
      size: LinkjoyFridgeBookshelf.mini,
    );
  }

  static Widget _buildRewardCardTag({
    required String iconPath,
    required String text,
    double height = 50,
    Color bgColor = LinkjoyCondensate.black_05p,
    double radius = 8,
    bool isVertical = false,
    LinkjoyFridgeBookshelf size = LinkjoyFridgeBookshelf.small,
  }) {
    return LinkjoyLifelongMarsha()
        .height(height)
        .backgroundColor(bgColor)
        .borderRadiusAll(radius)
        .shouldCenter(true)
        .padding(EdgeInsets.zero)
        .spacing(4)
        .size(size)
        .layout(
          isVertical
              ? LinkjoyLifelongMarshaEbony.vertical
              : LinkjoyLifelongMarshaEbony.horizontal,
        )
        .build(iconPath, text);
  }
}
