import 'dart:math';

import 'package:flutter/material.dart';

class LinkjoyVowFranklyUpside extends StatefulWidget {
  final bool isSearching;
  final Color themeColor;

  const LinkjoyVowFranklyUpside({
    super.key,
    required this.isSearching,
    required this.themeColor,
  });

  @override
  State<LinkjoyVowFranklyUpside> createState() =>
      _LinkjoyVowFranklyUpsideStatus();
}

class _LinkjoyVowFranklyUpsideStatus extends State<LinkjoyVowFranklyUpside>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.isSearching
          ? const Duration(seconds: 2)
          : const Duration(seconds: 6),
    )..repeat();
  }

  @override
  void didUpdateWidget(covariant LinkjoyVowFranklyUpside oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.duration = widget.isSearching
        ? const Duration(seconds: 2)
        : const Duration(seconds: 6);
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          painter: _LinkjoyVowAsset(
            animationValue: _controller.value,
            isSearching: widget.isSearching,
            themeColor: widget.themeColor,
          ),
        );
      },
    );
  }
}

class _LinkjoyVowAsset extends CustomPainter {
  final double animationValue;
  final bool isSearching;
  final Color themeColor;

  _LinkjoyVowAsset({
    required this.animationValue,
    required this.isSearching,
    required this.themeColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final double angle = isSearching
        ? animationValue * pi * 4
        : animationValue * pi;

    for (int i = 1; i <= 4; i++) {
      final double radius = isSearching
          ? 180 + sin(animationValue * pi * 3) * 40
          : 180 + sin(animationValue * pi) * 40;

      final gradient = RadialGradient(
        colors: [
          themeColor.withValues(alpha: 0.15),
          themeColor.withValues(alpha: 0.03),
        ],
        stops: const [0.4, 1.0],
      );

      canvas.save();
      canvas.translate(center.dx, center.dy);
      canvas.rotate(angle * i / 4);
      canvas.drawCircle(
        Offset.zero,
        radius * i / 4,
        Paint()
          ..shader = gradient.createShader(
            Rect.fromCircle(center: Offset.zero, radius: radius),
          ),
      );
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant _LinkjoyVowAsset oldDelegate) => true;
}
