import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_thrilled.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_bookshelf.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_marsha_hater.dart';
import 'package:flutter/material.dart';

class LinkjoyEllen {
  static const double _ELEVATION = 6;

  static Widget circleText(
    String text,
    VoidCallback? onPressed, {
    Color? bgColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
  }) {
    return _circleIconText(
      null,
      text,
      onPressed,
      bgColor: bgColor,
      textColor: textColor,
      size: size,
      fixedWidth: fixedWidth,
      elevation: elevation,
    );
  }

  static Widget circleIcon(
    IconData icon,
    VoidCallback? onPressed, {
    Color? bgColor,
    Color? iconColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
  }) {
    return _circleIconText(
      icon,
      null,
      onPressed,
      bgColor: bgColor,
      textColor: iconColor,
      size: size,
      fixedWidth: fixedWidth,
      elevation: elevation,
      padding: EdgeInsets.zero,
    );
  }

  static Widget circleIconText(
    IconData icon,
    String text,
    VoidCallback? onPressed, {
    Color? bgColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
    LinkjoyThrilled? direction,
  }) {
    return _circleIconText(
      icon,
      text,
      onPressed,
      bgColor: bgColor,
      textColor: textColor,
      size: size,
      fixedWidth: fixedWidth,
      elevation: elevation,
      direction: direction,
    );
  }

  static Widget _circleIconText(
    IconData? icon,
    String? text,
    VoidCallback? onPressed, {
    Color? bgColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
    EdgeInsetsGeometry? padding,
    LinkjoyThrilled? direction,
  }) {
    Widget child = _child(size, icon, textColor, text, direction);

    Size fixedSize = Size(fixedWidth ?? double.infinity, size.size());
    Size minimumSize = Size(fixedWidth ?? 0, fixedSize.height);
    padding = padding ?? size.padding();
    return _build(
      child,
      onPressed,
      LinkjoyDiscard.radiusFull,
      bgColor: bgColor,
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
    String? text,
    LinkjoyThrilled? direction,
  ) {
    TextStyle textStyle;
    if (size == LinkjoyBookshelf.xs) {
      textStyle = LinkjoyMarshaTriplet.buttonTextXs;
    } else if (size == LinkjoyBookshelf.sm) {
      textStyle = LinkjoyMarshaTriplet.buttonTextSm;
    } else if (size == LinkjoyBookshelf.lg) {
      textStyle = LinkjoyMarshaTriplet.buttonTextLg;
    } else if (size == LinkjoyBookshelf.xl) {
      textStyle = LinkjoyMarshaTriplet.buttonTextXl;
    } else {
      textStyle = LinkjoyMarshaTriplet.buttonText;
    }
    if (textColor != null) {
      textStyle = textStyle.copyWith(color: textColor);
    }
    if (icon == null && text == null) {
      return const SizedBox.shrink();
    }

    if (icon == null) {
      return Text(text!, style: textStyle);
    }

    if (text == null || text.isEmpty) {
      return Icon(
        icon,
        color: textStyle.color,
        size: textStyle.height! * textStyle.fontSize!,
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (direction == null || direction == LinkjoyThrilled.LTR)
          Icon(
            icon,
            color: textStyle.color,
            size: textStyle.height! * textStyle.fontSize!,
          ),
        if (direction == null || direction == LinkjoyThrilled.LTR)
          SizedBox(width: size.space()),
        Text(text, style: textStyle),
        if (direction == LinkjoyThrilled.RTL) SizedBox(width: size.space()),
        if (direction == LinkjoyThrilled.RTL)
          Icon(
            icon,
            color: textStyle.color,
            size: textStyle.height! * textStyle.fontSize!,
          ),
      ],
    );
  }

  static Widget circle(
    Widget child,
    VoidCallback? onPressed, {
    Color? bgColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? fixedHeight,
    Size? minimumSize,
    double? elevation,
    EdgeInsetsGeometry? padding,
  }) {
    Size fixedSize = Size(
      fixedWidth ?? double.infinity,
      fixedHeight ?? size.size(),
    );
    minimumSize = minimumSize ?? Size(fixedWidth ?? 0, fixedSize.height);

    return _build(
      child,
      onPressed,
      LinkjoyDiscard.radiusFull,
      bgColor: bgColor,
      fixedSize: fixedSize,
      minimumSize: minimumSize,
      padding: padding,
      elevation: elevation,
    );
  }

  static Widget roundText(
    String text,
    VoidCallback? onPressed, {
    double? radius,
    Color? bgColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
    bool disabled = false,
  }) {
    return _roundIconText(
      null,
      text,
      onPressed,
      radius: radius,
      bgColor: bgColor,
      textColor: textColor,
      size: size,
      fixedWidth: fixedWidth,
      elevation: elevation,
      disabled: disabled,
    );
  }

  static Widget roundIconText(
    IconData icon,
    String text,
    VoidCallback? onPressed, {
    double? radius,
    Color? bgColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
    LinkjoyThrilled? direction,
  }) {
    return _roundIconText(
      icon,
      text,
      onPressed,
      radius: radius,
      bgColor: bgColor,
      textColor: textColor,
      size: size,
      fixedWidth: fixedWidth,
      elevation: elevation,
      direction: direction,
    );
  }

  static Widget _roundIconText(
    IconData? icon,
    String text,
    VoidCallback? onPressed, {
    double? radius,
    Color? bgColor,
    Color? textColor,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    double? fixedWidth,
    double? elevation,
    LinkjoyThrilled? direction,
    disabled = false,
  }) {
    Widget child = _child(size, icon, textColor, text, direction);

    Size fixedSize = Size(fixedWidth ?? double.infinity, size.size());
    Size minimumSize = Size(fixedWidth ?? 0, fixedSize.height);
    EdgeInsetsGeometry padding = size.padding();

    return _build(
      child,
      onPressed,
      radius ?? LinkjoyDiscard.radiusMedium,
      bgColor: bgColor,
      fixedSize: fixedSize,
      elevation: elevation,
      minimumSize: minimumSize,
      padding: padding,
      disabled: disabled,
    );
  }

  static Widget round(
    Widget child,
    VoidCallback? onPressed, {
    double? radius,
    Color? bgColor,
    Color? textColor,
    double? fixedWidth,
    LinkjoyBookshelf size = LinkjoyBookshelf.md,
    EdgeInsetsGeometry? padding,
    double? elevation,
  }) {
    Size fixedSize = Size(fixedWidth ?? double.infinity, size.size());
    Size minimumSize = Size(fixedWidth ?? 0, fixedSize.height);
    return _build(
      child,
      onPressed,
      radius ?? LinkjoyDiscard.radiusMedium,
      bgColor: bgColor,
      fixedSize: fixedSize,
      minimumSize: minimumSize,
      padding: padding,
      elevation: elevation,
    );
  }

  static Widget _build(
    Widget child,
    VoidCallback? onPressed,
    double radius, {
    Color? bgColor,
    Size? fixedSize,
    Size? minimumSize,
    double? elevation,
    EdgeInsetsGeometry? padding,
    bool disabled = false,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        padding: padding,
        elevation: elevation ?? (disabled ? 0 : _ELEVATION),
        overlayColor: Colors.white,
        shadowColor:
            bgColor ??
            (disabled ? LinkjoyAve.disabled : LinkjoyAve.primaryMain),
        backgroundColor:
            bgColor ??
            (disabled ? LinkjoyAve.disabled : LinkjoyAve.primaryMain),
        fixedSize: fixedSize,
        minimumSize: minimumSize,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: child,
    );
  }
}
