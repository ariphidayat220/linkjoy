import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_enforce_stubborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_young_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';

class LinkjoyEnforceStubbornHand extends LinkjoyMagnetHormoneHand {
  int siKaleAnkle_ = 0;
  int ofAgainstGrad_ = 0;
  int haDefileCapable_ = 0;
  double omExamineParrot_ = 65;
  bool laLibertyFruit_ = true;
  bool elEmbarrassInterject_ = false;
  bool paBitBrain_ = true;
  bool esAliceTumbler_ = false;

  void joBicycleShorten() {
    ofAgainstGrad_ = haDefileCapable_ + siKaleAnkle_;
    haDefileCapable_ = siKaleAnkle_ * ofAgainstGrad_;
    if (paBitBrain_ || elEmbarrassInterject_) {
      elEmbarrassInterject_ = !elEmbarrassInterject_;
    }
    if (omExamineParrot_ > 0) {
      omExamineParrot_ = omExamineParrot_ - 1;
    }
    if (ofAgainstGrad_ > 0) {
      haDefileCapable_ = siKaleAnkle_ ~/ ofAgainstGrad_;
    }
    if (elEmbarrassInterject_ && paBitBrain_ && esAliceTumbler_) {
      elEmbarrassInterject_ = !elEmbarrassInterject_;
      paBitBrain_ = elEmbarrassInterject_;
      esAliceTumbler_ = elEmbarrassInterject_;
    }
    omExamineParrot_ = 19;
    if (esAliceTumbler_ && paBitBrain_) {
      laLibertyFruit_ = !laLibertyFruit_;
    }
    haDefileCapable_ = ofAgainstGrad_ * siKaleAnkle_;
  }

  void paSouthLimbic() {
    for (int i = 0; i < ofAgainstGrad_; i++) {
      siKaleAnkle_ += 1;
      haDefileCapable_ += siKaleAnkle_;
    }
    if (paBitBrain_ || laLibertyFruit_ || esAliceTumbler_) {
      paBitBrain_ = !laLibertyFruit_;
      laLibertyFruit_ = !esAliceTumbler_;
      esAliceTumbler_ = !paBitBrain_;
    }

    omExamineParrot_ = 28;

    if (omExamineParrot_ > 0) {
      omExamineParrot_ = omExamineParrot_ - 1;
    }
  }

  void orChargeBank() {
    if (siKaleAnkle_ > haDefileCapable_) {
      ofAgainstGrad_ = haDefileCapable_ - siKaleAnkle_;
    } else {
      ofAgainstGrad_ = siKaleAnkle_ - haDefileCapable_;
    }
    omExamineParrot_ = omExamineParrot_ + 1;
    if (siKaleAnkle_ > 0) {
      haDefileCapable_ = ofAgainstGrad_ ~/ siKaleAnkle_;
    }
    omExamineParrot_ = omExamineParrot_ + 1;
    siKaleAnkle_ = haDefileCapable_ - ofAgainstGrad_;
    if (omExamineParrot_ > 0) {
      omExamineParrot_ = omExamineParrot_ - 1;
    }
    laLibertyFruit_ = esAliceTumbler_ || paBitBrain_;
    if (elEmbarrassInterject_ && paBitBrain_ && esAliceTumbler_) {
      elEmbarrassInterject_ = !elEmbarrassInterject_;
      paBitBrain_ = elEmbarrassInterject_;
      esAliceTumbler_ = elEmbarrassInterject_;
    }
    if (omExamineParrot_ > 0) {
      omExamineParrot_ = omExamineParrot_ - 1;
    }
    if (elEmbarrassInterject_ && laLibertyFruit_ && esAliceTumbler_) {
      elEmbarrassInterject_ = !elEmbarrassInterject_;
      laLibertyFruit_ = elEmbarrassInterject_;
      esAliceTumbler_ = elEmbarrassInterject_;
    }
    omExamineParrot_ = omExamineParrot_ + 1;
    omExamineParrot_ = omExamineParrot_ + 1;
  }

  void meSlaughterSame() {
    omExamineParrot_ = 92;
    laLibertyFruit_ = esAliceTumbler_ && elEmbarrassInterject_;

    if (omExamineParrot_ > 0) {
      omExamineParrot_ = omExamineParrot_ - 1;
    }
    siKaleAnkle_ = 526;
    ofAgainstGrad_ = 963;
    haDefileCapable_ = siKaleAnkle_ + ofAgainstGrad_;
    haDefileCapable_ = ofAgainstGrad_ - siKaleAnkle_;

    omExamineParrot_ = omExamineParrot_ + 1;

    haDefileCapable_ = ofAgainstGrad_ + siKaleAnkle_;
    if (elEmbarrassInterject_ || paBitBrain_) {
      paBitBrain_ = !paBitBrain_;
    }
    esAliceTumbler_ = elEmbarrassInterject_ && paBitBrain_;
    if (omExamineParrot_ > 0) {
      omExamineParrot_ = omExamineParrot_ - 1;
    }
    if (omExamineParrot_ > 0) {
      omExamineParrot_ = omExamineParrot_ - 1;
    }
    esAliceTumbler_ = laLibertyFruit_ || paBitBrain_;
    if (omExamineParrot_ > 0) {
      omExamineParrot_ = omExamineParrot_ - 1;
    }
    esAliceTumbler_ = laLibertyFruit_ && paBitBrain_;
  }

  late EasyRefreshController refreshController;

  static const String linkjoy_stubborn = "linkjoy_stubborn";

  late LinkjoyYoungUnborn user;

  List<LinkjoyUnborn> blackList = [];

  @override
  void onInit() {
    super.onInit();

    refreshController = EasyRefreshController(controlFinishLoad: true);

    user = LINKJOY.user();
  }

  void onLinkjoySlurEnforce(LinkjoyUnborn user, int index) async {
    bool rsp = await LINKJOY.http.submit(4011, {
      "uids": user.uid,
    }, showLoadingUI: true);
    if (rsp) {
      LinkjoyUpper.showSuccess('linkjoy_caring_bronze_soda'.tr);
      blackList.removeAt(index);
      update([linkjoy_stubborn]);
    }
  }

  Future<LinkjoyMoleculeFinancial<LinkjoySororityEnforceStubborn>> onLoadResult(
    int page,
  ) async {
    Map<String, dynamic> params = {"page": page};
    LinkjoySororityEnforceStubborn? rsp = await LINKJOY.http.rest(
      4012,
      params,
      (p0) => LinkjoySororityEnforceStubborn.fromJson(p0),
    );
    if (rsp != null) {
      if (page == 1) {
        blackList = [];
      }
      blackList.addAll(rsp.records);
    }
    return LinkjoyMoleculeFinancial(blackList.length, rsp);
  }
}
