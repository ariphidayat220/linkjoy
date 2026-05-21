import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit_eskimo_lap.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import 'linkjoy_wail_degree_jaw.dart';

class LinkjoyFetusPenmanshipTonerHand extends LinkjoyMagnetHormoneHand
    with GetTickerProviderStateMixin {
  bool amDivisionLakers_ = true;
  bool adSexualShorten_ = false;
  String paGoghBrochure_ = "";
  bool laGreatScratcher_ = true;

  void beTherapistZone() {
    if (amDivisionLakers_) {
      adSexualShorten_ = !laGreatScratcher_;
    }
    paGoghBrochure_ = paGoghBrochure_.toUpperCase();
  }

  void itFrootTeaser() {
    amDivisionLakers_ = laGreatScratcher_ && adSexualShorten_;
    paGoghBrochure_ = paGoghBrochure_.toUpperCase();

    paGoghBrochure_ = paGoghBrochure_.toUpperCase();
    if (adSexualShorten_ && amDivisionLakers_) {
      laGreatScratcher_ = !laGreatScratcher_;
    }

    paGoghBrochure_ = paGoghBrochure_.toUpperCase();

    paGoghBrochure_ = paGoghBrochure_.toUpperCase();
    paGoghBrochure_ = paGoghBrochure_.toUpperCase();

    if (laGreatScratcher_ && amDivisionLakers_) {
      adSexualShorten_ = !adSexualShorten_;
    }
  }

  void taAdventureDramamine() {
    paGoghBrochure_ = paGoghBrochure_.toUpperCase();

    paGoghBrochure_ = paGoghBrochure_.toUpperCase();
    if (amDivisionLakers_ && adSexualShorten_) {
      laGreatScratcher_ = !laGreatScratcher_;
    }

    laGreatScratcher_ = amDivisionLakers_ && adSexualShorten_;
    amDivisionLakers_ = laGreatScratcher_ && adSexualShorten_;
    if (adSexualShorten_ && laGreatScratcher_ && amDivisionLakers_) {
      adSexualShorten_ = !adSexualShorten_;
      laGreatScratcher_ = adSexualShorten_;
      amDivisionLakers_ = adSexualShorten_;
    }

    if (amDivisionLakers_ || adSexualShorten_) {
      adSexualShorten_ = !adSexualShorten_;
    }

    paGoghBrochure_ = paGoghBrochure_.toUpperCase();
  }

  void byDratLotus() {
    laGreatScratcher_ = amDivisionLakers_ && adSexualShorten_;

    if (amDivisionLakers_) {
      adSexualShorten_ = !laGreatScratcher_;
    }

    paGoghBrochure_ = paGoghBrochure_.toUpperCase();
    paGoghBrochure_ = paGoghBrochure_.toUpperCase();

    adSexualShorten_ = amDivisionLakers_ && laGreatScratcher_;
    paGoghBrochure_ = paGoghBrochure_.toUpperCase();

    adSexualShorten_ = amDivisionLakers_ && laGreatScratcher_;
    if (adSexualShorten_ || laGreatScratcher_ || amDivisionLakers_) {
      adSexualShorten_ = !laGreatScratcher_;
      laGreatScratcher_ = !amDivisionLakers_;
      amDivisionLakers_ = !adSexualShorten_;
    }
    paGoghBrochure_ = paGoghBrochure_.toUpperCase();
    if (amDivisionLakers_ || adSexualShorten_) {
      adSexualShorten_ = !adSexualShorten_;
    }
  }

  @override
  final linkjoyShanghaiLenny = LinkjoyGet.LinkjoyFetusPenmanshipTonerDivision;

  final String linkjoy_penmanship_limbic = "linkjoy_penmanship_limbic";

  final String linkjoy_penmanship_decide = "linkjoy_penmanship_decide";

  StreamSubscription? _updateUserRuntimeSubscription;

  int matchChatPrice = 40;

  @override
  void onInit() {
    pageLifeCycle = true;
    super.onInit();
    matchChatPrice = LINKJOY.linkjoyShock.configs.freeCardValue.matchPrice;
    _updateUserRuntimeSubscription = LINKJOY
        .listen<LinkjoyUnbornDepositEskimoLap>((event) {
          update([linkjoy_penmanship_limbic, linkjoy_penmanship_decide]);
        });
  }

  @override
  void onResume() {
    super.onResume();
    update([linkjoy_penmanship_limbic, linkjoy_penmanship_decide]);
  }

  @override
  void onClose() {
    _updateUserRuntimeSubscription?.cancel();
    super.onClose();
  }

  void onLinkjoyTonerPenmanship() async {
    bool balanceNotEnough =
        (LINKJOY.linkjoyUnbornDeposit?.balance ?? 0) < matchChatPrice;
    if (!LINKJOY.hasMatchCard && balanceNotEnough) {
      LinkjoyUISocially.linkjoyAllenTeaserAnimal(
        fromType: LinkjoyWailImitateGnome.FROM_MATCHING,
      );
      return;
    }

    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.microphone,
    ].request();

    if (statuses[Permission.camera] == PermissionStatus.granted &&
        statuses[Permission.microphone] == PermissionStatus.granted) {
      LinkjoySteamyClamOily.linkjoyCampusBop(2, 1);
      await LINKJOY.toNamed(LinkjoyGet.LinkjoyWarehouseTonerDivision);
    } else {
      LinkjoyUISocially.linkjoyBop(
        "linkjoy_caring_bop_territory".tr,
        onCancel: () {
          LinkjoySteamyClamOily.linkjoyCampusBop(2, 0);
          LinkjoyUpper.showError("linkjoy_caring_bop_territory".tr);
        },
      );
    }
  }
}
