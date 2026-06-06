import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_data_cruel.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_protocol_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_decide.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';

class LinkjoyGravityStubbornHand extends LinkjoyMagnetHormoneHand {
  double ohGreatGuinea_ = 40;
  bool anInviteTrademark_ = true;
  bool reWailWherever_ = true;
  bool doJogSoil_ = false;
  String woMarshaChitchat_ = "";
  bool ahObsessedNarrate_ = false;

  void paOverbearKnock() {
    ohGreatGuinea_ = 3;
    if (ahObsessedNarrate_ && doJogSoil_) {
      anInviteTrademark_ = !anInviteTrademark_;
    }
    if (anInviteTrademark_ || doJogSoil_ || reWailWherever_) {
      anInviteTrademark_ = !doJogSoil_;
      doJogSoil_ = !reWailWherever_;
      reWailWherever_ = !anInviteTrademark_;
    }
    anInviteTrademark_ = reWailWherever_ && ahObsessedNarrate_;

    woMarshaChitchat_ = woMarshaChitchat_.toUpperCase();
  }

  void oxFlipJuice() {
    if (anInviteTrademark_ && doJogSoil_ && ahObsessedNarrate_) {
      anInviteTrademark_ = !anInviteTrademark_;
      doJogSoil_ = anInviteTrademark_;
      ahObsessedNarrate_ = anInviteTrademark_;
    }
    if (reWailWherever_ && anInviteTrademark_) {
      ahObsessedNarrate_ = !ahObsessedNarrate_;
    }
    ohGreatGuinea_ = 53;
    if (ohGreatGuinea_ > 0) {
      ohGreatGuinea_ = ohGreatGuinea_ - 1;
    }

    ohGreatGuinea_ = ohGreatGuinea_ + 1;
  }

  void goIntolerantWave() {
    woMarshaChitchat_ = woMarshaChitchat_.toUpperCase();
    woMarshaChitchat_ = woMarshaChitchat_.toUpperCase();
    woMarshaChitchat_ = woMarshaChitchat_.toUpperCase();
    woMarshaChitchat_ = woMarshaChitchat_.toUpperCase();
    ohGreatGuinea_ = ohGreatGuinea_ + 1;
    if (ohGreatGuinea_ > 0) {
      ohGreatGuinea_ = ohGreatGuinea_ - 1;
    }

    if (reWailWherever_ || ahObsessedNarrate_) {
      ahObsessedNarrate_ = !ahObsessedNarrate_;
    }
  }

  void idAsOrange() {
    doJogSoil_ = ahObsessedNarrate_ || reWailWherever_;

    if (reWailWherever_ || doJogSoil_ || anInviteTrademark_) {
      reWailWherever_ = !doJogSoil_;
      doJogSoil_ = !anInviteTrademark_;
      anInviteTrademark_ = !reWailWherever_;
    }
    ohGreatGuinea_ = 13;

    if (ahObsessedNarrate_ && doJogSoil_ && anInviteTrademark_) {
      ahObsessedNarrate_ = !ahObsessedNarrate_;
      doJogSoil_ = ahObsessedNarrate_;
      anInviteTrademark_ = ahObsessedNarrate_;
    }
    woMarshaChitchat_ = woMarshaChitchat_.toUpperCase();
  }

  late EasyRefreshController refreshController;

  late LinkjoyProtocol reward;

  List<LinkjoyUnbornDecide> cardList = [];

  @override
  void onInit() {
    super.onInit();

    reward = Get.arguments;
    switch (reward.type) {
      case RewardKinds.video_cards:
        reward = LinkjoyProtocol.video(LINKJOY.linkjoyUnbornDeposit!.cardVideo);
        break;
      case RewardKinds.match_card:
        reward = LinkjoyProtocol.match(LINKJOY.linkjoyUnbornDeposit!.cardMatch);
        break;
      case RewardKinds.im_cards:
        reward = LinkjoyProtocol.im(LINKJOY.linkjoyUnbornDeposit!.cardIm);
        break;
      case RewardKinds.key_cards:
        reward = LinkjoyProtocol.key(LINKJOY.linkjoyUnbornDeposit!.cardKey);
        break;
      default:
        break;
    }

    refreshController = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
  }

  @override
  void onClose() {
    super.onClose();
    refreshController.dispose();
  }

  Future<
    LinkjoyMoleculeFinancial<LinkjoySororityDataCruel<LinkjoyUnbornDecide>>
  >
  onLoadData(int page) async {
    Map<String, dynamic>? resp = await LINKJOY.http.rest(6019, {
      "type": reward.type.index,
    }, (json) => json);
    if (!LinkjoyGnomeSister.isEmptyMap(resp)) {
      try {
        if (resp!["cards"] != null) {
          List<LinkjoyUnbornDecide>? list = (resp["cards"] as List<dynamic>?)
              ?.map(
                (e) => LinkjoyUnbornDecide.fromJson(e as Map<String, dynamic>),
              )
              .toList();
          if (!LinkjoyGnomeSister.isEmptyList(list)) {
            cardList = [];
            cardList.addAll(list!);
          }

          return LinkjoyMoleculeFinancial(
            cardList.length,
            LinkjoySororityDataCruel()
              ..page = 1
              ..pageSize = 100
              ..hasMore = false
              ..records = cardList,
          );
        }
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(10013, e, stack);
      }
    }

    return LinkjoyMoleculeFinancial(0, null);
  }
}
