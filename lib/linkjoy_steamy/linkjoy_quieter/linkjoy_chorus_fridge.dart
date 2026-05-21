import 'package:flutter/material.dart';

class LinkjoyChorusFridge extends StatefulWidget {
  final double width;
  final double height;
  final double childWidth;
  final double childHeight;
  final Widget child;
  final Offset? offset;
  final VoidCallback? onTap;

  const LinkjoyChorusFridge({
    super.key,
    required this.width,
    required this.height,
    required this.childWidth,
    required this.childHeight,
    required this.child,
    this.offset,
    this.onTap,
  });

  @override
  State<LinkjoyChorusFridge> createState() => _LinkjoyChorusFridgeStatus();
}

class _LinkjoyChorusFridgeStatus extends State<LinkjoyChorusFridge> {
  late Offset _offset;
  bool _hasMoved = false;

  @override
  void initState() {
    super.initState();
    _offset = widget.offset ?? const Offset(0, 0);
  }

  @override
  Widget build(BuildContext context) {
    final maxX = widget.width - widget.childWidth;
    final maxY = widget.height - widget.childHeight;

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Stack(
        children: [
          Positioned(
            left: _offset.dx.clamp(0, maxX),
            top: _offset.dy.clamp(0, maxY),
            child: GestureDetector(
              onTap: () {
                if (_hasMoved) return;
                widget.onTap?.call();
              },
              onPanDown: (_) => _hasMoved = false,
              onPanUpdate: (details) {
                setState(() {
                  _offset += details.delta;
                  _hasMoved = true;
                });
              },
              child: SizedBox(
                width: widget.childWidth,
                height: widget.childHeight,
                child: widget.child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
