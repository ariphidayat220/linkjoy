import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_toner_defile_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_toner_defile.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LinkjoyVentGyroscopeUpside extends StatefulWidget {
  const LinkjoyVentGyroscopeUpside({super.key});

  @override
  State<LinkjoyVentGyroscopeUpside> createState() =>
      _LinkjoyVentGyroscopeUpsideStatus();
}

class _LinkjoyVentGyroscopeUpsideStatus
    extends State<LinkjoyVentGyroscopeUpside>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  AnimationController? _controller;

  bool pause = false;
  Timer? _randomAvatarTimer;

  final List<Widget> animationChildren = [];

  StreamSubscription? randomAvatarsSubscription;

  final List<String> randomAvatars = [];

  int onSelectedIndex = 0;

  @override
  void initState() {
    super.initState();

    randomAvatarsSubscription = LINKJOY.listen<LinkjoyTonerDefileGuitar>((
      event,
    ) {
      _linkjoyBrochureTonerOversee();
    });
    _linkjoyBrochureTonerOversee();
    WidgetsBinding.instance.addObserver(this);
  }

  void _linkjoyBrochureTonerOversee() {
    if (randomAvatars.isNotEmpty) {
      return;
    }
    List<String>? list = LinkjoyTonerDefile.randomAvatarList(20);
    if (list != null) {
      randomAvatars.addAll(list);
      if (mounted) {
        setState(() {});
      }
    }
  }

  Widget _linkjoyOughtaSimulationNarrate() {
    double size = Get.width / 3.5;

    if (randomAvatars.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()
            ? const SizedBox.shrink()
            : SizedBox(
                width: Get.width,
                height: size,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    String matchUserAvatarUrl = randomAvatars[index];
                    return Container(
                      width: size,
                      height: size,
                      padding: const EdgeInsetsDirectional.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(size / 2),
                        color: LinkjoyCondensate.white_40p,
                      ),
                      child: LinkjoyFasten.circle(
                        matchUserAvatarUrl ?? '',
                        size: size - 4,
                        fit: BoxFit.cover,
                        clip: ImageClipType.small,
                      ),
                    );
                  },
                  onIndexChanged: (int index) {
                    onSelectedIndex = index;
                    setState(() {});
                  },
                  viewportFraction: 0.28,
                  scale: 0.65,
                  autoplay: true,
                  itemCount: randomAvatars.length,
                  duration: 300,
                  scrollDirection: Axis.horizontal,
                ),
              ),
      ],
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _randomAvatarTimer?.cancel();
    randomAvatarsSubscription?.cancel();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
  }

  void _disposeAnimation() {
    _controller?.dispose();
    _randomAvatarTimer?.cancel();
    animationChildren.clear();
  }

  @override
  Widget build(BuildContext context) {
    return _linkjoyOughtaSimulationNarrate();
  }
}
