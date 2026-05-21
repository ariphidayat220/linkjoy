import 'dart:io';
import 'dart:typed_data';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_flashy_silliness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:svgaplayer_flutter_rhr/parser.dart';
import 'package:svgaplayer_flutter_rhr/player.dart';
import 'package:svgaplayer_flutter_rhr/proto/svga.pb.dart';

enum LinkjoyAcheFridgeHair { loading, animation, complete, error }

class LinkjoyAcheFridge extends StatefulWidget {
  final String url;

  double? width;
  double? height;

  bool loop;

  void Function()? onAnimationStart;

  void Function()? onAnimationEnd;

  void Function()? onAnimationError;

  Widget Function(BuildContext context)? loadingBuilder;

  Widget Function(BuildContext context)? errorBuilder;

  void Function(LinkjoyAcheFridgeHair status)? onTap;

  LinkjoyAcheFridge({
    required this.url,
    this.width,
    this.height,
    this.loop = false,
    this.onAnimationStart,
    this.onAnimationEnd,
    this.onAnimationError,
    this.loadingBuilder,
    this.onTap,
    super.key,
  });

  @override
  State<LinkjoyAcheFridge> createState() => _LinkjoyAcheFridgeStatus();
}

class _LinkjoyAcheFridgeStatus extends State<LinkjoyAcheFridge>
    with SingleTickerProviderStateMixin {
  SVGAAnimationController? _animationController;

  Uint8List? bytesData;

  LinkjoyFlashySilliness? giftAction;

  bool hasError = false;

  @override
  void initState() {
    super.initState();

    if (widget.url.startsWith("http://") || widget.url.startsWith("https://")) {
      _download(widget.url);
    } else {
      _asset();
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget body;
    if (_animationController == null) {
      body = widget.loadingBuilder != null
          ? widget.loadingBuilder!.call(context)
          : const SizedBox.shrink();
    } else if (hasError) {
      body = widget.errorBuilder != null
          ? widget.errorBuilder!.call(context)
          : const SizedBox.shrink();
    } else {
      body = SizedBox(
        width: widget.width,
        height: widget.height,
        child: SVGAImage(_animationController!),
      );
    }

    return GestureDetector(
      onTap: () {
        if (widget.onTap != null) {
          LinkjoyAcheFridgeHair status;
          if (hasError) {
            status = LinkjoyAcheFridgeHair.error;
          } else if (_animationController == null) {
            status = LinkjoyAcheFridgeHair.loading;
          } else if (_animationController!.isAnimating) {
            status = LinkjoyAcheFridgeHair.animation;
          } else {
            status = LinkjoyAcheFridgeHair.complete;
          }
          widget.onTap!.call(status);
        }
      },
      child: body,
    );
  }

  _asset() async {
    try {
      _animation(await SVGAParser.shared.decodeFromAssets(widget.url));
    } catch (e, s) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(7811334, e, s);
      _onError();
    }
  }

  Future<void> _download(String url) async {
    try {
      File? file = await LINKJOY.http.cache(url);
      if (file == null) {
        _onError();
        return;
      }

      Uint8List data = await file.readAsBytes();
      _animation(await SVGAParser.shared.decodeFromBuffer(data.toList()));
    } catch (e, s) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(7811335, e, s);
      _onError.call();
    }
  }

  void _animation(MovieEntity me) {
    if (mounted) {
      setState(() {
        _animationController = SVGAAnimationController(vsync: this);
      });

      _animationController!.videoItem = me;
      TickerFuture future;
      if (widget.loop) {
        future = _animationController!.repeat();
      } else {
        future = _animationController!.forward();
      }
      future.whenCompleteOrCancel(() {
        if (widget.onAnimationEnd != null) {
          widget.onAnimationEnd!.call();
        }
      });
      future.onError((e, s) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(7811345, e ?? '', s);
        _onError();
      });
      widget.onAnimationStart?.call();
    }
  }

  void _onError() {
    if (mounted) {
      setState(() {
        hasError = true;
      });
    }

    if (widget.onAnimationError != null) {
      widget.onAnimationError!.call();
    }
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }
}
