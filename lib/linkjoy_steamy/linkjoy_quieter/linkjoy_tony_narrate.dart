import 'dart:io';
import 'dart:typed_data';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pag/pag.dart';

class LinkjoyTonyNarrate extends StatefulWidget {
  double? width;
  double? height;

  late String url;

  String? package;

  double initProgress;

  bool autoPlay;

  int repeatCount;

  PAGCallback? onInit;

  PAGCallback? onAnimationStart;

  PAGCallback? onAnimationEnd;

  PAGCallback? onAnimationCancel;

  PAGCallback? onAnimationRepeat;

  Widget Function(BuildContext context)? defaultBuilder;

  LinkjoyTonyNarrate(
    this.url, {
    this.width,
    this.height,
    this.repeatCount = PAGView.REPEAT_COUNT_DEFAULT,
    this.initProgress = 0,
    this.autoPlay = false,
    this.onInit,
    this.onAnimationStart,
    this.onAnimationEnd,
    this.onAnimationCancel,
    this.onAnimationRepeat,
    this.defaultBuilder,
    super.key,
  });

  @override
  State<LinkjoyTonyNarrate> createState() => _LinkjoyTonyNarrateStatus();
}

class _LinkjoyTonyNarrateStatus extends State<LinkjoyTonyNarrate> {
  Uint8List? bytesData;

  @override
  Widget build(BuildContext context) {
    if (widget.url.startsWith("http://") || widget.url.startsWith("https://")) {
      if (bytesData == null) {
        _download(widget.url);
      } else {
        return _bytes();
      }
    } else {
      return _asset();
    }

    if (widget.defaultBuilder != null) {
      return widget.defaultBuilder!(context);
    } else {
      return const SizedBox(width: 1, height: 1);
    }
  }

  PAGView _bytes() {
    return PAGView.bytes(
      bytesData,
      width: widget.width,
      height: widget.height,
      autoPlay: widget.autoPlay,
      repeatCount: widget.repeatCount,
      initProgress: widget.initProgress,
      package: widget.package,
      onInit: widget.onInit,
      onAnimationStart: widget.onAnimationStart,
      onAnimationEnd: widget.onAnimationEnd,
      onAnimationCancel: widget.onAnimationCancel,
      onAnimationRepeat: widget.onAnimationRepeat,
      defaultBuilder: widget.defaultBuilder,
      key: widget.key,
    );
  }

  PAGView _asset() {
    return PAGView.asset(
      widget.url,
      width: widget.width,
      height: widget.height,
      autoPlay: widget.autoPlay,
      repeatCount: widget.repeatCount,
      initProgress: widget.initProgress,
      package: widget.package,
      onInit: widget.onInit,
      onAnimationStart: widget.onAnimationStart,
      onAnimationEnd: widget.onAnimationEnd,
      onAnimationCancel: widget.onAnimationCancel,
      onAnimationRepeat: widget.onAnimationRepeat,
      defaultBuilder: widget.defaultBuilder,
      key: widget.key,
    );
  }

  Future<void> _download(String url) async {
    File? file = await LINKJOY.http.cache(url);
    if (file == null) {
      return;
    }

    Uint8List data = await file.readAsBytes();
    if (mounted) {
      setState(() {
        bytesData = data;
      });
    }
    return;
  }
}
