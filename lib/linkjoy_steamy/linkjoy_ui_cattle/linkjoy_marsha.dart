import 'package:flutter/material.dart';

import 'linkjoy_marsha_hater.dart';

class LinkjoyMarsha {
  final String _text;

  TextStyle? _style;

  TextAlign? _textAlign;

  TextDirection? _textDirection;

  TextOverflow? _overflow;

  int? _maxLines;

  bool? _softWrap;

  double? _textScaleFactor;

  TextWidthBasis? _textWidthBasis;

  TextHeightBehavior? _textHeightBehavior;

  String? _semanticsLabel;

  Locale? _locale;

  TextSelectionThemeData? _selectionTheme;

  LinkjoyMarsha(this._text);

  factory LinkjoyMarsha.title1B(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.title1_B);
  }

  factory LinkjoyMarsha.title1M(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.title1_M);
  }

  factory LinkjoyMarsha.title1R(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.title1_R);
  }

  factory LinkjoyMarsha.title2B(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.title2_B);
  }

  factory LinkjoyMarsha.title2M(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.title2_M);
  }

  factory LinkjoyMarsha.title2R(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.title2_R);
  }

  factory LinkjoyMarsha.title3B(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.title3_B);
  }

  factory LinkjoyMarsha.title3M(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.title3_M);
  }

  factory LinkjoyMarsha.title3R(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.title3_R);
  }

  factory LinkjoyMarsha.subtitleB(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.subtitle_B);
  }

  factory LinkjoyMarsha.subtitleM(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.subtitle_M);
  }

  factory LinkjoyMarsha.subtitleR(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.subtitle_R);
  }

  factory LinkjoyMarsha.bodyB(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.body_B);
  }

  factory LinkjoyMarsha.bodyM(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.body_M);
  }

  factory LinkjoyMarsha.bodyR(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.body_R);
  }

  factory LinkjoyMarsha.body2B(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.body2_B);
  }

  factory LinkjoyMarsha.body2M(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.body2_M);
  }

  factory LinkjoyMarsha.body2R(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.body2_R);
  }

  factory LinkjoyMarsha.captionB(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.caption_B);
  }

  factory LinkjoyMarsha.captionM(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.caption_M);
  }

  factory LinkjoyMarsha.captionR(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.caption_R);
  }

  factory LinkjoyMarsha.caption2B(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.caption2_B);
  }

  factory LinkjoyMarsha.caption2M(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.caption2_M);
  }

  factory LinkjoyMarsha.caption2R(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.caption2_R);
  }

  factory LinkjoyMarsha.wTitle1B(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_title1_B);
  }

  factory LinkjoyMarsha.wTitle1M(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_title1_M);
  }

  factory LinkjoyMarsha.wTitle1R(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_title1_R);
  }

  factory LinkjoyMarsha.wTitle2B(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_title2_B);
  }

  factory LinkjoyMarsha.wTitle2M(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_title2_M);
  }

  factory LinkjoyMarsha.wTitle2R(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_title2_R);
  }

  factory LinkjoyMarsha.wTitle3B(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_title3_B);
  }

  factory LinkjoyMarsha.wTitle3M(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_title3_M);
  }

  factory LinkjoyMarsha.wTitle3R(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_title3_R);
  }

  factory LinkjoyMarsha.wSubtitleB(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_subtitle_B);
  }

  factory LinkjoyMarsha.wSubtitleM(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_subtitle_M);
  }

  factory LinkjoyMarsha.wSubtitleR(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_subtitle_R);
  }

  factory LinkjoyMarsha.wBodyB(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_body_B);
  }

  factory LinkjoyMarsha.wBodyM(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_body_M);
  }

  factory LinkjoyMarsha.wBodyR(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_body_R);
  }

  factory LinkjoyMarsha.wBody2B(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_body2_B);
  }

  factory LinkjoyMarsha.wBody2M(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_body2_M);
  }

  factory LinkjoyMarsha.wBody2R(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_body2_R);
  }

  factory LinkjoyMarsha.wBody2R80(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_body2_R_80);
  }

  factory LinkjoyMarsha.wBody2R60(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_body2_R_60);
  }

  factory LinkjoyMarsha.wCaptionB(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_caption_B);
  }

  factory LinkjoyMarsha.wCaptionM(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_caption_M);
  }

  factory LinkjoyMarsha.wCaptionR(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_caption_R);
  }

  factory LinkjoyMarsha.wCaption2B(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_caption2_B);
  }

  factory LinkjoyMarsha.wCaption2M(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_caption2_M);
  }

  factory LinkjoyMarsha.wCaption2R(String text) {
    return LinkjoyMarsha(text).style(LinkjoyMarshaHater.w_caption2_R);
  }

  LinkjoyMarsha style(TextStyle style) {
    _style = style;
    return this;
  }

  LinkjoyMarsha color(Color color) {
    _style = _style?.copyWith(color: color) ?? TextStyle(color: color);
    return this;
  }

  LinkjoyMarsha weight(FontWeight weight) {
    _style =
        _style?.copyWith(fontWeight: weight) ?? TextStyle(fontWeight: weight);
    return this;
  }

  LinkjoyMarsha align(TextAlign align) {
    _textAlign = align;
    return this;
  }

  LinkjoyMarsha left() {
    return align(TextAlign.left);
  }

  LinkjoyMarsha center() {
    return align(TextAlign.center);
  }

  LinkjoyMarsha right() {
    return align(TextAlign.right);
  }

  LinkjoyMarsha direction(TextDirection direction) {
    _textDirection = direction;
    return this;
  }

  LinkjoyMarsha overflow(TextOverflow overflow) {
    _overflow = overflow;
    return this;
  }

  LinkjoyMarsha ellipsis() {
    return overflow(TextOverflow.ellipsis);
  }

  LinkjoyMarsha clip() {
    return overflow(TextOverflow.clip);
  }

  LinkjoyMarsha visible() {
    return overflow(TextOverflow.visible);
  }

  LinkjoyMarsha maxLines(int maxLines) {
    _maxLines = maxLines;
    return this;
  }

  LinkjoyMarsha singleLine() {
    return maxLines(1);
  }

  LinkjoyMarsha softWrap(bool softWrap) {
    _softWrap = softWrap;
    return this;
  }

  LinkjoyMarsha scale(double textScaleFactor) {
    _textScaleFactor = textScaleFactor;
    return this;
  }

  LinkjoyMarsha widthBasis(TextWidthBasis textWidthBasis) {
    _textWidthBasis = textWidthBasis;
    return this;
  }

  LinkjoyMarsha heightBehavior(TextHeightBehavior textHeightBehavior) {
    _textHeightBehavior = textHeightBehavior;
    return this;
  }

  LinkjoyMarsha semantics(String semanticsLabel) {
    _semanticsLabel = semanticsLabel;
    return this;
  }

  LinkjoyMarsha locale(Locale locale) {
    _locale = locale;
    return this;
  }

  LinkjoyMarsha selectionTheme(TextSelectionThemeData selectionTheme) {
    _selectionTheme = selectionTheme;
    return this;
  }

  LinkjoyMarsha opacity(double opacity) {
    if (_style != null) {
      _style = _style!.copyWith(color: _style!.color?.withOpacity(opacity));
    }
    return this;
  }

  LinkjoyMarsha underline({
    Color? color,
    TextDecorationStyle? style,
    double? thickness,
  }) {
    _style =
        _style?.copyWith(
          decoration: TextDecoration.underline,
          decorationColor: color,
          decorationStyle: style,
          decorationThickness: thickness,
        ) ??
        TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: color,
          decorationStyle: style,
          decorationThickness: thickness,
        );
    return this;
  }

  LinkjoyMarsha strikethrough({
    Color? color,
    TextDecorationStyle? style,
    double? thickness,
  }) {
    _style =
        _style?.copyWith(
          decoration: TextDecoration.lineThrough,
          decorationColor: color,
          decorationStyle: style,
          decorationThickness: thickness,
        ) ??
        TextStyle(
          decoration: TextDecoration.lineThrough,
          decorationColor: color,
          decorationStyle: style,
          decorationThickness: thickness,
        );
    return this;
  }

  LinkjoyMarsha letterSpacing(double letterSpacing) {
    _style =
        _style?.copyWith(letterSpacing: letterSpacing) ??
        TextStyle(letterSpacing: letterSpacing);
    return this;
  }

  LinkjoyMarsha height(double height) {
    _style = _style?.copyWith(height: height) ?? TextStyle(height: height);
    return this;
  }

  LinkjoyMarsha fontFamily(String fontFamily) {
    _style =
        _style?.copyWith(fontFamily: fontFamily) ??
        TextStyle(fontFamily: fontFamily);
    return this;
  }

  LinkjoyMarsha fontStyle(FontStyle fontStyle) {
    _style =
        _style?.copyWith(fontStyle: fontStyle) ??
        TextStyle(fontStyle: fontStyle);
    return this;
  }

  LinkjoyMarsha italic() {
    return fontStyle(FontStyle.italic);
  }

  Text build() {
    return Text(
      _text,
      style: _style,
      textAlign: _textAlign,
      textDirection: _textDirection,
      overflow: _overflow,
      maxLines: _maxLines,
      softWrap: _softWrap,
      textScaleFactor: _textScaleFactor,
      textWidthBasis: _textWidthBasis,
      textHeightBehavior: _textHeightBehavior,
      semanticsLabel: _semanticsLabel,
      locale: _locale,
      selectionColor: _selectionTheme?.selectionColor,
    );
  }
}
