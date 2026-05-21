import 'package:flutter/material.dart';

import 'linkjoy_marsha_hater.dart';
import 'linkjoy_fridge_sweetheart.dart';

enum LinkjoyMagazineMarshaEbony {
  horizontal,
  horizontalReverse,
  vertical,
  verticalReverse,
}

class LinkjoyMagazineMarsha {
  double? _imageSize;

  double? _spacing;

  EdgeInsetsGeometry? _padding;

  EdgeInsetsGeometry? _margin;

  Color? _backgroundColor;

  Decoration? _decoration;

  BorderRadiusGeometry? _borderRadius;

  TextStyle? _textStyle;

  LinkjoyFridgeBookshelf _size = LinkjoyFridgeBookshelf.medium;

  LinkjoyMagazineMarshaEbony _layout = LinkjoyMagazineMarshaEbony.horizontal;

  double? _width;

  double? _height;

  Color? _textColor;

  Color? _borderColor;

  double _borderWidth = 1.0;

  bool _shouldCenter = false;

  LinkjoyMagazineMarsha();

  LinkjoyMagazineMarsha shouldCenter(bool shouldCenter) {
    _shouldCenter = shouldCenter;
    return this;
  }

  LinkjoyMagazineMarsha size(LinkjoyFridgeBookshelf size) {
    _size = size;
    return this;
  }

  LinkjoyMagazineMarsha width(double width) {
    _width = width;
    return this;
  }

  LinkjoyMagazineMarsha height(double height) {
    _height = height;
    return this;
  }

  LinkjoyMagazineMarsha textColor(Color color) {
    _textColor = color;
    return this;
  }

  LinkjoyMagazineMarsha border({Color? color, double width = 1.0}) {
    _borderColor = color;
    _borderWidth = width;
    return this;
  }

  LinkjoyMagazineMarsha micro() {
    return size(LinkjoyFridgeBookshelf.micro);
  }

  LinkjoyMagazineMarsha tiny() {
    return size(LinkjoyFridgeBookshelf.tiny);
  }

  LinkjoyMagazineMarsha mini() {
    return size(LinkjoyFridgeBookshelf.mini);
  }

  LinkjoyMagazineMarsha small() {
    return size(LinkjoyFridgeBookshelf.small);
  }

  LinkjoyMagazineMarsha medium() {
    return size(LinkjoyFridgeBookshelf.medium);
  }

  LinkjoyMagazineMarsha large() {
    return size(LinkjoyFridgeBookshelf.large);
  }

  LinkjoyMagazineMarsha layout(LinkjoyMagazineMarshaEbony layout) {
    _layout = layout;
    return this;
  }

  LinkjoyMagazineMarsha horizontal() {
    return layout(LinkjoyMagazineMarshaEbony.horizontal);
  }

  LinkjoyMagazineMarsha horizontalReverse() {
    return layout(LinkjoyMagazineMarshaEbony.horizontalReverse);
  }

  LinkjoyMagazineMarsha vertical() {
    return layout(LinkjoyMagazineMarshaEbony.vertical);
  }

  LinkjoyMagazineMarsha verticalReverse() {
    return layout(LinkjoyMagazineMarshaEbony.verticalReverse);
  }

  LinkjoyMagazineMarsha padding(EdgeInsetsGeometry padding) {
    _padding = padding;
    return this;
  }

  LinkjoyMagazineMarsha margin(EdgeInsetsGeometry margin) {
    _margin = margin;
    return this;
  }

  LinkjoyMagazineMarsha decoration(Decoration decoration) {
    _decoration = decoration;
    return this;
  }

  LinkjoyMagazineMarsha spacing(double spacing) {
    _spacing = spacing;
    return this;
  }

  LinkjoyMagazineMarsha backgroundColor(Color color) {
    _backgroundColor = color;
    return this;
  }

  LinkjoyMagazineMarsha textStyle(TextStyle textStyle) {
    _textStyle = textStyle;
    return this;
  }

  LinkjoyMagazineMarsha imageSize(double imageSize) {
    _imageSize = imageSize;
    return this;
  }

  LinkjoyMagazineMarsha borderRadius(BorderRadiusGeometry borderRadius) {
    _borderRadius = borderRadius;
    return this;
  }

  LinkjoyMagazineMarsha borderRadiusAll(double radius) {
    _borderRadius = BorderRadius.all(Radius.circular(radius));
    return this;
  }

  LinkjoyMagazineMarsha circle() {
    _borderRadius = BorderRadius.circular(100);
    return this;
  }

  double _getImageSize() {
    return _imageSize ??
        switch (_size) {
          LinkjoyFridgeBookshelf.micro => 8,
          LinkjoyFridgeBookshelf.tiny => 12,
          LinkjoyFridgeBookshelf.mini => 16,
          LinkjoyFridgeBookshelf.small => 24,
          LinkjoyFridgeBookshelf.medium => 32,
          LinkjoyFridgeBookshelf.large => 40,
        };
  }

  double _getSpacing() {
    return _spacing ??
        switch (_size) {
          LinkjoyFridgeBookshelf.micro => 2,
          LinkjoyFridgeBookshelf.tiny => 3,
          LinkjoyFridgeBookshelf.mini => 4,
          LinkjoyFridgeBookshelf.small => 8,
          LinkjoyFridgeBookshelf.medium => 12,
          LinkjoyFridgeBookshelf.large => 16,
        };
  }

  EdgeInsets _getPadding() {
    if (_padding != null) {
      return _padding!.resolve(TextDirection.ltr);
    }
    return switch (_size) {
      LinkjoyFridgeBookshelf.micro => const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 3,
      ),
      LinkjoyFridgeBookshelf.tiny => const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      LinkjoyFridgeBookshelf.mini => const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      LinkjoyFridgeBookshelf.small => const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      LinkjoyFridgeBookshelf.medium => const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      LinkjoyFridgeBookshelf.large => const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
    };
  }

  TextStyle _getTextStyle() {
    if (_textStyle != null) {
      return _textStyle!;
    }

    final baseStyle = LinkjoyMarshaHater.caption_M;
    return baseStyle.copyWith(
      fontSize: switch (_size) {
        LinkjoyFridgeBookshelf.micro => 8,
        LinkjoyFridgeBookshelf.tiny => 10,
        LinkjoyFridgeBookshelf.mini => 12,
        LinkjoyFridgeBookshelf.small => 14,
        LinkjoyFridgeBookshelf.medium => 16,
        LinkjoyFridgeBookshelf.large => 18,
      },
      color: _textColor,
    );
  }

  BorderRadius _getDefaultBorderRadius() {
    return switch (_size) {
      LinkjoyFridgeBookshelf.micro => BorderRadius.circular(2),
      LinkjoyFridgeBookshelf.tiny => BorderRadius.circular(3),
      LinkjoyFridgeBookshelf.mini => BorderRadius.circular(4),
      LinkjoyFridgeBookshelf.small => BorderRadius.circular(6),
      LinkjoyFridgeBookshelf.medium => BorderRadius.circular(8),
      LinkjoyFridgeBookshelf.large => BorderRadius.circular(10),
    };
  }

  Widget build(IconData? icon, String text) {
    if (icon == null) {
      return _buildTextOnly(text);
    }
    return buildWithImageProvider(icon, text);
  }

  Widget text(String text) {
    return _buildTextOnly(text);
  }

  Widget buildWithImageProvider(IconData icon, String text) {
    if (_backgroundColor == null &&
        _decoration == null &&
        _margin == null &&
        _borderColor == null &&
        _width == null &&
        _height == null) {
      return _buildContent(icon, text);
    }

    final borderRadius = _borderRadius ?? _getDefaultBorderRadius();
    BoxDecoration decoration;
    if (_decoration != null && _decoration is BoxDecoration) {
      decoration = (_decoration as BoxDecoration).copyWith(
        borderRadius: _decoration is BoxDecoration
            ? (_decoration as BoxDecoration).borderRadius ?? borderRadius
            : borderRadius,
        border: _borderColor != null
            ? Border.all(color: _borderColor!, width: _borderWidth)
            : null,
      );
    } else {
      decoration = BoxDecoration(
        borderRadius: borderRadius,
        color: _backgroundColor,
        border: _borderColor != null
            ? Border.all(color: _borderColor!, width: _borderWidth)
            : null,
      );
    }

    return Container(
      margin: _margin,
      width: _width,
      height: _height,
      child: Container(
        padding: _getPadding(),
        decoration: decoration,
        alignment: _shouldCenter ? Alignment.center : null,
        child: _buildContent(icon, text),
      ),
    );
  }

  Widget _buildTextOnly(String text) {
    if (_backgroundColor == null &&
        _decoration == null &&
        _margin == null &&
        _borderColor == null &&
        _width == null &&
        _height == null) {
      return Text(text, style: _getTextStyle());
    }

    final borderRadius = _borderRadius ?? _getDefaultBorderRadius();
    BoxDecoration decoration;
    if (_decoration != null && _decoration is BoxDecoration) {
      decoration = (_decoration as BoxDecoration).copyWith(
        borderRadius: _decoration is BoxDecoration
            ? (_decoration as BoxDecoration).borderRadius ?? borderRadius
            : borderRadius,
        border: _borderColor != null
            ? Border.all(color: _borderColor!, width: _borderWidth)
            : null,
      );
    } else {
      decoration = BoxDecoration(
        borderRadius: borderRadius,
        color: _backgroundColor,
        border: _borderColor != null
            ? Border.all(color: _borderColor!, width: _borderWidth)
            : null,
      );
    }

    return Container(
      margin: _margin,
      width: _width,
      height: _height,
      child: Container(
        padding: _getPadding(),
        decoration: decoration,
        alignment: _shouldCenter ? Alignment.center : null,
        child: Text(text, style: _getTextStyle()),
      ),
    );
  }

  Widget _buildContent(IconData icon, String text) {
    Widget iconWidget = Icon(icon, size: _getImageSize());

    final textWidget = Text(text, style: _getTextStyle());

    final currentSpacing = _getSpacing();

    switch (_layout) {
      case LinkjoyMagazineMarshaEbony.horizontal:
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            iconWidget,
            if (currentSpacing > 0) SizedBox(width: currentSpacing),
            textWidget,
          ],
        );
      case LinkjoyMagazineMarshaEbony.horizontalReverse:
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            textWidget,
            if (currentSpacing > 0) SizedBox(width: currentSpacing),
            iconWidget,
          ],
        );
      case LinkjoyMagazineMarshaEbony.vertical:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            iconWidget,
            if (currentSpacing > 0) SizedBox(height: currentSpacing),
            textWidget,
          ],
        );
      case LinkjoyMagazineMarshaEbony.verticalReverse:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            textWidget,
            if (currentSpacing > 0) SizedBox(height: currentSpacing),
            iconWidget,
          ],
        );
    }
  }
}
