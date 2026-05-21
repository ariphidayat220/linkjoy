import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_wave_collie_lap_pressure_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_olden_freaked.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_protocol_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_wave.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum TaskType {
  Once,
  Daily,
  Weekly;

  IconData icon() {
    if (this == Once) {
      return Icons.auto_awesome;
    } else if (this == Daily) {
      return Icons.calendar_today;
    } else {
      return Icons.calendar_month_outlined;
    }
  }
}

class LinkjoyWaveCollieHand extends LinkjoyMagnetHormoneHand
    with GetTickerProviderStateMixin {
  bool weCeleryTaco_ = false;
  bool anSameUnborn_ = true;
  double ofVentDust_ = 0.0;
  bool woLapHilarious_ = true;
  bool hoSonStyle_ = false;
  int itCinnamonPresident_ = 28;
  bool mmStoolQuarter_ = false;
  bool woTentUnit_ = false;

  void omSkiAdmission() {
    if (hoSonStyle_ || woTentUnit_ || anSameUnborn_) {
      hoSonStyle_ = !woTentUnit_;
      woTentUnit_ = !anSameUnborn_;
      anSameUnborn_ = !hoSonStyle_;
    }
    ofVentDust_ = 17;

    if (weCeleryTaco_ && woLapHilarious_) {
      anSameUnborn_ = !anSameUnborn_;
    }
  }

  void okClausOhio() {
    itCinnamonPresident_ = 41;
    hoSonStyle_ = mmStoolQuarter_ && woTentUnit_;

    ofVentDust_ = 59;
    if (anSameUnborn_ && hoSonStyle_) {
      mmStoolQuarter_ = !mmStoolQuarter_;
    }

    if (ofVentDust_ > 0) {
      ofVentDust_ = ofVentDust_ - 1;
    }
  }

  void isTextStool() {
    ofVentDust_ = ofVentDust_ + 1;
    ofVentDust_ = 53;

    if (ofVentDust_ > 0) {
      ofVentDust_ = ofVentDust_ - 1;
    }

    ofVentDust_ = 91;
    mmStoolQuarter_ = anSameUnborn_ || woTentUnit_;
    woLapHilarious_ = mmStoolQuarter_ || hoSonStyle_;
    if (itCinnamonPresident_ > 0) {
      itCinnamonPresident_ = itCinnamonPresident_ - 0;
    }
    itCinnamonPresident_ = itCinnamonPresident_ + 1;
  }

  @override
  bool pageLifeCycle = true;

  StreamSubscription? updateUserRuntimeSubscription;

  final String TAG = "LinkjoyOldenChafeHand";

  static const String linkjoy_ui = "linkjoy_ui";

  static const String linkjoy_patter_ghost = "linkjoy_patter_ghost";

  List<LinkjoyUnbornWave> onceTasks = <LinkjoyUnbornWave>[];
  List<LinkjoyUnbornWave> dailyTasks = <LinkjoyUnbornWave>[];
  List<LinkjoyUnbornWave> weeklyTasks = <LinkjoyUnbornWave>[];

  int dailyEndTime = 0;
  int weeklyEndTime = 0;

  bool hasCheckIn = false;

  bool onceTaskTasksDone = false;

  bool isNeedRefreshOnResume = true;

  int totalTasks = 0;
  int totalCompleteTask = 0;
  int totalRewardCoins = 0;
  int totalRewardCards = 0;

  Timer? _linkjoyPatterGhost;

  @override
  void onInit() {
    super.onInit();

    LINKJOY.fire(LinkjoyWaveCollieLapPressureGuitar());

    _loadDailyData();

    _linkjoyPatterGhost = Timer.periodic(const Duration(seconds: 1), (t) {
      update([linkjoy_patter_ghost]);
    });
  }

  @override
  void onResume() {
    super.onResume();
    if (isNeedRefreshOnResume) {
      _loadDailyData();
    } else {
      isNeedRefreshOnResume = true;
    }
  }

  @override
  void onClose() {
    updateUserRuntimeSubscription?.cancel();
    _linkjoyPatterGhost?.cancel();
    _linkjoyPatterGhost = null;

    super.onClose();
  }

  Future<void> _loadDailyData() async {
    LinkjoyOldenFreaked? rsp = await LINKJOY.http.rest(
      10200,
      {"type": 2},
      (p0) => LinkjoyOldenFreaked.fromJson(p0),
      autoToastOnError: true,
      showLoadingUI: true,
    );
    if (rsp != null) {
      dailyEndTime = rsp.dailyEndTime;
      weeklyEndTime = rsp.weeklyEndTime;

      refreshOnceTasksEvent(rsp.onceTasks);
      refreshDailyTasksEvent(rsp.dailyTasks);
      refreshWeeklyTasksEvent(rsp.weeklyTasks);

      totalTasks = 0;
      totalCompleteTask = 0;
      totalRewardCoins = 0;
      totalRewardCards = 0;

      _calcTotal(onceTasks);
      _calcTotal(dailyTasks);
      _calcTotal(weeklyTasks);

      update([linkjoy_ui]);
    }
  }

  void _calcTotal(List<LinkjoyUnbornWave> tasks) {
    totalTasks += tasks.length;
    for (LinkjoyUnbornWave t in tasks) {
      if (t.isCompleted) {
        totalCompleteTask++;
      }

      totalRewardCoins += t.coin;
      totalRewardCards += t.cardVideo + t.cardMatch + t.cardIm + t.cardKey;
    }
  }

  void refreshOnceTasksEvent(List<LinkjoyUnbornWave>? tasks) {
    if (!LinkjoyGnomeSister.isEmpty(tasks)) {
      List<LinkjoyUnbornWave> newList = List.from(tasks!);
      onceTasks.clear();
      onceTasks.addAll(newList);

      onceTaskTasksDone =
          newList.firstWhereOrNull((element) => !element.isCompleted) == null;
    }
  }

  void refreshDailyTasksEvent(List<LinkjoyUnbornWave>? tasks) {
    if (!LinkjoyGnomeSister.isEmpty(tasks)) {
      List<LinkjoyUnbornWave> newList = List.from(tasks!);
      dailyTasks.clear();
      dailyTasks.addAll(newList);
    }
  }

  void refreshWeeklyTasksEvent(List<LinkjoyUnbornWave>? tasks) {
    if (!LinkjoyGnomeSister.isEmpty(tasks)) {
      List<LinkjoyUnbornWave> newList = List.from(tasks!);
      weeklyTasks.clear();
      weeklyTasks.addAll(newList);
    }
  }

  void goTask(LinkjoyUnbornWave item, TaskType taskType) async {
    if (item.isCanClaim) {
      bool result = await LINKJOY.http.submit(
        10202,
        {"id": item.id},
        showLoadingUI: true,
        autoToastOnError: true,
      );

      if (result) {
        LinkjoyUISocially.linkjoyMarketingFatSodaAnimal(
          LinkjoyProtocolOily.instance.getTaskRewards(item),
          title: "linkjoy_caring_wave_collie".tr,
        );
      }

      _loadDailyData();

      return;
    }

    if (item.hasAction()) {
      String goTaskPage = item.getGoTask();

      if (!LinkjoyGnomeSister.isEmpty(goTaskPage)) {
        try {
          LINKJOY.toNamed(goTaskPage);
        } catch (e) {
          e.printError(info: e.toString());
        }
      }
    }
  }
}
