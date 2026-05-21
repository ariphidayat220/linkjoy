import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/proto/StringTranslate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

extension IntExt on int {
  int get alphaP => this * 255 ~/ 100;

  SizedBox get hGap => SizedBox(height: toDouble().w);

  SizedBox get wGap => SizedBox(width: toDouble().w);

  Radius get radius => Radius.circular(toDouble().w);

  BorderRadius get rectBg => BorderRadius.all(radius);

  BorderRadius get rectTopBg =>
      BorderRadius.only(topLeft: radius, topRight: radius);

  BorderRadius get rectBtmBg =>
      BorderRadius.only(bottomLeft: radius, bottomRight: radius);

  BorderRadius get rectLeftBg =>
      BorderRadius.only(bottomLeft: radius, topLeft: radius);

  BorderRadius get rectRightBg =>
      BorderRadius.only(topRight: radius, bottomRight: radius);

  EdgeInsets get margin => EdgeInsets.all(toDouble().w);

  EdgeInsets get marginH => EdgeInsets.symmetric(horizontal: toDouble().w);

  EdgeInsets get marginV => EdgeInsets.symmetric(vertical: toDouble().w);

  EdgeInsets get marginL => EdgeInsets.only(left: toDouble().w);

  EdgeInsets get marginR => EdgeInsets.only(right: toDouble().w);

  EdgeInsets get marginT => EdgeInsets.only(top: toDouble().w);

  EdgeInsets get marginB => EdgeInsets.only(bottom: toDouble().w);

  String linkjoyPatentToPun() {
    if (this <= 0) return "00:00";

    int hours = this ~/ 3600;
    int minutes = (this % 3600) ~/ 60;
    int secs = this % 60;

    String twoDigitMinutes = minutes.toString().padLeft(2, '0');
    String twoDigitSeconds = secs.toString().padLeft(2, '0');

    if (hours > 0) {
      String twoDigitHours = hours.toString().padLeft(2, '0');
      return "$twoDigitHours:$twoDigitMinutes:$twoDigitSeconds";
    } else {
      return "$twoDigitMinutes:$twoDigitSeconds";
    }
  }
}

extension StringExt on String {
  String get imgURL {
    return cdn(LINKJOY.linkjoyShock.cdn.img);
  }

  String get videoURL {
    return cdn(LINKJOY.linkjoyShock.cdn.video);
  }

  String get audioURL {
    return cdn(LINKJOY.linkjoyShock.cdn.audio);
  }

  String cdn(String domain) {
    if (startsWith("http://") || startsWith("https://")) {
      return this;
    } else {
      if (startsWith("/")) {
        return domain + this;
      } else {
        return "$domain/$this";
      }
    }
  }

  String get e2z {
    return StringTranslate.e2z(this);
  }

  Color toColor({double? opacity}) {
    try {
      String colorStr = this;
      if (colorStr.startsWith("#")) {
        colorStr = colorStr.substring(1);
      }
      if (colorStr.length == 6) {
        colorStr = 'FF$colorStr';
      }
      int color = int.parse(colorStr, radix: 16);
      return (opacity != null)
          ? Color(color).withOpacity(opacity)
          : Color(color);
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10087, e, stack);
    }
    return Colors.transparent;
  }
}

extension WidgetExt on Widget {
  Widget clickOld(
    GestureTapCallback? event, {
    int borderRadius = 0,
    Color? splashColor,
    Color? highlightColor,
  }) {
    if (borderRadius == 0) {
      return InkWell(onTap: event, child: this);
    }
    return InkWell(
      onTap: event,
      borderRadius: borderRadius.rectBg,
      splashColor: splashColor ?? Theme.of(Get.context!).splashColor,
      highlightColor: highlightColor ?? Theme.of(Get.context!).highlightColor,
      child: Ink(
        decoration: BoxDecoration(borderRadius: borderRadius.rectBg),
        child: this,
      ),
    );
  }

  Widget opacity(double opacity) {
    return Opacity(opacity: opacity, child: this);
  }

  Widget circle(double boxSize, Color color, double padding) {
    return Container(
      padding: EdgeInsets.all(padding),
      width: boxSize,
      height: boxSize,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(boxSize / 2),
      ),
      child: this,
    );
  }
}

extension LetExtension<T extends Object> on T {
  R let<R>(R Function(T) block) => block(this);
}

extension RandomElement<T> on List<T> {
  T? get randomElement {
    if (isEmpty) return null;
    final index = Random().nextInt(length);
    return this[index];
  }
}

extension StringReplaceLastExtension on String {
  String replaceLast(Pattern pattern, String replacement) {
    final matches = pattern.allMatches(this).toList();

    if (matches.isEmpty) return this;

    final lastMatch = matches.last;

    return replaceRange(lastMatch.start, lastMatch.end, replacement);
  }
}
