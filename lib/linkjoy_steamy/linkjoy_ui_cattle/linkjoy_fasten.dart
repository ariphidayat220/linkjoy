import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'linkjoy_fasten_industrial.dart';
import 'linkjoy_fasten_dance.dart';

class LinkjoyFasten {
  static Widget asset(
    String fileName, {
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
    String? ext,
    BlendMode? colorBlendMode,
    BorderRadiusGeometry? borderRadius,
  }) {
    return LinkjoyFastenIndustrial.asset(
      fileName,
      width: width,
      height: height,
      fit: fit,
      color: color,
      ext: ext,
      colorBlendMode: colorBlendMode,
      borderRadius: borderRadius,
    );
  }

  static Widget file(
    String fileName, {
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return LinkjoyFastenIndustrial.file(
      fileName,
      width: width,
      height: height,
      fit: fit,
    );
  }

  static Widget network(
    String url, {
    double? width,
    double? height,
    BoxFit? fit,
    ImageClipType? clip,
    BorderRadius? borderRadius,
    PlaceholderWidgetBuilder? placeHolder,
  }) {
    return LinkjoyFastenDance.network(
      url,
      width: width,
      height: height,
      fit: fit,
      clip: clip,
      borderRadius: borderRadius,
      placeHolder: placeHolder,
    );
  }

  static Widget origin(
    String url, {
    double? width,
    double? height,
    BoxFit? fit,
    BorderRadius? borderRadius,
    PlaceholderWidgetBuilder? placeHolder,
  }) {
    return LinkjoyFastenDance.origin(
      url,
      width: width,
      height: height,
      fit: fit,
      borderRadius: borderRadius,
      placeHolder: placeHolder,
    );
  }

  static Widget large(
    String url, {
    double? width,
    double? height,
    BoxFit? fit,
    BorderRadius? borderRadius,
    PlaceholderWidgetBuilder? placeHolder,
    bool ignorePlaceHolder = false,
  }) {
    return LinkjoyFastenDance.large(
      url,
      width: width,
      height: height,
      fit: fit,
      borderRadius: borderRadius,
      placeHolder: placeHolder,
      ignorePlaceHolder: ignorePlaceHolder,
    );
  }

  static Widget middle(
    String url, {
    double? width,
    double? height,
    BoxFit? fit,
    PlaceholderWidgetBuilder? placeHolder,
    BorderRadius? borderRadius,
  }) {
    return LinkjoyFastenDance.middle(
      url,
      width: width,
      height: height,
      fit: fit,
      placeHolder: placeHolder,
      borderRadius: borderRadius,
    );
  }

  static Widget small(
    String url, {
    double? width,
    double? height,
    BoxFit? fit,
    BorderRadius? borderRadius,
    PlaceholderWidgetBuilder? placeHolder,
  }) {
    return LinkjoyFastenDance.small(
      url,
      width: width,
      height: height,
      fit: fit,
      placeHolder: placeHolder,
      borderRadius: borderRadius,
    );
  }

  static Widget circle(
    String url, {
    required double size,
    BoxFit? fit,
    ImageClipType? clip,
    PlaceholderWidgetBuilder? placeHolder,
  }) {
    if (url == LinkjoyAncestorSister.linkjoy_sailor_vent) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
        child: LinkjoyFastenIndustrial.asset(url, width: size, height: size),
      );
    }

    return LinkjoyFastenDance.circle(
      url,
      size: size,
      fit: fit,
      clip: clip,
      placeHolder: placeHolder,
    );
  }

  static Widget round(
    String url, {
    ImageClipType? clip,
    double? width,
    double? height,
    BoxFit? fit,
    BorderRadius? borderRadius,
    PlaceholderWidgetBuilder? placeHolder,
    bool ignorePlaceHolder = false,
  }) {
    return LinkjoyFastenDance.round(
      url,
      clip: clip,
      width: width,
      height: height,
      fit: fit,
      borderRadius: borderRadius,
      placeHolder: placeHolder,
      ignorePlaceHolder: ignorePlaceHolder,
    );
  }

  static bool isNetworkImage(String imagePath) {
    return (imagePath.startsWith("http://") ||
        imagePath.startsWith("https://"));
  }

  static bool isFile(String imagePath) {
    return (imagePath.startsWith("file://"));
  }

  static Widget complex(
    String url, {
    ImageClipType? clip,
    double? width,
    double? height,
    BoxFit? fit,
    BorderRadius? borderRadius,
    PlaceholderWidgetBuilder? placeHolder,
    bool ignorePlaceHolder = false,
  }) {
    if (isNetworkImage(url)) {
      return LinkjoyFastenDance.origin(
        url,
        width: width,
        height: height,
        fit: fit,
        borderRadius: borderRadius,
        placeHolder: placeHolder,
      );
    }
    if (isFile(url)) {
      return LinkjoyFastenIndustrial.file(
        url,
        width: width,
        height: height,
        fit: fit,
      );
    } else {
      return LinkjoyFastenIndustrial.asset(
        url,
        width: width,
        height: height,
        fit: fit,
        color: null,
        ext: null,
      );
    }
  }

  static ImageProvider complexProvider(String url) {
    if (isNetworkImage(url)) {
      return LinkjoyFastenDance.provider(url);
    } else if (isFile(url)) {
      return LinkjoyFastenIndustrial.fileProvider(url);
    } else {
      return LinkjoyFastenIndustrial.assetProvider(url);
    }
  }

  static ImageProvider netProvider(String url) {
    return LinkjoyFastenDance.provider(url);
  }

  static ImageProvider fileProvider(String fileFullPath) {
    return LinkjoyFastenIndustrial.fileProvider(fileFullPath);
  }

  static ImageProvider assetProvider(String assetNameWithoutPngExt) {
    return LinkjoyFastenIndustrial.assetProvider(assetNameWithoutPngExt);
  }
}
