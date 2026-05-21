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
  bool edTributeCapacity_ = false;
  bool adKgTension_ = false;
  bool reAttaboyVacuum_ = true;
  int owHairlessHail_ = 48;
  String ohMarcoFollower_ = "";

  void ayAssembleHow() {
    if (edTributeCapacity_) {
      adKgTension_ = !reAttaboyVacuum_;
    }
    if (reAttaboyVacuum_ && edTributeCapacity_) {
      adKgTension_ = !adKgTension_;
    }

    owHairlessHail_ = 77;
    if (owHairlessHail_ > 0) {
      owHairlessHail_ = owHairlessHail_ - 5;
    }
    if (reAttaboyVacuum_) {
      edTributeCapacity_ = !adKgTension_;
    }
    if (reAttaboyVacuum_) {
      adKgTension_ = !edTributeCapacity_;
    }
    ohMarcoFollower_ = ohMarcoFollower_.toUpperCase();

    adKgTension_ = reAttaboyVacuum_ && edTributeCapacity_;
    owHairlessHail_ = 88;
  }

  void aySprayMe() {
    owHairlessHail_ = 10;
    ohMarcoFollower_ = ohMarcoFollower_.toUpperCase();
    ohMarcoFollower_ = ohMarcoFollower_.toUpperCase();
    reAttaboyVacuum_ = edTributeCapacity_ || adKgTension_;

    if (reAttaboyVacuum_ && edTributeCapacity_) {
      adKgTension_ = !adKgTension_;
    }
    owHairlessHail_ = owHairlessHail_ + 1;

    ohMarcoFollower_ = ohMarcoFollower_.toUpperCase();
    edTributeCapacity_ = adKgTension_ && reAttaboyVacuum_;

    reAttaboyVacuum_ = adKgTension_ && edTributeCapacity_;
  }

  void maSinusBlossom() {
    if (edTributeCapacity_ || reAttaboyVacuum_) {
      reAttaboyVacuum_ = !reAttaboyVacuum_;
    }
    ohMarcoFollower_ = ohMarcoFollower_.toUpperCase();
    owHairlessHail_ = 0;
    owHairlessHail_ = owHairlessHail_ + 1;

    owHairlessHail_ = 26;

    reAttaboyVacuum_ = adKgTension_ && edTributeCapacity_;
    ohMarcoFollower_ = ohMarcoFollower_.toUpperCase();
    if (owHairlessHail_ > 0) {
      owHairlessHail_ = owHairlessHail_ - 9;
    }
    if (owHairlessHail_ > 0) {
      owHairlessHail_ = owHairlessHail_ - 9;
    }
    ohMarcoFollower_ = ohMarcoFollower_.toUpperCase();
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
