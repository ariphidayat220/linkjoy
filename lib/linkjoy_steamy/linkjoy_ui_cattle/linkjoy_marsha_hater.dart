import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension TextStyleExtension on TextStyle {
  TextStyle color(Color color) {
    return copyWith(color: color);
  }

  TextStyle size(double fontSize) {
    return copyWith(fontSize: fontSize);
  }

  TextStyle height(double height) {
    return copyWith(height: height);
  }
}

class LinkjoyMarshaHater {
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);

  static TextStyle _buildStyle(
    double fontSize,
    double height,
    FontWeight fontWeight,
    Color color,
    double opacity,
  ) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height / fontSize,
      color: color,
    );
  }

  static TextStyle get title1_B =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.bold, black, 1.0);

  static TextStyle get title1_B_80 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.bold, black, 0.8);

  static TextStyle get title1_B_60 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.bold, black, 0.6);

  static TextStyle get title1_B_40 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.bold, black, 0.4);

  static TextStyle get title1_B_20 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.bold, black, 0.2);

  static TextStyle get title1_M =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.w500, black, 1.0);

  static TextStyle get title1_M_80 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.w500, black, 0.8);

  static TextStyle get title1_M_60 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.w500, black, 0.6);

  static TextStyle get title1_M_40 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.w500, black, 0.4);

  static TextStyle get title1_M_20 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.w500, black, 0.2);

  static TextStyle get title1_R =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.normal, black, 1.0);

  static TextStyle get title1_R_80 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.normal, black, 0.8);

  static TextStyle get title1_R_60 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.normal, black, 0.6);

  static TextStyle get title1_R_40 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.normal, black, 0.4);

  static TextStyle get title1_R_20 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.normal, black, 0.2);

  static TextStyle get title2_B =>
      _buildStyle(22.w, 25.w, FontWeight.bold, black, 1.0);

  static TextStyle get title2_B_80 =>
      _buildStyle(22.w, 25.w, FontWeight.bold, black, 0.8);

  static TextStyle get title2_B_60 =>
      _buildStyle(22.w, 25.w, FontWeight.bold, black, 0.6);

  static TextStyle get title2_B_40 =>
      _buildStyle(22.w, 25.w, FontWeight.bold, black, 0.4);

  static TextStyle get title2_B_20 =>
      _buildStyle(22.w, 25.w, FontWeight.bold, black, 0.2);

  static TextStyle get title2_M =>
      _buildStyle(22.w, 25.w, FontWeight.w500, black, 1.0);

  static TextStyle get title2_M_80 =>
      _buildStyle(22.w, 25.w, FontWeight.w500, black, 0.8);

  static TextStyle get title2_M_60 =>
      _buildStyle(22.w, 25.w, FontWeight.w500, black, 0.6);

  static TextStyle get title2_M_40 =>
      _buildStyle(22.w, 25.w, FontWeight.w500, black, 0.4);

  static TextStyle get title2_M_20 =>
      _buildStyle(22.w, 25.w, FontWeight.w500, black, 0.2);

  static TextStyle get title2_R =>
      _buildStyle(22.w, 25.w, FontWeight.normal, black, 1.0);

  static TextStyle get title2_R_80 =>
      _buildStyle(22.w, 25.w, FontWeight.normal, black, 0.8);

  static TextStyle get title2_R_60 =>
      _buildStyle(22.w, 25.w, FontWeight.normal, black, 0.6);

  static TextStyle get title2_R_40 =>
      _buildStyle(22.w, 25.w, FontWeight.normal, black, 0.4);

  static TextStyle get title2_R_20 =>
      _buildStyle(22.w, 25.w, FontWeight.normal, black, 0.2);

  static TextStyle get title3_B =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.bold, black, 1.0);

  static TextStyle get title3_B_80 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.bold, black, 0.8);

  static TextStyle get title3_B_60 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.bold, black, 0.6);

  static TextStyle get title3_B_40 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.bold, black, 0.4);

  static TextStyle get title3_B_20 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.bold, black, 0.2);

  static TextStyle get title3_M =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.w500, black, 1.0);

  static TextStyle get title3_M_80 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.w500, black, 0.8);

  static TextStyle get title3_M_60 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.w500, black, 0.6);

  static TextStyle get title3_M_40 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.w500, black, 0.4);

  static TextStyle get title3_M_20 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.w500, black, 0.2);

  static TextStyle get title3_R =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.normal, black, 1.0);

  static TextStyle get title3_R_80 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.normal, black, 0.8);

  static TextStyle get title3_R_60 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.normal, black, 0.6);

  static TextStyle get title3_R_40 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.normal, black, 0.4);

  static TextStyle get title3_R_20 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.normal, black, 0.2);

  static TextStyle get subtitle_B =>
      _buildStyle(18.w, 21.w, FontWeight.bold, black, 1.0);

  static TextStyle get subtitle_B_80 =>
      _buildStyle(18.w, 21.w, FontWeight.bold, black, 0.8);

  static TextStyle get subtitle_B_60 =>
      _buildStyle(18.w, 21.w, FontWeight.bold, black, 0.6);

  static TextStyle get subtitle_B_40 =>
      _buildStyle(18.w, 21.w, FontWeight.bold, black, 0.4);

  static TextStyle get subtitle_B_20 =>
      _buildStyle(18.w, 21.w, FontWeight.bold, black, 0.2);

  static TextStyle get subtitle_M =>
      _buildStyle(18.w, 21.w, FontWeight.w500, black, 1.0);

  static TextStyle get subtitle_M_80 =>
      _buildStyle(18.w, 21.w, FontWeight.w500, black, 0.8);

  static TextStyle get subtitle_M_60 =>
      _buildStyle(18.w, 21.w, FontWeight.w500, black, 0.6);

  static TextStyle get subtitle_M_40 =>
      _buildStyle(18.w, 21.w, FontWeight.w500, black, 0.4);

  static TextStyle get subtitle_M_20 =>
      _buildStyle(18.w, 21.w, FontWeight.w500, black, 0.2);

  static TextStyle get subtitle_R =>
      _buildStyle(18.w, 21.w, FontWeight.normal, black, 1.0);

  static TextStyle get subtitle_R_80 =>
      _buildStyle(18.w, 21.w, FontWeight.normal, black, 0.8);

  static TextStyle get subtitle_R_60 =>
      _buildStyle(18.w, 21.w, FontWeight.normal, black, 0.6);

  static TextStyle get subtitle_R_40 =>
      _buildStyle(18.w, 21.w, FontWeight.normal, black, 0.4);

  static TextStyle get subtitle_R_20 =>
      _buildStyle(18.w, 21.w, FontWeight.normal, black, 0.2);

  static TextStyle get body_B =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.bold, black, 1.0);

  static TextStyle get body_B_80 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.bold, black, 0.8);

  static TextStyle get body_B_60 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.bold, black, 0.6);

  static TextStyle get body_B_40 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.bold, black, 0.4);

  static TextStyle get body_B_20 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.bold, black, 0.2);

  static TextStyle get body_M =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.w500, black, 1.0);

  static TextStyle get body_M_80 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.w500, black, 0.8);

  static TextStyle get body_M_60 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.w500, black, 0.6);

  static TextStyle get body_M_40 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.w500, black, 0.4);

  static TextStyle get body_M_20 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.w500, black, 0.2);

  static TextStyle get body_R =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.normal, black, 1.0);

  static TextStyle get body_R_80 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.normal, black, 0.8);

  static TextStyle get body_R_60 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.normal, black, 0.6);

  static TextStyle get body_R_40 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.normal, black, 0.4);

  static TextStyle get body_R_20 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.normal, black, 0.2);

  static TextStyle get body2_B =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.bold, black, 1.0);

  static TextStyle get body2_B_80 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.bold, black, 0.8);

  static TextStyle get body2_B_60 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.bold, black, 0.6);

  static TextStyle get body2_B_40 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.bold, black, 0.4);

  static TextStyle get body2_B_20 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.bold, black, 0.2);

  static TextStyle get body2_M =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.w500, black, 1.0);

  static TextStyle get body2_M_80 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.w500, black, 0.8);

  static TextStyle get body2_M_60 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.w500, black, 0.6);

  static TextStyle get body2_M_40 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.w500, black, 0.4);

  static TextStyle get body2_M_20 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.w500, black, 0.2);

  static TextStyle get body2_R =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.normal, black, 1.0);

  static TextStyle get body2_R_80 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.normal, black, 0.8);

  static TextStyle get body2_R_60 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.normal, black, 0.6);

  static TextStyle get body2_R_40 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.normal, black, 0.4);

  static TextStyle get body2_R_20 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.normal, black, 0.2);

  static TextStyle get caption_B =>
      _buildStyle(12.w, 14.w, FontWeight.bold, black, 1.0);

  static TextStyle get caption_B_80 =>
      _buildStyle(12.w, 14.w, FontWeight.bold, black, 0.8);

  static TextStyle get caption_B_60 =>
      _buildStyle(12.w, 14.w, FontWeight.bold, black, 0.6);

  static TextStyle get caption_B_40 =>
      _buildStyle(12.w, 14.w, FontWeight.bold, black, 0.4);

  static TextStyle get caption_B_20 =>
      _buildStyle(12.w, 14.w, FontWeight.bold, black, 0.2);

  static TextStyle get caption_M =>
      _buildStyle(12.w, 14.w, FontWeight.w500, black, 1.0);

  static TextStyle get caption_M_80 =>
      _buildStyle(12.w, 14.w, FontWeight.w500, black, 0.8);

  static TextStyle get caption_M_60 =>
      _buildStyle(12.w, 14.w, FontWeight.w500, black, 0.6);

  static TextStyle get caption_M_40 =>
      _buildStyle(12.w, 14.w, FontWeight.w500, black, 0.4);

  static TextStyle get caption_M_20 =>
      _buildStyle(12.w, 14.w, FontWeight.w500, black, 0.2);

  static TextStyle get caption_R =>
      _buildStyle(12.w, 14.w, FontWeight.normal, black, 1.0);

  static TextStyle get caption_R_80 =>
      _buildStyle(12.w, 14.w, FontWeight.normal, black, 0.8);

  static TextStyle get caption_R_60 =>
      _buildStyle(12.w, 14.w, FontWeight.normal, black, 0.6);

  static TextStyle get caption_R_40 =>
      _buildStyle(12.w, 14.w, FontWeight.normal, black, 0.4);

  static TextStyle get caption_R_20 =>
      _buildStyle(12.w, 14.w, FontWeight.normal, black, 0.2);

  static TextStyle get caption2_B =>
      _buildStyle(11.w, 13.w, FontWeight.bold, black, 1.0);

  static TextStyle get caption2_B_80 =>
      _buildStyle(11.w, 13.w, FontWeight.bold, black, 0.8);

  static TextStyle get caption2_B_60 =>
      _buildStyle(11.w, 13.w, FontWeight.bold, black, 0.6);

  static TextStyle get caption2_B_40 =>
      _buildStyle(11.w, 13.w, FontWeight.bold, black, 0.4);

  static TextStyle get caption2_B_20 =>
      _buildStyle(11.w, 13.w, FontWeight.bold, black, 0.2);

  static TextStyle get caption2_M =>
      _buildStyle(11.w, 13.w, FontWeight.w500, black, 1.0);

  static TextStyle get caption2_M_80 =>
      _buildStyle(11.w, 13.w, FontWeight.w500, black, 0.8);

  static TextStyle get caption2_M_60 =>
      _buildStyle(11.w, 13.w, FontWeight.w500, black, 0.6);

  static TextStyle get caption2_M_40 =>
      _buildStyle(11.w, 13.w, FontWeight.w500, black, 0.4);

  static TextStyle get caption2_M_20 =>
      _buildStyle(11.w, 13.w, FontWeight.w500, black, 0.2);

  static TextStyle get caption2_R =>
      _buildStyle(11.w, 13.w, FontWeight.normal, black, 1.0);

  static TextStyle get caption2_R_80 =>
      _buildStyle(11.w, 13.w, FontWeight.normal, black, 0.8);

  static TextStyle get caption2_R_60 =>
      _buildStyle(11.w, 13.w, FontWeight.normal, black, 0.6);

  static TextStyle get caption2_R_40 =>
      _buildStyle(11.w, 13.w, FontWeight.normal, black, 0.4);

  static TextStyle get caption2_R_20 =>
      _buildStyle(11.w, 13.w, FontWeight.normal, black, 0.2);

  static TextStyle get w_title1_B =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.bold, white, 1.0);

  static TextStyle get w_title1_B_80 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.bold, white, 0.8);

  static TextStyle get w_title1_B_60 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.bold, white, 0.6);

  static TextStyle get w_title1_B_40 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.bold, white, 0.4);

  static TextStyle get w_title1_B_20 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.bold, white, 0.2);

  static TextStyle get w_title1_M =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.w500, white, 1.0);

  static TextStyle get w_title1_M_80 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.w500, white, 0.8);

  static TextStyle get w_title1_M_60 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.w500, white, 0.6);

  static TextStyle get w_title1_M_40 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.w500, white, 0.4);

  static TextStyle get w_title1_M_20 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.w500, white, 0.2);

  static TextStyle get w_title1_R =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.normal, white, 1.0);

  static TextStyle get w_title1_R_80 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.normal, white, 0.8);

  static TextStyle get w_title1_R_60 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.normal, white, 0.6);

  static TextStyle get w_title1_R_40 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.normal, white, 0.4);

  static TextStyle get w_title1_R_20 =>
      _buildStyle(LinkjoyGarage.s24, 28.w, FontWeight.normal, white, 0.2);

  static TextStyle get w_title2_B =>
      _buildStyle(22.w, 25.w, FontWeight.bold, white, 1.0);

  static TextStyle get w_title2_B_80 =>
      _buildStyle(22.w, 25.w, FontWeight.bold, white, 0.8);

  static TextStyle get w_title2_B_60 =>
      _buildStyle(22.w, 25.w, FontWeight.bold, white, 0.6);

  static TextStyle get w_title2_B_40 =>
      _buildStyle(22.w, 25.w, FontWeight.bold, white, 0.4);

  static TextStyle get w_title2_B_20 =>
      _buildStyle(22.w, 25.w, FontWeight.bold, white, 0.2);

  static TextStyle get w_title2_M =>
      _buildStyle(22.w, 25.w, FontWeight.w500, white, 1.0);

  static TextStyle get w_title2_M_80 =>
      _buildStyle(22.w, 25.w, FontWeight.w500, white, 0.8);

  static TextStyle get w_title2_M_60 =>
      _buildStyle(22.w, 25.w, FontWeight.w500, white, 0.6);

  static TextStyle get w_title2_M_40 =>
      _buildStyle(22.w, 25.w, FontWeight.w500, white, 0.4);

  static TextStyle get w_title2_M_20 =>
      _buildStyle(22.w, 25.w, FontWeight.w500, white, 0.2);

  static TextStyle get w_title2_R =>
      _buildStyle(22.w, 25.w, FontWeight.normal, white, 1.0);

  static TextStyle get w_title2_R_80 =>
      _buildStyle(22.w, 25.w, FontWeight.normal, white, 0.8);

  static TextStyle get w_title2_R_60 =>
      _buildStyle(22.w, 25.w, FontWeight.normal, white, 0.6);

  static TextStyle get w_title2_R_40 =>
      _buildStyle(22.w, 25.w, FontWeight.normal, white, 0.4);

  static TextStyle get w_title2_R_20 =>
      _buildStyle(22.w, 25.w, FontWeight.normal, white, 0.2);

  static TextStyle get w_title3_B =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.bold, white, 1.0);

  static TextStyle get w_title3_B_80 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.bold, white, 0.8);

  static TextStyle get w_title3_B_60 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.bold, white, 0.6);

  static TextStyle get w_title3_B_40 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.bold, white, 0.4);

  static TextStyle get w_title3_B_20 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.bold, white, 0.2);

  static TextStyle get w_title3_M =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.w500, white, 1.0);

  static TextStyle get w_title3_M_80 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.w500, white, 0.8);

  static TextStyle get w_title3_M_60 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.w500, white, 0.6);

  static TextStyle get w_title3_M_40 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.w500, white, 0.4);

  static TextStyle get w_title3_M_20 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.w500, white, 0.2);

  static TextStyle get w_title3_R =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.normal, white, 1.0);

  static TextStyle get w_title3_R_80 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.normal, white, 0.8);

  static TextStyle get w_title3_R_60 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.normal, white, 0.6);

  static TextStyle get w_title3_R_40 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.normal, white, 0.4);

  static TextStyle get w_title3_R_20 =>
      _buildStyle(20.w, LinkjoyGarage.s24, FontWeight.normal, white, 0.2);

  static TextStyle get w_subtitle_B =>
      _buildStyle(18.w, 21.w, FontWeight.bold, white, 1.0);

  static TextStyle get w_subtitle_B_80 =>
      _buildStyle(18.w, 21.w, FontWeight.bold, white, 0.8);

  static TextStyle get w_subtitle_B_60 =>
      _buildStyle(18.w, 21.w, FontWeight.bold, white, 0.6);

  static TextStyle get w_subtitle_B_40 =>
      _buildStyle(18.w, 21.w, FontWeight.bold, white, 0.4);

  static TextStyle get w_subtitle_B_20 =>
      _buildStyle(18.w, 21.w, FontWeight.bold, white, 0.2);

  static TextStyle get w_subtitle_M =>
      _buildStyle(18.w, 21.w, FontWeight.w500, white, 1.0);

  static TextStyle get w_subtitle_M_80 =>
      _buildStyle(18.w, 21.w, FontWeight.w500, white, 0.8);

  static TextStyle get w_subtitle_M_60 =>
      _buildStyle(18.w, 21.w, FontWeight.w500, white, 0.6);

  static TextStyle get w_subtitle_M_40 =>
      _buildStyle(18.w, 21.w, FontWeight.w500, white, 0.4);

  static TextStyle get w_subtitle_M_20 =>
      _buildStyle(18.w, 21.w, FontWeight.w500, white, 0.2);

  static TextStyle get w_subtitle_R =>
      _buildStyle(18.w, 21.w, FontWeight.normal, white, 1.0);

  static TextStyle get w_subtitle_R_80 =>
      _buildStyle(18.w, 21.w, FontWeight.normal, white, 0.8);

  static TextStyle get w_subtitle_R_60 =>
      _buildStyle(18.w, 21.w, FontWeight.normal, white, 0.6);

  static TextStyle get w_subtitle_R_40 =>
      _buildStyle(18.w, 21.w, FontWeight.normal, white, 0.4);

  static TextStyle get w_subtitle_R_20 =>
      _buildStyle(18.w, 21.w, FontWeight.normal, white, 0.2);

  static TextStyle get w_body_B =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.bold, white, 1.0);

  static TextStyle get w_body_B_80 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.bold, white, 0.8);

  static TextStyle get w_body_B_60 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.bold, white, 0.6);

  static TextStyle get w_body_B_40 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.bold, white, 0.4);

  static TextStyle get w_body_B_20 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.bold, white, 0.2);

  static TextStyle get w_body_M =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.w500, white, 1.0);

  static TextStyle get w_body_M_80 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.w500, white, 0.8);

  static TextStyle get w_body_M_60 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.w500, white, 0.6);

  static TextStyle get w_body_M_40 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.w500, white, 0.4);

  static TextStyle get w_body_M_20 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.w500, white, 0.2);

  static TextStyle get w_body_R =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.normal, white, 1.0);

  static TextStyle get w_body_R_80 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.normal, white, 0.8);

  static TextStyle get w_body_R_60 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.normal, white, 0.6);

  static TextStyle get w_body_R_40 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.normal, white, 0.4);

  static TextStyle get w_body_R_20 =>
      _buildStyle(LinkjoyGarage.s16, 19.w, FontWeight.normal, white, 0.2);

  static TextStyle get w_body2_B =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.bold, white, 1.0);

  static TextStyle get w_body2_B_80 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.bold, white, 0.8);

  static TextStyle get w_body2_B_60 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.bold, white, 0.6);

  static TextStyle get w_body2_B_40 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.bold, white, 0.4);

  static TextStyle get w_body2_B_20 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.bold, white, 0.2);

  static TextStyle get w_body2_M =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.w500, white, 1.0);

  static TextStyle get w_body2_M_80 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.w500, white, 0.8);

  static TextStyle get w_body2_M_60 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.w500, white, 0.6);

  static TextStyle get w_body2_M_40 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.w500, white, 0.4);

  static TextStyle get w_body2_M_20 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.w500, white, 0.2);

  static TextStyle get w_body2_R =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.normal, white, 1.0);

  static TextStyle get w_body2_R_80 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.normal, white, 0.8);

  static TextStyle get w_body2_R_60 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.normal, white, 0.6);

  static TextStyle get w_body2_R_40 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.normal, white, 0.4);

  static TextStyle get w_body2_R_20 =>
      _buildStyle(14.w, LinkjoyGarage.s16, FontWeight.normal, white, 0.2);

  static TextStyle get w_caption_B =>
      _buildStyle(12.w, 14.w, FontWeight.bold, white, 1.0);

  static TextStyle get w_caption_B_80 =>
      _buildStyle(12.w, 14.w, FontWeight.bold, white, 0.8);

  static TextStyle get w_caption_B_60 =>
      _buildStyle(12.w, 14.w, FontWeight.bold, white, 0.6);

  static TextStyle get w_caption_B_40 =>
      _buildStyle(12.w, 14.w, FontWeight.bold, white, 0.4);

  static TextStyle get w_caption_B_20 =>
      _buildStyle(12.w, 14.w, FontWeight.bold, white, 0.2);

  static TextStyle get w_caption_M =>
      _buildStyle(12.w, 14.w, FontWeight.w500, white, 1.0);

  static TextStyle get w_caption_M_80 =>
      _buildStyle(12.w, 14.w, FontWeight.w500, white, 0.8);

  static TextStyle get w_caption_M_60 =>
      _buildStyle(12.w, 14.w, FontWeight.w500, white, 0.6);

  static TextStyle get w_caption_M_40 =>
      _buildStyle(12.w, 14.w, FontWeight.w500, white, 0.4);

  static TextStyle get w_caption_M_20 =>
      _buildStyle(12.w, 14.w, FontWeight.w500, white, 0.2);

  static TextStyle get w_caption_R =>
      _buildStyle(12.w, 14.w, FontWeight.normal, white, 1.0);

  static TextStyle get w_caption_R_80 =>
      _buildStyle(12.w, 14.w, FontWeight.normal, white, 0.8);

  static TextStyle get w_caption_R_60 =>
      _buildStyle(12.w, 14.w, FontWeight.normal, white, 0.6);

  static TextStyle get w_caption_R_40 =>
      _buildStyle(12.w, 14.w, FontWeight.normal, white, 0.4);

  static TextStyle get w_caption_R_20 =>
      _buildStyle(12.w, 14.w, FontWeight.normal, white, 0.2);

  static TextStyle get w_caption2_B =>
      _buildStyle(11.w, 13.w, FontWeight.bold, white, 1.0);

  static TextStyle get w_caption2_B_80 =>
      _buildStyle(11.w, 13.w, FontWeight.bold, white, 0.8);

  static TextStyle get w_caption2_B_60 =>
      _buildStyle(11.w, 13.w, FontWeight.bold, white, 0.6);

  static TextStyle get w_caption2_B_40 =>
      _buildStyle(11.w, 13.w, FontWeight.bold, white, 0.4);

  static TextStyle get w_caption2_B_20 =>
      _buildStyle(11.w, 13.w, FontWeight.bold, white, 0.2);

  static TextStyle get w_caption2_M =>
      _buildStyle(11.w, 13.w, FontWeight.w500, white, 1.0);

  static TextStyle get w_caption2_M_80 =>
      _buildStyle(11.w, 13.w, FontWeight.w500, white, 0.8);

  static TextStyle get w_caption2_M_60 =>
      _buildStyle(11.w, 13.w, FontWeight.w500, white, 0.6);

  static TextStyle get w_caption2_M_40 =>
      _buildStyle(11.w, 13.w, FontWeight.w500, white, 0.4);

  static TextStyle get w_caption2_M_20 =>
      _buildStyle(11.w, 13.w, FontWeight.w500, white, 0.2);

  static TextStyle get w_caption2_R =>
      _buildStyle(11.w, 13.w, FontWeight.normal, white, 1.0);

  static TextStyle get w_caption2_R_80 =>
      _buildStyle(11.w, 13.w, FontWeight.normal, white, 0.8);

  static TextStyle get w_caption2_R_60 =>
      _buildStyle(11.w, 13.w, FontWeight.normal, white, 0.6);

  static TextStyle get w_caption2_R_40 =>
      _buildStyle(11.w, 13.w, FontWeight.normal, white, 0.4);

  static TextStyle get w_caption2_R_20 =>
      _buildStyle(11.w, 13.w, FontWeight.normal, white, 0.2);
}
