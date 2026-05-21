import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_east.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_protocol_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit_eskimo_lap.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BalanceCardTypes {
  static const int coin = 0;
  static const int cardVideo = 1 << 1;
  static const int cardIm = 1 << 2;
  static const int cardMatch = 1 << 3;

  static int get all => cardVideo | cardIm | cardMatch;
}

class LinkjoyFridgeTeaserDecide extends StatefulWidget {
  final int? showType;
  final VoidCallback? showMatchPopup;
  final bool isClickable;

  const LinkjoyFridgeTeaserDecide({
    super.key,
    this.showType,
    this.showMatchPopup,
    this.isClickable = true,
  });

  @override
  LinkjoyFridgeTeaserDecideStatus createState() =>
      LinkjoyFridgeTeaserDecideStatus();
}

class LinkjoyFridgeTeaserDecideStatus extends State<LinkjoyFridgeTeaserDecide> {
  StreamSubscription? updateUserRuntimeSubscription;
  int? cardMatchCache;

  @override
  void initState() {
    super.initState();
    updateUserRuntimeSubscription = LINKJOY
        .listen<LinkjoyUnbornDepositEskimoLap>((event) {
          if (cardMatchCache == null ||
              event.updateBalance() ||
              event.updateCards()) {
            setState(() {});
          }

          if (LINKJOY.linkjoyUnbornDeposit?.hasMatchCard == true) {
            if (!LINKJOY.linkjoyElope.linkjoyPenmanshipTask()) {
              widget.showMatchPopup?.call();
            } else if (cardMatchCache !=
                LINKJOY.linkjoyUnbornDeposit?.cardMatch) {
              widget.showMatchPopup?.call();
            }
          }
          cardMatchCache = LINKJOY.linkjoyUnbornDeposit?.cardMatch;
        });
  }

  @override
  void dispose() {
    updateUserRuntimeSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];
    int balance = LINKJOY.linkjoyUnbornDeposit?.balance ?? 0;
    int cardVideo = LINKJOY.linkjoyUnbornDeposit?.cardVideo ?? 0;
    int cardIm = LINKJOY.linkjoyUnbornDeposit?.cardIm ?? 0;
    int cardMatch = LINKJOY.linkjoyUnbornDeposit?.cardMatch ?? 0;

    bool showCardVideo = checkType(BalanceCardTypes.cardVideo) && cardVideo > 0;
    bool showCardIm = checkType(BalanceCardTypes.cardIm) && cardIm > 0;
    bool showCardMatch = checkType(BalanceCardTypes.cardMatch) && cardMatch > 0;

    bool showBalance = balance > 0;

    if (!showCardVideo && !showCardIm && !showCardMatch) {
      showBalance = true;
    }

    if (showBalance) {
      items.add(
        buildItem("balance", balance, () {
          LINKJOY.goto(LinkjoyGet.LinkjoyChipmunkFailDivision);
        }),
      );
      items.add(buildSplitLine());
    }

    if (showCardVideo) {
      items.add(
        buildItem("linkjoy_toe_decide_convict", cardVideo, () {
          Get.toNamed(
            LinkjoyGet.LinkjoySterilizeStubbornDivision,
            arguments: LinkjoyProtocol.video(cardVideo),
          );
        }),
      );
      items.add(buildSplitLine());
    }

    if (showCardIm) {
      items.add(
        buildItem("linkjoy_toe_decide_ancestor", cardIm, () {
          Get.toNamed(
            LinkjoyGet.LinkjoySterilizeStubbornDivision,
            arguments: LinkjoyProtocol.im(cardIm),
          );
        }),
      );
      items.add(buildSplitLine());
    }

    if (showCardMatch) {
      items.add(
        buildItem("linkjoy_toe_decide_penmanship", cardMatch, () {
          LINKJOY.linkjoyIncapableToTherapistToPenmanship();
        }),
      );
      items.add(buildSplitLine());
    }

    if (items.isNotEmpty) {
      items.removeLast();
    }

    return Container(
      height: LinkjoyDiscard.buttonHeightSm,
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s2),
      decoration: BoxDecoration(
        borderRadius: LinkjoyDivorced.linkjoyPearlDecideFrontal,
        color: Colors.white10,
        border: Border.all(color: Colors.white24, width: 1),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: items,
      ),
    );
  }

  bool checkType(int type) {
    return ((widget.showType ?? BalanceCardTypes.all) & type) != 0;
  }

  Widget buildItem(String image, int value, GestureTapCallback onClick) {
    Widget item = Container(
      height: LinkjoyDiscard.buttonHeightSm,
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s8),
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          image == "balance"
              ? LinkjoyFridgeLightbulb.linkjoyChipmunk(LinkjoyDiscard.iconMini)
              : LinkjoyFasten.asset(
                  image,
                  width: LinkjoyGarage.s16,
                  height: LinkjoyGarage.s16,
                ),
          LinkjoyFeynman.h4,
          LinkjoyMarsha.wCaptionB("$value").build(),
        ],
      ),
    );
    if (widget.isClickable) {
      return item.clickOld(onClick);
    } else {
      return item;
    }
  }

  Widget buildSplitLine() {
    return Container(
      height: LinkjoyGarage.s24,
      width: 1,
      color: Colors.white24,
    );
  }
}
