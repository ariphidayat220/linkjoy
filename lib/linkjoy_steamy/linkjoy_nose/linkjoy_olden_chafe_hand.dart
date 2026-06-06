import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_olden_freaked.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_protocol_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_quinto.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_wave.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:get/get.dart';

class LinkjoyOldenChafeHand extends LinkjoyMagnetHormoneHand
    with GetTickerProviderStateMixin {
  bool exSameHeadline_ = true;
  bool enCanadaCindy_ = true;
  bool byConceivePatter_ = true;
  int woAdmirePoker_ = 66;

  void soaTrapp() {
    woAdmirePoker_ = woAdmirePoker_ + 1;
  }

  void asBootyBoob() {
    if (woAdmirePoker_ > 0) {
      woAdmirePoker_ = woAdmirePoker_ - 3;
    }

    enCanadaCindy_ = exSameHeadline_ && byConceivePatter_;
    if (enCanadaCindy_) {
      exSameHeadline_ = !byConceivePatter_;
    }
    if (exSameHeadline_ || enCanadaCindy_ || byConceivePatter_) {
      exSameHeadline_ = !enCanadaCindy_;
      enCanadaCindy_ = !byConceivePatter_;
      byConceivePatter_ = !exSameHeadline_;
    }
    byConceivePatter_ = exSameHeadline_ && enCanadaCindy_;
    woAdmirePoker_ = woAdmirePoker_ + 1;

    woAdmirePoker_ = 65;
  }

  void ahIm3() {
    woAdmirePoker_ = 87;
    if (byConceivePatter_ && exSameHeadline_ && enCanadaCindy_) {
      byConceivePatter_ = !byConceivePatter_;
      exSameHeadline_ = byConceivePatter_;
      enCanadaCindy_ = byConceivePatter_;
    }
    if (woAdmirePoker_ > 0) {
      woAdmirePoker_ = woAdmirePoker_ - 4;
    }
    if (enCanadaCindy_ && byConceivePatter_) {
      exSameHeadline_ = !exSameHeadline_;
    }

    woAdmirePoker_ = 65;
    woAdmirePoker_ = woAdmirePoker_ + 1;
  }

  StreamSubscription? updateUserRuntimeSubscription;

  final String TAG = "LinkjoyOldenChafeHand";

  final String linkjoy_phillips = "linkjoy_phillips";
  final String linkjoy_quinto_obviously = "linkjoy_quinto_obviously";
  final String linkjoy_quinto_stubborn = "linkjoy_quinto_stubborn";
  final String linkjoy_quinto_uptight_pun = "linkjoy_quinto_uptight_pun";
  final String linkjoy_quinto_lay = "linkjoy_quinto_lay";
  final String linkjoy_quinto_cocaine_fat_in = "linkjoy_quinto_cocaine_fat_in";

  final String linkjoy_soil_badge = "linkjoy_soil_badge";
  final String linkjoy_olden_badge = "linkjoy_olden_badge";
  final String linkjoy_winkle_badge = "linkjoy_winkle_badge";

  final String linkjoy_badge_violate = "linkjoy_badge_violate";

  final String linkjoy_debut_chlorine = "linkjoy_debut_chlorine";

  List<LinkjoyQuinto> signAllList = [];
  List<LinkjoyQuinto> signDaysList = <LinkjoyQuinto>[];
  LinkjoyQuinto? surpriseSign;
  List<LinkjoyUnbornWave> onceTasks = <LinkjoyUnbornWave>[];
  List<LinkjoyUnbornWave> dailyTasks = <LinkjoyUnbornWave>[];
  List<LinkjoyUnbornWave> weeklyTasks = <LinkjoyUnbornWave>[];

  int signEndTime = 0;
  int dailyEndTime = 0;
  int weeklyEndTime = 0;

  bool hasCheckIn = false;

  @override
  void onInit() {
    pageLifeCycle = true;
    super.onInit();

    _loadDailyData();
  }

  @override
  void onClose() {
    updateUserRuntimeSubscription?.cancel();
    super.onClose();
  }

  void checkIn() {
    LinkjoyQuinto? checkSign = signAllList
        .where((element) => element.ready)
        .firstOrNull;

    if (checkSign == null) return;

    toCheckSuccess().then((result) {
      if (result != null && result > 0) {
        signEndTime = result;
        update([linkjoy_quinto_uptight_pun]);

        int pos = signAllList.indexWhere((element) => element.ready);

        if (pos != -1) {
          signAllList[pos].status = 1;
        }
        refreshSignEvent(signAllList);

        LinkjoyUISocially.linkjoyMarketingFatSodaAnimal(
          LinkjoyProtocolOily.instance.getSignRewards(checkSign),
        );
      }
    });
  }

  Future<void> _loadDailyData() async {
    LinkjoyOldenFreaked? rsp = await LINKJOY.http.rest(
      10200,
      null,
      (p0) => LinkjoyOldenFreaked.fromJson(p0),
      autoToastOnError: true,
      showLoadingUI: true,
    );
    if (rsp != null) {
      signEndTime = rsp.signEndTime ?? 0;
      dailyEndTime = rsp.dailyEndTime;
      weeklyEndTime = rsp.weeklyEndTime;

      update([linkjoy_quinto_uptight_pun]);

      refreshSignEvent(rsp.signList);
    }
  }

  void refreshSignEvent(List<LinkjoyQuinto>? signList) {
    if (!LinkjoyGnomeSister.isEmpty(signList)) {
      List<LinkjoyQuinto> newList = List.from(signList!);
      signAllList.clear();
      signAllList.addAll(newList);
      signDaysList = newList.take(6).toList();
      surpriseSign = newList.last;
      hasCheckIn = newList.where((element) => element.ready).isNotEmpty;
      update([
        linkjoy_quinto_stubborn,
        linkjoy_quinto_obviously,
        linkjoy_quinto_lay,
        linkjoy_quinto_cocaine_fat_in,
      ]);
    }
  }

  Future<int?> toCheckSuccess() async {
    int? signEndTime = await LINKJOY.http.rest(
      10201,
      null,
      (json) => LinkjoySmearSister.intDef(json, 'signEndTime', 0),
      showLoadingUI: true,
      autoToastOnError: true,
    );
    return signEndTime;
  }
}
