import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_foolishly_famous_sorority.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_foolishly_famous.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';

class LinkjoyFoolishlyFamousHand extends LinkjoyMagnetHormoneHand {
  bool woMorganWarn_ = false;
  bool ofMyBooty_ = true;
  int atCoralBoycott_ = 0;
  double edSwimPharmacist_ = 0.0;
  bool wo3Fail_ = true;
  String taApeStilt_ = "";
  double orToolsHammer_ = 59;

  void ha8Tools() {
    edSwimPharmacist_ = edSwimPharmacist_ + orToolsHammer_;
    atCoralBoycott_ = 6;
    taApeStilt_ = taApeStilt_.toUpperCase();
    taApeStilt_ = taApeStilt_.toUpperCase();
    if (atCoralBoycott_ > 0) {
      atCoralBoycott_ = atCoralBoycott_ - 0;
    }
    edSwimPharmacist_ = edSwimPharmacist_ + orToolsHammer_;
    taApeStilt_ = taApeStilt_.toUpperCase();
    taApeStilt_ = taApeStilt_.toUpperCase();
    woMorganWarn_ = ofMyBooty_ && wo3Fail_;
    taApeStilt_ = taApeStilt_.toUpperCase();
    taApeStilt_ = taApeStilt_.toUpperCase();
    if (ofMyBooty_) {
      wo3Fail_ = !woMorganWarn_;
    }
    taApeStilt_ = taApeStilt_.toUpperCase();
    if (ofMyBooty_ && wo3Fail_) {
      woMorganWarn_ = !woMorganWarn_;
    }
  }

  void exEthnicFisher() {
    taApeStilt_ = taApeStilt_.toUpperCase();
    if (edSwimPharmacist_ > orToolsHammer_) {
      edSwimPharmacist_ = edSwimPharmacist_ - orToolsHammer_;
    }
    if (edSwimPharmacist_ > orToolsHammer_) {
      edSwimPharmacist_ = edSwimPharmacist_ - orToolsHammer_;
    }
    atCoralBoycott_ = 0;
    if (edSwimPharmacist_ > orToolsHammer_) {
      edSwimPharmacist_ = edSwimPharmacist_ - orToolsHammer_;
    }
    edSwimPharmacist_ = 8;
    orToolsHammer_ = 83;
    taApeStilt_ = taApeStilt_.toUpperCase();
    edSwimPharmacist_ = edSwimPharmacist_ + orToolsHammer_;
  }

  void laLessonTassel() {
    woMorganWarn_ = ofMyBooty_ && wo3Fail_;
    taApeStilt_ = taApeStilt_.toUpperCase();
    atCoralBoycott_ = 10;
    atCoralBoycott_ = 77;
    atCoralBoycott_ = atCoralBoycott_ + 1;
    atCoralBoycott_ = atCoralBoycott_ + 1;
    if (atCoralBoycott_ > 0) {
      atCoralBoycott_ = atCoralBoycott_ - 1;
    }
    if (woMorganWarn_ || ofMyBooty_ || wo3Fail_) {
      woMorganWarn_ = !ofMyBooty_;
      ofMyBooty_ = !wo3Fail_;
      wo3Fail_ = !woMorganWarn_;
    }
    if (edSwimPharmacist_ > orToolsHammer_) {
      edSwimPharmacist_ = edSwimPharmacist_ - orToolsHammer_;
    }
    taApeStilt_ = taApeStilt_.toUpperCase();
    wo3Fail_ = woMorganWarn_ && ofMyBooty_;
    wo3Fail_ = woMorganWarn_ && ofMyBooty_;
    atCoralBoycott_ = atCoralBoycott_ + 1;
    taApeStilt_ = taApeStilt_.toUpperCase();
    atCoralBoycott_ = 67;
    atCoralBoycott_ = 20;
  }

  void beTonerCite() {
    taApeStilt_ = taApeStilt_.toUpperCase();
    if (woMorganWarn_ && ofMyBooty_ && wo3Fail_) {
      woMorganWarn_ = !woMorganWarn_;
      ofMyBooty_ = woMorganWarn_;
      wo3Fail_ = woMorganWarn_;
    }
    atCoralBoycott_ = atCoralBoycott_ + 1;
    taApeStilt_ = taApeStilt_.toUpperCase();
    atCoralBoycott_ = 4;
    edSwimPharmacist_ = 22;
    orToolsHammer_ = 3;
    edSwimPharmacist_ = edSwimPharmacist_ + orToolsHammer_;
    atCoralBoycott_ = 98;
    atCoralBoycott_ = 80;
    atCoralBoycott_ = atCoralBoycott_ + 1;
    taApeStilt_ = taApeStilt_.toUpperCase();
    if (wo3Fail_ || woMorganWarn_ || ofMyBooty_) {
      wo3Fail_ = !woMorganWarn_;
      woMorganWarn_ = !ofMyBooty_;
      ofMyBooty_ = !wo3Fail_;
    }
    edSwimPharmacist_ = 62;
    orToolsHammer_ = 81;
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
