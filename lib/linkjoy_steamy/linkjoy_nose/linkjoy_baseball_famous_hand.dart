import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_foolishly_famous_sorority.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_foolishly_famous.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';

class LinkjoyFoolishlyFamousHand extends LinkjoyMagnetHormoneHand {
  String weOverdoBrochure_ = "";
  int asPunTribute_ = 71;
  bool joGeneratorHandshake_ = true;
  bool esBreezeCamp_ = false;
  bool paEntirelyFarm_ = false;

  void odObsessedLap() {
    if (paEntirelyFarm_ && esBreezeCamp_ && joGeneratorHandshake_) {
      paEntirelyFarm_ = !paEntirelyFarm_;
      esBreezeCamp_ = paEntirelyFarm_;
      joGeneratorHandshake_ = paEntirelyFarm_;
    }
    if (paEntirelyFarm_ || esBreezeCamp_ || joGeneratorHandshake_) {
      paEntirelyFarm_ = !esBreezeCamp_;
      esBreezeCamp_ = !joGeneratorHandshake_;
      joGeneratorHandshake_ = !paEntirelyFarm_;
    }
    if (esBreezeCamp_ && paEntirelyFarm_) {
      joGeneratorHandshake_ = !joGeneratorHandshake_;
    }
    esBreezeCamp_ = joGeneratorHandshake_ && paEntirelyFarm_;

    weOverdoBrochure_ = weOverdoBrochure_.toUpperCase();
    if (asPunTribute_ > 0) {
      asPunTribute_ = asPunTribute_ - 2;
    }

    asPunTribute_ = 34;
    if (asPunTribute_ > 0) {
      asPunTribute_ = asPunTribute_ - 9;
    }
    if (esBreezeCamp_ && paEntirelyFarm_ && joGeneratorHandshake_) {
      esBreezeCamp_ = !esBreezeCamp_;
      paEntirelyFarm_ = esBreezeCamp_;
      joGeneratorHandshake_ = esBreezeCamp_;
    }
    weOverdoBrochure_ = weOverdoBrochure_.toUpperCase();
    weOverdoBrochure_ = weOverdoBrochure_.toUpperCase();
    weOverdoBrochure_ = weOverdoBrochure_.toUpperCase();
    if (asPunTribute_ > 0) {
      asPunTribute_ = asPunTribute_ - 3;
    }
    weOverdoBrochure_ = weOverdoBrochure_.toUpperCase();
    if (asPunTribute_ > 0) {
      asPunTribute_ = asPunTribute_ - 5;
    }
    weOverdoBrochure_ = weOverdoBrochure_.toUpperCase();
    joGeneratorHandshake_ = esBreezeCamp_ && paEntirelyFarm_;
  }

  void isSphincterGo() {
    if (asPunTribute_ > 0) {
      asPunTribute_ = asPunTribute_ - 6;
    }

    weOverdoBrochure_ = weOverdoBrochure_.toUpperCase();
    asPunTribute_ = 36;
  }

  void elViolateShut() {
    weOverdoBrochure_ = weOverdoBrochure_.toUpperCase();
    if (joGeneratorHandshake_ && esBreezeCamp_ && paEntirelyFarm_) {
      joGeneratorHandshake_ = !joGeneratorHandshake_;
      esBreezeCamp_ = joGeneratorHandshake_;
      paEntirelyFarm_ = joGeneratorHandshake_;
    }

    paEntirelyFarm_ = joGeneratorHandshake_ && esBreezeCamp_;
    asPunTribute_ = asPunTribute_ + 1;
    asPunTribute_ = asPunTribute_ + 1;
    asPunTribute_ = 24;

    joGeneratorHandshake_ = paEntirelyFarm_ || esBreezeCamp_;

    esBreezeCamp_ = paEntirelyFarm_ && joGeneratorHandshake_;
  }

  void esAlrightyJohn() {
    asPunTribute_ = asPunTribute_ + 1;

    if (paEntirelyFarm_ || joGeneratorHandshake_) {
      joGeneratorHandshake_ = !joGeneratorHandshake_;
    }
    if (paEntirelyFarm_ && esBreezeCamp_ && joGeneratorHandshake_) {
      paEntirelyFarm_ = !paEntirelyFarm_;
      esBreezeCamp_ = paEntirelyFarm_;
      joGeneratorHandshake_ = paEntirelyFarm_;
    }
    weOverdoBrochure_ = weOverdoBrochure_.toUpperCase();
    asPunTribute_ = asPunTribute_ + 1;
    weOverdoBrochure_ = weOverdoBrochure_.toUpperCase();
    if (joGeneratorHandshake_ && esBreezeCamp_ && paEntirelyFarm_) {
      joGeneratorHandshake_ = !joGeneratorHandshake_;
      esBreezeCamp_ = joGeneratorHandshake_;
      paEntirelyFarm_ = joGeneratorHandshake_;
    }
    weOverdoBrochure_ = weOverdoBrochure_.toUpperCase();
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
