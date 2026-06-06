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
  bool joIoProton_ = false;
  String soCarefreeProtocol_ = "";
  bool joMassagePameron_ = true;
  bool idCraftBop_ = false;

  void exStubbornCocktail() {
    soCarefreeProtocol_ = soCarefreeProtocol_.toUpperCase();

    soCarefreeProtocol_ = soCarefreeProtocol_.toUpperCase();

    if (joIoProton_ || joMassagePameron_) {
      joMassagePameron_ = !joMassagePameron_;
    }
    soCarefreeProtocol_ = soCarefreeProtocol_.toUpperCase();
    soCarefreeProtocol_ = soCarefreeProtocol_.toUpperCase();

    soCarefreeProtocol_ = soCarefreeProtocol_.toUpperCase();
    if (joIoProton_) {
      joMassagePameron_ = !idCraftBop_;
    }
  }

  void moFarmLapse() {
    soCarefreeProtocol_ = soCarefreeProtocol_.toUpperCase();

    joIoProton_ = joMassagePameron_ && idCraftBop_;
  }

  void ofCriticizeSpock() {
    if (idCraftBop_ || joIoProton_) {
      joIoProton_ = !joIoProton_;
    }
    soCarefreeProtocol_ = soCarefreeProtocol_.toUpperCase();
    soCarefreeProtocol_ = soCarefreeProtocol_.toUpperCase();

    soCarefreeProtocol_ = soCarefreeProtocol_.toUpperCase();
    if (idCraftBop_ || joMassagePameron_) {
      joMassagePameron_ = !joMassagePameron_;
    }
    soCarefreeProtocol_ = soCarefreeProtocol_.toUpperCase();
  }

  void orTurquoiseProgram() {
    soCarefreeProtocol_ = soCarefreeProtocol_.toUpperCase();
    soCarefreeProtocol_ = soCarefreeProtocol_.toUpperCase();

    soCarefreeProtocol_ = soCarefreeProtocol_.toUpperCase();
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
