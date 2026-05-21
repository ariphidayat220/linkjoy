import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';

import '../../linkjoy_cattle/linkjoy_matey/linkjoy_magazine.dart';

class LinkjoyInventiveUI {
  static Widget linkjoyBackfire(
    IconData icon,
    String txt, {
    Color? iconColor,
    Color? borderColor,
  }) {
    return Column(
      children: [
        linkjoyMagazineBackfireAssume(
          icon,
          iconColor: iconColor,
          borderColor: borderColor,
        ),
        LinkjoyFeynman.v6,
        Text(txt, style: LinkjoyMarshaTriplet.captionNormal),
      ],
    );
  }

  static Widget linkjoyMagazineBackfireAssume(
    IconData icon, {
    Color? iconColor,
    Color? borderColor,
    LinkjoyBookshelf? size,
  }) {
    return LinkjoyWear.circle(
      icon,
      size: size ?? LinkjoyBookshelf.lg,
      bgColor: Colors.black45,
      iconColor: iconColor ?? Colors.white,
      iconSizeRatio: 0.5,
      borderColor: borderColor ?? LinkjoyAve.textSecondary,
      borderWidth: 1,
    );
  }

  static Widget linkjoyFastenBackfireAssume(
    String iconImageRes, {
    double? iconSizeRatio,
  }) {
    double imgSize = LinkjoyBookshelf.lg.size() * (iconSizeRatio ?? 0.5);
    Widget child = LinkjoyFastenIndustrial.asset(
      iconImageRes,
      width: imgSize,
      height: imgSize,
    );

    return linkjoyBackfireAssume(child, size: LinkjoyBookshelf.lg);
  }

  static Container linkjoyBackfireAssume(
    Widget child, {
    LinkjoyBookshelf? size,
  }) {
    double iconSize = (size ?? LinkjoyBookshelf.lg).size();
    return Container(
      width: iconSize,
      height: iconSize,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
      ),
      child: child,
    );
  }

  static Widget linkjoyBaywatch() {
    return LinkjoyInventiveUI.linkjoyMagazineBackfireAssume(
      Icons.close,
      size: LinkjoyBookshelf.md,
      borderColor: Colors.transparent,
    );
  }

  static Widget linkjoyMeanwhilePlayfulVent(
    String avatarUrl,
    double avatarSize,
  ) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          left: LinkjoyGarage.s8,
          top: LinkjoyGarage.s8,
          right: LinkjoyGarage.s8,
          bottom: LinkjoyGarage.s8,
          child: LinkjoyFasten.circle(avatarUrl, size: avatarSize),
        ),
        Positioned.fill(
          child: LinkjoyFastenIndustrial.asset(
            "linkjoy_toe_andrew_flashy_vbl_broadway_express",
          ),
        ),
      ],
    );
  }
}
