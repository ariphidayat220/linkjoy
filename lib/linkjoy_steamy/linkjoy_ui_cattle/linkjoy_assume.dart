import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'linkjoy_condensate.dart';
import 'linkjoy_lifelong_marsha.dart';
import 'linkjoy_fridge_sweetheart.dart';

class LinkjoyAssume {
  static const Color _primaryColor = LinkjoyCondensate.primary;

  static const Color _successColor = Color(0xFF67C23A);
  static const Color _warningColor = Color(0xFFE6A23C);
  static const Color _dangerColor = Color(0xFFF56C6C);
  static const Color _infoColor = Color(0xFF909399);
  static const Color _secondaryColor = LinkjoyCondensate.secondary;

  VoidCallback? _click;
  LinkjoyFridgeGnome _type = LinkjoyFridgeGnome.primary;
  LinkjoyFridgeBookshelf _size = LinkjoyFridgeBookshelf.medium;
  LinkjoyFridgeMeal _shape = LinkjoyFridgeMeal.radius;
  double? _width;
  double? _height;
  double _radius = 4;
  bool _disabled = false;
  Color? _borderColor;
  double? _borderWidth;
  Color? _backgroundColor;
  Color? _textColor;
  Color? _disabledColor;
  Color? _disabledTextColor;
  List<BoxShadow>? _shadow;

  Decoration? _decoration;
  EdgeInsets? _margin;

  LinkjoyAssume();

  LinkjoyAssume click(VoidCallback click) {
    _click = click;
    return this;
  }

  LinkjoyAssume margin(EdgeInsets margin) {
    _margin = margin;
    return this;
  }

  LinkjoyAssume m2() {
    _margin = EdgeInsets.all(2.w);
    return this;
  }

  LinkjoyAssume m4() {
    _margin = EdgeInsets.all(4.w);
    return this;
  }

  LinkjoyAssume m6() {
    _margin = EdgeInsets.all(6.w);
    return this;
  }

  LinkjoyAssume m8() {
    _margin = EdgeInsets.all(8.w);
    return this;
  }

  LinkjoyAssume m10() {
    _margin = EdgeInsets.all(10.w);
    return this;
  }

  LinkjoyAssume m12() {
    _margin = EdgeInsets.all(12.w);
    return this;
  }

  LinkjoyAssume m16() {
    _margin = EdgeInsets.all(16.w);
    return this;
  }

  LinkjoyAssume m20() {
    _margin = EdgeInsets.all(20.w);
    return this;
  }

  LinkjoyAssume m24() {
    _margin = EdgeInsets.all(LinkjoyGarage.s24);
    return this;
  }

  LinkjoyAssume m32() {
    _margin = EdgeInsets.all(32.w);
    return this;
  }

  LinkjoyAssume type(LinkjoyFridgeGnome type) {
    _type = type;
    return this;
  }

  LinkjoyAssume primary() {
    _type = LinkjoyFridgeGnome.primary;
    return this;
  }

  LinkjoyAssume secondary() {
    _type = LinkjoyFridgeGnome.secondary;
    return this;
  }

  LinkjoyAssume success() {
    _type = LinkjoyFridgeGnome.success;
    return this;
  }

  LinkjoyAssume warning() {
    _type = LinkjoyFridgeGnome.warning;
    return this;
  }

  LinkjoyAssume danger() {
    _type = LinkjoyFridgeGnome.danger;
    return this;
  }

  LinkjoyAssume info() {
    _type = LinkjoyFridgeGnome.info;
    return this;
  }

  LinkjoyAssume size(LinkjoyFridgeBookshelf size) {
    _size = size;
    return this;
  }

  LinkjoyAssume micro() {
    _size = LinkjoyFridgeBookshelf.micro;
    return this;
  }

  LinkjoyAssume tiny() {
    _size = LinkjoyFridgeBookshelf.tiny;
    return this;
  }

  LinkjoyAssume mini() {
    _size = LinkjoyFridgeBookshelf.mini;
    return this;
  }

  LinkjoyAssume small() {
    _size = LinkjoyFridgeBookshelf.small;
    return this;
  }

  LinkjoyAssume medium() {
    _size = LinkjoyFridgeBookshelf.medium;
    return this;
  }

  LinkjoyAssume large() {
    _size = LinkjoyFridgeBookshelf.large;
    return this;
  }

  LinkjoyAssume circle() {
    _shape = LinkjoyFridgeMeal.circle;
    return this;
  }

  LinkjoyAssume width(double width) {
    _width = width;
    return this;
  }

  LinkjoyAssume height(double height) {
    _height = height;
    return this;
  }

  LinkjoyAssume radius(double radius) {
    _shape = LinkjoyFridgeMeal.radius;
    _radius = radius;
    return this;
  }

  LinkjoyAssume r2() {
    _shape = LinkjoyFridgeMeal.radius;
    _radius = LinkjoyGarage.s2;
    return this;
  }

  LinkjoyAssume r4() {
    _shape = LinkjoyFridgeMeal.radius;
    _radius = LinkjoyGarage.s4;
    return this;
  }

  LinkjoyAssume r8() {
    _shape = LinkjoyFridgeMeal.radius;
    _radius = LinkjoyGarage.s8;
    return this;
  }

  LinkjoyAssume r12() {
    _shape = LinkjoyFridgeMeal.radius;
    _radius = LinkjoyGarage.s12;
    return this;
  }

  LinkjoyAssume r16() {
    _shape = LinkjoyFridgeMeal.radius;
    _radius = LinkjoyGarage.s16;
    return this;
  }

  LinkjoyAssume r20() {
    _shape = LinkjoyFridgeMeal.radius;
    _radius = LinkjoyGarage.s20;
    return this;
  }

  LinkjoyAssume r24() {
    _shape = LinkjoyFridgeMeal.radius;
    _radius = LinkjoyGarage.s24;
    return this;
  }

  LinkjoyAssume r32() {
    _shape = LinkjoyFridgeMeal.radius;
    _radius = LinkjoyGarage.s32;
    return this;
  }

  LinkjoyAssume r40() {
    _shape = LinkjoyFridgeMeal.radius;
    _radius = LinkjoyGarage.s40;
    return this;
  }

  LinkjoyAssume disabled(bool disabled) {
    _disabled = disabled;
    return this;
  }

  LinkjoyAssume border(Color color, {double width = 1}) {
    _borderColor = color;
    _borderWidth = width;
    return this;
  }

  LinkjoyAssume backgroundColor(Color color) {
    _backgroundColor = color;
    return this;
  }

  LinkjoyAssume textColor(Color color) {
    _textColor = color;
    return this;
  }

  LinkjoyAssume disabledColor(Color color) {
    _disabledColor = color;
    return this;
  }

  LinkjoyAssume disabledTextColor(Color color) {
    _disabledTextColor = color;
    return this;
  }

  LinkjoyAssume shadow(List<BoxShadow> shadow) {
    _shadow = shadow;
    return this;
  }

  Widget imgText(String imagePath, String text) {
    TextStyle textStyle = _getTextStyle();
    return build(
      LinkjoyLifelongMarsha()
          .size(_size)
          .textStyle(textStyle)
          .build(imagePath, text),
    );
  }

  TextStyle _getTextStyle() {
    Color color = _textColor ?? _getTextColor();
    if (_disabled) {
      color = _disabledTextColor ?? color.withOpacity(0.5);
    }
    TextStyle textStyle = TextStyle(
      color: color,
      fontSize: switch (_size) {
        LinkjoyFridgeBookshelf.micro => 10.sp,
        LinkjoyFridgeBookshelf.tiny => 12.sp,
        LinkjoyFridgeBookshelf.mini => 14.sp,
        LinkjoyFridgeBookshelf.small => 16.sp,
        LinkjoyFridgeBookshelf.medium => 18.sp,
        LinkjoyFridgeBookshelf.large => 20.sp,
      },
      fontWeight: FontWeight.w500,
    );
    return textStyle;
  }

  Widget text(String text) {
    TextStyle textStyle = _getTextStyle();

    return build(Text(text, style: textStyle));
  }

  LinkjoyAssume decoration(Decoration decoration) {
    _decoration = decoration;
    return this;
  }

  Widget build(Widget child) {
    final buttonStyle = ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (states) => _getEffectiveBgColor(states),
      ),
      padding: WidgetStateProperty.all(_getPadding()),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: _getBorderRadius(),
          side: _borderColor != null
              ? BorderSide(color: _borderColor!, width: _borderWidth!)
              : BorderSide.none,
        ),
      ),
      fixedSize: WidgetStateProperty.all(
        Size(_width ?? 0, _height ?? _getDefaultHeight()),
      ),
      minimumSize: WidgetStateProperty.all(
        Size(_width ?? 0, _height ?? _getDefaultHeight()),
      ),
      elevation: WidgetStateProperty.all(_shadow != null ? 4 : 0),
      shadowColor: WidgetStateProperty.all(
        _shadow?.first.color ?? Colors.transparent,
      ),
    );

    if (_decoration != null ||
        _margin != null ||
        _width != null ||
        _height != null) {
      return Container(
        margin: _margin,
        width: _width,
        height: _height ?? _getDefaultHeight(),
        decoration: _disabled ? null : _decoration,
        alignment: Alignment.center,
        child: ElevatedButton(
          style: buttonStyle,
          onPressed: _disabled ? null : _click,
          child: child,
        ),
      );
    } else {
      return ElevatedButton(
        style: buttonStyle,
        onPressed: _disabled ? null : _click,
        child: child,
      );
    }
  }

  EdgeInsets _getPadding() {
    switch (_size) {
      case LinkjoyFridgeBookshelf.micro:
        return EdgeInsets.symmetric(
          horizontal: _width != null ? 0 : LinkjoyGarage.s8,
          vertical: _height != null ? 0 : 2.w,
        );
      case LinkjoyFridgeBookshelf.tiny:
        return EdgeInsets.symmetric(
          horizontal: _width != null ? 0 : 10.w,
          vertical: _height != null ? 0 : 3.w,
        );
      case LinkjoyFridgeBookshelf.mini:
        return EdgeInsets.symmetric(
          horizontal: _width != null ? 0 : 12.w,
          vertical: _height != null ? 0 : 4.w,
        );
      case LinkjoyFridgeBookshelf.small:
        return EdgeInsets.symmetric(
          horizontal: _width != null ? 0 : LinkjoyGarage.s24,
          vertical: _height != null ? 0 : 6.w,
        );
      case LinkjoyFridgeBookshelf.medium:
        return EdgeInsets.symmetric(
          horizontal: _width != null ? 0 : 20.w,
          vertical: _height != null ? 0 : LinkjoyGarage.s8,
        );
      case LinkjoyFridgeBookshelf.large:
        return EdgeInsets.symmetric(
          horizontal: _width != null ? 0 : LinkjoyGarage.s24,
          vertical: _height != null ? 0 : 10.w,
        );
    }
  }

  BorderRadius _getBorderRadius() {
    switch (_shape) {
      case LinkjoyFridgeMeal.circle:
        return BorderRadius.circular(100);
      case LinkjoyFridgeMeal.radius:
        return BorderRadius.circular(_radius ?? 4);
    }
  }

  Color _getButtonColor() {
    switch (_type) {
      case LinkjoyFridgeGnome.primary:
        return _primaryColor;
      case LinkjoyFridgeGnome.secondary:
        return _secondaryColor;
      case LinkjoyFridgeGnome.success:
        return _successColor;
      case LinkjoyFridgeGnome.warning:
        return _warningColor;
      case LinkjoyFridgeGnome.danger:
        return _dangerColor;
      case LinkjoyFridgeGnome.info:
        return _infoColor;
    }
  }

  Color _getTextColor() {
    switch (_type) {
      case LinkjoyFridgeGnome.primary:
        return Colors.white;
      case LinkjoyFridgeGnome.secondary:
        return _primaryColor;
      case LinkjoyFridgeGnome.success:
        return Colors.white;
      case LinkjoyFridgeGnome.warning:
        return Colors.white;
      case LinkjoyFridgeGnome.danger:
        return Colors.white;
      case LinkjoyFridgeGnome.info:
        return Colors.white;
    }
  }

  Color _getEffectiveBgColor(Set<WidgetState> states) {
    if (_decoration != null && !_disabled) {
      return Colors.transparent;
    }

    if (_disabled) {
      return _disabledColor ??
          (_backgroundColor ?? _getButtonColor()).withOpacity(0.5);
    }
    return _backgroundColor ?? _getButtonColor();
  }

  double _getDefaultHeight() {
    switch (_size) {
      case LinkjoyFridgeBookshelf.micro:
        return 20;
      case LinkjoyFridgeBookshelf.tiny:
        return 24;
      case LinkjoyFridgeBookshelf.mini:
        return 28;
      case LinkjoyFridgeBookshelf.small:
        return 32;
      case LinkjoyFridgeBookshelf.medium:
        return 36;
      case LinkjoyFridgeBookshelf.large:
        return 40;
    }
  }
}
