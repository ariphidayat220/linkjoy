import 'package:flutter/material.dart';

class LinkjoyTentFridge extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Curve curve;
  final Duration delay;
  final Offset begin;
  final Offset end;

  const LinkjoyTentFridge({
    super.key,
    required this.child,
    this.duration = const Duration(seconds: 1),
    this.curve = Curves.linear,
    this.delay = Duration.zero,
    this.begin = const Offset(0.0, -1.0),
    this.end = Offset.zero,
  });

  @override
  State<LinkjoyTentFridge> createState() => _LinkjoyTentFridgeStatus();
}

class _LinkjoyTentFridgeStatus extends State<LinkjoyTentFridge>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<Offset>? _slideAnimation;

  @override
  void initState() {
    super.initState();
    if (widget.duration == Duration.zero) return;

    AnimationController controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _controller = controller;

    _slideAnimation = Tween<Offset>(
      begin: widget.begin,
      end: widget.end,
    ).animate(CurvedAnimation(parent: controller, curve: widget.curve));

    Future.delayed(widget.delay, () {
      if (mounted) {
        controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Animation<Offset>? anim = _slideAnimation;
    if (widget.duration == Duration.zero || anim == null) {
      return widget.child;
    } else {
      return SlideTransition(position: anim, child: widget.child);
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
