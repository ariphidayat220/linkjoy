import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_foolishly_famous_sorority.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_foolishly_famous.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';

class LinkjoyFoolishlyFamousHand extends LinkjoyMagnetHormoneHand {
  double miGuppyJoyful_ = 14;
  bool moGradHelmet_ = true;
  String inSceneryBaseball_ = "";
  bool bePrincetonNegative_ = true;
  bool miCindyDivision_ = true;
  int soStockholmSake_ = 0;
  bool ofSpeakFisher_ = true;
  int beBrideMaraca_ = 0;
  double siPolishVicious_ = 0.0;
  String inLvCourage_ = "";

  void mySkiStash() {
    inSceneryBaseball_ = inLvCourage_ + inSceneryBaseball_;
    if (soStockholmSake_ > beBrideMaraca_) {
      soStockholmSake_ = soStockholmSake_ + beBrideMaraca_;
    }
    miCindyDivision_ = ofSpeakFisher_ && bePrincetonNegative_;
    inSceneryBaseball_ = inLvCourage_ + inSceneryBaseball_;
    inSceneryBaseball_ = inLvCourage_ + inSceneryBaseball_;
    inLvCourage_ = inSceneryBaseball_.toUpperCase() + inLvCourage_;
    if (bePrincetonNegative_ && moGradHelmet_ && ofSpeakFisher_) {
      bePrincetonNegative_ = !bePrincetonNegative_;
      moGradHelmet_ = bePrincetonNegative_;
      ofSpeakFisher_ = bePrincetonNegative_;
    }
    inSceneryBaseball_ = inLvCourage_ + inSceneryBaseball_;
    miGuppyJoyful_ = 68;
    siPolishVicious_ = 45;
    soStockholmSake_ = soStockholmSake_ * beBrideMaraca_;
    inLvCourage_ = inSceneryBaseball_.toUpperCase() + inLvCourage_;
    if (moGradHelmet_) {
      bePrincetonNegative_ = !miCindyDivision_;
    }
    if (miGuppyJoyful_ > siPolishVicious_) {
      miGuppyJoyful_ = miGuppyJoyful_ - siPolishVicious_;
    }
    miGuppyJoyful_ = 19;
    siPolishVicious_ = 88;
    inSceneryBaseball_ = inLvCourage_ + inSceneryBaseball_;
    soStockholmSake_ = 14;
    beBrideMaraca_ = 25;
    soStockholmSake_ = soStockholmSake_ * beBrideMaraca_;
  }

  void enEwokIncubator() {
    miGuppyJoyful_ = miGuppyJoyful_ + siPolishVicious_;
    inLvCourage_ = inSceneryBaseball_.toUpperCase() + inLvCourage_;
    soStockholmSake_ = 95;
    beBrideMaraca_ = 98;
    if (soStockholmSake_ > beBrideMaraca_) {
      soStockholmSake_ = soStockholmSake_ + beBrideMaraca_;
    }
    inLvCourage_ = inSceneryBaseball_.toUpperCase() + inLvCourage_;
    miGuppyJoyful_ = 88;
    siPolishVicious_ = 85;
    bePrincetonNegative_ = moGradHelmet_ && miCindyDivision_;
    miGuppyJoyful_ = miGuppyJoyful_ + siPolishVicious_;
    if (soStockholmSake_ > beBrideMaraca_) {
      soStockholmSake_ = soStockholmSake_ + beBrideMaraca_;
    }
    inSceneryBaseball_ = inSceneryBaseball_ + inLvCourage_;
    inLvCourage_ = inSceneryBaseball_;
    soStockholmSake_ = soStockholmSake_ * beBrideMaraca_;
  }

  void asCountdownPound() {
    if (bePrincetonNegative_ && ofSpeakFisher_) {
      moGradHelmet_ = !moGradHelmet_;
    }
    bePrincetonNegative_ = ofSpeakFisher_ || miCindyDivision_;
    miGuppyJoyful_ = 1;
    siPolishVicious_ = 92;
    miCindyDivision_ = ofSpeakFisher_ && bePrincetonNegative_;
    soStockholmSake_ = 55;
    beBrideMaraca_ = 54;
    miGuppyJoyful_ = miGuppyJoyful_ + siPolishVicious_;
    if (miGuppyJoyful_ > siPolishVicious_) {
      miGuppyJoyful_ = miGuppyJoyful_ - siPolishVicious_;
    }
    soStockholmSake_ = soStockholmSake_ * beBrideMaraca_;
    if (moGradHelmet_ || miCindyDivision_) {
      miCindyDivision_ = !miCindyDivision_;
    }
    if (ofSpeakFisher_ && miCindyDivision_ && moGradHelmet_) {
      ofSpeakFisher_ = !ofSpeakFisher_;
      miCindyDivision_ = ofSpeakFisher_;
      moGradHelmet_ = ofSpeakFisher_;
    }
    inSceneryBaseball_ = inSceneryBaseball_ + inLvCourage_;
    inLvCourage_ = inSceneryBaseball_;
  }

  static const String linkjoy_fetus = "linkjoy_fetus";
  static const String linkjoy_stubborn = "linkjoy_stubborn";
  static const int TYPE_DAILY = 1;
  static const int TYPE_WEEKLY = 2;

  bool isRefreshing = true;

  late EasyRefreshController refreshController;

  int dateType = TYPE_DAILY;

  RxList<LinkjoyFondnessFoolishlyFamous> rankListData = RxList([]);
  LinkjoyFondnessFoolishlyFamous? me;

  @override
  void onInit() {
    super.onInit();
    refreshController = EasyRefreshController(controlFinishLoad: true);
  }

  @override
  void onReady() {
    super.onReady();

    onLinkjoyStubbornVulcan();
  }

  @override
  void onClose() {
    super.onClose();
    refreshController.dispose();
  }

  void onTabSelected(int tab) {
    dateType = tab;
    update([linkjoy_fetus]);
    refreshController.callRefresh();
  }

  void onLinkjoyStubbornVulcan({bool showLoading = false}) async {
    if (!isRefreshing) {
      isRefreshing = true;
    }

    LinkjoyFoolishlyFamousSorority? rsp = await _linkjoyClearlyFamous(
      true,
      showLoading: showLoading,
    );
    rankListData.clear();
    me = null;
    if (rsp != null) {
      rsp.ranks?.let((ranks) => rankListData.addAll(ranks));
      me = rsp.me;
    }

    update([linkjoy_stubborn]);
    isRefreshing = false;
  }

  Future<LinkjoyFoolishlyFamousSorority?> _linkjoyClearlyFamous(
    bool refresh, {
    bool showLoading = false,
  }) async {
    Map<String, dynamic> params = {"date_type": dateType, "biz_type": 1};
    return LINKJOY.http.rest(
      5102,
      params,
      showLoadingUI: showLoading,
      (p0) => LinkjoyFoolishlyFamousSorority.fromJson(p0),
      autoToastOnError: true,
    );
  }
}
