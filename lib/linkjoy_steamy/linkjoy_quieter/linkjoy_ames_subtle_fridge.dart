import 'dart:math';

import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class _Particle {
  Offset position;
  Offset velocity;
  Color color;
  double size;
  bool isRect;
  double life;

  _Particle({
    required this.position,
    required this.velocity,
    required this.color,
    required this.size,
    required this.isRect,
    this.life = 1.0,
  });

  double get opacity => life.clamp(0.0, 1.0);
}

class LotteryWinWidget extends StatefulWidget {
  final int coins;

  final Duration displayDuration;

  final VoidCallback? onDismissed;

  const LotteryWinWidget({
    super.key,
    required this.coins,
    this.displayDuration = const Duration(seconds: 5),
    this.onDismissed,
  });

  @override
  State<LotteryWinWidget> createState() => _LotteryWinWidgetState();
}

class _LotteryWinWidgetState extends State<LotteryWinWidget>
    with TickerProviderStateMixin {
  late AnimationController _visibilityCtrl;
  late Animation<double> _visibilityOpacity;

  late AnimationController _glowCtrl;

  late AnimationController _prizeCtrl;
  late Animation<double> _prizeFade;
  late Animation<Offset> _prizeSlide;

  late AnimationController _particleCtrl;
  final List<_Particle> _particles = [];
  final Random _random = Random();

  late ConfettiController _confettiLeft;
  late ConfettiController _confettiRight;
  late ConfettiController _confettiCenter;

  late AnimationController _ringCtrl;
  late Animation<double> _ring1Scale;
  late Animation<double> _ring2Scale;

  static const _particleColors = [
    Color(0xFFFFD700),
    Color(0xFFFF6B9D),
    Color(0xFF00E5FF),
    Color(0xFF69FF47),
    Color(0xFFFF9500),
    Color(0xFFFF3CAC),
    Color(0xFFFFFACD),
    Color(0xFF7DF9FF),
    Color(0xFFDA70D6),
  ];

  static const _confettiColors = [
    Color(0xFFFFD700),
    Color(0xFFFF6B9D),
    Color(0xFF00CED1),
    Color(0xFFADFF2F),
    Color(0xFFFF4500),
    Color(0xFFDA70D6),
    Color(0xFFFF8C00),
    Color(0xFF40E0D0),
    Color(0xFFFFFFFF),
  ];

  @override
  void initState() {
    super.initState();
    _setupAnimations();
    WidgetsBinding.instance.addPostFrameCallback((_) => _play());
  }

  void _setupAnimations() {
    _visibilityCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _visibilityOpacity = CurvedAnimation(
      parent: _visibilityCtrl,
      curve: Curves.easeInOut,
    ).drive(Tween(begin: 0.0, end: 1.0));

    _glowCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _prizeCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _prizeFade = CurvedAnimation(
      parent: _prizeCtrl,
      curve: Curves.easeOut,
    ).drive(Tween(begin: 0.0, end: 1.0));
    _prizeSlide = CurvedAnimation(
      parent: _prizeCtrl,
      curve: Curves.easeOut,
    ).drive(Tween(begin: const Offset(0, -0.6), end: Offset.zero));

    _particleCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 16),
    )..addListener(_tickParticles);

    _ringCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    )..repeat();
    _ring1Scale = CurvedAnimation(
      parent: _ringCtrl,
      curve: Curves.easeOut,
    ).drive(Tween(begin: 0.8, end: 1.3));
    _ring2Scale = CurvedAnimation(
      parent: _ringCtrl,
      curve: const Interval(0.3, 1.0, curve: Curves.easeOut),
    ).drive(Tween(begin: 0.8, end: 1.5));

    _confettiLeft = ConfettiController(duration: const Duration(seconds: 4));
    _confettiRight = ConfettiController(duration: const Duration(seconds: 4));
    _confettiCenter = ConfettiController(duration: const Duration(seconds: 3));
  }

  Future<void> _play() async {
    if (!mounted) return;

    await _visibilityCtrl.forward();
    if (!mounted) return;

    _glowCtrl.forward();

    for (int i = 0; i < 5; i++) {
      if (!mounted) return;
      _spawnBurst(burst: 20);
    }

    _confettiLeft.play();
    _confettiRight.play();
    if (!mounted) return;
    _confettiCenter.play();

    if (!mounted) return;

    _prizeCtrl.forward();

    await Future.delayed(widget.displayDuration);
    if (!mounted) return;

    _confettiLeft.stop();
    _confettiRight.stop();
    _confettiCenter.stop();

    await _visibilityCtrl.reverse();
    if (!mounted) return;

    widget.onDismissed?.call();
  }

  void _spawnBurst({int burst = 16}) {
    if (!mounted) return;
    final size = context.size ?? const Size(400, 600);
    final cx = size.width / 2;
    final cy = size.height * 0.42;

    for (int i = 0; i < burst; i++) {
      final angle = _random.nextDouble() * 2 * pi;
      final speed = 120 + _random.nextDouble() * 200;
      _particles.add(
        _Particle(
          position: Offset(cx, cy),
          velocity: Offset(cos(angle) * speed, sin(angle) * speed),
          color: _particleColors[_random.nextInt(_particleColors.length)],
          size: 4 + _random.nextDouble() * 8,
          isRect: _random.nextBool(),
        ),
      );
    }
    if (!_particleCtrl.isAnimating) _particleCtrl.repeat();
  }

  void _tickParticles() {
    if (!mounted) return;
    const dt = 0.016;
    setState(() {
      for (final p in _particles) {
        p.position += p.velocity * dt;
        p.velocity += const Offset(0, 220) * dt;
        p.life -= dt * 0.85;
      }
      _particles.removeWhere((p) => p.life <= 0);
    });
    if (_particles.isEmpty) _particleCtrl.stop();
  }

  @override
  void dispose() {
    _visibilityCtrl.dispose();
    _glowCtrl.dispose();
    _prizeCtrl.dispose();
    _particleCtrl.dispose();
    _ringCtrl.dispose();
    _confettiLeft.dispose();
    _confettiRight.dispose();
    _confettiCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _visibilityOpacity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: AnimatedBuilder(
          animation: _glowCtrl,
          builder: (_, child) => Container(
            width: double.infinity,
            constraints: const BoxConstraints(minHeight: 480),
            child: child,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              _buildRings(),
              _buildParticles(),
              _buildConfetti(),
              Align(alignment: Alignment.topCenter, child: _buildContent()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRings() {
    return AnimatedBuilder(
      animation: _ringCtrl,
      builder: (_, __) => Stack(
        alignment: Alignment.center,
        children: [
          Transform.scale(
            scale: _ring1Scale.value,
            child: Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFFFD700).withOpacity(
                    (0.3 * (1 - (_ring1Scale.value - 0.8) / 0.5)).clamp(
                      0.0,
                      1.0,
                    ),
                  ),
                  width: 1.5,
                ),
              ),
            ),
          ),
          Transform.scale(
            scale: _ring2Scale.value,
            child: Container(
              width: 320,
              height: 320,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFFFD700).withOpacity(
                    (0.15 * (1 - (_ring2Scale.value - 0.8) / 0.7)).clamp(
                      0.0,
                      1.0,
                    ),
                  ),
                  width: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildParticles() {
    return Positioned.fill(
      child: IgnorePointer(
        child: CustomPaint(painter: _ParticlePainter(_particles)),
      ),
    );
  }

  Widget _buildConfetti() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: ConfettiWidget(
            confettiController: _confettiLeft,
            blastDirection: pi / 4,
            blastDirectionality: BlastDirectionality.directional,
            emissionFrequency: 0.06,
            numberOfParticles: 18,
            gravity: 0.35,
            colors: _confettiColors,
            maximumSize: const Size(12, 6),
            minimumSize: const Size(5, 3),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: ConfettiWidget(
            confettiController: _confettiRight,
            blastDirection: pi * 3 / 4,
            blastDirectionality: BlastDirectionality.directional,
            emissionFrequency: 0.06,
            numberOfParticles: 18,
            gravity: 0.35,
            colors: _confettiColors,
            maximumSize: const Size(12, 6),
            minimumSize: const Size(5, 3),
          ),
        ),
        ConfettiWidget(
          confettiController: _confettiCenter,
          blastDirectionality: BlastDirectionality.explosive,
          emissionFrequency: 0.05,
          numberOfParticles: 25,
          gravity: 0.3,
          colors: _confettiColors,
          maximumSize: const Size(10, 5),
          minimumSize: const Size(4, 2),
        ),
      ],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 200),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeTransition(
            opacity: _prizeFade,
            child: SlideTransition(
              position: _prizeSlide,
              child: _buildPrizeCard(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrizeCard() {
    return Container(
      constraints: BoxConstraints(minWidth: Get.width - 100.w),
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            LinkjoyAve.primaryMain.withAlpha(220),
            LinkjoyAve.primaryDark.withAlpha(220),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFFFD700).withOpacity(0.3),
          width: 1.5,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "+",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFFFD700),
                  letterSpacing: 0,
                ),
              ),
              LinkjoyFeynman.h2,
              Text(
                "0",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFFFD700),
                  letterSpacing: 0,
                ),
              ).animateNum(widget.coins, 2000),
              LinkjoyFeynman.h2,
              Text(
                "linkjoy_caring_incense".tr,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFFFD700),
                  letterSpacing: 0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            "linkjoy_caring_countdown_flashy_collie".tr,
            style: const TextStyle(
              fontSize: 24,
              color: LinkjoyAve.textSecondary,
              letterSpacing: 0,
            ),
          ),
        ],
      ),
    );
  }
}

class _ParticlePainter extends CustomPainter {
  final List<_Particle> particles;

  _ParticlePainter(this.particles);

  @override
  void paint(Canvas canvas, Size size) {
    for (final p in particles) {
      final paint = Paint()
        ..color = p.color.withOpacity(p.opacity)
        ..style = PaintingStyle.fill;

      if (p.isRect) {
        canvas.save();
        canvas.translate(p.position.dx, p.position.dy);
        canvas.rotate(p.life * pi);
        canvas.drawRect(
          Rect.fromCenter(
            center: Offset.zero,
            width: p.size,
            height: p.size * 0.4,
          ),
          paint,
        );
        canvas.restore();
      } else {
        canvas.drawCircle(p.position, p.size / 2, paint);
      }
    }
  }

  @override
  bool shouldRepaint(_ParticlePainter old) => true;
}
