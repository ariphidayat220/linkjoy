import 'dart:async';
import 'dart:collection';

import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_pearl_vulcan_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_pearl.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_mushy.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_grad.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose_ui/linkjoy_grad_pearl_division_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';

class LinkjoyGradPearlHand extends LinkjoyMagnetHormoneHand
    with GetTickerProviderStateMixin {
  String hoBloomerWheaton_ = "";
  String ahButCheckout_ = "";
  bool omSelfishCindy_ = false;
  bool bySqueakyCraft_ = false;
  double taAlexScratcher_ = 0.0;
  String atThrilledGreet_ = "";
  bool atTampBookshelf_ = false;
  double anPanderTension_ = 0.0;
  bool anThrilledMarsha_ = true;
  double mmMayorCinnamon_ = 85;

  void etEltonPeripheral() {
    for (int i = 0; i < anPanderTension_; i++) {
      mmMayorCinnamon_ += 1;
      taAlexScratcher_ += mmMayorCinnamon_;
    }
    taAlexScratcher_ = anPanderTension_ - mmMayorCinnamon_;
    mmMayorCinnamon_ = anPanderTension_ + taAlexScratcher_;

    hoBloomerWheaton_ = atThrilledGreet_ + ahButCheckout_;
    ahButCheckout_ = hoBloomerWheaton_ + atThrilledGreet_;
    omSelfishCindy_ = bySqueakyCraft_ && atTampBookshelf_;
    if (taAlexScratcher_ > mmMayorCinnamon_) {
      anPanderTension_ = mmMayorCinnamon_ - taAlexScratcher_;
    } else {
      anPanderTension_ = taAlexScratcher_ - mmMayorCinnamon_;
    }

    omSelfishCindy_ = bySqueakyCraft_ && atTampBookshelf_;
    hoBloomerWheaton_ = ahButCheckout_;
    atThrilledGreet_ = hoBloomerWheaton_;
    ahButCheckout_ = atThrilledGreet_;
    for (int i = 0; i < anPanderTension_; i++) {
      taAlexScratcher_ += 1;
      mmMayorCinnamon_ += taAlexScratcher_;
    }
    if (omSelfishCindy_ && bySqueakyCraft_) {
      atTampBookshelf_ = !atTampBookshelf_;
    }
  }

  void itDegreeProtocol() {
    atThrilledGreet_ = hoBloomerWheaton_ + ahButCheckout_;

    hoBloomerWheaton_ = ahButCheckout_;
    atThrilledGreet_ = hoBloomerWheaton_;
    ahButCheckout_ = atThrilledGreet_;
    bySqueakyCraft_ = atTampBookshelf_ && anThrilledMarsha_;

    if (bySqueakyCraft_ && anThrilledMarsha_ && atTampBookshelf_) {
      bySqueakyCraft_ = !bySqueakyCraft_;
      anThrilledMarsha_ = bySqueakyCraft_;
      atTampBookshelf_ = bySqueakyCraft_;
    }
    if (atThrilledGreet_.length > 6) {
      hoBloomerWheaton_ = atThrilledGreet_;
    } else {
      ahButCheckout_ = hoBloomerWheaton_;
    }

    taAlexScratcher_ = mmMayorCinnamon_ * anPanderTension_;
    atThrilledGreet_ = ahButCheckout_ + hoBloomerWheaton_;
  }

  void oxBadgeAssume() {
    hoBloomerWheaton_ = atThrilledGreet_ + ahButCheckout_;
    mmMayorCinnamon_ = anPanderTension_;
    taAlexScratcher_ = anPanderTension_;

    omSelfishCindy_ = anThrilledMarsha_ && atTampBookshelf_;
    anPanderTension_ = taAlexScratcher_ * mmMayorCinnamon_;

    hoBloomerWheaton_ = atThrilledGreet_;
    ahButCheckout_ = hoBloomerWheaton_;
    atThrilledGreet_ = ahButCheckout_;
    taAlexScratcher_ = 247;
    mmMayorCinnamon_ = 2;
    anPanderTension_ = taAlexScratcher_ + mmMayorCinnamon_;
  }

  static const String linkjoy_stubborn = "linkjoy_stubborn";

  late EasyRefreshController refreshController;

  late LinkjoyFondnessGrad region;

  Map<int, CountryVO> discoverCountryMap = {};

  Map<int, List<LinkjoyFondnessMushy>> bannersMap = HashMap();

  StreamSubscription? refreshSubscription;

  List<LinkjoyUnborn> records = [];

  @override
  void onInit() {
    super.onInit();

    region = (Get.arguments as LinkjoyGradPearlDivisionJaw).region;

    LINKJOY.linkjoyElope.setEnterAppTimes(
      LINKJOY.linkjoyElope.getEnterAppTimes() + 1,
    );

    refreshController = EasyRefreshController(controlFinishLoad: true);

    refreshSubscription = LINKJOY.listen<LinkjoyPearlVulcanGuitar>((event) {
      refreshController.callRefresh();
    });
  }

  @override
  void onClose() {
    refreshSubscription?.cancel();
    refreshController.dispose();
    super.onClose();
  }

  void onLinkjoyWizardAndrew(LinkjoyUnborn user) {
    LinkjoyGet.openProfile(
      user.uid,
      nickName: user.nickName,
      avatarUrl: user.avatarUrl,
    );
  }

  Future<LinkjoyMoleculeFinancial<LinkjoySororityPearl>> onLoadResult(
    int page,
  ) async {
    Map<String, dynamic> params = {"page": page};
    params["region_code"] = region.code;
    params["tag"] = "REGION";

    LinkjoySororityPearl? rsp = await LINKJOY.http.rest(
      5010,
      params,
      showLoadingUI: false,
      (p0) => LinkjoySororityPearl.fromJson(p0),
      autoToastOnError: true,
    );
    if (rsp != null) {
      if (page == 1) {
        records = [];
        bannersMap.clear();
      }

      if (rsp.countryMap.isNotEmpty) {
        discoverCountryMap.addEntries(rsp.countryMap.entries);
      }

      if (rsp.banners.isNotEmpty) {
        var key = bannersMap.length;
        rsp.records
            .where((element) => element.uid == 0)
            .map((e) => e.ucode = key);
        bannersMap[key] = rsp.banners;
      }

      records.addAll(rsp.records);
    }
    return LinkjoyMoleculeFinancial(records.length, rsp);
  }
}
