import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'linkjoy_condensate.dart';

class LinkjoyMarshaTriplet {
  LinkjoyMarshaTriplet._();

  static TextStyle _buildStyle(
    double fontSize,
    double height,
    FontWeight fontWeight,
    Color color,
  ) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height / fontSize,
      color: color,
    );
  }

  static TextStyle title = _buildStyle(
    LinkjoyGarage.s24,
    28.w,
    FontWeight.bold,
    LinkjoyAve.textPrimary,
  );

  static TextStyle subtitle = _buildStyle(
    LinkjoyGarage.s20,
    LinkjoyGarage.s24,
    FontWeight.bold,
    LinkjoyAve.textPrimary,
  );

  static TextStyle bodyTitle = _buildStyle(
    18.w,
    21.w,
    FontWeight.w500,
    LinkjoyAve.textPrimary,
  );

  static TextStyle bodyLarge = _buildStyle(
    LinkjoyGarage.s16,
    19.w,
    FontWeight.normal,
    LinkjoyAve.textPrimary,
  );

  static TextStyle bodyLargeBold = _buildStyle(
    LinkjoyGarage.s16,
    19.w,
    FontWeight.bold,
    LinkjoyAve.textPrimary,
  );

  static TextStyle body = _buildStyle(
    14.w,
    LinkjoyGarage.s16,
    FontWeight.normal,
    LinkjoyAve.textPrimary,
  );

  static TextStyle bodyBold = _buildStyle(
    14.w,
    LinkjoyGarage.s16,
    FontWeight.bold,
    LinkjoyAve.textPrimary,
  );

  static TextStyle bodyImportant = _buildStyle(
    14.w,
    LinkjoyGarage.s16,
    FontWeight.bold,
    LinkjoyAve.textImportant1,
  );

  static TextStyle bodySecondary = _buildStyle(
    14.w,
    LinkjoyGarage.s16,
    FontWeight.normal,
    LinkjoyAve.textSecondary,
  );

  static TextStyle bodyThird = _buildStyle(
    14.w,
    LinkjoyGarage.s16,
    FontWeight.normal,
    LinkjoyAve.textThird,
  );

  static TextStyle captionNormal = _buildStyle(
    12.w,
    14.w,
    FontWeight.normal,
    LinkjoyAve.textPrimary,
  );

  static TextStyle caption = _buildStyle(
    12.w,
    14.w,
    FontWeight.normal,
    LinkjoyAve.textSecondary,
  );

  static TextStyle captionBold = _buildStyle(
    12.w,
    14.w,
    FontWeight.bold,
    LinkjoyAve.textPrimary,
  );

  static TextStyle captionThin = _buildStyle(
    12.w,
    14.w,
    FontWeight.normal,
    LinkjoyAve.textThird,
  );

  static TextStyle smallThin = _buildStyle(
    10.w,
    12.w,
    FontWeight.normal,
    LinkjoyAve.textThird,
  );

  static TextStyle small = _buildStyle(
    10.w,
    12.w,
    FontWeight.normal,
    LinkjoyAve.textSecondary,
  );

  static TextStyle smallBold = _buildStyle(
    10.w,
    12.w,
    FontWeight.w500,
    LinkjoyAve.textPrimary,
  );

  static TextStyle inputPlaceholder = _buildStyle(
    14.w,
    LinkjoyGarage.s16,
    FontWeight.normal,
    LinkjoyAve.textThird,
  );

  static TextStyle buttonTextMini = _buildStyle(
    10.w,
    12.w,
    FontWeight.w600,
    LinkjoyAve.white,
  );

  static TextStyle buttonTextXs = _buildStyle(
    10.w,
    12.w,
    FontWeight.w600,
    LinkjoyAve.white,
  );

  static TextStyle buttonTextSm = _buildStyle(
    12.w,
    14.w,
    FontWeight.w600,
    LinkjoyAve.white,
  );

  static TextStyle buttonText = _buildStyle(
    LinkjoyGarage.s16,
    19.w,
    FontWeight.w600,
    LinkjoyAve.white,
  );

  static TextStyle buttonTextLg = _buildStyle(
    18.w,
    21.w,
    FontWeight.w600,
    LinkjoyAve.white,
  );

  static TextStyle buttonTextXl = _buildStyle(
    20.w,
    LinkjoyGarage.s24,
    FontWeight.w600,
    LinkjoyAve.white,
  );
}
