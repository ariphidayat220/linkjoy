import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_bookshelf.dart';
import 'package:flutter/material.dart';

class LinkjoyMagazineAssume {
  static Widget circle(
    IconData icon,
    VoidCallback? onPressed, {
    Color? iconColor,
    Color? borderColor,
    Color? bgColor,
    LinkjoyBookshelf? size,
    double? borderWidth,
  }) {
    return build(
      icon,
      onPressed,
      iconColor: iconColor ?? LinkjoyAve.primaryMain,
      borderColor: borderColor ?? LinkjoyAve.primaryMain,
      bgColor: bgColor ?? Colors.black12,
      iconSize: size == null ? LinkjoyDiscard.buttonHeightMd : size.size(),
      radius: null,
      borderWidth: borderWidth ?? 1,
    );
  }

  static Widget round(
    IconData icon,
    VoidCallback? onPressed, {
    Color? iconColor,
    Color? borderColor,
    Color? bgColor,
    LinkjoyBookshelf? size,
    double? radius,
    double? borderWidth,
  }) {
    return build(
      icon,
      onPressed,
      iconColor: iconColor ?? LinkjoyAve.primaryMain,
      borderColor: borderColor ?? LinkjoyAve.primaryMain,
      bgColor: bgColor ?? Colors.black12,
      iconSize: size == null ? LinkjoyDiscard.buttonHeightMd : size.size(),
      radius: radius ?? LinkjoyDiscard.radiusMedium,
      borderWidth: borderWidth ?? 1,
    );
  }

  static Widget build(
    IconData icon,
    VoidCallback? onPressed, {
    Color? iconColor,
    Color? borderColor,
    Color? bgColor,
    double? iconSize,
    double? radius,
    double? borderWidth,
  }) {
    iconSize = iconSize ?? LinkjoyDiscard.buttonHeightMd;

    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      iconSize: iconSize / 2,
      style: IconButton.styleFrom(
        padding: EdgeInsets.zero,
        fixedSize: Size(iconSize, iconSize),
        minimumSize: Size(iconSize, iconSize),
        overlayColor: Colors.white,
        backgroundColor: bgColor,
        foregroundColor: iconColor,
        side: borderWidth == null || borderColor == null || borderWidth <= 0
            ? null
            : BorderSide(color: borderColor, width: borderWidth),
        shape: radius == null
            ? const CircleBorder()
            : RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
      ),
    );
  }
}
