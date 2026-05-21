import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';

class LinkjoyAmplitude {
  static double get unit => LinkjoyGarage.s8;

  static EdgeInsets get s2 => EdgeInsets.all(LinkjoyGarage.s2);

  static EdgeInsets get s4 => EdgeInsets.all(LinkjoyGarage.s4);

  static EdgeInsets get s8 => EdgeInsets.all(unit);

  static EdgeInsets get s12 => EdgeInsets.all(LinkjoyGarage.s12);

  static EdgeInsets get s16 => EdgeInsets.all(unit * 2);

  static EdgeInsets get s20 => EdgeInsets.all(20.0.w);

  static EdgeInsets get s24 => EdgeInsets.all(unit * 3);

  static EdgeInsets get s28 => EdgeInsets.all(28.0.w);

  static EdgeInsets get s32 => EdgeInsets.all(unit * 4);

  static EdgeInsets get s40 => EdgeInsets.all(unit * 5);

  static EdgeInsets get h4 =>
      EdgeInsets.symmetric(horizontal: LinkjoyGarage.s4);

  static EdgeInsets get h8 => EdgeInsets.symmetric(horizontal: unit);

  static EdgeInsets get h16 => EdgeInsets.symmetric(horizontal: unit * 2);

  static EdgeInsets get v8 => EdgeInsets.symmetric(vertical: unit);

  static EdgeInsets get v16 => EdgeInsets.symmetric(vertical: unit * 2);

  static EdgeInsets get t8 => EdgeInsets.only(top: unit);

  static EdgeInsets get b8 => EdgeInsets.only(bottom: unit);

  static EdgeInsetsDirectional get start8 =>
      EdgeInsetsDirectional.only(start: unit);

  static EdgeInsetsDirectional get end8 =>
      EdgeInsetsDirectional.only(end: unit);

  static EdgeInsets get mt2 => EdgeInsets.only(top: LinkjoyGarage.s2);

  static EdgeInsets get mt4 => EdgeInsets.only(top: LinkjoyGarage.s4);

  static EdgeInsets get mt8 => EdgeInsets.only(top: unit);

  static EdgeInsets get mt12 => EdgeInsets.only(top: LinkjoyGarage.s12);

  static EdgeInsets get mt16 => EdgeInsets.only(top: unit * 2);

  static EdgeInsets get mb2 => EdgeInsets.only(bottom: LinkjoyGarage.s2);

  static EdgeInsets get mb4 => EdgeInsets.only(bottom: LinkjoyGarage.s4);

  static EdgeInsets get mb8 => EdgeInsets.only(bottom: unit);

  static EdgeInsets get mb12 => EdgeInsets.only(bottom: LinkjoyGarage.s12);

  static EdgeInsets get mb16 => EdgeInsets.only(bottom: unit * 2);

  static EdgeInsets get pt2 => EdgeInsets.only(top: LinkjoyGarage.s2);

  static EdgeInsets get pt4 => EdgeInsets.only(top: LinkjoyGarage.s4);

  static EdgeInsets get pt8 => EdgeInsets.only(top: unit);

  static EdgeInsets get pt12 => EdgeInsets.only(top: LinkjoyGarage.s12);

  static EdgeInsets get pt16 => EdgeInsets.only(top: unit * 2);

  static EdgeInsets get pb2 => EdgeInsets.only(bottom: LinkjoyGarage.s2);

  static EdgeInsets get pb4 => EdgeInsets.only(bottom: LinkjoyGarage.s4);

  static EdgeInsets get pb8 => EdgeInsets.only(bottom: unit);

  static EdgeInsets get pb12 => EdgeInsets.only(bottom: LinkjoyGarage.s12);

  static EdgeInsets get pb16 => EdgeInsets.only(bottom: unit * 2);

  static EdgeInsetsDirectional only({
    double? start,
    double? top,
    double? end,
    double? bottom,
  }) {
    return EdgeInsetsDirectional.only(
      start: start ?? 0,
      top: top ?? 0,
      end: end ?? 0,
      bottom: bottom ?? 0,
    );
  }
}
