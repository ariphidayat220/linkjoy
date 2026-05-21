import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_bookshelf.dart';
import 'package:flutter/material.dart';

class LinkjoyWear {
  static Widget circle(
    IconData icon, {
    Color? iconColor,
    Color? borderColor,
    Color? bgColor,
    LinkjoyBookshelf? size,
    double? borderWidth,
    double? iconSizeRatio,
  }) {
    return build(
      icon,
      iconColor: iconColor ?? LinkjoyAve.primaryMain,
      borderColor: borderColor ?? LinkjoyAve.primaryMain,
      bgColor: bgColor ?? Colors.black26,
      iconSize: size == null ? LinkjoyDiscard.buttonHeightMd : size.size(),
      radius: null,
      borderWidth: borderWidth,
      iconSizeRatio: iconSizeRatio,
    );
  }

  static Widget round(
    IconData icon, {
    Color? iconColor,
    Color? borderColor,
    Color? bgColor,
    LinkjoyBookshelf? size,
    double? radius,
    double? borderWidth,
    double? iconSizeRatio,
  }) {
    return build(
      icon,
      iconColor: iconColor ?? LinkjoyAve.primaryMain,
      borderColor: borderColor ?? LinkjoyAve.primaryMain,
      bgColor: bgColor ?? Colors.black26,
      iconSize: size == null ? LinkjoyDiscard.buttonHeightMd : size.size(),
      radius: radius ?? LinkjoyDiscard.radiusMedium,
      borderWidth: borderWidth,
      iconSizeRatio: iconSizeRatio,
    );
  }

  static Widget build(
    IconData icon, {
    Color? iconColor,
    Color? borderColor,
    Color? bgColor,
    double? iconSize,
    double? radius,
    double? borderWidth,
    double? iconSizeRatio,
  }) {
    iconSize = iconSize ?? LinkjoyDiscard.buttonHeightMd;

    return Container(
      width: iconSize,
      height: iconSize,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(
          radius ?? LinkjoyDiscard.radiusFull,
        ),
        border: borderWidth == null || borderColor == null || borderWidth == 0
            ? null
            : Border.all(color: borderColor, width: borderWidth),
      ),
      child: Icon(
        icon,
        size: iconSize * (iconSizeRatio ?? 0.6),
        color: iconColor,
      ),
    );
  }
}
