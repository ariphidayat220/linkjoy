import 'dart:io';

import 'package:flutter/material.dart';

class LinkjoyFastenIndustrial {
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
    ImageProvider provider = assetProvider(fileName, ext: ext);
    if (borderRadius == null) {
      return Image(
        image: provider,
        fit: fit,
        width: width,
        height: height,
        color: color,
        colorBlendMode: colorBlendMode,
      );
    }
    return Container(
      height: height,
      width: width,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        image: DecorationImage(image: provider, fit: fit),
      ),
    );
  }

  static ImageProvider assetProvider(String fileName, {String? ext}) {
    return AssetImage("assets/images/$fileName.${ext ?? 'png'}");
  }

  static Widget file(
    String fileName, {
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image(
      image: fileProvider(fileName),
      width: width,
      height: height,
      fit: fit,
    );
  }

  static ImageProvider fileProvider(String fileName) {
    return FileImage(File(fileName));
  }
}
