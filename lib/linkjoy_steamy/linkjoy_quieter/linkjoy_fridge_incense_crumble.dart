import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit_eskimo_lap.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_headline.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';

enum LinkjoyFridgeIncenseCrumbleGreen { Normal, GiftShop }

class LinkjoyFridgeIncenseCrumble extends StatefulWidget {
  const LinkjoyFridgeIncenseCrumble({
    super.key,
    this.style = LinkjoyFridgeIncenseCrumbleGreen.Normal,
  });

  final LinkjoyFridgeIncenseCrumbleGreen style;

  @override
  LinkjoyFridgeIncenseCrumbleStatus createState() =>
      LinkjoyFridgeIncenseCrumbleStatus();
}

class LinkjoyFridgeIncenseCrumbleStatus
    extends State<LinkjoyFridgeIncenseCrumble> {
  late LinkjoyUnbornDeposit userRuntime;
  StreamSubscription? updateUserRuntimeSubscription;

  @override
  void initState() {
    super.initState();
    userRuntime = LINKJOY.linkjoyUnbornDeposit!;
    updateUserRuntimeSubscription = LINKJOY
        .listen<LinkjoyUnbornDepositEskimoLap>((event) {
          if (mounted) {
            setState(() {
              userRuntime = LINKJOY.linkjoyUnbornDeposit!;
            });
          }
        });
  }

  @override
  void dispose() {
    updateUserRuntimeSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LinkjoyUiHeadline.coinsLabelTag(
      userRuntime.balance,
      decoration: widget.style == LinkjoyFridgeIncenseCrumbleGreen.GiftShop
          ? BoxDecoration(
              color: LinkjoyAve.primaryDark,
              borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusXLarge),
            )
          : null,
    );
  }
}
