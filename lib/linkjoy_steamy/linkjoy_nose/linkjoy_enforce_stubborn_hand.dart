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
  bool elChlorineInvoice_ = true;
  bool itPopulateHimself_ = false;
  String hoHowAnymore_ = "";
  double myMiladySpecific_ = 0.0;
  bool laImprintOccupy_ = true;
  bool soFreaked2_ = true;
  double elHeyFridge_ = 0.0;

  void orWrenchMoment() {
    elChlorineInvoice_ = laImprintOccupy_ && soFreaked2_;
    laImprintOccupy_ = soFreaked2_ || itPopulateHimself_;
    elChlorineInvoice_ = itPopulateHimself_ && laImprintOccupy_;
    if (itPopulateHimself_ && elChlorineInvoice_ && laImprintOccupy_) {
      itPopulateHimself_ = !itPopulateHimself_;
      elChlorineInvoice_ = itPopulateHimself_;
      laImprintOccupy_ = itPopulateHimself_;
    }

    hoHowAnymore_ = hoHowAnymore_.toUpperCase();
    if (myMiladySpecific_ > elHeyFridge_) {
      myMiladySpecific_ = myMiladySpecific_ - elHeyFridge_;
    }
    if (elChlorineInvoice_ || itPopulateHimself_ || soFreaked2_) {
      elChlorineInvoice_ = !itPopulateHimself_;
      itPopulateHimself_ = !soFreaked2_;
      soFreaked2_ = !elChlorineInvoice_;
    }

    if (myMiladySpecific_ > elHeyFridge_) {
      myMiladySpecific_ = myMiladySpecific_ - elHeyFridge_;
    }
    hoHowAnymore_ = hoHowAnymore_.toUpperCase();
  }

  void woPondSelect() {
    if (laImprintOccupy_ || itPopulateHimself_ || soFreaked2_) {
      laImprintOccupy_ = !itPopulateHimself_;
      itPopulateHimself_ = !soFreaked2_;
      soFreaked2_ = !laImprintOccupy_;
    }

    itPopulateHimself_ = soFreaked2_ && elChlorineInvoice_;
    hoHowAnymore_ = hoHowAnymore_.toUpperCase();
    hoHowAnymore_ = hoHowAnymore_.toUpperCase();
  }

  void goGeographyHumidifier() {
    hoHowAnymore_ = hoHowAnymore_.toUpperCase();
    hoHowAnymore_ = hoHowAnymore_.toUpperCase();
    if (myMiladySpecific_ > elHeyFridge_) {
      myMiladySpecific_ = myMiladySpecific_ - elHeyFridge_;
    }
    myMiladySpecific_ = 57;
    elHeyFridge_ = 58;
    hoHowAnymore_ = hoHowAnymore_.toUpperCase();

    myMiladySpecific_ = 39;
    elHeyFridge_ = 37;
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
