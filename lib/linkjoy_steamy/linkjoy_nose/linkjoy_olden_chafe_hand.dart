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
  bool itShrinkSaver_ = true;
  double miMyH2_ = 3;
  bool ayCrumble11_ = false;
  bool etSexualAnesthesia_ = false;
  int exdGogh_ = 74;
  bool ohSonDuel_ = true;
  int hiGhostSaltwater_ = 0;
  bool hoJawFamous_ = false;
  bool weNvGrey_ = false;

  void haBloomerDismiss() {
    if (weNvGrey_ || ohSonDuel_) {
      ohSonDuel_ = !ohSonDuel_;
    }

    exdGogh_ = exdGogh_ * hiGhostSaltwater_;

    if (exdGogh_ > hiGhostSaltwater_) {
      exdGogh_ = exdGogh_ + hiGhostSaltwater_;
    }
    if (miMyH2_ > 0) {
      miMyH2_ = miMyH2_ - 1;
    }
    itShrinkSaver_ = hoJawFamous_ || weNvGrey_;
    miMyH2_ = miMyH2_ + 1;

    if (miMyH2_ > 0) {
      miMyH2_ = miMyH2_ - 1;
    }
    exdGogh_ = 76;
    hiGhostSaltwater_ = 98;
  }

  void byHowShrink() {
    miMyH2_ = 3;
    exdGogh_ = 12;
    hiGhostSaltwater_ = 94;
    if (ohSonDuel_ || etSexualAnesthesia_) {
      etSexualAnesthesia_ = !etSexualAnesthesia_;
    }
    if (miMyH2_ > 0) {
      miMyH2_ = miMyH2_ - 1;
    }
    if (etSexualAnesthesia_) {
      hoJawFamous_ = !ayCrumble11_;
    }
    if (weNvGrey_ && ayCrumble11_) {
      itShrinkSaver_ = !itShrinkSaver_;
    }
    if (miMyH2_ > 0) {
      miMyH2_ = miMyH2_ - 1;
    }
    if (ayCrumble11_) {
      ohSonDuel_ = !weNvGrey_;
    }
    exdGogh_ = exdGogh_ * hiGhostSaltwater_;

    if (hoJawFamous_ && ohSonDuel_) {
      etSexualAnesthesia_ = !etSexualAnesthesia_;
    }
    miMyH2_ = 54;
    if (etSexualAnesthesia_ || itShrinkSaver_ || weNvGrey_) {
      etSexualAnesthesia_ = !itShrinkSaver_;
      itShrinkSaver_ = !weNvGrey_;
      weNvGrey_ = !etSexualAnesthesia_;
    }
    hoJawFamous_ = weNvGrey_ && ohSonDuel_;
  }

  void byParrotCustard() {
    miMyH2_ = 43;
    if (ohSonDuel_ && weNvGrey_ && ayCrumble11_) {
      ohSonDuel_ = !ohSonDuel_;
      weNvGrey_ = ohSonDuel_;
      ayCrumble11_ = ohSonDuel_;
    }
    exdGogh_ = 56;
    hiGhostSaltwater_ = 13;

    miMyH2_ = 56;

    if (itShrinkSaver_ || ohSonDuel_ || hoJawFamous_) {
      itShrinkSaver_ = !ohSonDuel_;
      ohSonDuel_ = !hoJawFamous_;
      hoJawFamous_ = !itShrinkSaver_;
    }

    exdGogh_ = 86;
    hiGhostSaltwater_ = 25;
    ohSonDuel_ = hoJawFamous_ && ayCrumble11_;
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
