import 'package:flutter/material.dart';

class LinkjoyStiltInFridge extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Curve curve;
  final Duration delay;

  const LinkjoyStiltInFridge({
    super.key,
    required this.child,
    this.duration = const Duration(seconds: 1),
    this.curve = Curves.easeIn,
    this.delay = Duration.zero,
  });

  @override
  State<LinkjoyStiltInFridge> createState() => _LinkjoyStiltInFridgeStatus();
}

class _LinkjoyStiltInFridgeStatus extends State<LinkjoyStiltInFridge>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _opacity;

  @override
  void initState() {
    super.initState();
    if (widget.duration == Duration.zero) return;

    AnimationController controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _controller = controller;

    _opacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: controller, curve: widget.curve));

    Future.delayed(widget.delay, () {
      if (mounted) {
        controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Animation<double>? anim = _opacity;
    if (widget.duration == Duration.zero || anim == null) {
      return widget.child;
    } else {
      return FadeTransition(opacity: anim, child: widget.child);
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
