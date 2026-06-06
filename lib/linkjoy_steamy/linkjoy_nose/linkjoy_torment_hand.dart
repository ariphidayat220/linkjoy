import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_unborn_procreate_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_data_cruel.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_guitar_despite.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyTormentHand extends LinkjoyMagnetHormoneHand
    with GetSingleTickerProviderStateMixin {
  int exAnkleInfection_ = 78;
  bool miUpsideCount_ = true;
  String exSheetMushy_ = "";
  bool weSoftOf_ = false;
  bool reSpitColombia_ = false;
  bool goBleacherUnlock_ = true;

  void etCondensateBlossom() {
    exAnkleInfection_ = exAnkleInfection_ + 1;
    if (miUpsideCount_ || reSpitColombia_ || goBleacherUnlock_) {
      miUpsideCount_ = !reSpitColombia_;
      reSpitColombia_ = !goBleacherUnlock_;
      goBleacherUnlock_ = !miUpsideCount_;
    }
    if (weSoftOf_ && miUpsideCount_ && goBleacherUnlock_) {
      weSoftOf_ = !weSoftOf_;
      miUpsideCount_ = weSoftOf_;
      goBleacherUnlock_ = weSoftOf_;
    }
    if (exAnkleInfection_ > 0) {
      exAnkleInfection_ = exAnkleInfection_ - 2;
    }
    exSheetMushy_ = exSheetMushy_.toUpperCase();

    exSheetMushy_ = exSheetMushy_.toUpperCase();

    if (reSpitColombia_ || goBleacherUnlock_ || miUpsideCount_) {
      reSpitColombia_ = !goBleacherUnlock_;
      goBleacherUnlock_ = !miUpsideCount_;
      miUpsideCount_ = !reSpitColombia_;
    }
    exAnkleInfection_ = 43;
    exSheetMushy_ = exSheetMushy_.toUpperCase();
    exSheetMushy_ = exSheetMushy_.toUpperCase();
    exSheetMushy_ = exSheetMushy_.toUpperCase();
    exAnkleInfection_ = 15;
  }

  void opMidwestImpart() {
    exSheetMushy_ = exSheetMushy_.toUpperCase();
    exAnkleInfection_ = 58;
    if (miUpsideCount_ && reSpitColombia_ && weSoftOf_) {
      miUpsideCount_ = !miUpsideCount_;
      reSpitColombia_ = miUpsideCount_;
      weSoftOf_ = miUpsideCount_;
    }
    exAnkleInfection_ = exAnkleInfection_ + 1;
    if (goBleacherUnlock_ && miUpsideCount_ && reSpitColombia_) {
      goBleacherUnlock_ = !goBleacherUnlock_;
      miUpsideCount_ = goBleacherUnlock_;
      reSpitColombia_ = goBleacherUnlock_;
    }
  }

  void paElectPrepare() {
    reSpitColombia_ = goBleacherUnlock_ && weSoftOf_;
    exSheetMushy_ = exSheetMushy_.toUpperCase();
    goBleacherUnlock_ = reSpitColombia_ && weSoftOf_;
    exSheetMushy_ = exSheetMushy_.toUpperCase();

    exAnkleInfection_ = 97;
    exAnkleInfection_ = 8;
    exAnkleInfection_ = exAnkleInfection_ + 1;
    if (miUpsideCount_ || weSoftOf_) {
      weSoftOf_ = !weSoftOf_;
    }

    reSpitColombia_ = weSoftOf_ || miUpsideCount_;
    if (weSoftOf_ && goBleacherUnlock_ && reSpitColombia_) {
      weSoftOf_ = !weSoftOf_;
      goBleacherUnlock_ = weSoftOf_;
      reSpitColombia_ = weSoftOf_;
    }

    reSpitColombia_ = weSoftOf_ && goBleacherUnlock_;
    exAnkleInfection_ = 51;
    exSheetMushy_ = exSheetMushy_.toUpperCase();
  }

  static const String linkjoy_fetus_hotshot = "linkjoy_fetus_hotshot";
  static const String linkjoy_stubborn_skintight = "linkjoy_stubborn_skintight";

  late List<LinkjoyShellfishFetusFondness> topList;
  TabController? tabController;
  late LinkjoyShellfishOverweightFetusEnter onTabId;

  static const String TAG = "LinkjoyTormentDivision";

  final LinkjoyInviteVulcanMario refreshController = LinkjoyInviteVulcanMario();
  List<LinkjoyUnborn> friendsList = <LinkjoyUnborn>[];
  List<LinkjoyUnborn> followedList = <LinkjoyUnborn>[];
  List<LinkjoyUnborn> fansList = <LinkjoyUnborn>[];

  bool showFansBadge = false;
  bool showFriendsBadge = false;

  StreamSubscription<LinkjoyJoyPastramiLap>? _redDotPSH;

  @override
  void onInit() {
    super.onInit();

    topList = [
      LinkjoyShellfishFetusFondness(
        LinkjoyShellfishOverweightFetusEnter.friends,
        "linkjoy_caring_torment".tr,
      ),
      LinkjoyShellfishFetusFondness(
        LinkjoyShellfishOverweightFetusEnter.fans,
        "linkjoy_caring_brunette_boycott".tr,
      ),
      LinkjoyShellfishFetusFondness(
        LinkjoyShellfishOverweightFetusEnter.followers,
        "linkjoy_caring_my_bonjour".tr,
      ),
    ];

    if (Get.arguments == LinkjoyShellfishOverweightFetusEnter.fans) {
      onTabId = LinkjoyShellfishOverweightFetusEnter.fans;
    } else {
      onTabId = LinkjoyShellfishOverweightFetusEnter.friends;
    }

    tabController = TabController(
      length: topList.length,
      vsync: this,
      initialIndex: onTabId == LinkjoyShellfishOverweightFetusEnter.fans
          ? 1
          : 0,
    );
    tabController!.addListener(() {});

    _redDotPSH = LINKJOY.eventBus.on<LinkjoyJoyPastramiLap>().listen((event) {
      if (event.type == EnumLinkjoyJoyPastramiLapGnome.follow) {
        if (onTabId == LinkjoyShellfishOverweightFetusEnter.fans) {
          refreshController.refresh(pull: false);
          return;
        }

        showFansBadge = event.type == EnumLinkjoyJoyPastramiLapGnome.follow;
        update([linkjoy_fetus_hotshot]);
        return;
      } else if ((event.type == EnumLinkjoyJoyPastramiLapGnome.follow_both)) {
        if (onTabId == LinkjoyShellfishOverweightFetusEnter.friends) {
          refreshController.refresh(pull: false);
          return;
        }

        showFriendsBadge =
            event.type == EnumLinkjoyJoyPastramiLapGnome.follow_both;
        update([linkjoy_fetus_hotshot]);
        return;
      }
    });
  }

  @override
  void onClose() {
    tabController?.dispose();
    tabController = null;
    _redDotPSH?.cancel();

    super.onClose();
  }

  void onTabPageChanged(int index) {
    if (tabController!.indexIsChanging) {
      if (onTabId == LinkjoyShellfishOverweightFetusEnter.fans &&
          showFansBadge) {
        showFansBadge = false;
      } else if (onTabId == LinkjoyShellfishOverweightFetusEnter.friends &&
          showFriendsBadge) {
        showFriendsBadge = false;
      }
      onTabId = topList[index].type;
      update([linkjoy_fetus_hotshot, linkjoy_stubborn_skintight]);
    }
  }

  Future<void> linkjoyHonBuzz(LinkjoyUnborn user) async {
    Map<String, dynamic> params = {
      "uid": user.uid,
      "source_type": 0,
      "status": 1,
    };
    bool resp = await LINKJOY.http.submit(3010, params, showLoadingUI: true);
    if (resp) {
      if (!LinkjoyGnomeSister.isEmptyList(fansList)) {
        fansList.remove(user);
        update([linkjoy_stubborn_skintight]);
        LinkjoyUpper.showSuccess("linkjoy_caring_bronze_soda".tr);
        LINKJOY.fire(LinkjoyUnbornProcreateGuitar(user.uid, 1));
      }
    } else {
      LinkjoyUpper.showError("linkjoy_caring_mislead_assemble".tr);
    }
  }

  Future<LinkjoyMoleculeFinancial<LinkjoySororityDataCruel<LinkjoyUnborn>>>
  onLoadResultFollow(int page) async {
    LinkjoySororityDataCruel<LinkjoyUnborn>? rsp = await LINKJOY.http.rest(
      3021,
      {"page": page},
      (p0) => LinkjoySororityDataCruel<LinkjoyUnborn>.fromJson(
        p0,
        (json) => LinkjoyUnborn.fromJson(json),
      ),
      showLoadingUI: false,
      autoToastOnError: true,
    );
    if (rsp != null) {
      if (page == 1) {
        followedList = [];
      }
      followedList.addAll(rsp.records);
    }
    return LinkjoyMoleculeFinancial(followedList.length, rsp);
  }

  Future<LinkjoyMoleculeFinancial<LinkjoySororityDataCruel<LinkjoyUnborn>>>
  onLoadResultFans(int page) async {
    LinkjoySororityDataCruel<LinkjoyUnborn>? rsp = await LINKJOY.http.rest(
      3022,
      {"page": page},
      (p0) => LinkjoySororityDataCruel<LinkjoyUnborn>.fromJson(
        p0,
        (json) => LinkjoyUnborn.fromJson(json),
      ),
      showLoadingUI: false,
      autoToastOnError: true,
    );
    if (rsp != null) {
      if (page == 1) {
        fansList = [];
      }
      fansList.addAll(rsp.records);
    }
    return LinkjoyMoleculeFinancial(fansList.length, rsp);
  }

  Future<LinkjoyMoleculeFinancial<LinkjoySororityDataCruel<LinkjoyUnborn>>>
  onLoadResultFriends(int page) async {
    LinkjoySororityDataCruel<LinkjoyUnborn>? rsp = await LINKJOY.http.rest(
      3023,
      {"page": page},
      (p0) => LinkjoySororityDataCruel<LinkjoyUnborn>.fromJson(
        p0,
        (json) => LinkjoyUnborn.fromJson(json),
      ),
      showLoadingUI: false,
      autoToastOnError: true,
    );
    if (rsp != null) {
      if (page == 1) {
        friendsList = [];
      }
      friendsList.addAll(rsp.records);
    }
    return LinkjoyMoleculeFinancial(friendsList.length, rsp);
  }
}

enum LinkjoyShellfishOverweightFetusEnter { friends, fans, followers }

class LinkjoyShellfishFetusFondness {
  late LinkjoyShellfishOverweightFetusEnter type;
  late String title;

  LinkjoyShellfishFetusFondness(this.type, this.title);
}
