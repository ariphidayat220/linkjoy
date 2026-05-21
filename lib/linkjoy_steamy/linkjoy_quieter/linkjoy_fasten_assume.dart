import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LinkjoyFastenAssume extends StatelessWidget {
  const LinkjoyFastenAssume({
    super.key,
    required this.url,
    this.color = Colors.transparent,
    this.height,
    this.width,
    this.fit = BoxFit.contain,
    this.borderRadius,
    this.splashColor,
    this.highlightColor,
    this.onTap,
  });

  final String url;
  final Color? color;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final BorderRadius? borderRadius;
  final GestureTapCallback? onTap;
  final Color? splashColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: Ink(
        child: InkWell(
          borderRadius: borderRadius,
          splashColor: splashColor ?? Theme.of(context).splashColor,
          highlightColor: highlightColor ?? Theme.of(context).highlightColor,
          onTap: onTap,
          child: _image(),
        ),
      ),
    );
  }

  Widget _image() {
    if (url.startsWith("http://") || url.startsWith("https://")) {
      return Ink.image(
        image: CachedNetworkImageProvider(url),
        width: width,
        height: height,
        fit: fit,
      );
    }

    if (url.startsWith("/")) {
      return Ink.image(
        image: FileImage(File(url)),
        width: width,
        height: height,
        fit: fit,
      );
    }

    return Ink.image(
      image: AssetImage("assets/images/$url.png"),
      width: width,
      height: height,
      fit: fit,
    );
  }
}
