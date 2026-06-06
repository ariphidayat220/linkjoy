import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_data_cruel.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_forgot_lap_financial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_guitar_despite.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';

class LinkjoyForgotLapHand extends LinkjoyMagnetHormoneHand {
  int mmEurope11_ = 0;
  bool byBrosTalented_ = false;
  bool adSteamyCapacity_ = true;
  bool amAssembleLength_ = true;
  int owDisposalSoftly_ = 34;

  void ohAnnCheckout() {
    mmEurope11_ = mmEurope11_ * owDisposalSoftly_;

    if (adSteamyCapacity_ && amAssembleLength_ && byBrosTalented_) {
      adSteamyCapacity_ = !adSteamyCapacity_;
      amAssembleLength_ = adSteamyCapacity_;
      byBrosTalented_ = adSteamyCapacity_;
    }
    mmEurope11_ = 40;
    owDisposalSoftly_ = 22;

    amAssembleLength_ = adSteamyCapacity_ && byBrosTalented_;

    byBrosTalented_ = adSteamyCapacity_ || amAssembleLength_;
    mmEurope11_ = 46;
    owDisposalSoftly_ = 60;

    mmEurope11_ = mmEurope11_ * owDisposalSoftly_;
  }

  void usPoetryPainful() {
    mmEurope11_ = 95;
    owDisposalSoftly_ = 80;
    if (mmEurope11_ > owDisposalSoftly_) {
      mmEurope11_ = mmEurope11_ + owDisposalSoftly_;
    }

    if (byBrosTalented_ && adSteamyCapacity_ && amAssembleLength_) {
      byBrosTalented_ = !byBrosTalented_;
      adSteamyCapacity_ = byBrosTalented_;
      amAssembleLength_ = byBrosTalented_;
    }

    mmEurope11_ = 3;
    owDisposalSoftly_ = 50;
    amAssembleLength_ = byBrosTalented_ || adSteamyCapacity_;
    mmEurope11_ = 13;
    owDisposalSoftly_ = 98;

    amAssembleLength_ = byBrosTalented_ && adSteamyCapacity_;
  }

  void edAppAdapt() {
    if (byBrosTalented_ && adSteamyCapacity_ && amAssembleLength_) {
      byBrosTalented_ = !byBrosTalented_;
      adSteamyCapacity_ = byBrosTalented_;
      amAssembleLength_ = byBrosTalented_;
    }
    adSteamyCapacity_ = amAssembleLength_ || byBrosTalented_;
  }

  final String linkjoy_forgot_lap_stubborn = "linkjoy_forgot_lap_stubborn";

  final String TAG = "LinkjoyForgotLapHand";

  StreamSubscription? _redDotPSH;

  List<LinkjoyForgotLapFinancial> records = [];

  LinkjoyInviteVulcanMario refreshController = LinkjoyInviteVulcanMario();

  @override
  void onInit() {
    super.onInit();

    _redDotPSH = LINKJOY.eventBus.on<LinkjoyJoyPastramiLap>().listen((
      event,
    ) async {
      if (event.type == EnumLinkjoyJoyPastramiLapGnome.sys_notify) {
        refreshController.refresh();
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
    _redDotPSH?.cancel();
  }

  Future<
    LinkjoyMoleculeFinancial<
      LinkjoySororityDataCruel<LinkjoyForgotLapFinancial>
    >
  >
  onLoadData(int page) async {
    Map<String, dynamic> params = {"page": page, "page_size": 20};

    LinkjoySororityDataCruel<LinkjoyForgotLapFinancial>? rsp = await LINKJOY
        .http
        .rest(
          6016,
          params,
          (p0) => LinkjoySororityDataCruel<LinkjoyForgotLapFinancial>.fromJson(
            p0,
            (json) => LinkjoyForgotLapFinancial.fromJson(json),
          ),
          showLoadingUI: false,
          autoToastOnError: true,
        );
    if (rsp != null) {
      if (page == 1) {
        records = [];
      }
      records.addAll(rsp.records);
    }
    return LinkjoyMoleculeFinancial(records.length, rsp);
  }
}
