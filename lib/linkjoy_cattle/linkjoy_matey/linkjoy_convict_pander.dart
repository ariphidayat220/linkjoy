import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:flutter/material.dart';

class LinkjoyConvictPander extends StatefulWidget {
  final Color? iconColor;

  final Color? ringColor;

  final double? iconSize;

  final bool isAnimating;

  final int ringCount;

  final int duration;

  final double? maxRingDiameter;

  const LinkjoyConvictPander({
    super.key,
    this.iconColor,
    this.ringColor,
    this.iconSize,
    this.isAnimating = true,
    this.ringCount = 3,
    this.duration = 2000,
    this.maxRingDiameter,
  });

  @override
  State<LinkjoyConvictPander> createState() => _LinkjoyConvictPanderStatus();
}

class _LinkjoyConvictPanderStatus extends State<LinkjoyConvictPander>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<double>> _ringAnimations;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: widget.duration),
      vsync: this,
    );

    _ringAnimations = List.generate(widget.ringCount, (index) {
      return Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(
            index * (1.0 / widget.ringCount),
            1.0,
            curve: Curves.easeOut,
          ),
        ),
      );
    });

    if (widget.isAnimating) {
      _controller.repeat();
    }
  }

  @override
  void didUpdateWidget(LinkjoyConvictPander oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isAnimating != oldWidget.isAnimating) {
      if (widget.isAnimating) {
        _controller.repeat();
      } else {
        _controller.stop();
        _controller.reset();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final iconSize = widget.iconSize ?? LinkjoyDiscard.iconXLarge * 1.5;
    final maxRingDiameter = widget.maxRingDiameter ?? iconSize * 2.5;

    return SizedBox(
      width: iconSize,
      height: iconSize,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          ...List.generate(widget.ringCount, (index) {
            return _RingAnimationWidget(
              animation: _ringAnimations[index],
              ringColor: widget.ringColor ?? LinkjoyAve.primaryMain,
              ringIndex: index,
              totalRings: widget.ringCount,
              maxDiameter: maxRingDiameter,
              iconSize: iconSize,
            );
          }),
          _WobblingPhoneIcon(
            iconSize: iconSize,
            iconColor: widget.iconColor ?? LinkjoyAve.primaryMain,
            isAnimating: widget.isAnimating,
          ),
        ],
      ),
    );
  }
}

class _RingAnimationWidget extends StatelessWidget {
  final Animation<double> animation;
  final Color ringColor;
  final int ringIndex;
  final int totalRings;
  final double maxDiameter;
  final double iconSize;

  const _RingAnimationWidget({
    required this.animation,
    required this.ringColor,
    required this.ringIndex,
    required this.totalRings,
    required this.maxDiameter,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final baseSize = iconSize * 0.8;
        final maxScale = maxDiameter / baseSize;
        final scale = baseSize * (0.5 + (animation.value * (maxScale - 0.5)));
        final opacity = 0.6 - (animation.value * 0.6);

        return Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Transform.scale(
              scale: scale / baseSize,
              child: Container(
                width: baseSize,
                height: baseSize,
                decoration: BoxDecoration(
                  color: ringColor.withValues(alpha: opacity),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _WobblingPhoneIcon extends StatefulWidget {
  final double iconSize;
  final Color iconColor;
  final bool isAnimating;

  const _WobblingPhoneIcon({
    required this.iconSize,
    required this.iconColor,
    required this.isAnimating,
  });

  @override
  State<_WobblingPhoneIcon> createState() => _WobblingPhoneIconState();
}

class _WobblingPhoneIconState extends State<_WobblingPhoneIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    const radians = 30 * (3.141592653589793 / 180);
    _animation = Tween<double>(
      begin: -radians,
      end: radians,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    if (widget.isAnimating) {
      _controller.repeat(reverse: true);
    }
  }

  @override
  void didUpdateWidget(_WobblingPhoneIcon oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isAnimating != oldWidget.isAnimating) {
      if (widget.isAnimating) {
        _controller.repeat(reverse: true);
      } else {
        _controller.stop();
        _controller.reset();
      }
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
          child: Container(
            width: widget.iconSize,
            height: widget.iconSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.iconColor,
              boxShadow: [
                BoxShadow(
                  color: widget.iconColor.withValues(alpha: 0.3),
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Icon(
              Icons.phone_rounded,
              color: Colors.white,
              size: widget.iconSize * 0.5,
            ),
          ),
        );
      },
    );
  }
}
