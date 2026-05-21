import 'dart:async';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_toner_defile_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_toner_defile.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/parse_route.dart';
import 'package:visibility_detector/visibility_detector.dart';

class LinkjoyVentInterjectUpside extends StatefulWidget {
  const LinkjoyVentInterjectUpside({
    super.key,
    required this.width,
    required this.height,
    this.centerEmpty = false,
  });

  final double width;
  final double height;
  final bool centerEmpty;

  @override
  State<LinkjoyVentInterjectUpside> createState() =>
      _LinkjoyVentInterjectUpsideStatus();
}

class _LinkjoyVentInterjectUpsideStatus
    extends State<LinkjoyVentInterjectUpside>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  final Map<String, AnimationController> _animControllers = {};

  bool pause = false;
  Timer? _randomAvatarTimer;

  final List<Widget> animationChildren = [];

  StreamSubscription? randomAvatarsSubscription;

  final List<List<double?>> _positions = [
    [0.3, 0.3, null, null],
    [null, 0.3, 0.3, null],
    [0.3, null, null, 0.3],
    [null, null, 0.3, 0.3],
    [0.12, 0.14, null, null],
    [0.38, 0.05, null, null],
    [0.09, 0.32, null, null],
    [null, 0.16, 0.12, null],
    [null, 0.08, 0.38, null],
    [null, 0.36, 0.14, null],
    [0.16, null, null, 0.22],
    [0.36, null, null, 0.05],
    [0.15, null, null, 0.31],
    [null, null, 0.12, 0.16],
    [null, null, 0.38, 0.08],
    [null, null, 0.14, 0.36],
  ];

  final List<double> _sizeList = [24.0, 30.0, 42.0, 56.0];

  @override
  void initState() {
    super.initState();
    if (!widget.centerEmpty) {
      _positions.addAll([
        [0.4, 0.4, null, null],
        [0.5, 0.5, null, null],
        [null, 0.4, 0.4, null],
        [null, 0.5, 0.5, null],
        [null, null, 0.4, 0.4],
        [null, null, 0.5, 0.5],
        [0.4, null, null, 0.4],
        [0.5, null, null, 0.5],
      ]);
    }

    randomAvatarsSubscription = LINKJOY.listen<LinkjoyTonerDefileGuitar>((
      event,
    ) {
      _linkjoyJeffriesVentDribbleHarm();
    });
    _linkjoyJeffriesVentDribbleHarm();
    WidgetsBinding.instance.addObserver(this);
  }

  void setPause(bool value) {
    if (value == pause) return;
    pause = value;
    if (!pause) _linkjoyJeffriesVentDribbleHarm();
  }

  void _linkjoyJeffriesVentDribbleHarm() {
    if (LinkjoyTonerDefile.avatars.length < 4 || pause) {
      return;
    }
    if (_linkjoyIsTrembleMaze()) {
      return;
    }
    final String? avatarUrl = LinkjoyTonerDefile.nextRandomAvatar();
    if (avatarUrl == null) return;
    AnimationController controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      reverseDuration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    var tween = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOutQuart));
    animationChildren.add(
      _linkjoyPenmanshipVentLeadForget(controller, tween, avatarUrl),
    );
    controller.addStatusListener((status) {
      if (!mounted) return;
      if (status == AnimationStatus.completed) {
        _linkjoyJeffriesVentDribbleHarm();
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.stop();
        controller.dispose();
        _animControllers.remove(avatarUrl);
      }
    });
    controller.forward();
    _animControllers[avatarUrl] = controller;
    if (mounted) {
      setState(() {});
    }
  }

  bool _linkjoyIsTrembleMaze() {
    if (_animControllers.isEmpty) return false;
    return _animControllers.values.toList().firstWhereOrNull(
          (c) => c.status == AnimationStatus.forward,
        ) !=
        null;
  }

  Widget _linkjoyPenmanshipVentLeadForget(
    AnimationController c,
    Animation<double> anim,
    String avatar,
  ) {
    var random = Random();
    var size = _sizeList.removeAt(random.nextInt(_sizeList.length - 1));
    _sizeList.add(size);
    var position = _positions.removeAt(random.nextInt(_positions.length - 4));
    _positions.add(position);

    Widget tweenWidget = AnimatedBuilder(
      animation: c,
      builder: (BuildContext context, Widget? child) {
        var animeValue = anim.value;

        final double? left = position[0] == null
            ? null
            : widget.width * position[0]!;
        final double? top = position[1] == null
            ? null
            : widget.height * position[1]!;
        final double? right = position[2] == null
            ? null
            : widget.width * position[2]!;
        final double? bottom = position[3] == null
            ? null
            : widget.height * position[3]!;

        return Positioned(
          left: left,
          top: top,
          right: right,
          bottom: bottom,
          child: Transform.scale(
            origin: Offset(size / 2, size / 2),
            scale: animeValue,
            child: Opacity(
              opacity: animeValue,
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: LinkjoyCondensateSister.white,
                  ),
                  borderRadius: BorderRadius.circular(90),
                ),
                alignment: Alignment.center,
                child: LinkjoyFasten.circle(
                  avatar,
                  size: size - 4,
                  fit: BoxFit.cover,
                  clip: ImageClipType.small,
                ),
              ),
            ),
          ),
        );
      },
    );
    return tweenWidget;
  }

  @override
  void dispose() {
    _linkjoyDigitallyDribble();
    WidgetsBinding.instance.removeObserver(this);
    _randomAvatarTimer?.cancel();
    randomAvatarsSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: VisibilityDetector(
        key: const Key('my-widget-key'),
        onVisibilityChanged: (visibilityInfo) {
          setPause(visibilityInfo.visibleFraction == 0);
        },
        child: Stack(
          children: [
            SizedBox(width: widget.width, height: widget.height),
            ...animationChildren,
          ],
        ),
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      _linkjoyDigitallyDribble();
    } else if (state == AppLifecycleState.resumed) {
      _linkjoyJeffriesVentDribbleHarm();
    }
  }

  void _linkjoyDigitallyDribble() {
    for (AnimationController controller in _animControllers.values) {
      controller.stop();
      controller.dispose();
    }
    _animControllers.clear();
    _randomAvatarTimer?.cancel();
    animationChildren.clear();
  }
}
