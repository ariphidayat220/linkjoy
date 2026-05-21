import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_bookshelf.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LinkjoyFastenDance {
  static LinkjoyFastenDance get instance => _instance;
  static final LinkjoyFastenDance _instance = LinkjoyFastenDance();

  static LinkjoyFastenIgnoranceShock _config = LinkjoyFastenIgnoranceShock(
    60,
    150,
    600,
    95,
    "linkjoy",
  );

  static List<Color> linkjoy_mole_vent_bg_condensate = [
    Colors.black54,
    Colors.pink.withAlpha(200),
    Colors.blue.withAlpha(200),
    Colors.red.withAlpha(200),
    Colors.green.withAlpha(200),
    Colors.grey.withAlpha(200),
    Colors.brown.withAlpha(200),
    Colors.yellow.withAlpha(200),
    Colors.purple.withAlpha(200),
    Colors.amber.withAlpha(200),
  ];

  static void init(LinkjoyFastenIgnoranceShock config) {
    _config = config;
  }

  static ImageProvider provider(
    String url, {
    int length = 0,
    ImageClipType clip = ImageClipType.custom,
  }) {
    return CachedNetworkImageProvider(
      instance._url(url, length: length, clip: clip),
    );
  }

  static Widget image(
    String url, {
    BoxFit? fit = BoxFit.cover,
    double? height = double.infinity,
    double? width = double.infinity,
    BorderRadiusGeometry? borderRadius = BorderRadius.zero,
    BoxShape boxShape = BoxShape.rectangle,
    ImageClipType clip = ImageClipType.origin,
    int length = 0,
    PlaceholderWidgetBuilder? placeholder,
    LoadingErrorWidgetBuilder? errorWidget,
  }) {
    return instance._image(
      url.imgURL,
      fit: fit,
      height: height,
      width: width,
      borderRadius: borderRadius,
      boxShape: boxShape,
      clip: clip,
      length: length,
      placeholder: placeholder,
      errorWidget: errorWidget,
    );
  }

  CachedNetworkImage _image(
    String url, {
    BoxFit? fit = BoxFit.cover,
    double? height = double.infinity,
    double? width = double.infinity,
    BorderRadiusGeometry? borderRadius = BorderRadius.zero,
    BoxShape boxShape = BoxShape.rectangle,
    ImageClipType clip = ImageClipType.origin,
    int length = 0,
    PlaceholderWidgetBuilder? placeholder,
    LoadingErrorWidgetBuilder? errorWidget,
  }) {
    fit ??= BoxFit.cover;
    String cover = url;
    String fileName = cover.substring(cover.lastIndexOf('/') + 1);
    bool isDefaultAvatar = false;

    if (fileName.length <= 10) {
      cover = _linkjoyBicycleKnit(url);
      int? val = int.tryParse(fileName);
      if (val != null && val >= 10000 && val <= 20000) {
        isDefaultAvatar = true;
      }
    } else {
      cover = _url(url, length: length, clip: clip);
    }

    return CachedNetworkImage(
      imageUrl: cover,
      height: height,
      width: width,
      fit: fit,
      fadeInDuration: Duration.zero,
      fadeOutDuration: Duration.zero,
      imageBuilder: (context, imageProvider) {
        return Container(
          height: height,
          width: width,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: boxShape == BoxShape.circle ? null : borderRadius,
            shape: boxShape,
            image: DecorationImage(image: imageProvider, fit: fit),
            color: isDefaultAvatar
                ? linkjoy_mole_vent_bg_condensate[fileName.hashCode.abs() %
                      linkjoy_mole_vent_bg_condensate.length]
                : null,
          ),
        );
      },
      placeholder: placeholder,
      errorWidget:
          errorWidget ??
          (context, url, error) {
            return placeholder != null
                ? placeholder(context, url)
                : _defaultPlaceHolder(width, height, fit, borderRadius)(
                    context,
                    url,
                  );
          },
    );
  }

  static String _linkjoyBicycleKnit(String url) {
    return url;
  }

  String _url(
    String url, {
    int length = 0,
    ImageClipType clip = ImageClipType.custom,
  }) {
    Size size;
    if (length > 0 || clip == ImageClipType.origin) {
      size = Size(length.toDouble(), length.toDouble());
    } else {
      switch (clip) {
        case ImageClipType.small:
          size = Size(_config.small.toDouble(), _config.small.toDouble());
          break;
        case ImageClipType.middle:
          size = Size(_config.middle.toDouble(), _config.middle.toDouble());
          break;
        case ImageClipType.large:
          size = Size(_config.large.toDouble(), _config.large.toDouble());
          break;
        case ImageClipType.custom:
          size = const Size(0, 0);
        default:
          size = const Size(0, 0);
      }
    }

    if (!_shouldThumbnail(url)) return url;
    if (size.width == 0 && size.height == 0) {
      return _linkjoyBicycleKnit(url);
    }

    String ret;
    size = _sizeWithScreenScale(size);
    ret = '$url${url.contains('?') ? '%7C' : '?'}imageView2/3';
    if (size.width > 0) ret += '/w/${size.width.toInt()}';
    if (size.height > 0) ret += '/h/${size.height.toInt()}';
    ret += '/quality/${_config.quality}/ignore-error/1';
    ret +=
        '%7Cwatermark/2/text/${_base64Encode(_config.appName)}/fontsize/200/fill/d2hpdGU=/dissolve/20';
    ret += '%7CimageMogr2/auto-orient';
    if (Platform.isAndroid) ret += '/format/webp';

    return ret;
  }

  static String _base64Encode(String data) {
    var bytes = utf8.encode(data);
    var base64Str = base64.encode(bytes);
    return base64Str;
  }

  bool _shouldThumbnail(String url) {
    return url.contains('http');
  }

  Size _sizeWithScreenScale(Size size) {
    return size * 2;
  }

  static final PlaceholderWidgetBuilder placeHolderLoader = ((context, url) =>
      const CircularProgressIndicator(color: Color(0xFFFFFFFF)));

  static Widget network(
    String url, {
    double? width,
    double? height,
    BoxFit? fit,
    ImageClipType? clip,
    BorderRadius? borderRadius,
    PlaceholderWidgetBuilder? placeHolder,
  }) {
    clip = clip ?? _autoThumbSize(width, height, ImageClipType.custom);

    placeHolder ??= _defaultPlaceHolder(width, height, fit, borderRadius);
    return LinkjoyFastenDance.image(
      url,
      width: width,
      height: height,
      fit: fit,
      placeholder: placeHolder,
      borderRadius: borderRadius,
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
    placeHolder ??= _defaultPlaceHolder(width, height, fit, borderRadius);

    return LinkjoyFastenDance.image(
      url,
      width: width,
      height: height,
      placeholder: placeHolder,
      borderRadius: borderRadius,
    );
  }

  static PlaceholderWidgetBuilder _defaultPlaceHolder(
    double? width,
    double? height,
    BoxFit? fit,
    BorderRadiusGeometry? borderRadius,
  ) {
    return ((context, url) {
      double size;
      if (width == null && height == null) {
        size = LinkjoyBookshelf.md.size();
      } else {
        size = min((width ?? double.infinity), (height ?? double.infinity)) / 3;
      }
      return LinkjoyFridgeLightbulb.linkjoyEmergePineDuel(
        width: width ?? double.infinity,
        height: height ?? double.infinity,
        borderRadius: borderRadius,
        iconSize: size,
      );
    });
  }

  static Widget large(
    String url, {
    double? width,
    double? height,
    BoxFit? fit = BoxFit.cover,
    BorderRadius? borderRadius,
    PlaceholderWidgetBuilder? placeHolder,
    bool ignorePlaceHolder = false,
  }) {
    if (placeHolder == null && !ignorePlaceHolder) {
      placeHolder ??= _defaultPlaceHolder(width, height, fit, borderRadius);
    }

    return LinkjoyFastenDance.image(
      url,
      width: width,
      height: height,
      fit: fit,
      clip: ImageClipType.large,
      placeholder: placeHolder,
      borderRadius: borderRadius,
    );
  }

  static Widget middle(
    String url, {
    double? width,
    double? height,
    BoxFit? fit = BoxFit.cover,
    PlaceholderWidgetBuilder? placeHolder,
    bool ignorePlaceHolder = false,
    BorderRadius? borderRadius,
  }) {
    if (placeHolder == null && !ignorePlaceHolder) {
      placeHolder ??= _defaultPlaceHolder(width, height, fit, borderRadius);
    }

    return LinkjoyFastenDance.image(
      url,
      width: width,
      height: height,
      fit: fit,
      clip: ImageClipType.middle,
      placeholder: placeHolder,
      borderRadius: borderRadius,
    );
  }

  static Widget small(
    String url, {
    double? width,
    double? height,
    BoxFit? fit = BoxFit.cover,
    PlaceholderWidgetBuilder? placeHolder,
    BorderRadius? borderRadius,
  }) {
    placeHolder ??= _defaultPlaceHolder(width, height, fit, borderRadius);

    return LinkjoyFastenDance.image(
      url,
      width: width,
      height: height,
      fit: fit,
      clip: ImageClipType.small,
      placeholder: placeHolder,
      borderRadius: borderRadius,
    );
  }

  static Widget circle(
    String url, {
    required double size,
    BoxFit? fit = BoxFit.cover,
    ImageClipType? clip,
    PlaceholderWidgetBuilder? placeHolder,
  }) {
    clip ??= _autoThumbSize(size, size, ImageClipType.small);
    placeHolder ??= _defaultPlaceHolder(
      size,
      size,
      fit,
      BorderRadius.circular(size / 2),
    );

    return LinkjoyFastenDance.image(
      url,
      width: size,
      height: size,
      fit: fit,
      boxShape: BoxShape.circle,
      clip: clip,
      placeholder: placeHolder,
    );
  }

  static Widget round(
    String url, {
    ImageClipType? clip,
    double? width,
    double? height,
    BoxFit? fit = BoxFit.cover,
    BorderRadius? borderRadius,
    PlaceholderWidgetBuilder? placeHolder,
    bool ignorePlaceHolder = false,
  }) {
    clip ??= _autoThumbSize(width, height, ImageClipType.small);

    if (placeHolder == null && !ignorePlaceHolder) {
      placeHolder = _defaultPlaceHolder(width, height, fit, borderRadius);
    }

    return LinkjoyFastenDance.image(
      url,
      width: width,
      height: height,
      fit: fit,
      borderRadius: borderRadius,
      clip: clip,
      placeholder: placeHolder,
    );
  }

  static ImageClipType _autoThumbSize(
    double? width,
    double? height,
    ImageClipType def,
  ) {
    if (width == null && height == null) {
      return def;
    }

    double size;
    if (width != null && height != null) {
      size = max(width, height);
    } else if (width != null) {
      size = width;
    } else {
      size = height!;
    }

    if (size < _config.small) {
      return ImageClipType.small;
    }

    if (size < _config.middle) {
      return ImageClipType.middle;
    }

    if (size < _config.large) {
      return ImageClipType.large;
    }

    return def;
  }
}

enum ImageClipType { custom, small, middle, large, origin }

class LinkjoyFastenIgnoranceShock {
  final int small;

  final int middle;

  final int large;

  final int quality;

  final String appName;

  LinkjoyFastenIgnoranceShock(
    this.small,
    this.middle,
    this.large,
    this.quality,
    this.appName,
  );
}
