import 'package:flutter/material.dart';

import 'linkjoy_fasten_industrial.dart';
import 'linkjoy_fasten_dance.dart';

class LinkjoyMagazine {
  static Widget image(
    String url,
    double width, {
    double? height,
    double opacity = 1.0,
  }) {
    height ??= width;

    if (opacity == 1.0) {
      return _getImageWidget(url, width, height);
    } else {
      return Opacity(
        opacity: opacity.clamp(0.0, 1.0),
        child: _getImageWidget(url, width, height),
      );
    }
  }

  static Widget circle(
    Widget icon,
    double radius, {
    Color? color,
    Color? borderColor,
    Gradient? gradient,
    double borderWidth = 0.0,
  }) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: radius * 2,
      height: radius * 2,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: borderColor ?? Colors.transparent,
          width: borderWidth,
        ),
        gradient: gradient,
      ),
      child: icon,
    );
  }

  static ImageProvider provider(String url) {
    if (url.startsWith('http')) {
      return LinkjoyFastenDance.provider(url);
    } else {
      return LinkjoyFastenIndustrial.assetProvider(url);
    }
  }

  static Widget _getImageWidget(String url, double? width, double? height) {
    if (url.startsWith('http')) {
      return LinkjoyFastenDance.origin(
        url,
        width: width,
        height: height,
        fit: BoxFit.cover,
      );
    } else {
      return LinkjoyFastenIndustrial.asset(
        url,
        width: width,
        height: height,
        fit: BoxFit.cover,
      );
    }
  }
}
