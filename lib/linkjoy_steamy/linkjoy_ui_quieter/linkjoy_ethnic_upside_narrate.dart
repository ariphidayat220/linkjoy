import 'dart:ui' as ui;

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_ethnic_shredder_unlock.dart';
import 'package:flutter/cupertino.dart';

class LinkjoyEthnicShredderUpsideNarrate extends StatefulWidget {
  final String assetPath;

  final double width;

  final double height;

  final int frameCount;

  final int columns;

  final double frameWidth;

  final double frameHeight;

  const LinkjoyEthnicShredderUpsideNarrate({
    super.key,
    required this.width,
    required this.height,
    required this.assetPath,
    required this.frameCount,
    required this.columns,
    required this.frameWidth,
    required this.frameHeight,
  });

  @override
  State<LinkjoyEthnicShredderUpsideNarrate> createState() =>
      _LinkjoyEthnicShredderUpsideNarrateStatus();
}

class _LinkjoyEthnicShredderUpsideNarrateStatus
    extends State<LinkjoyEthnicShredderUpsideNarrate> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: _linkjoyEthnicFasten(),
    );
  }

  _linkjoyEthnicFasten() {
    return FutureBuilder<ui.Image>(
      future: LinkjoyEthnicShredderUnlock.instance.load(widget.assetPath),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }
        return LinkjoyEthnicFridge(
          spriteSheet: snapshot.data!,
          frameCount: widget.frameCount,
          columns: widget.columns,
          frameWidth: widget.frameWidth,
          frameHeight: widget.frameHeight,
        );
      },
    );
  }
}

class LinkjoyEthnicFridge extends StatefulWidget {
  final ui.Image spriteSheet;

  final int frameCount;

  final int columns;

  final double frameWidth;

  final double frameHeight;

  const LinkjoyEthnicFridge({
    super.key,
    required this.spriteSheet,
    required this.frameCount,
    required this.columns,
    required this.frameWidth,
    required this.frameHeight,
  });

  @override
  State<LinkjoyEthnicFridge> createState() => _LinkjoyEthnicFridgeStatus();
}

class _LinkjoyEthnicFridgeStatus extends State<LinkjoyEthnicFridge>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: (widget.frameCount * 1000) ~/ 15),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          int currentFrame =
              (_controller.value * widget.frameCount).floor() %
              widget.frameCount;
          return CustomPaint(
            size: Size(widget.frameWidth, widget.frameHeight),
            painter: _SpritePainter(
              spriteSheet: widget.spriteSheet,
              frameIndex: currentFrame,
              columns: widget.columns,
              frameWidth: widget.frameWidth,
              frameHeight: widget.frameHeight,
            ),
          );
        },
      ),
    );
  }
}

class _SpritePainter extends CustomPainter {
  final ui.Image spriteSheet;
  final int frameIndex;
  final int columns;
  final double frameWidth;
  final double frameHeight;

  _SpritePainter({
    required this.spriteSheet,
    required this.frameIndex,
    required this.columns,
    required this.frameWidth,
    required this.frameHeight,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final col = frameIndex % columns;
    final row = frameIndex ~/ columns;

    final src = Rect.fromLTWH(
      col * frameWidth,
      row * frameHeight,
      frameWidth,
      frameHeight,
    );
    final dst = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawImageRect(spriteSheet, src, dst, Paint());
  }

  @override
  bool shouldRepaint(covariant _SpritePainter oldDelegate) {
    return oldDelegate.frameIndex != frameIndex;
  }
}
