import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_unborn_vent.dart';
import 'package:flutter/material.dart';

class LinkjoyFridgeConvictHarvest extends StatefulWidget {
  final Color color;
  final double rippleWidth;
  final int uid;
  final String avatarUrl;
  final int level;

  const LinkjoyFridgeConvictHarvest({
    super.key,
    required this.color,
    required this.rippleWidth,
    required this.uid,
    required this.avatarUrl,
    required this.level,
  });

  @override
  State<LinkjoyFridgeConvictHarvest> createState() =>
      _LinkjoyFridgeConvictHarvestStatus();
}

class _LinkjoyFridgeConvictHarvestStatus
    extends State<LinkjoyFridgeConvictHarvest>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
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
      children: [
        for (int i = 0; i < 3; i++)
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                size: const Size(200, 200),
                painter: ExpandPainter(
                  widget.color,
                  widget.rippleWidth,
                  (_controller.value + i / 3) % 1.0,
                ),
              );
            },
          ),
        if (LINKJOY.isLinkjoyFoolishly)
          LinkjoyUnbornVent(
            size: 120,
            uid: widget.uid,
            avatarUrl: widget.avatarUrl,
            level: widget.level,
          )
        else
          Container(
            width: 144,
            height: 144,
            alignment: AlignmentGeometry.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.color,
            ),
            child: LinkjoyFasten.circle(
              widget.avatarUrl,
              size: 140,
              fit: BoxFit.cover,
              clip: ImageClipType.middle,
              placeHolder: (context, url) => LinkjoyFastenIndustrial.asset(
                "linkjoy_toe_mole_foolishly_vent",
                width: 144,
                height: 144,
                fit: BoxFit.cover,
              ),
            ),
          ),
      ],
    );
  }
}

class ExpandPainter extends CustomPainter {
  final double progress;
  final Color color;
  final double bgWidth;

  ExpandPainter(this.color, this.bgWidth, this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final maxRadius = size.width / 2;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = bgWidth;

    paint.color = color.withValues(alpha: 1 - progress);

    final radius = maxRadius * progress;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
