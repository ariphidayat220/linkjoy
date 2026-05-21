import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_bookshelf.dart';
import 'package:flutter/material.dart';

class LinkjoyPondAssume {
  static Widget circleText(
    String text,
    VoidCallback? onPressed, {
    Color? borderColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
  }) {
    return _circleIconText(
      null,
      text,
      onPressed,
      borderColor: borderColor,
      textColor: textColor,
      size: size,
      fixedWidth: fixedWidth,
      elevation: elevation,
    );
  }

  static Widget circleIconText(
    IconData icon,
    String text,
    VoidCallback? onPressed, {
    Color? borderColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
  }) {
    return _circleIconText(
      icon,
      text,
      onPressed,
      borderColor: borderColor,
      textColor: textColor,
      size: size,
      fixedWidth: fixedWidth,
      elevation: elevation,
    );
  }

  static Widget _circleIconText(
    IconData? icon,
    String text,
    VoidCallback? onPressed, {
    Color? borderColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
  }) {
    Widget child = _child(size, icon, textColor, text);

    Size fixedSize = Size(fixedWidth ?? double.infinity, size.size());
    Size minimumSize = Size(fixedWidth ?? 0, fixedSize.height);
    EdgeInsetsGeometry padding = size.padding();
    return _build(
      child,
      onPressed,
      LinkjoyDiscard.radiusFull,
      borderColor: borderColor,
      fixedSize: fixedSize,
      elevation: elevation,
      minimumSize: minimumSize,
      padding: padding,
    );
  }

  static Widget _child(
    LinkjoyBookshelf size,
    IconData? icon,
    Color? textColor,
    String text,
  ) {
    TextStyle textStyle = size.textStyle();
    if (textColor != null) {
      textStyle = textStyle.copyWith(color: textColor);
    }
    Widget textWidget = Text(text, style: textStyle);

    if (icon == null) {
      return textWidget;
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: textStyle.color,
          size: textStyle.height! * textStyle.fontSize!,
        ),
        SizedBox(width: size.space()),
        textWidget,
      ],
    );
  }

  static Widget circle(
    Widget child,
    VoidCallback? onPressed, {
    Color? borderColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
    EdgeInsetsGeometry? padding,
  }) {
    Size fixedSize = Size(fixedWidth ?? double.infinity, size.size());
    Size minimumSize = Size(0, fixedSize.height);
    padding = padding ?? size.padding();
    return _build(
      child,
      onPressed,
      LinkjoyDiscard.radiusFull,
      borderColor: borderColor,
      fixedSize: fixedSize,
      minimumSize: minimumSize,
      elevation: elevation,
      padding: padding,
    );
  }

  static Widget roundText(
    String text,
    VoidCallback? onPressed, {
    double? radius,
    Color? borderColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
  }) {
    return _roundIconText(
      null,
      text,
      onPressed,
      radius: radius,
      borderColor: borderColor,
      textColor: textColor,
      size: size,
      fixedWidth: fixedWidth,
      elevation: elevation,
    );
  }

  static Widget roundIconText(
    IconData icon,
    String text,
    VoidCallback? onPressed, {
    double? radius,
    Color? borderColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
  }) {
    return _roundIconText(
      icon,
      text,
      onPressed,
      radius: radius,
      borderColor: borderColor,
      textColor: textColor,
      size: size,
      fixedWidth: fixedWidth,
      elevation: elevation,
    );
  }

  static Widget _roundIconText(
    IconData? icon,
    String text,
    VoidCallback? onPressed, {
    double? radius,
    Color? borderColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
  }) {
    Widget child = _child(size, icon, textColor, text);

    Size fixedSize = Size(fixedWidth ?? double.infinity, size.size());
    Size minimumSize = Size(fixedWidth ?? 0, fixedSize.height);
    EdgeInsetsGeometry padding = size.padding();

    return _build(
      child,
      onPressed,
      radius ?? LinkjoyDiscard.radiusMedium,
      borderColor: borderColor,
      fixedSize: fixedSize,
      elevation: elevation,
      minimumSize: minimumSize,
      padding: padding,
    );
  }

  static Widget round(
    Widget child,
    VoidCallback? onPressed, {
    double? radius,
    Color? borderColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
    EdgeInsetsGeometry? padding,
  }) {
    Size fixedSize = Size(fixedWidth ?? double.infinity, size.size());
    Size minimumSize = Size(0, fixedSize.height);
    return _build(
      child,
      onPressed,
      radius ?? LinkjoyDiscard.radiusMedium,
      borderColor: borderColor,
      fixedSize: fixedSize,
      minimumSize: minimumSize,
      elevation: elevation,
      padding: padding,
    );
  }

  static OutlinedButton _build(
    Widget child,
    VoidCallback? onPressed,
    double radius, {
    Color? borderColor,
    Color? textColor,
    Size? minimumSize,
    Size? fixedSize,
    double? elevation,
    EdgeInsetsGeometry? padding,
  }) {
    textColor = textColor ?? LinkjoyAve.white;
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: padding,
        elevation: elevation,
        foregroundColor: textColor,
        side: BorderSide(
          color: (borderColor ?? textColor).withAlpha(128),
          width: 0.5,
        ),
        minimumSize: minimumSize,
        fixedSize: fixedSize,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: child,
    );
  }
}
