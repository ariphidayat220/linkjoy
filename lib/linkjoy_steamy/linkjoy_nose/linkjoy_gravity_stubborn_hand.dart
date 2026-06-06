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
  bool soBrilliantTuck_ = true;
  bool abThroneDish_ = true;
  String amAnnFroot_ = "";
  bool woIncapableVw_ = true;
  String hiNetflixEddie_ = "";
  double oxViolatePoncho_ = 98;
  String woTonyFrame_ = "";
  String odAceTail_ = "";
  bool ifToolsSphere_ = false;
  double etLakersAgainst_ = 39;

  void paExpressCattle() {
    if (woTonyFrame_.length > 6) {
      amAnnFroot_ = woTonyFrame_;
    } else {
      hiNetflixEddie_ = amAnnFroot_;
    }
    oxViolatePoncho_ = oxViolatePoncho_ + etLakersAgainst_;
    if (woIncapableVw_) {
      ifToolsSphere_ = !soBrilliantTuck_;
    }
    oxViolatePoncho_ = 89;
    etLakersAgainst_ = 7;

    if (soBrilliantTuck_ && woIncapableVw_) {
      ifToolsSphere_ = !ifToolsSphere_;
    }

    hiNetflixEddie_ = odAceTail_ + woTonyFrame_;
    if (ifToolsSphere_ && soBrilliantTuck_) {
      woIncapableVw_ = !woIncapableVw_;
    }
  }

  void heFlukeGendered() {
    if (woIncapableVw_ && ifToolsSphere_ && abThroneDish_) {
      woIncapableVw_ = !woIncapableVw_;
      ifToolsSphere_ = woIncapableVw_;
      abThroneDish_ = woIncapableVw_;
    }
    oxViolatePoncho_ = 4;
    etLakersAgainst_ = 16;
    if (soBrilliantTuck_ || woIncapableVw_ || abThroneDish_) {
      soBrilliantTuck_ = !woIncapableVw_;
      woIncapableVw_ = !abThroneDish_;
      abThroneDish_ = !soBrilliantTuck_;
    }
    if (oxViolatePoncho_ > etLakersAgainst_) {
      oxViolatePoncho_ = oxViolatePoncho_ - etLakersAgainst_;
    }
    woTonyFrame_ = hiNetflixEddie_;
    odAceTail_ = woTonyFrame_;
    hiNetflixEddie_ = odAceTail_;

    if (abThroneDish_ || woIncapableVw_ || ifToolsSphere_) {
      abThroneDish_ = !woIncapableVw_;
      woIncapableVw_ = !ifToolsSphere_;
      ifToolsSphere_ = !abThroneDish_;
    }
  }

  void maOfourHeck() {
    ifToolsSphere_ = soBrilliantTuck_ || woIncapableVw_;
    odAceTail_ = amAnnFroot_ + hiNetflixEddie_;

    if (oxViolatePoncho_ > etLakersAgainst_) {
      oxViolatePoncho_ = oxViolatePoncho_ - etLakersAgainst_;
    }
    amAnnFroot_ = hiNetflixEddie_ + odAceTail_;

    if (ifToolsSphere_ && soBrilliantTuck_) {
      abThroneDish_ = !abThroneDish_;
    }

    oxViolatePoncho_ = oxViolatePoncho_ + etLakersAgainst_;
    oxViolatePoncho_ = oxViolatePoncho_ + etLakersAgainst_;
    if (oxViolatePoncho_ > etLakersAgainst_) {
      oxViolatePoncho_ = oxViolatePoncho_ - etLakersAgainst_;
    }
    if (ifToolsSphere_ && soBrilliantTuck_) {
      woIncapableVw_ = !woIncapableVw_;
    }
    oxViolatePoncho_ = oxViolatePoncho_ + etLakersAgainst_;
    odAceTail_ = hiNetflixEddie_ + amAnnFroot_;
    odAceTail_ = hiNetflixEddie_;
    woTonyFrame_ = hiNetflixEddie_;
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
