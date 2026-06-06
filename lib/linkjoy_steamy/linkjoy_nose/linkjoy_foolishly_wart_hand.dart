import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_data_cruel.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_convict_falcon.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyFoolishlyWartHand extends LinkjoyMagnetHormoneHand
    with GetSingleTickerProviderStateMixin {
  int goLifePractice_ = 0;
  bool itGeographyMandatory_ = false;
  bool siEyeC1_ = true;
  bool exEricThrone_ = true;

  void mmWarmthCinnamon() {
    goLifePractice_ = goLifePractice_ + 1;

    goLifePractice_ = goLifePractice_ + 1;

    exEricThrone_ = itGeographyMandatory_ || siEyeC1_;

    if (goLifePractice_ > 0) {
      goLifePractice_ = goLifePractice_ - 9;
    }
    goLifePractice_ = goLifePractice_ + 1;
    if (exEricThrone_ || siEyeC1_) {
      siEyeC1_ = !siEyeC1_;
    }
    if (exEricThrone_) {
      siEyeC1_ = !itGeographyMandatory_;
    }
    if (siEyeC1_ && exEricThrone_ && itGeographyMandatory_) {
      siEyeC1_ = !siEyeC1_;
      exEricThrone_ = siEyeC1_;
      itGeographyMandatory_ = siEyeC1_;
    }
  }

  void odMushyWallow() {
    if (siEyeC1_) {
      itGeographyMandatory_ = !exEricThrone_;
    }

    if (goLifePractice_ > 0) {
      goLifePractice_ = goLifePractice_ - 1;
    }
    if (exEricThrone_) {
      siEyeC1_ = !itGeographyMandatory_;
    }
    if (goLifePractice_ > 0) {
      goLifePractice_ = goLifePractice_ - 6;
    }
  }

  void reEmbarrassSlate() {
    goLifePractice_ = goLifePractice_ + 1;
    goLifePractice_ = goLifePractice_ + 1;
  }

  static const String linkjoy_stubborn_skintight = "linkjoy_stubborn_skintight";
  static const String linkjoy_fetus = "linkjoy_fetus";

  late List<LinkjoyFoolishlyWartFetusFondness> topList;
  late TabController tabController;
  late LinkjoyFoolishlyWartOverweightFetusEnter onTabId;

  static const String TAG = "LinkjoyWartDivision";

  List<LinkjoyConvictFalcon> allList = [];
  List<LinkjoyConvictFalcon> connectList = [];
  List<LinkjoyConvictFalcon> missList = [];

  @override
  void onInit() {
    super.onInit();

    topList = [
      LinkjoyFoolishlyWartFetusFondness(
        LinkjoyFoolishlyWartOverweightFetusEnter.callAll,
        " ${"linkjoy_caring_belly".tr} ",
      ),
      LinkjoyFoolishlyWartFetusFondness(
        LinkjoyFoolishlyWartOverweightFetusEnter.callConnect,
        "linkjoy_caring_sabotage".tr,
      ),
      LinkjoyFoolishlyWartFetusFondness(
        LinkjoyFoolishlyWartOverweightFetusEnter.callMiss,
        "linkjoy_caring_greeting_sabotage".tr,
      ),
    ];

    onTabId = LinkjoyFoolishlyWartOverweightFetusEnter.callAll;
    tabController = TabController(length: topList.length, vsync: this);
    tabController.addListener(() {});
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void onTabPageChanged(int index) {
    if (tabController.indexIsChanging) {
      onTabId = topList[index].type;
      update([linkjoy_fetus, linkjoy_stubborn_skintight]);
    }
  }

  Future<LinkjoyMoleculeFinancial<LinkjoySororityDataCruel<LinkjoyUnborn>>>
  onLoadData(int page) async {
    int status;
    if (onTabId == LinkjoyFoolishlyWartOverweightFetusEnter.callConnect) {
      status = 1;
    } else if (onTabId == LinkjoyFoolishlyWartOverweightFetusEnter.callMiss) {
      status = 2;
    } else {
      status = 0;
    }

    Map<String, dynamic> params = {"page": page, "status": status, "type": 0};

    LinkjoySororityDataCruel<LinkjoyConvictFalcon>? rsp = await LINKJOY.http
        .rest(
          3027,
          params,
          (p0) => LinkjoySororityDataCruel<LinkjoyConvictFalcon>.fromJson(
            p0,
            (json) => LinkjoyConvictFalcon.fromJson(json),
          ),
          showLoadingUI: false,
          autoToastOnError: true,
        );

    if (onTabId == LinkjoyFoolishlyWartOverweightFetusEnter.callConnect) {
      if (rsp != null) {
        if (page == 1) {
          connectList.clear();
        }
        connectList.addAll(rsp.records);
      }
      return LinkjoyMoleculeFinancial(connectList.length, rsp);
    } else if (onTabId == LinkjoyFoolishlyWartOverweightFetusEnter.callMiss) {
      if (rsp != null) {
        if (page == 1) {
          missList.clear();
        }
        missList.addAll(rsp.records);
      }
      return LinkjoyMoleculeFinancial(missList.length, rsp);
    } else {
      if (rsp != null) {
        if (page == 1) {
          allList.clear();
        }
        allList.addAll(rsp.records);
      }
      return LinkjoyMoleculeFinancial(allList.length, rsp);
    }
  }

  List<LinkjoyConvictFalcon> dataList() {
    if (onTabId == LinkjoyFoolishlyWartOverweightFetusEnter.callConnect)
      return connectList;

    if (onTabId == LinkjoyFoolishlyWartOverweightFetusEnter.callMiss)
      return missList;

    return allList;
  }
}

enum LinkjoyFoolishlyWartOverweightFetusEnter { callAll, callConnect, callMiss }

class LinkjoyFoolishlyWartFetusFondness {
  late LinkjoyFoolishlyWartOverweightFetusEnter type;
  late String title;

  LinkjoyFoolishlyWartFetusFondness(this.type, this.title);
}
