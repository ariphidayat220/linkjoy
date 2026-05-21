import 'package:flutter/material.dart';

enum LinkjoyCreamyZack { top, bottom, left, right }

enum LinkjoyCreamyThrilled { inward, outward }

class LinkjoyCreamyAsset extends CustomPainter {
  final Color color;

  final LinkjoyCreamyZack position;

  final LinkjoyCreamyThrilled direction;

  final double size;

  final double offset;

  LinkjoyCreamyAsset({
    required this.color,
    this.position = LinkjoyCreamyZack.bottom,
    this.direction = LinkjoyCreamyThrilled.outward,
    this.size = 20,
    this.offset = 20,
  });

  @override
  void paint(Canvas canvas, Size sizeBox) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();

    switch (position) {
      case LinkjoyCreamyZack.bottom:
        _drawBottom(path, sizeBox);
        break;
      case LinkjoyCreamyZack.top:
        _drawTop(path, sizeBox);
        break;
      case LinkjoyCreamyZack.left:
        _drawLeft(path, sizeBox);
        break;
      case LinkjoyCreamyZack.right:
        _drawRight(path, sizeBox);
        break;
    }

    canvas.drawPath(path, paint);
  }

  void _drawBottom(Path path, Size s) {
    final maxX = (s.width - size).clamp(0, double.infinity);
    double x = offset.clamp(0, maxX).toDouble();

    if (direction == LinkjoyCreamyThrilled.outward) {
      path.moveTo(x, s.height);
      path.lineTo(x + size, s.height);
      path.lineTo(x + size / 2, s.height + size / 2);
    } else {
      path.moveTo(x, s.height);
      path.lineTo(x + size, s.height);
      path.lineTo(x + size / 2, s.height - size / 2);
    }

    path.close();
  }

  void _drawTop(Path path, Size s) {
    final maxX = (s.width - size).clamp(0, double.infinity);
    double x = offset.clamp(0, maxX).toDouble();

    if (direction == LinkjoyCreamyThrilled.outward) {
      path.moveTo(x, 0);
      path.lineTo(x + size, 0);
      path.lineTo(x + size / 2, -size / 2);
    } else {
      path.moveTo(x, 0);
      path.lineTo(x + size, 0);
      path.lineTo(x + size / 2, size / 2);
    }

    path.close();
  }

  void _drawLeft(Path path, Size s) {
    final maxY = (s.height - size / 2).clamp(0, double.infinity);
    double y = offset.clamp(0, maxY).toDouble();

    if (direction == LinkjoyCreamyThrilled.outward) {
      path.moveTo(0, y);
      path.lineTo(0, y + size);
      path.lineTo(-size / 2, y + size / 2);
    } else {
      path.moveTo(0, y);
      path.lineTo(0, y + size);
      path.lineTo(size / 2, y + size / 2);
    }

    path.close();
  }

  void _drawRight(Path path, Size s) {
    final maxY = (s.height - size).clamp(0, double.infinity);
    double y = offset.clamp(0, maxY).toDouble();

    if (direction == LinkjoyCreamyThrilled.outward) {
      path.moveTo(s.width, y);
      path.lineTo(s.width, y + size);
      path.lineTo(s.width + size / 2, y + size / 2);
    } else {
      path.moveTo(s.width, y);
      path.lineTo(s.width, y + size);
      path.lineTo(s.width - size / 2, y + size / 2);
    }

    path.close();
  }

  @override
  bool shouldRepaint(covariant LinkjoyCreamyAsset oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.position != position ||
        oldDelegate.direction != direction ||
        oldDelegate.size != size ||
        oldDelegate.offset != offset;
  }
}
