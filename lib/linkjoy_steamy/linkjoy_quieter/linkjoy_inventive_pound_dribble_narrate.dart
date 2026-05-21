import 'dart:async';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';

class LinkjoyInventivePoundDribbleNarrateMario {
  void Function(int count)? _animalTo;
  void Function(Offset offset)? _incr;

  late void Function(int total) onAnimalDone;

  LinkjoyInventivePoundDribbleNarrateMario(this.onAnimalDone);

  void animalTo(int count) {
    _animalTo?.call(count);
  }

  void incr(Offset offset) {
    _incr?.call(offset);
  }
}

class LinkjoyInventivePoundDribbleNarrate extends StatefulWidget {
  final int initCount;
  final int maxBubbleCount;
  final LinkjoyInventivePoundDribbleNarrateMario controller;

  const LinkjoyInventivePoundDribbleNarrate({
    super.key,
    this.initCount = 0,
    this.maxBubbleCount = 8,
    required this.controller,
  });

  @override
  State<LinkjoyInventivePoundDribbleNarrate> createState() =>
      _LinkjoyInventivePoundDribbleNarrateStatus();
}

class _LinkjoyInventivePoundDribbleNarrateStatus
    extends State<LinkjoyInventivePoundDribbleNarrate>
    with SingleTickerProviderStateMixin {
  final List<MapEntry<UniqueKey, Widget>> _bubbles = [];
  final Random _random = Random();

  late int totalCount;
  late int targetCount;

  Timer? incrTime;

  @override
  void initState() {
    super.initState();
    totalCount = widget.initCount;
    targetCount = totalCount;

    widget.controller._animalTo = animalTo;
    widget.controller._incr = incr;
  }

  void incr(Offset offset) {
    totalCount++;
    _addBubble(offset);
  }

  void animalTo(int count) {
    if (count <= totalCount) {
      return;
    }

    targetCount = count;

    incrTime ??= Timer.periodic(const Duration(milliseconds: 300), _animal);
  }

  void _animal(Timer t) {
    if (targetCount <= totalCount) {
      incrTime!.cancel();
      incrTime = null;
      return;
    }

    int step = (targetCount - totalCount) ~/ 10;
    step = step < 1 ? 1 : _random.nextInt(step) + 1;

    totalCount += step;
    for (int i = 0; i < 3 && i < step; i++) {
      Future.delayed(Duration(milliseconds: i * 100), () {
        _addBubble(
          Offset(
            _random.nextDouble() * Get.width,
            _random.nextDouble() * Get.height / 2 + LinkjoyGarage.s64,
          ),
        );
      });
    }

    if (totalCount == targetCount) {
      incrTime?.cancel();
      incrTime = null;
    }
  }

  @override
  void dispose() {
    incrTime?.cancel();
    super.dispose();
  }

  void _addBubble(Offset offset) {
    widget.controller.onAnimalDone(totalCount);

    if (_bubbles.length >= widget.maxBubbleCount) {
      return;
    }

    final key = UniqueKey();
    final size = _random.nextInt(20) + 15.0;
    final offsetX = LinkjoyGarage.s64 - offset.dx;
    final offsetY = LinkjoyGarage.s64 - offset.dy;

    final color = Colors.red.withOpacity(_random.nextDouble() * 0.5 + 0.5);
    final rotateAngle = (_random.nextInt(50) - 25) * (pi / 180);

    final bubbleWidget = Positioned(
      key: key,
      left: offset.dx,
      top: offset.dy,
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        tween: Tween(begin: 0.0, end: 1.0),
        curve: Curves.easeInOutCubic,
        onEnd: () {
          if (mounted) {
            setState(() {
              _bubbles.removeWhere((entry) => entry.key == key);
            });
          }
        },
        builder: (context, value, child) {
          return Transform.translate(
            offset: Offset(offsetX * value, offsetY * value),
            child: Opacity(
              opacity: 1 - value,
              child: Transform.scale(scale: 1 + value, child: child),
            ),
          );
        },
        child: Transform.rotate(
          angle: rotateAngle,
          child: Icon(
            Icons.favorite_outlined,
            color: LinkjoyAve.primaryLight,
            size: size,
          ),
        ),
      ),
    );

    if (mounted) {
      setState(() {
        _bubbles.add(MapEntry(key, bubbleWidget));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [..._bubbles.map((entry) => entry.value)],
    );
  }
}
