import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_marsha_hater.dart';
import 'package:flutter/material.dart';

class LinkjoyForest {
  static Widget _tag(
    String text,
    TextStyle textStyle,
    Color bgColor,
    Color? borderColor,
    EdgeInsetsGeometry padding,
    double radius,
  ) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(radius),
        border: borderColor == null
            ? null
            : Border.all(color: borderColor, width: 0.5),
      ),
      child: Text(text, style: textStyle),
    );
  }

  static Widget interests(String text) {
    return _tag(
      text,
      LinkjoyMarshaTriplet.caption,
      const Color(0x33F4258C),
      null,
      EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.md,
        vertical: LinkjoyGarage.xs,
      ),
      LinkjoyDiscard.radiusFull,
    );
  }

  static Widget language(String text) {
    return _tag(
      text,
      LinkjoyMarshaTriplet.smallThin.copyWith(color: LinkjoyAve.white),
      Colors.white12,
      Colors.black12,
      EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.sm,
        vertical: LinkjoyGarage.s4,
      ),
      LinkjoyDiscard.radiusFull,
    );
  }

  static Widget ratings(String text) {
    return _tag(
      text,
      LinkjoyMarshaTriplet.caption.copyWith(color: LinkjoyAve.primary800),
      LinkjoyAve.primary800,
      LinkjoyAve.primary900,
      EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.md,
        vertical: LinkjoyGarage.xs,
      ),
      LinkjoyDiscard.radiusMedium,
    );
  }
}
