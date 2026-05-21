import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef ItemBuilder<T> = Widget Function(T item);

class DanmuItem<T> {
  final T item;
  final double speed;
  double position;
  final double y;

  DanmuItem({
    required this.item,
    this.speed = 1.0,
    required this.position,
    required this.y,
  });
}

class LinkjoyButMichelle<T> extends StatefulWidget {
  final Widget child;
  final List<T> items;
  final double speed;
  final Duration interval;
  final ItemBuilder<T> itemBuilder;
  final bool loop;

  const LinkjoyButMichelle({
    super.key,
    required this.child,
    required this.items,
    required this.itemBuilder,
    this.speed = 1.0,
    this.interval = const Duration(milliseconds: 500),
    this.loop = false,
  });

  @override
  State<LinkjoyButMichelle> createState() => _LinkjoyButMichelleStatus<T>();
}

class _LinkjoyButMichelleStatus<T> extends State<LinkjoyButMichelle<T>>
    with SingleTickerProviderStateMixin {
  final List<DanmuItem> _activeDanmu = [];
  late Timer _timer;
  final Random _random = Random();
  late double _screenWidth;
  int _currentMessageIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _screenWidth = MediaQuery.of(context).size.width;
      _startDanmu();
    });
  }

  void _startDanmu() {
    _emitDanmu();
    _timer = Timer.periodic(widget.interval, (timer) {
      _emitDanmu();
    });

    Timer.periodic(const Duration(milliseconds: 25), (timer) {
      if (!mounted) return;

      bool needUpdate = false;

      for (var danmu in _activeDanmu) {
        danmu.position -= danmu.speed * 2;

        if (danmu.position > -200) {
          needUpdate = true;
        }
      }

      if (_activeDanmu.any((danmu) => danmu.position < -100)) {
        setState(() {
          _activeDanmu.removeWhere((danmu) => danmu.position < -100);
        });
      } else if (needUpdate) {
        setState(() {});
      }
    });
  }

  void _emitDanmu() {
    if (!mounted) return;
    if (_currentMessageIndex >= widget.items.length) return;
    T item = widget.items[_currentMessageIndex];
    if (widget.loop) {
      _currentMessageIndex = (_currentMessageIndex + 1) % widget.items.length;
    } else {
      _currentMessageIndex++;
    }

    final danmu = DanmuItem<T>(
      item: item,
      speed: widget.speed,
      position: _screenWidth,
      y: 3.w + _random.nextDouble() * 27.w,
    );

    setState(() {
      _activeDanmu.add(danmu);
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: widget.child),

        Positioned.fill(child: IgnorePointer(child: Container())),

        ..._activeDanmu.map((danmu) {
          return Positioned(
            left: danmu.position,
            top: danmu.y,
            child: widget.itemBuilder(danmu.item),
          );
        }),
      ],
    );
  }
}
