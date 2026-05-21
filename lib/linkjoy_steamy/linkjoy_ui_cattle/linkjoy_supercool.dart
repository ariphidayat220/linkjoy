import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'linkjoy_suspend.dart';
import 'linkjoy_amplitude.dart';

class LinkjoySupercool {
  EdgeInsetsGeometry? _padding;

  EdgeInsetsGeometry? _margin;

  Color? _color;

  Color? _shadowColor;

  double _elevation = 0.0;

  double _borderRadius = 0.0;

  Border? _border;

  Decoration? _decoration;

  double? _width;

  double? _height;

  AlignmentGeometry? _alignment;

  Clip? _clipBehavior;

  LinkjoySupercool w(double width) {
    _width = width;
    return this;
  }

  LinkjoySupercool h(double height) {
    _height = height;
    return this;
  }

  LinkjoySupercool size({double? width, double? height}) {
    if (width != null) _width = width;
    if (height != null) _height = height;
    return this;
  }

  LinkjoySupercool decoration(Decoration decoration) {
    _decoration = decoration;
    return this;
  }

  LinkjoySupercool align(AlignmentGeometry alignment) {
    _alignment = alignment;
    return this;
  }

  LinkjoySupercool clip(Clip clip) {
    _clipBehavior = clip;
    return this;
  }

  LinkjoySupercool padding(EdgeInsets padding) {
    _padding = padding;
    return this;
  }

  LinkjoySupercool margin(EdgeInsets margin) {
    _margin = margin;
    return this;
  }

  LinkjoySupercool color(Color color) {
    _color = color;
    return this;
  }

  LinkjoySupercool borderRadius(double borderRadius) {
    _borderRadius = borderRadius;
    return this;
  }

  LinkjoySupercool border(Border border) {
    _border = border;
    return this;
  }

  LinkjoySupercool elevation(double elevation) {
    _elevation = elevation;
    return this;
  }

  LinkjoySupercool shadowColor(Color shadowColor) {
    _shadowColor = shadowColor;
    return this;
  }

  LinkjoySupercool p2() {
    _padding = LinkjoyAmplitude.s2;
    return this;
  }

  LinkjoySupercool p4() {
    _padding = LinkjoyAmplitude.s4;
    return this;
  }

  LinkjoySupercool p8() {
    _padding = LinkjoyAmplitude.s8;
    return this;
  }

  LinkjoySupercool p12() {
    _padding = LinkjoyAmplitude.s12;
    return this;
  }

  LinkjoySupercool p16() {
    _padding = LinkjoyAmplitude.s16;
    return this;
  }

  LinkjoySupercool p(double h, double v) {
    _padding = EdgeInsets.symmetric(horizontal: h, vertical: v);
    return this;
  }

  LinkjoySupercool p20() {
    _padding = LinkjoyAmplitude.s20;
    return this;
  }

  LinkjoySupercool p24() {
    _padding = LinkjoyAmplitude.s24;
    return this;
  }

  LinkjoySupercool p32() {
    _padding = LinkjoyAmplitude.s32;
    return this;
  }

  LinkjoySupercool p40() {
    _padding = LinkjoyAmplitude.s40;
    return this;
  }

  LinkjoySupercool p28() {
    _padding = LinkjoyAmplitude.s28;
    return this;
  }

  LinkjoySupercool m2() {
    _margin = LinkjoyAmplitude.s2;
    return this;
  }

  LinkjoySupercool m4() {
    _margin = LinkjoyAmplitude.s4;
    return this;
  }

  LinkjoySupercool m8() {
    _margin = LinkjoyAmplitude.s8;
    return this;
  }

  LinkjoySupercool m12() {
    _margin = LinkjoyAmplitude.s12;
    return this;
  }

  LinkjoySupercool m16() {
    _margin = LinkjoyAmplitude.s16;
    return this;
  }

  LinkjoySupercool m20() {
    _margin = LinkjoyAmplitude.s20;
    return this;
  }

  LinkjoySupercool m24() {
    _margin = LinkjoyAmplitude.s24;
    return this;
  }

  LinkjoySupercool m28() {
    _margin = LinkjoyAmplitude.s28;
    return this;
  }

  LinkjoySupercool m32() {
    _margin = LinkjoyAmplitude.s32;
    return this;
  }

  LinkjoySupercool m40() {
    _margin = LinkjoyAmplitude.s40;
    return this;
  }

  LinkjoySupercool r2() {
    _borderRadius = LinkjoyGarage.s2;
    return this;
  }

  LinkjoySupercool r4() {
    _borderRadius = LinkjoyGarage.s4;
    return this;
  }

  LinkjoySupercool r8() {
    _borderRadius = LinkjoyGarage.s8;
    return this;
  }

  LinkjoySupercool r12() {
    _borderRadius = LinkjoyGarage.s12;
    return this;
  }

  LinkjoySupercool r16() {
    _borderRadius = LinkjoyGarage.s16;
    return this;
  }

  LinkjoySupercool r20() {
    _borderRadius = LinkjoyGarage.s20;
    return this;
  }

  LinkjoySupercool r24() {
    _borderRadius = LinkjoyGarage.s24;
    return this;
  }

  LinkjoySupercool r28() {
    _borderRadius = LinkjoySuspend.d28;
    return this;
  }

  LinkjoySupercool r32() {
    _borderRadius = LinkjoyGarage.s32;
    return this;
  }

  LinkjoySupercool r40() {
    _borderRadius = LinkjoyGarage.s40;
    return this;
  }

  LinkjoySupercool circle() {
    _borderRadius = 100.w;
    return this;
  }

  Widget build(Widget child) {
    final decoration = _decoration is BoxDecoration
        ? (_decoration as BoxDecoration).copyWith(
            color: _color,
            borderRadius: BorderRadius.circular(_borderRadius),
            border: _border,
            boxShadow: _elevation > 0
                ? [
                    BoxShadow(
                      color: _shadowColor ?? Colors.black.withOpacity(0.1),
                      blurRadius: _elevation * 2,
                      spreadRadius: _elevation * 0.5,
                      offset: Offset(0, _elevation),
                    ),
                  ]
                : null,
          )
        : BoxDecoration(
            color: _color ?? Colors.transparent,
            borderRadius: BorderRadius.circular(_borderRadius),
            border: _border,
            boxShadow: _elevation > 0
                ? [
                    BoxShadow(
                      color: _shadowColor ?? Colors.black.withOpacity(0.1),
                      blurRadius: _elevation * 2,
                      spreadRadius: _elevation * 0.5,
                      offset: Offset(0, _elevation),
                    ),
                  ]
                : null,
          );

    return Container(
      width: _width,
      height: _height,
      margin: _margin,
      padding: _padding,
      alignment: _alignment,
      clipBehavior: _clipBehavior ?? Clip.hardEdge,
      decoration: decoration,
      child: child,
    );
  }

  LinkjoySupercool ph2() {
    _padding = EdgeInsets.symmetric(horizontal: LinkjoyGarage.s2);
    return this;
  }

  LinkjoySupercool ph4() {
    _padding = EdgeInsets.symmetric(horizontal: LinkjoyGarage.s4);
    return this;
  }

  LinkjoySupercool ph8() {
    _padding = EdgeInsets.symmetric(horizontal: LinkjoyGarage.s8);
    return this;
  }

  LinkjoySupercool ph12() {
    _padding = EdgeInsets.symmetric(horizontal: LinkjoyGarage.s12);
    return this;
  }

  LinkjoySupercool ph16() {
    _padding = EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16);
    return this;
  }

  LinkjoySupercool ph20() {
    _padding = EdgeInsets.symmetric(horizontal: LinkjoyGarage.s20);
    return this;
  }

  LinkjoySupercool ph24() {
    _padding = EdgeInsets.symmetric(horizontal: LinkjoyGarage.s24);
    return this;
  }

  LinkjoySupercool pv2() {
    _padding = EdgeInsets.symmetric(vertical: LinkjoyGarage.s2);
    return this;
  }

  LinkjoySupercool pv4() {
    _padding = EdgeInsets.symmetric(vertical: LinkjoyGarage.s4);
    return this;
  }

  LinkjoySupercool pv8() {
    _padding = EdgeInsets.symmetric(vertical: LinkjoyGarage.s8);
    return this;
  }

  LinkjoySupercool pv12() {
    _padding = EdgeInsets.symmetric(vertical: LinkjoyGarage.s12);
    return this;
  }

  LinkjoySupercool pv16() {
    _padding = EdgeInsets.symmetric(vertical: LinkjoyGarage.s16);
    return this;
  }

  LinkjoySupercool pv20() {
    _padding = EdgeInsets.symmetric(vertical: LinkjoyGarage.s20);
    return this;
  }

  LinkjoySupercool pv24() {
    _padding = EdgeInsets.symmetric(vertical: LinkjoyGarage.s24);
    return this;
  }

  LinkjoySupercool pt2() {
    _padding = EdgeInsets.only(top: LinkjoyGarage.s2);
    return this;
  }

  LinkjoySupercool pt4() {
    _padding = EdgeInsets.only(top: LinkjoyGarage.s4);
    return this;
  }

  LinkjoySupercool pt8() {
    _padding = EdgeInsets.only(top: LinkjoyGarage.s8);
    return this;
  }

  LinkjoySupercool pt12() {
    _padding = EdgeInsets.only(top: LinkjoyGarage.s12);
    return this;
  }

  LinkjoySupercool pt16() {
    _padding = EdgeInsets.only(top: LinkjoyGarage.s16);
    return this;
  }

  LinkjoySupercool pb2() {
    _padding = EdgeInsets.only(bottom: LinkjoyGarage.s2);
    return this;
  }

  LinkjoySupercool pb4() {
    _padding = EdgeInsets.only(bottom: LinkjoyGarage.s4);
    return this;
  }

  LinkjoySupercool pb8() {
    _padding = EdgeInsets.only(bottom: LinkjoyGarage.s8);
    return this;
  }

  LinkjoySupercool pb12() {
    _padding = EdgeInsets.only(bottom: LinkjoyGarage.s12);
    return this;
  }

  LinkjoySupercool pb16() {
    _padding = EdgeInsets.only(bottom: LinkjoyGarage.s16);
    return this;
  }

  LinkjoySupercool ps2() {
    _padding = EdgeInsetsDirectional.only(start: LinkjoyGarage.s2);
    return this;
  }

  LinkjoySupercool ps4() {
    _padding = EdgeInsetsDirectional.only(start: LinkjoyGarage.s4);
    return this;
  }

  LinkjoySupercool ps8() {
    _padding = EdgeInsetsDirectional.only(start: LinkjoyGarage.s8);
    return this;
  }

  LinkjoySupercool ps12() {
    _padding = EdgeInsetsDirectional.only(start: LinkjoyGarage.s12);
    return this;
  }

  LinkjoySupercool ps16() {
    _padding = EdgeInsetsDirectional.only(start: LinkjoyGarage.s16);
    return this;
  }

  LinkjoySupercool pe2() {
    _padding = EdgeInsetsDirectional.only(end: LinkjoyGarage.s2);
    return this;
  }

  LinkjoySupercool pe4() {
    _padding = EdgeInsetsDirectional.only(end: LinkjoyGarage.s4);
    return this;
  }

  LinkjoySupercool pe8() {
    _padding = EdgeInsetsDirectional.only(end: LinkjoyGarage.s8);
    return this;
  }

  LinkjoySupercool pe12() {
    _padding = EdgeInsetsDirectional.only(end: LinkjoyGarage.s12);
    return this;
  }

  LinkjoySupercool pe16() {
    _padding = EdgeInsetsDirectional.only(end: LinkjoyGarage.s16);
    return this;
  }

  LinkjoySupercool mh2() {
    _margin = EdgeInsets.symmetric(horizontal: LinkjoyGarage.s2);
    return this;
  }

  LinkjoySupercool mh4() {
    _margin = EdgeInsets.symmetric(horizontal: LinkjoyGarage.s4);
    return this;
  }

  LinkjoySupercool mh8() {
    _margin = EdgeInsets.symmetric(horizontal: LinkjoyGarage.s8);
    return this;
  }

  LinkjoySupercool mh12() {
    _margin = EdgeInsets.symmetric(horizontal: LinkjoyGarage.s12);
    return this;
  }

  LinkjoySupercool mh16() {
    _margin = EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16);
    return this;
  }

  LinkjoySupercool mh20() {
    _margin = EdgeInsets.symmetric(horizontal: LinkjoyGarage.s20);
    return this;
  }

  LinkjoySupercool mh24() {
    _margin = EdgeInsets.symmetric(horizontal: LinkjoyGarage.s24);
    return this;
  }

  LinkjoySupercool mv2() {
    _margin = EdgeInsets.symmetric(vertical: LinkjoyGarage.s2);
    return this;
  }

  LinkjoySupercool mv4() {
    _margin = EdgeInsets.symmetric(vertical: LinkjoyGarage.s4);
    return this;
  }

  LinkjoySupercool mv8() {
    _margin = EdgeInsets.symmetric(vertical: LinkjoyGarage.s8);
    return this;
  }

  LinkjoySupercool mv12() {
    _margin = EdgeInsets.symmetric(vertical: LinkjoyGarage.s12);
    return this;
  }

  LinkjoySupercool mv16() {
    _margin = EdgeInsets.symmetric(vertical: LinkjoyGarage.s16);
    return this;
  }

  LinkjoySupercool mv20() {
    _margin = EdgeInsets.symmetric(vertical: LinkjoyGarage.s20);
    return this;
  }

  LinkjoySupercool mv24() {
    _margin = EdgeInsets.symmetric(vertical: LinkjoyGarage.s24);
    return this;
  }

  LinkjoySupercool mt2() {
    _margin = EdgeInsets.only(top: LinkjoyGarage.s2);
    return this;
  }

  LinkjoySupercool mt4() {
    _margin = EdgeInsets.only(top: LinkjoyGarage.s4);
    return this;
  }

  LinkjoySupercool mt8() {
    _margin = EdgeInsets.only(top: LinkjoyGarage.s8);
    return this;
  }

  LinkjoySupercool mt12() {
    _margin = EdgeInsets.only(top: LinkjoyGarage.s12);
    return this;
  }

  LinkjoySupercool mt16() {
    _margin = EdgeInsets.only(top: LinkjoyGarage.s16);
    return this;
  }

  LinkjoySupercool mb2() {
    _margin = EdgeInsets.only(bottom: LinkjoyGarage.s2);
    return this;
  }

  LinkjoySupercool mb4() {
    _margin = EdgeInsets.only(bottom: LinkjoyGarage.s4);
    return this;
  }

  LinkjoySupercool mb8() {
    _margin = EdgeInsets.only(bottom: LinkjoyGarage.s8);
    return this;
  }

  LinkjoySupercool mb12() {
    _margin = EdgeInsets.only(bottom: LinkjoyGarage.s12);
    return this;
  }

  LinkjoySupercool mb16() {
    _margin = EdgeInsets.only(bottom: LinkjoyGarage.s16);
    return this;
  }

  LinkjoySupercool ms2() {
    _margin = EdgeInsetsDirectional.only(start: LinkjoyGarage.s2);
    return this;
  }

  LinkjoySupercool ms4() {
    _margin = EdgeInsetsDirectional.only(start: LinkjoyGarage.s4);
    return this;
  }

  LinkjoySupercool ms8() {
    _margin = EdgeInsetsDirectional.only(start: LinkjoyGarage.s8);
    return this;
  }

  LinkjoySupercool ms12() {
    _margin = EdgeInsetsDirectional.only(start: LinkjoyGarage.s12);
    return this;
  }

  LinkjoySupercool ms16() {
    _margin = EdgeInsetsDirectional.only(start: LinkjoyGarage.s16);
    return this;
  }

  LinkjoySupercool me2() {
    _margin = EdgeInsetsDirectional.only(end: LinkjoyGarage.s2);
    return this;
  }

  LinkjoySupercool me4() {
    _margin = EdgeInsetsDirectional.only(end: LinkjoyGarage.s4);
    return this;
  }

  LinkjoySupercool me8() {
    _margin = EdgeInsetsDirectional.only(end: LinkjoyGarage.s8);
    return this;
  }

  LinkjoySupercool me12() {
    _margin = EdgeInsetsDirectional.only(end: LinkjoyGarage.s12);
    return this;
  }

  LinkjoySupercool me16() {
    _margin = EdgeInsetsDirectional.only(end: LinkjoyGarage.s16);
    return this;
  }
}
