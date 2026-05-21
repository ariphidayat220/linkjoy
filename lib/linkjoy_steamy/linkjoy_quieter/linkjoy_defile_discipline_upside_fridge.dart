import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LinkjoyDefileDisciplineUpsideFridge extends StatefulWidget {
  final String avatarUrl1;
  final String avatarUrl2;

  final Duration enterDuration;

  final Duration particleDuration;

  final Duration autoCompleteDelay;

  final VoidCallback? onAnimationComplete;

  const LinkjoyDefileDisciplineUpsideFridge({
    super.key,
    required this.avatarUrl1,
    required this.avatarUrl2,
    this.enterDuration = const Duration(milliseconds: 700),
    this.particleDuration = const Duration(milliseconds: 1200),
    this.autoCompleteDelay = const Duration(milliseconds: 2200),
    this.onAnimationComplete,
  });

  @override
  State<LinkjoyDefileDisciplineUpsideFridge> createState() =>
      _LinkjoyDefileDisciplineUpsideFridgeStatus();
}

class _LinkjoyDefileDisciplineUpsideFridgeStatus
    extends State<LinkjoyDefileDisciplineUpsideFridge>
    with TickerProviderStateMixin {
  late final AnimationController _enterCtrl;
  late final Animation<Offset> _leftSlide;
  late final Animation<Offset> _rightSlide;
  late final Animation<double> _iconScale;

  late final AnimationController _particleCtrl;
  late final List<_Particle> _particles;

  @override
  void initState() {
    super.initState();

    _enterCtrl = AnimationController(
      vsync: this,
      duration: widget.enterDuration,
    );
    _leftSlide = Tween<Offset>(
      begin: const Offset(-1.5, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _enterCtrl, curve: Curves.elasticOut));
    _rightSlide = Tween<Offset>(
      begin: const Offset(1.5, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _enterCtrl, curve: Curves.elasticOut));
    _iconScale = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _enterCtrl, curve: Curves.elasticOut));

    _particleCtrl = AnimationController(
      vsync: this,
      duration: widget.particleDuration,
    );
    _particles = _buildParticles();

    _enterCtrl.forward();
    _particleCtrl.forward();

    if (widget.onAnimationComplete != null) {
      Future.delayed(widget.autoCompleteDelay, () {
        if (mounted) widget.onAnimationComplete!();
      });
    }
  }

  @override
  void dispose() {
    _enterCtrl.dispose();
    _particleCtrl.dispose();
    super.dispose();
  }

  static List<_Particle> _buildParticles() {
    final rand = Random();
    return List.generate(
      28,
      (_) => _Particle(
        angle: rand.nextDouble() * 2 * pi,
        speed: 80 + rand.nextDouble() * 100,
        size: 4 + rand.nextDouble() * 6,
        color: Color.lerp(
          LinkjoyAve.primaryMain,
          Colors.white,
          rand.nextDouble(),
        )!,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 180,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: _particleCtrl,
            builder: (_, __) => CustomPaint(
              size: const Size(300, 180),
              painter: _ParticlePainter(
                particles: _particles,
                progress: _particleCtrl.value,
                origin: const Offset(150, 90),
              ),
            ),
          ),

          Positioned(
            left: 20,
            child: SlideTransition(
              position: _leftSlide,
              child: ScaleTransition(
                scale: _iconScale,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: LinkjoyAve.primaryLight,
                  ),
                  width: 100.w,
                  height: 100.w,
                  alignment: AlignmentGeometry.center,
                  child: LinkjoyFasten.circle(
                    widget.avatarUrl1,
                    size: 96.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          ScaleTransition(
            scale: _iconScale,
            child: Icon(
              Icons.favorite_rounded,
              color: LinkjoyAve.primaryMain,
              size: 40.w,
            ),
          ),

          Positioned(
            right: 20,
            child: SlideTransition(
              position: _rightSlide,
              child: ScaleTransition(
                scale: _iconScale,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: LinkjoyAve.primaryLight,
                  ),
                  width: 100.w,
                  height: 100.w,
                  alignment: AlignmentGeometry.center,
                  child: LinkjoyFasten.circle(
                    widget.avatarUrl2,
                    size: 96.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Particle {
  final double angle;
  final double speed;
  final double size;
  final Color color;

  const _Particle({
    required this.angle,
    required this.speed,
    required this.size,
    required this.color,
  });
}

class _ParticlePainter extends CustomPainter {
  final List<_Particle> particles;
  final double progress;
  final Offset origin;

  const _ParticlePainter({
    required this.particles,
    required this.progress,
    required this.origin,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final eased = Curves.easeOut.transform(progress);
    for (final p in particles) {
      final dx = cos(p.angle) * p.speed * eased;
      final dy = sin(p.angle) * p.speed * eased;
      final opacity = (1.0 - eased).clamp(0.0, 1.0);
      canvas.drawCircle(
        origin + Offset(dx, dy),
        p.size * (1.0 - eased * 0.5),
        Paint()
          ..color = p.color.withOpacity(opacity)
          ..style = PaintingStyle.fill,
      );
    }
  }

  @override
  bool shouldRepaint(_ParticlePainter old) => old.progress != progress;
}
