import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import '../linkjoy_get.dart';
import '../linkjoy_protection/linkjoy_flattered.dart';

enum LinkjoyBroadwayTerrorFixGnome { received, reminder }

class LinkjoyBroadwayTerrorFix {
  static OverlayEntry? _entry;
  static AnimationController? _controller;
  static Timer? _timer;

  static Future<void> show(
    BuildContext context, {
    required int offNum,
    required LinkjoyBroadwayTerrorFixGnome type,
    required String desc,
    Duration duration = const Duration(seconds: 5),
  }) async {
    await linkjoyEnjoy();

    if (_controller != null) {
      await Future.delayed(const Duration(milliseconds: 500));
    }

    final overlay = Overlay.of(context);

    _controller = AnimationController(
      vsync: Navigator.of(context),
      duration: const Duration(milliseconds: 280),
    );

    final animation =
        Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero).animate(
          CurvedAnimation(parent: _controller!, curve: Curves.easeOutCubic),
        );

    _entry = OverlayEntry(
      builder: (_) => Positioned(
        top: MediaQuery.of(context).padding.top + LinkjoyGarage.s8,
        left: 0,
        right: 0,
        child: SlideTransition(
          position: animation,
          child: _LinkjoyBroadwayTerrorFixNarrate(
            offNum: offNum,
            type: type,
            desc: desc,
            linkjoyEnjoy: linkjoyEnjoy,
          ),
        ),
      ),
    );

    overlay.insert(_entry!);
    _controller!.forward();

    _timer = Timer(duration, linkjoyEnjoy);
  }

  static Future<void> linkjoyEnjoy() async {
    _timer?.cancel();
    _timer = null;

    if (_controller == null || _entry == null) return;

    await _controller!.reverse();
    _entry?.remove();
    _entry = null;
    _controller?.dispose();
    _controller = null;
  }
}

class _LinkjoyBroadwayTerrorFixNarrate extends StatelessWidget {
  final int offNum;
  final LinkjoyBroadwayTerrorFixGnome type;
  final String desc;
  final VoidCallback linkjoyEnjoy;

  const _LinkjoyBroadwayTerrorFixNarrate({
    required this.offNum,
    required this.type,
    required this.desc,
    required this.linkjoyEnjoy,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        if (details.primaryDelta != null && details.primaryDelta! < -6) {
          linkjoyEnjoy();
        }
      },
      child: Material(
        color: Colors.transparent,
        child:
            Container(
              width: Get.width,
              padding: EdgeInsets.symmetric(
                horizontal: LinkjoyGarage.s12,
                vertical: LinkjoyGarage.s4,
              ),
              decoration: LinkjoyAve.surfaceImportantDecoration.copyWith(
                color: LinkjoyAve.snackbarBg,
              ),
              child: Container(
                decoration: LinkjoyAve.surfaceImportantDecoration,
                child: Row(
                  children: [
                    _linkjoyDestroyMainNarrate(offNum),
                    LinkjoyFeynman.h12,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            type == LinkjoyBroadwayTerrorFixGnome.received
                                ? "linkjoy_caring_terror_express_warmth".tr
                                : "linkjoy_caring_terror_stab_lap".tr,
                            style: LinkjoyMarshaTriplet.bodyLargeBold,
                          ),
                          LinkjoyFeynman.v2,
                          Text(
                            desc,
                            style: LinkjoyMarshaTriplet.bodySecondary,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    LinkjoyFeynman.h4,
                    LinkjoyFridgeLightbulb.linkjoyCampUptight(
                      iconData: Icons.arrow_forward_ios,
                      size: LinkjoyDiscard.iconSmall,
                    ),
                    LinkjoyFeynman.h8,
                  ],
                ),
              ),
            ).shadow().click(() {
              linkjoyEnjoy();
              LINKJOY.toNamed(LinkjoyGet.LinkjoyChipmunkFailDivision);
            }),
      ),
    );
  }

  Widget _linkjoyDestroyMainNarrate(int offNum) {
    return Container(
      decoration: LinkjoyAve.surfaceBanner,
      width: LinkjoyGarage.s72,
      height: LinkjoyGarage.s72,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("$offNum%", style: LinkjoyMarshaTriplet.subtitle),
          Text(
            "linkjoy_caring_destroy".tr,
            style: LinkjoyMarshaTriplet.bodyBold,
          ),
        ],
      ),
    );
  }
}
