import 'package:flutter/material.dart';

class LinkjoyKale extends StatelessWidget {
  const LinkjoyKale({super.key, required this.visible, required this.child});

  final bool visible;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Visibility(visible: visible, child: child);
  }
}
