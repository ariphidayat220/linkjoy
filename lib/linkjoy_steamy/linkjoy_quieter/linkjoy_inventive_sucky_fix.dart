import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_therapist_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_inventive_unlock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'linkjoy_inventive_kryptonian.dart';

class LinkjoyInventiveSuckyFix extends StatefulWidget {
  static OverlayEntry? overlay;
  late LinkjoyInventiveFondness live;

  LinkjoyInventiveSuckyFix(this.live, {super.key});

  @override
  State<LinkjoyInventiveSuckyFix> createState() =>
      _LinkjoyInventiveSuckyFixStatus();

  static void show(LinkjoyInventiveFondness live) {
    if (overlay != null) {
      return;
    }

    LinkjoyInventiveSuckyFix.overlay = OverlayEntry(
      builder: (context) {
        return LinkjoyInventiveSuckyFix(live);
      },
    );
    OverlayState overlayState = Overlay.of(Get.context!);
    overlayState.insert(overlay!);
  }
}

class _LinkjoyInventiveSuckyFixStatus extends State<LinkjoyInventiveSuckyFix> {
  Timer? _closeTimer;

  @override
  void initState() {
    super.initState();

    _autoClose(6);
  }

  void _autoClose(int seconds) {
    if (_closeTimer != null) {
      return;
    }

    _closeTimer = Timer(Duration(seconds: seconds), () {
      _cleanCloseTimer();
      _dismiss();
    });
  }

  void _cleanCloseTimer() {
    if (_closeTimer?.isActive ?? false) {
      _closeTimer?.cancel();
      _closeTimer = null;
    }
  }

  @override
  void dispose() {
    _cleanCloseTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: LinkjoyGarage.s8,
      top: MediaQuery.paddingOf(context).top + 8.w,
      left: LinkjoyGarage.s8,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: LinkjoyCondensateSister.shadow,
                  spreadRadius: 5.0,
                  blurRadius: 7.0,
                  offset: Offset(0.0, 10.0),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LinkjoyFeynman.h20,
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: LinkjoyGarage.s8),
                      child: LinkjoyFastenDance.circle(
                        widget.live.avatarUrl,
                        size: LinkjoyGarage.s56,
                        fit: BoxFit.cover,
                        clip: ImageClipType.small,
                      ),
                    ),
                    const LinkjoyInventiveKryptonian(),
                  ],
                ),
                LinkjoyFeynman.h8,
                Expanded(child: _info()),
              ],
            ),
          ).clickOld(_live),
          PositionedDirectional(
            end: LinkjoyGarage.s12,
            top: LinkjoyGarage.s12,
            child: LinkjoyFridgeLightbulb.linkjoyAssumeBaywatch(
              _dismiss,
              size: LinkjoyBookshelf.mini,
            ),
          ),
        ],
      ),
    );
  }

  void _dismiss() {
    _cleanCloseTimer();
    LinkjoyInventiveSuckyFix.overlay?.remove();
    LinkjoyInventiveSuckyFix.overlay = null;
  }

  void _live() {
    _dismiss();
    LinkjoyTherapistSister.goLivePage(
      widget.live.liveId,
      widget.live.uid,
      widget.live.nickName,
      widget.live.avatarUrl,
    );
  }

  Column _info() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.live.nickName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: LinkjoyMarshaHater.subtitle_B,
              textAlign: TextAlign.start,
            ),
            LinkjoyFeynman.h6,
            LinkjoyFridgeLightbulb.linkjoySignalFridge(
              widget.live.level,
              isAnchor: true,
            ),
            LinkjoyFeynman.h6,
            Container(
              height: LinkjoyGarage.s24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(LinkjoyGarage.s12),
                color: LinkjoyCondensate.black_10p,
              ),
              padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s8),
              child: Row(
                children: [
                  LinkjoyFastenDance.circle(
                    widget.live.countryFlag.imgURL,
                    size: 16,
                  ),
                  LinkjoyFeynman.h4,
                  Text(
                    widget.live.countryCode,
                    style: LinkjoyMarshaHater.body_B,
                  ),
                ],
              ),
            ),
          ],
        ),
        LinkjoyFeynman.v8,
        Text(
          "linkjoy_caring_inventive_sucky".tr,
          style: LinkjoyMarshaHater.body2_B_60,
        ),
      ],
    );
  }
}
