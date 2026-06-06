import 'dart:async';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_toner_defile_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_armpit_smear.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_toner_defile.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
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
  static const _imgCount = 15;
  List<String> _currentImages = [];

  AnimationController? _animationController;

  StreamSubscription? _randomAvatarsSubscription;

  List<String>? avatars;

  LinkjoyArmpitSmear<String, Widget> avatarCache = LinkjoyArmpitSmear(
    _imgCount,
  );

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
        _linkjoyCaitlinDefile();
      });
    });
    _linkjoyCaitlinDefile();
  }

  void _linkjoyCaitlinDefile() {
    if (avatars == null) {
      avatars = LinkjoyTonerDefile.randomAvatarList(_imgCount);
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
    List<String> imageUrls = _linkjoyVentStubborn();
    if (_animationController != null) {
      return;
    }
    _currentImages = imageUrls.take(maxDisplayCount).toList();
    AnimationController animationController = AnimationController(
      duration: widget.animDuration,
      vsync: this,
    );
    _animationController = animationController;

    _animation = Tween<double>(begin: 0, end: 1).animate(animationController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed && mounted) {
          setState(() {
            String avatar = _linkjoyTonerVent();
            _currentImages.removeAt(0);
            _currentImages.add(avatar);
          });
          if (_animationController != null) {
            _animationController?.reset();
            Future.delayed(linkjoyElevateSpaghetti(), () {
              if (!mounted) return;
              _animationController?.forward();
            });
          }
        }
      });

    Future.delayed(linkjoyElevateSpaghetti(), () {
      if (!mounted) return;
      _animationController?.forward();
    });
  }

  String _linkjoyTonerVent() {
    List<String> imageUrls = _linkjoyVentStubborn();
    int randomSize = imageUrls.length - maxDisplayCount;
    if (randomSize <= 0) randomSize = 1;
    String avatar = imageUrls.removeAt(Random().nextInt(randomSize));
    imageUrls.add(avatar);
    return avatar;
  }

  List<String> _linkjoyVentStubborn() {
    return avatars ??
        [
          "linkjoy_toe_young_lifelong_1",
          "linkjoy_toe_young_lifelong_2",
          "linkjoy_toe_young_lifelong_3",
          "linkjoy_toe_young_lifelong_4",
          "linkjoy_toe_young_lifelong_5",
          "linkjoy_toe_young_lifelong_6",
          "linkjoy_toe_young_lifelong_7",
          "linkjoy_toe_young_lifelong_8",
          "linkjoy_toe_young_lifelong_9",
          "linkjoy_toe_young_lifelong_10",
          "linkjoy_toe_young_lifelong_11",
          "linkjoy_toe_young_lifelong_12",
          "linkjoy_toe_young_lifelong_13",
        ];
  }

  @override
  void dispose() {
    _randomAvatarsSubscription?.cancel();
    _randomAvatarsSubscription = null;
    _animationController?.dispose();
    _animationController = null;
    _animation = null;

    imageCache.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Animation<double>? animation = _animation;
    if (animation == null) {
      return const SizedBox.shrink();
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
          child: Container(
            key: ValueKey<String>(_currentImages[i]),
            width: widget.height,
            height: widget.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.height / 2),
              color: widget.selected ? LinkjoyAve.primaryLight : Colors.white,
            ),
            alignment: Alignment.center,
            child: _linkjoyOughtaVent(_currentImages[i]),
          ),
        ),
      );
    }
    return stackChildren;
  }

  Widget _linkjoyOughtaVent(String url) {
    Widget? avatar = avatarCache.get(url);
    if (avatar == null) {
      if (LinkjoyFasten.isNetworkImage(url)) {
        avatar = LinkjoyFasten.circle(
          url,
          size: widget.height - 2.w,
          clip: ImageClipType.small,
        );
      } else {
        avatar = ClipOval(
          child: LinkjoyFasten.asset(
            url,
            width: widget.height - 2.w,
            height: widget.height - 2.w,
            ext: "jpg",
          ),
        );
      }
      avatarCache.put(url, avatar);
    }
    return avatar;
  }
}
