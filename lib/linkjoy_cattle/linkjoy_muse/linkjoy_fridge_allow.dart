import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

extension WidgetExt on Widget {
  Widget badge(
    String? badge, {
    badges.BadgePosition? position,
    Color badgeColor = LinkjoyAve.badgeCounter,
    Color textColor = Colors.white,
    double fontSize = 8,
  }) {
    if (badge == null) {
      return this;
    }

    return badges.Badge(
      badgeStyle: const badges.BadgeStyle(badgeColor: LinkjoyAve.badgeCounter),
      badgeContent: Text(
        badge,
        style: TextStyle(color: textColor, fontSize: fontSize),
      ),
      position: position,
      showBadge: true,
      child: this,
    );
  }

  Widget badgeCount(
    int count, {
    badges.BadgePosition? position,
    Color badgeColor = LinkjoyAve.badgeCounter,
    Color textColor = Colors.white,
    double fontSize = 8,
  }) {
    if (count <= 0) {
      return this;
    }

    return badges.Badge(
      badgeStyle: const badges.BadgeStyle(badgeColor: LinkjoyAve.badgeCounter),
      badgeContent: Text(
        count > 99 ? "99+" : count.toString(),
        style: TextStyle(color: textColor, fontSize: fontSize),
      ),
      position: position,
      showBadge: true,
      child: this,
    );
  }

  Widget shadow({
    Color? color,
    double blurRadius = 6,
    double spreadRadius = 1,
    Offset offset = const Offset(0, 4),
  }) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: color ?? LinkjoyAve.shadow,
            blurRadius: blurRadius,
            spreadRadius: spreadRadius,
            offset: offset,
          ),
        ],
      ),
      child: this,
    );
  }

  Widget click(GestureTapCallback? event) {
    return InkWell(onTap: event, child: this);
  }

  Widget animationRipple(
    double size,
    double maxSize, {
    bool repeat = false,
    int duration = 2000,
    Color? color,
  }) {
    return _RippleAnimationWidget(
      repeat: repeat,
      duration: duration,
      color: color ?? LinkjoyAve.primaryMain,
      size: size,
      maxSize: maxSize,
      child: this,
    );
  }

  Widget animationBlink({
    bool repeat = true,
    int duration = 1000,
    double opacity = 0.3,
  }) {
    return _BlinkAnimationWidget(
      repeat: repeat,
      duration: duration,
      minOpacity: opacity,
      child: this,
    );
  }

  Widget animationShake({
    bool repeat = false,
    int duration = 500,
    double shakeDistance = 10,
  }) {
    return _ShakeAnimationWidget(
      repeat: repeat,
      duration: duration,
      shakeDistance: shakeDistance,
      child: this,
    );
  }

  Widget animationBounce({
    bool repeat = false,
    int duration = 600,
    double bounceHeight = 20,
  }) {
    return _BounceAnimationWidget(
      repeat: repeat,
      duration: duration,
      bounceHeight: bounceHeight,
      child: this,
    );
  }

  Widget animationPulse({
    bool repeat = true,
    int duration = 1500,
    double scale = 1.2,
  }) {
    return _PulseAnimationWidget(
      repeat: repeat,
      duration: duration,
      maxScale: scale,
      child: this,
    );
  }

  Widget animationRotate({
    bool repeat = true,
    int duration = 2000,
    double turns = 1,
  }) {
    return _RotateAnimationWidget(
      repeat: repeat,
      duration: duration,
      turns: turns,
      child: this,
    );
  }

  Widget animationWobble({
    bool repeat = true,
    int duration = 500,
    double angle = 30,
  }) {
    return _WobbleAnimationWidget(
      repeat: repeat,
      duration: duration,
      angle: angle,
      child: this,
    );
  }
}

class _RippleAnimationWidget extends StatefulWidget {
  final Widget child;
  final bool repeat;
  final int duration;
  final Color color;
  final double size;
  final double maxSize;

  const _RippleAnimationWidget({
    required this.child,
    required this.repeat,
    required this.duration,
    required this.color,
    required this.size,
    required this.maxSize,
  });

  @override
  State<_RippleAnimationWidget> createState() => _RippleAnimationWidgetState();
}

class _RippleAnimationWidgetState extends State<_RippleAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: widget.duration),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0,
      end: widget.maxSize,
    ).animate(_controller);
    if (widget.repeat) {
      _controller.repeat();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              width: _animation.value * 2,
              height: _animation.value * 2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.color.withValues(
                  alpha: 1 - (_animation.value / widget.maxSize),
                ),
              ),
            );
          },
        ),
        widget.child,
      ],
    );
  }
}

class _BlinkAnimationWidget extends StatefulWidget {
  final Widget child;
  final bool repeat;
  final int duration;
  final double minOpacity;

  const _BlinkAnimationWidget({
    required this.child,
    required this.repeat,
    required this.duration,
    required this.minOpacity,
  });

  @override
  State<_BlinkAnimationWidget> createState() => _BlinkAnimationWidgetState();
}

class _BlinkAnimationWidgetState extends State<_BlinkAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: widget.duration ~/ 2),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: widget.minOpacity,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    if (widget.repeat) {
      _controller.repeat(reverse: true);
    } else {
      _controller.forward().then((_) => _controller.reverse());
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: _animation, child: widget.child);
  }
}

class _ShakeAnimationWidget extends StatefulWidget {
  final Widget child;
  final bool repeat;
  final int duration;
  final double shakeDistance;

  const _ShakeAnimationWidget({
    required this.child,
    required this.repeat,
    required this.duration,
    required this.shakeDistance,
  });

  @override
  State<_ShakeAnimationWidget> createState() => _ShakeAnimationWidgetState();
}

class _ShakeAnimationWidgetState extends State<_ShakeAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: widget.duration ~/ 4),
      vsync: this,
    );
    final offsetValue = widget.shakeDistance / 100;
    _animation = TweenSequence<Offset>([
      TweenSequenceItem(
        tween: Tween(begin: Offset.zero, end: Offset(-offsetValue, 0)),
        weight: 25,
      ),
      TweenSequenceItem(
        tween: Tween(
          begin: Offset(-offsetValue, 0),
          end: Offset(offsetValue, 0),
        ),
        weight: 50,
      ),
      TweenSequenceItem(
        tween: Tween(begin: Offset(offsetValue, 0), end: Offset.zero),
        weight: 25,
      ),
    ]).animate(_controller);
    if (widget.repeat) {
      _controller.repeat();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _animation, child: widget.child);
  }
}

class _BounceAnimationWidget extends StatefulWidget {
  final Widget child;
  final bool repeat;
  final int duration;
  final double bounceHeight;

  const _BounceAnimationWidget({
    required this.child,
    required this.repeat,
    required this.duration,
    required this.bounceHeight,
  });

  @override
  State<_BounceAnimationWidget> createState() => _BounceAnimationWidgetState();
}

class _BounceAnimationWidgetState extends State<_BounceAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: widget.duration ~/ 2),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0,
      end: -widget.bounceHeight,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceOut));
    if (widget.repeat) {
      _controller.repeat(reverse: true);
    } else {
      _controller.forward().then((_) => _controller.reverse());
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}

class _PulseAnimationWidget extends StatefulWidget {
  final Widget child;
  final bool repeat;
  final int duration;
  final double maxScale;

  const _PulseAnimationWidget({
    required this.child,
    required this.repeat,
    required this.duration,
    required this.maxScale,
  });

  @override
  State<_PulseAnimationWidget> createState() => _PulseAnimationWidgetState();
}

class _PulseAnimationWidgetState extends State<_PulseAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: widget.duration ~/ 2),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 1.0,
      end: widget.maxScale,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    if (widget.repeat) {
      _controller.repeat(reverse: true);
    } else {
      _controller.forward().then((_) => _controller.reverse());
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(scale: _animation, child: widget.child);
  }
}

class _RotateAnimationWidget extends StatefulWidget {
  final Widget child;
  final bool repeat;
  final int duration;
  final double turns;

  const _RotateAnimationWidget({
    required this.child,
    required this.repeat,
    required this.duration,
    required this.turns,
  });

  @override
  State<_RotateAnimationWidget> createState() => _RotateAnimationWidgetState();
}

class _RotateAnimationWidgetState extends State<_RotateAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: widget.duration),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0,
      end: widget.turns,
    ).animate(_controller);
    if (widget.repeat) {
      _controller.repeat();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(turns: _animation, child: widget.child);
  }
}

class _WobbleAnimationWidget extends StatefulWidget {
  final Widget child;
  final bool repeat;
  final int duration;
  final double angle;

  const _WobbleAnimationWidget({
    required this.child,
    required this.repeat,
    required this.duration,
    required this.angle,
  });

  @override
  State<_WobbleAnimationWidget> createState() => _WobbleAnimationWidgetState();
}

class _WobbleAnimationWidgetState extends State<_WobbleAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: widget.duration),
      vsync: this,
    );
    final radians = widget.angle * (3.141592653589793 / 180);
    _animation = Tween<double>(
      begin: -radians,
      end: radians,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    if (widget.repeat) {
      _controller.repeat(reverse: true);
    } else {
      _controller.forward().then((_) => _controller.reverse());
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animation.value,
          alignment: Alignment.center,
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
