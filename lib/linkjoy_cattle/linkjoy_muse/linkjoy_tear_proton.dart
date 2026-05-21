import 'package:flutter/material.dart';

class LinkjoyTearProton extends CustomClipper<Path> {
  final double cut;

  const LinkjoyTearProton({this.cut = 30});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width - cut, size.height);
    path.lineTo(cut, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(LinkjoyTearProton old) => old.cut != cut;
}
