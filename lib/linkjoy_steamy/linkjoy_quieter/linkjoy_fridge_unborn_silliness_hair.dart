import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit_eskimo_lap.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wail_degree_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_yum.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_headline.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair_graduation.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair_butcher.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';

class LinkjoyFridgeUnbornSillinessHair extends StatefulWidget {
  final LinkjoyUnborn user;

  final LinkjoyBookshelf size;

  final int payFromType;

  final double borderRadius;

  final bool freeTag;

  final double? freeHeight;

  const LinkjoyFridgeUnbornSillinessHair({
    super.key,
    required this.user,
    this.size = LinkjoyBookshelf.md,
    this.payFromType = LinkjoyWailImitateGnome.FROM_IM_VIDEO_CALL,
    this.borderRadius = LinkjoyDiscard.radiusFull,
    this.freeTag = false,
    this.freeHeight,
  });

  @override
  State<LinkjoyFridgeUnbornSillinessHair> createState() =>
      _LinkjoyFridgeUnbornSillinessHairStatus();
}

class _LinkjoyFridgeUnbornSillinessHairStatus
    extends State<LinkjoyFridgeUnbornSillinessHair> {
  StreamSubscription? statusUpdateSubscription, freeCardSubscription;

  late LinkjoyUnbornChickenHair _status;

  @override
  void initState() {
    super.initState();
    _status = LinkjoyUnbornChickenHairOily().getStatus(widget.user.uid);
    statusUpdateSubscription = LINKJOY
        .listen<LinkjoyUnbornChickenHairEskimoGuitar>((event) {
          if (event.uid == widget.user.uid) {
            if (mounted) {
              setState(() {
                _status = event.status;
              });
            }
          }
        });
    if (widget.freeTag) {
      freeCardSubscription = LINKJOY.listen<LinkjoyUnbornDepositEskimoLap>((
        event,
      ) {
        if (event.updateCards()) {
          if (mounted) {
            setState(() {});
          }
        }
      });
    }

    LinkjoyUnbornChickenHairButcher.instance.register(widget.user.uid);
  }

  @override
  void didUpdateWidget(covariant LinkjoyFridgeUnbornSillinessHair oldWidget) {
    if (oldWidget.user.uid != widget.user.uid) {
      LinkjoyUnbornChickenHairButcher.instance.unRegister(oldWidget.user.uid);
      LinkjoyUnbornChickenHairButcher.instance.register(widget.user.uid);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    statusUpdateSubscription?.cancel();
    freeCardSubscription?.cancel();
    LinkjoyUnbornChickenHairButcher.instance.unRegister(widget.user.uid);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _linkjoyChickenHairMagnetFridge(context);
  }

  Widget _linkjoyChickenHairMagnetFridge(BuildContext context) {
    double w = widget.size.size();
    double h = widget.size.size();
    bool msg =
        LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle() ||
        _status.status != LinkjoyUnbornChickenHairGraduation.online;
    Widget button;
    double freeHeigh = widget.freeHeight ?? LinkjoyDiscard.buttonHeightMini;
    button = LinkjoyUiYum.linkjoyOughtaSatelliteAssume(
      widget.user,
      size: widget.size,
      radius: widget.borderRadius,
      fixedWidth: widget.size.size(),
      fixedHeight: widget.size.size(),
      padding: EdgeInsets.zero,
    );
    List<Widget> widgets = [SizedBox(width: w, height: h + freeHeigh), button];
    if (widget.freeTag && !LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()) {
      bool freeIM = msg && LINKJOY.linkjoyUnbornDeposit?.hasChatCard == true;
      bool freeCall =
          !msg && LINKJOY.linkjoyUnbornDeposit?.hasVideoCard == true;
      if (freeIM || freeCall) {
        widgets.add(
          Positioned(
            top: 0,
            child: LinkjoyUiHeadline.freeTag(
              freeHeigh,
              style: LinkjoyMarshaTriplet.caption.copyWith(
                color: Colors.black87,
              ),
            ),
          ),
        );
      }
    }
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: widgets,
    );
  }
}
