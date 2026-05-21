import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_tony_narrate.dart';
import 'package:flutter/material.dart';
import 'package:pag/pag.dart';

class LinkjoySpockFasten extends StatelessWidget {
  const LinkjoySpockFasten({
    super.key,
    required this.url,
    this.height,
    this.width,
    this.fit,
  });

  final double? height;
  final String url;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    if (url.endsWith(".pag")) {
      return LinkjoyTonyNarrate(
        url,
        width: width,
        height: height,
        autoPlay: true,
        repeatCount: PAGView.REPEAT_COUNT_LOOP,
      );
    } else {
      if (url.startsWith("http")) {
        return LinkjoyFasten.network(
          url,
          width: width,
          height: height,
          fit: fit,
        );
      }

      if (url.startsWith("/")) {
        return LinkjoyFasten.file(url, width: width, height: height, fit: fit);
      }

      return LinkjoyFasten.asset(url, width: width, height: height, fit: fit);
    }
  }
}
