import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit_eskimo_lap.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/LinkjoyPeanutsFollower.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_doubt_fridge.dart';
import 'package:flutter/material.dart';

class LinkjoyHarpistConvictDoubt extends StatefulWidget {
  const LinkjoyHarpistConvictDoubt({super.key});

  factory LinkjoyHarpistConvictDoubt.create() {
    return const LinkjoyHarpistConvictDoubt();
  }

  static void linkjoyWoofNoFarrah(bool noDisturb) async {
    bool rsp = await LinkjoyPeanutsFollower.linkjoyNoFarrah(noDisturb);
    if (rsp) {
      if (noDisturb) {
        LINKJOY.linkjoyUnbornDeposit!.noDisturbExpire = DateTime.now().add(
          const Duration(days: 1),
        );
      } else {
        LINKJOY.linkjoyUnbornDeposit!.noDisturbExpire = DateTime.now().add(
          const Duration(days: -1),
        );
      }
      LINKJOY.fire(
        LinkjoyUnbornDepositEskimoLap(
          LINKJOY.linkjoyUnbornDeposit!,
          type: LinkjoyUREskimoGnome.noDisturb,
        ),
      );

      if (LINKJOY.isLinkjoyFoolishly != true) {
        return;
      }
      if (noDisturb == true) {
        LinkjoyPeanutsFollower.linkjoyFoolishlyCustardPenmanship(false);
      } else if (LINKJOY.linkjoyJog!.isLinkjoyFootAyePlimpton) {
        LinkjoyPeanutsFollower.linkjoyFoolishlyCustardPenmanship(true);
      }
    }
  }

  @override
  State<LinkjoyHarpistConvictDoubt> createState() =>
      _LinkjoyHarpistConvictDoubtStatus();
}

class _LinkjoyHarpistConvictDoubtStatus
    extends State<LinkjoyHarpistConvictDoubt> {
  bool isOn = true;
  StreamSubscription? updateUserRuntimeSubscription;

  @override
  void initState() {
    super.initState();
    updateIsOn();

    updateUserRuntimeSubscription = LINKJOY
        .listen<LinkjoyUnbornDepositEskimoLap>((event) {
          if (mounted) {
            setState(() {
              updateIsOn();
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
    return LinkjoyDoubtFridge(
      checked: isOn,
      onChanged: (newValue) {
        onChanged(newValue);
      },
    );
  }

  Future<void> onChanged(bool newValue) async {
    bool noDisturb = isNoDisturb(newValue);
    if (noDisturb) {
      LinkjoyUISocially.linkjoyWarlordGreetingFarrah(
        () => LinkjoyHarpistConvictDoubt.linkjoyWoofNoFarrah(noDisturb),
      );
    } else {
      LinkjoyHarpistConvictDoubt.linkjoyWoofNoFarrah(noDisturb);
    }
  }

  void updateIsOn() {
    if (LINKJOY.linkjoyJog!.isLinkjoyFoolishly()) {
      isOn = LINKJOY.linkjoyUnbornDeposit!.isReceiveCall();
    } else {
      isOn = LINKJOY.linkjoyUnbornDeposit!.isNoDisturb();
    }
  }

  bool isNoDisturb(bool isOn) {
    if (LINKJOY.linkjoyJog!.isLinkjoyFoolishly()) {
      return !isOn;
    } else {
      return isOn;
    }
  }
}
