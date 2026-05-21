import 'dart:math';

import 'package:flutter/material.dart';

class LinkjoyAdmissionFrootFridge extends StatefulWidget {
  const LinkjoyAdmissionFrootFridge({
    super.key,
    this.icon = Icons.favorite,
    this.width = 300,
    this.height = 500,
    this.particleCount = 10,
    this.colors,
    this.minSize = 16,
    this.maxSize = 40,
    this.minDuration = const Duration(milliseconds: 2500),
    this.maxDuration = const Duration(milliseconds: 4500),
    this.swayAmplitudeMin = 10,
    this.swayAmplitudeMax = 30,
  }) : assert(particleCount <= 20, 'particleCount 建议不超过 20');

  final IconData icon;

  final double width;
  final double height;

  final int particleCount;

  final List<Color>? colors;

  final double minSize;
  final double maxSize;
  final Duration minDuration;
  final Duration maxDuration;
  final double swayAmplitudeMin;
  final double swayAmplitudeMax;

  @override
  State<LinkjoyAdmissionFrootFridge> createState() =>
      _FloatingIconsWidgetState();
}

class _FloatingIconsWidgetState extends State<LinkjoyAdmissionFrootFridge> {
  final List<_IconParticle> _particles = [];
  final Random _rng = Random();

  static const List<Color> _defaultColors = [
    Color(0xFFFF4D6D),
    Color(0xFFFF85A1),
    Color(0xFFC9184A),
    Color(0xFFFFB3C1),
    Color(0xFFFF006E),
    Color(0xFFE040FB),
    Color(0xFFFF80AB),
  ];

  List<Color> get _colors => widget.colors ?? _defaultColors;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.particleCount; i++) {
      _particles.add(
        _createParticle(
          initialDelay: Duration(
            milliseconds: (_rng.nextDouble() * 4000).toInt(),
          ),
        ),
      );
    }
  }

  _IconParticle _createParticle({Duration initialDelay = Duration.zero}) {
    final duration = Duration(
      milliseconds:
          widget.minDuration.inMilliseconds +
          _rng.nextInt(
            widget.maxDuration.inMilliseconds -
                widget.minDuration.inMilliseconds,
          ),
    );
    return _IconParticle(
      key: UniqueKey(),
      icon: widget.icon,
      x:
          widget.swayAmplitudeMax +
          _rng.nextDouble() * (widget.width - 2 * widget.swayAmplitudeMax),
      size:
          widget.minSize +
          _rng.nextDouble() * (widget.maxSize - widget.minSize),
      color: _colors[_rng.nextInt(_colors.length)],
      duration: duration,
      initialDelay: initialDelay,
      swayAmplitude:
          widget.swayAmplitudeMin +
          _rng.nextDouble() *
              (widget.swayAmplitudeMax - widget.swayAmplitudeMin),
      swayFrequency: 0.8 + _rng.nextDouble() * 1.4,
      containerHeight: widget.height,
      onComplete: _onParticleComplete,
    );
  }

  void _onParticleComplete(_IconParticle old) {
    if (!mounted) return;
    setState(() {
      _particles.remove(old);
      _particles.add(_createParticle());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ClipRect(child: Stack(children: _particles)),
    );
  }
}

class _IconParticle extends StatefulWidget {
  const _IconParticle({
    super.key,
    required this.icon,
    required this.x,
    required this.size,
    required this.color,
    required this.duration,
    required this.initialDelay,
    required this.swayAmplitude,
    required this.swayFrequency,
    required this.containerHeight,
    required this.onComplete,
  });

  final IconData icon;
  final double x;
  final double size;
  final Color color;
  final Duration duration;
  final Duration initialDelay;
  final double swayAmplitude;
  final double swayFrequency;
  final double containerHeight;
  final void Function(_IconParticle) onComplete;

  @override
  State<_IconParticle> createState() => _IconParticleState();
}

class _IconParticleState extends State<_IconParticle>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _progress;
  late final Animation<double> _opacity;
  bool _started = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: widget.duration);

    _progress = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _opacity = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 0.9), weight: 10),
      TweenSequenceItem(tween: ConstantTween(0.9), weight: 70),
      TweenSequenceItem(tween: Tween(begin: 0.9, end: 0.0), weight: 20),
    ]).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) widget.onComplete(widget);
    });

    if (widget.initialDelay == Duration.zero) {
      _controller.forward();
      _started = true;
    } else {
      Future.delayed(widget.initialDelay, () {
        if (mounted) {
          _controller.forward();
          setState(() => _started = true);
        }
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_started) return const SizedBox.shrink();

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final t = _progress.value;
        final y =
            widget.containerHeight -
            widget.size -
            t * (widget.containerHeight + widget.size);
        final sway =
            sin(t * pi * 2 * widget.swayFrequency) * widget.swayAmplitude;

        return Positioned(
          left: widget.x + sway - widget.size / 2,
          top: y,
          child: Opacity(
            opacity: _opacity.value.clamp(0.0, 1.0),
            child: Transform.rotate(
              angle: sin(t * pi * widget.swayFrequency) * 0.15,
              child: child,
            ),
          ),
        );
      },
      child: Icon(widget.icon, size: widget.size, color: widget.color),
    );
  }
}
