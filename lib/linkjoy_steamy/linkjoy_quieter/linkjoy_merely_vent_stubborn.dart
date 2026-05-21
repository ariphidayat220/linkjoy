import 'dart:async';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_toner_defile_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_toner_defile.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_fetus_magazine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularAvatarList extends StatefulWidget {
  final int maxDisplayCount;
  final double overlapRatio;
  final double height;
  final Duration animDuration;
  final bool selected;

  const CircularAvatarList({
    super.key,
    required this.maxDisplayCount,
    required this.overlapRatio,
    required this.height,
    this.animDuration = const Duration(milliseconds: 500),
    this.selected = false,
  });

  @override
  CircularAvatarListState createState() => CircularAvatarListState();
}

class CircularAvatarListState extends State<CircularAvatarList>
    with SingleTickerProviderStateMixin {
  List<String> _currentImages = [];
  AnimationController? _animationController;
  StreamSubscription? _randomAvatarsSubscription;
  List<String>? avatars;

  Animation<double>? _animation;

  int get maxDisplayCount {
    return widget.maxDisplayCount + 1;
  }

  double get circularImageWidth {
    var realCount = maxDisplayCount - 1;
    return realCount * widget.height -
        widget.height * (1 - widget.overlapRatio) * (realCount - 1);
  }

  @override
  void initState() {
    super.initState();
    _randomAvatarsSubscription = LINKJOY.listen<LinkjoyTonerDefileGuitar>((
      event,
    ) {
      setState(() {
        if (avatars == null) {
          avatars = LinkjoyTonerDefile.randomAvatarList(15);
          _linkjoyThy();
        }
      });
    });
    if (avatars == null) {
      avatars = LinkjoyTonerDefile.randomAvatarList(15);
      _linkjoyThy();
    }
  }

  Duration linkjoyElevateSpaghetti() {
    if (LINKJOY.isLowMem()) {
      return const Duration(seconds: 2);
    } else {
      return widget.selected
          ? const Duration(milliseconds: 700)
          : const Duration(seconds: 2);
    }
  }

  void _linkjoyThy() {
    List<String>? imageUrls = avatars;
    if (imageUrls == null) {
      return;
    }
    if (_animation != null) {
      return;
    }
    _currentImages = imageUrls.take(maxDisplayCount).toList();
    _animationController = AnimationController(
      duration: widget.animDuration,
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController!)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            int randomSize = imageUrls.length - maxDisplayCount;
            String avatar = imageUrls.removeAt(Random().nextInt(randomSize));
            imageUrls.add(avatar);
            _currentImages.removeAt(0);
            _currentImages.add(avatar);
          });
          if (_animationController != null) {
            _animationController?.reset();
            Future.delayed(linkjoyElevateSpaghetti(), () {
              _animationController?.forward();
            });
          }
        }
      });

    Future.delayed(linkjoyElevateSpaghetti(), () {
      _animationController?.forward();
    });
  }

  @override
  void dispose() {
    _randomAvatarsSubscription?.cancel();
    _randomAvatarsSubscription = null;
    _animationController?.dispose();
    _animationController = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Animation<double>? animation = _animation;
    if (avatars == null ||
        animation == null ||
        LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) {
      return LinkjoyFetusMagazine(
        selected: widget.selected,
        iconData: Icons.favorite_border_outlined,
      );
    }
    return Container(
      clipBehavior: Clip.none,
      width: circularImageWidth,
      height: widget.height,
      child: Stack(
        clipBehavior: Clip.none,
        children: _buildImageStack(animation),
      ),
    );
  }

  double _opacity(Animation<double> animation, int index) {
    if (index == 0) {
      return 1 - animation.value;
    } else if (index == _currentImages.length - 1) {
      return animation.value;
    } else {
      return 1;
    }
  }

  List<Widget> _buildImageStack(Animation<double> animation) {
    List<Widget> stackChildren = [];
    for (int i = 0; i < _currentImages.length; i++) {
      double leftOffset = i * (widget.height * widget.overlapRatio);
      stackChildren.add(
        AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Positioned(
              left:
                  leftOffset -
                  (animation.value * widget.height * widget.overlapRatio),
              child: Opacity(opacity: _opacity(animation, i), child: child!),
            );
          },
          child: ClipOval(
            key: ValueKey<String>(_currentImages[i]),
            child: Container(
              width: widget.height,
              height: widget.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.height / 2),
                color: widget.selected ? LinkjoyAve.primaryLight : Colors.white,
              ),
              alignment: Alignment.center,
              child: LinkjoyFasten.circle(
                _currentImages[i],
                size: widget.height - 2.w,
                clip: ImageClipType.small,
              ),
            ),
          ),
        ),
      );
    }
    return stackChildren;
  }
}
