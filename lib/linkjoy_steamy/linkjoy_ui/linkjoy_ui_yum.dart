library;

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_division_paw.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';
import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

enum LinkjoyUiYumSixthGnome { image, gradient, color }

class LinkjoyUiYum {
  static double hSuperLarge = 64.w;
  static double hLarge = 56.w;
  static double hRegular = 48.w;
  static double hSmall = 36.w;
  static double hTiny = 32.w;

  static const Color _linkjoyTimeAssumeMarshaInsistence =
      LinkjoyCondensateSister.white;

  static const Color _linkjoyTimeAssumeBgInsistence = LinkjoyCondensate.primary;

  static LinkjoyAssume _linkjoyTimeAssume(double height, {double radius = 0}) {
    if (height == 0) {
      height = hLarge;
    }
    return _linkjoyFrontalTimeAssume(
      height,
      BorderRadius.circular(radius > 0 ? radius : height / 2),
    );
  }

  static LinkjoyAssume _linkjoyFrontalTimeAssume(
    double height,
    BorderRadius borderRadius,
  ) {
    return _buildRadiusBaseButton(
      backgroundType: LinkjoyUiYumSixthGnome.image,
      textColor: _linkjoyTimeAssumeMarshaInsistence,
      height: height,
      borderRadius: borderRadius,
      bgImage: "linkjoy_toe_deli_dwarf_dumbass",
      gradient: null,
      bgColor: _linkjoyTimeAssumeBgInsistence,
    );
  }

  static LinkjoyAssume primarySuperLarge() {
    return _linkjoyTimeAssume(hSuperLarge).large();
  }

  static LinkjoyAssume primaryLarge() {
    return _linkjoyTimeAssume(hLarge).small();
  }

  static LinkjoyAssume primaryRegular() {
    return _linkjoyTimeAssume(hRegular).small();
  }

  static LinkjoyAssume primarySmall() {
    return _linkjoyTimeAssume(hSmall).tiny();
  }

  static LinkjoyAssume primaryTiny() {
    return _linkjoyTimeAssume(hTiny).tiny();
  }

  static LinkjoyAssume secondaryButton() {
    return _buildBaseButton(
      backgroundType: LinkjoyUiYumSixthGnome.image,
      bgImage: "linkjoy_toe_dwarf_agency_bg",
      gradient: null,
      bgColor: null,
      textColor: LinkjoyCondensateSister.white,
    );
  }

  static Widget linkjoyDegrasseAncestorMagazine(
    double size, {
    bool lowMemDowngrade = false,
  }) {
    if (lowMemDowngrade && LINKJOY.isLowMem()) {
      return Icon(Icons.phone_rounded, color: Colors.white, size: size);
    } else {
      return Icon(
        Icons.phone_rounded,
        color: Colors.white,
        size: size,
      ).animationWobble(repeat: true, duration: 400, angle: 15);
    }
  }

  static Widget linkjoySmoker(
    double size,
    VoidCallback onPressed, {
    bool lowMemDowngrade = false,
  }) {
    return LinkjoyEllen.circle(
      Icon(Icons.call_end_rounded, size: size * 0.6, color: Colors.white),
      onPressed,
      bgColor: Colors.redAccent,
      fixedWidth: size,
      fixedHeight: size,
      padding: EdgeInsets.zero,
    );
  }

  static Widget linkjoyBirthdayUp(
    double size,
    double maxSize,
    VoidCallback onPressed, {
    bool lowMemDowngrade = false,
  }) {
    return Container(
      alignment: Alignment.center,
      width: maxSize,
      height: maxSize,
      child: LinkjoyEllen.circle(
        LinkjoyUiYum.linkjoyDegrasseAncestorMagazine(
          size * 0.6,
          lowMemDowngrade: lowMemDowngrade,
        ),
        onPressed,
        bgColor: Colors.green,
        fixedWidth: size,
        fixedHeight: size,
        padding: EdgeInsets.zero,
      ).animationRipple(size, maxSize, repeat: true, color: Colors.green),
    );
  }

  static Widget linkjoyOughtaSatelliteAssume(
    LinkjoyUnborn user, {
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? fixedHeight,
    EdgeInsetsGeometry? padding,
    Widget? child,
    double? radius,
    Color? color,
    bool showFreeCards = false,
    bool isOffPage = false,
  }) {
    child =
        child ??
        LinkjoyFridgeLightbulb.linkjoyAncestor(size: size.size() * 0.6);
    color = color ?? LinkjoyDivorced.linkjoyAncestorInsistence;
    radius = radius ?? LinkjoyDiscard.radiusFull;
    String freeCardIcon = "linkjoy_toe_decide_ancestor";

    return _linkjoyOughtaAssumeWheatonPhlegm(
      child,
      () => LinkjoyAncestorDivisionJeffriesUp.openWithUser(
        user,
        isOffPage: isOffPage,
      ),
      color,
      radius,
      freeCardIcon,
      size: size,
      fixedWidth: fixedWidth,
      fixedHeight: fixedHeight,
      padding: padding,
      showFreeCards: showFreeCards,
      cardNumber: LINKJOY.linkjoyUnbornDeposit?.cardIm ?? 0,
      isOffPage: isOffPage,
    );
  }

  static Widget _linkjoyOughtaAssumeWheatonPhlegm(
    Widget child,
    VoidCallback onTap,
    Color color,
    double radius,
    freeCardIcon, {
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? fixedHeight,
    EdgeInsetsGeometry? padding,
    bool showFreeCards = false,
    int cardNumber = 0,
    bool isOffPage = false,
  }) {
    Widget button = LinkjoyEllen.round(
      child,
      onTap,
      radius: radius,
      bgColor: color,
      size: size,
      fixedWidth: fixedWidth,
      padding: padding,
    );

    if (showFreeCards && cardNumber > 0) {
      return Stack(
        alignment: AlignmentGeometry.center,
        children: [
          Container(
            width: fixedWidth,
            height: fixedHeight,
            margin: EdgeInsets.symmetric(
              vertical: LinkjoyGarage.s12,
              horizontal: 0,
            ),
            child: button,
          ),
          PositionedDirectional(
            top: 2,
            child: LinkjoyFridgeLightbulb.linkjoyPhlegmDecideFridge(
              freeCardIcon,
              LinkjoyGarage.s24,
              Colors.white,
              "${"linkjoy_caring_phlegm".tr} $cardNumber",
              LinkjoyMarshaTriplet.caption.copyWith(height: 1, color: color),
            ),
          ),
        ],
      );
    } else {
      return button;
    }
  }

  static LinkjoyAssume vipBannerPriceButton() {
    return LinkjoyAssume()
        .width(double.infinity)
        .height(hSmall)
        .decoration(
          BoxDecoration(
            borderRadius: BorderRadius.circular(hSmall / 2),
            gradient: const RadialGradient(
              center: Alignment.bottomCenter,
              radius: 0.6,
              colors: [Color(0xFF5600B0), Color(0xFF170838)],
              stops: [0.0, 1.0],
            ),
          ),
        );
  }

  static LinkjoyAssume coinsBannerPriceButton() {
    return _buildBaseButton(
      backgroundType: LinkjoyUiYumSixthGnome.color,
      bgImage: null,
      gradient: null,
      bgColor: const Color(0xFFFFED15),
      textColor: LinkjoyCondensateSister.white,
    ).height(hRegular);
  }

  static LinkjoyAssume coinsPriceButton() {
    return primaryRegular();
  }

  static LinkjoyAssume primaryFillButton() {
    return _buildFlatButton(
      bgColor: _linkjoyTimeAssumeBgInsistence,
      textColor: _linkjoyTimeAssumeMarshaInsistence,
    );
  }

  static LinkjoyAssume greyDisableFillButton() {
    return _buildFlatButton(
      bgColor: LinkjoyCondensateSister.black_10p,
      textColor: LinkjoyCondensateSister.black_40p,
    );
  }

  static LinkjoyAssume whiteFillButton() {
    return _buildFlatButton(
      bgColor: LinkjoyCondensateSister.white,
      textColor: LinkjoyCondensateSister.black,
    );
  }

  static LinkjoyAssume greyFillButton() {
    return _buildFlatButton(
      bgColor: LinkjoyCondensateSister.black_05p,
      textColor: LinkjoyCondensateSister.black,
    );
  }

  static LinkjoyAssume darkFillButton() {
    return _buildFlatButton(
      bgColor: LinkjoyCondensateSister.white_20p,
      textColor: LinkjoyCondensateSister.white,
    );
  }

  static LinkjoyAssume lightOutlineButton() {
    return _buildFlatButton(
      bgColor: LinkjoyCondensateSister.white,
      textColor: LinkjoyCondensateSister.black,
      borderColor: LinkjoyCondensateSister.black_20p,
      borderWidth: 1,
    );
  }

  static LinkjoyAssume darkOutlineButton() {
    return _buildFlatButton(
      bgColor: LinkjoyCondensateSister.black,
      textColor: LinkjoyCondensateSister.white,
      borderColor: LinkjoyCondensateSister.white_20p,
      borderWidth: 1,
    );
  }

  static LinkjoyAssume bgImageLargeButton(
    String imgPath, {
    Color textColor = LinkjoyCondensateSister.white,
  }) {
    return _buildBaseButton(
      backgroundType: LinkjoyUiYumSixthGnome.image,
      bgImage: imgPath,
      textColor: textColor,
      bgColor: Colors.transparent,
    );
  }

  static Widget imageSimpleButton({
    required VoidCallback click,
    required String imgPath,
    double width = 0,
    double height = 0,
    double radius = 0,
  }) {
    double realHeight = height > 0 ? height : hLarge;
    double realWidth = width > 0 ? width : double.infinity;
    double realRadius = radius > 0 ? radius : realHeight / 2;
    return LinkjoyAssume()
        .width(realWidth)
        .height(realHeight)
        .decoration(
          BoxDecoration(
            borderRadius: BorderRadius.circular(realRadius),
            image: DecorationImage(
              image: LinkjoyFasten.assetProvider(imgPath),
              fit: BoxFit.fill,
            ),
          ),
        )
        .click(click)
        .text("");
  }

  static LinkjoyAssume _buildBaseButton({
    required LinkjoyUiYumSixthGnome backgroundType,
    required Color textColor,
    double height = 0,
    double radius = 0,
    String? bgImage,
    Gradient? gradient,
    Color? bgColor,
  }) {
    if (height == 0) {
      height = hLarge;
    }
    BorderRadius borderRadius = BorderRadius.circular(
      radius > 0 ? radius : height / 2,
    );
    return _buildRadiusBaseButton(
      backgroundType: backgroundType,
      textColor: textColor,
      height: height,
      borderRadius: borderRadius,
      bgImage: bgImage,
      gradient: gradient,
      bgColor: bgColor,
    );
  }

  static LinkjoyAssume _buildRadiusBaseButton({
    required LinkjoyUiYumSixthGnome backgroundType,
    required Color textColor,
    double height = 0,
    BorderRadiusGeometry? borderRadius,
    String? bgImage,
    Gradient? gradient,
    Color? bgColor,
  }) {
    if (height == 0) {
      height = hLarge;
    }

    LinkjoyAssume linkjoyAssume = LinkjoyAssume()
        .width(double.infinity)
        .textColor(textColor)
        .height(height);

    if (backgroundType == LinkjoyUiYumSixthGnome.image) {
      return linkjoyAssume.decoration(
        BoxDecoration(
          color: bgColor,
          borderRadius: borderRadius,
          image: DecorationImage(
            image: LinkjoyFasten.assetProvider(bgImage!),
            fit: BoxFit.fill,
          ),
        ),
      );
    }

    if (backgroundType == LinkjoyUiYumSixthGnome.gradient) {
      return linkjoyAssume.decoration(
        BoxDecoration(borderRadius: borderRadius, gradient: gradient!),
      );
    }
    return linkjoyAssume
        .backgroundColor(bgColor!)
        .disabledColor(LinkjoyCondensateSister.black_10p)
        .disabledTextColor(LinkjoyCondensateSister.black_40p)
        .circle();
  }

  static LinkjoyAssume _buildFlatButton({
    required Color bgColor,
    required Color textColor,
    Color? borderColor,
    double borderWidth = 0,
  }) {
    final btn = LinkjoyAssume()
        .small()
        .width(double.infinity)
        .height(hLarge)
        .backgroundColor(bgColor)
        .textColor(textColor)
        .circle();

    if (borderColor != null && borderWidth > 0) {
      return btn.border(borderColor, width: borderWidth);
    }

    return btn;
  }
}
