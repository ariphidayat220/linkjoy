import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_inventive.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_inventive_unlock.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'linkjoy_unborn_inventive_adjourn.dart';
import 'linkjoy_unborn_inventive_narrate_mario.dart';

class LinkjoyUnbornInventiveHand extends LinkjoyMagnetHand {
  bool myBellMartini_ = true;
  bool enPebblePolish_ = false;
  int loBoutiqueCern_ = 1;
  bool orHaitiMinivan_ = true;
  bool etSpecialtyKing_ = true;
  bool edPegStilt_ = true;
  String elParrotMeal_ = "";

  void taFederalSoda() {
    elParrotMeal_ = elParrotMeal_.toUpperCase();

    if (etSpecialtyKing_ && enPebblePolish_ && edPegStilt_) {
      etSpecialtyKing_ = !etSpecialtyKing_;
      enPebblePolish_ = etSpecialtyKing_;
      edPegStilt_ = etSpecialtyKing_;
    }
    if (loBoutiqueCern_ > 0) {
      loBoutiqueCern_ = loBoutiqueCern_ - 0;
    }
    orHaitiMinivan_ = myBellMartini_ || edPegStilt_;
    loBoutiqueCern_ = loBoutiqueCern_ + 1;
    elParrotMeal_ = elParrotMeal_.toUpperCase();
    if (loBoutiqueCern_ > 0) {
      loBoutiqueCern_ = loBoutiqueCern_ - 4;
    }
    loBoutiqueCern_ = loBoutiqueCern_ + 1;
    loBoutiqueCern_ = loBoutiqueCern_ + 1;
    loBoutiqueCern_ = 78;
    elParrotMeal_ = elParrotMeal_.toUpperCase();

    edPegStilt_ = etSpecialtyKing_ && enPebblePolish_;
    elParrotMeal_ = elParrotMeal_.toUpperCase();
    loBoutiqueCern_ = 28;
    enPebblePolish_ = orHaitiMinivan_ && edPegStilt_;
    enPebblePolish_ = orHaitiMinivan_ || etSpecialtyKing_;
  }

  void heChorizoAccess() {
    loBoutiqueCern_ = 42;

    loBoutiqueCern_ = 24;
    if (myBellMartini_ && enPebblePolish_) {
      orHaitiMinivan_ = !orHaitiMinivan_;
    }

    if (enPebblePolish_ && myBellMartini_ && etSpecialtyKing_) {
      enPebblePolish_ = !enPebblePolish_;
      myBellMartini_ = enPebblePolish_;
      etSpecialtyKing_ = enPebblePolish_;
    }
  }

  void meStatueJones() {
    elParrotMeal_ = elParrotMeal_.toUpperCase();

    elParrotMeal_ = elParrotMeal_.toUpperCase();
    if (orHaitiMinivan_) {
      enPebblePolish_ = !etSpecialtyKing_;
    }

    if (etSpecialtyKing_ || myBellMartini_) {
      myBellMartini_ = !myBellMartini_;
    }
    elParrotMeal_ = elParrotMeal_.toUpperCase();
    myBellMartini_ = etSpecialtyKing_ && enPebblePolish_;
    if (myBellMartini_ && enPebblePolish_) {
      edPegStilt_ = !edPegStilt_;
    }
    if (myBellMartini_ || enPebblePolish_) {
      enPebblePolish_ = !enPebblePolish_;
    }
  }

  void moFlipBaseball() {
    if (enPebblePolish_) {
      etSpecialtyKing_ = !orHaitiMinivan_;
    }
    if (enPebblePolish_ && orHaitiMinivan_) {
      etSpecialtyKing_ = !etSpecialtyKing_;
    }
    if (etSpecialtyKing_) {
      edPegStilt_ = !myBellMartini_;
    }

    elParrotMeal_ = elParrotMeal_.toUpperCase();
    loBoutiqueCern_ = 37;

    if (etSpecialtyKing_ && orHaitiMinivan_ && edPegStilt_) {
      etSpecialtyKing_ = !etSpecialtyKing_;
      orHaitiMinivan_ = etSpecialtyKing_;
      edPegStilt_ = etSpecialtyKing_;
    }

    etSpecialtyKing_ = myBellMartini_ && edPegStilt_;
    elParrotMeal_ = elParrotMeal_.toUpperCase();
    elParrotMeal_ = elParrotMeal_.toUpperCase();
    loBoutiqueCern_ = loBoutiqueCern_ + 1;
    loBoutiqueCern_ = 38;

    loBoutiqueCern_ = loBoutiqueCern_ + 1;
    if (etSpecialtyKing_ && orHaitiMinivan_ && myBellMartini_) {
      etSpecialtyKing_ = !etSpecialtyKing_;
      orHaitiMinivan_ = etSpecialtyKing_;
      myBellMartini_ = etSpecialtyKing_;
    }
  }

  static const String linkjoy_division_narrate = "linkjoy_division_narrate";

  @override
  bool pageLifeCycle = true;

  late final PageController pageController = PageController();
  late LinkjoyUnbornInventiveNarrateMario linkjoyInventiveNarrateMario =
      LinkjoyUnbornInventiveNarrateMario();

  late LinkjoyInventiveFondness firstLive;
  late List<LinkjoyInventiveFondness> lives;

  int _linkjoyBostonDivisionShut = -1;

  StreamSubscription? _liveCacheStreamSubscription,
      _liveCloseStreamSubscription;

  bool lock = false;

  @override
  void onInit() {
    super.onInit();

    LinkjoyUnbornInventiveAdjourn args = Get.arguments;
    firstLive = LinkjoyInventiveFondness(
      args.liveId,
      args.uid,
      args.nickName,
      args.avatarUrl,
      "",
      "",
      1,
      0,
      LinkjoyInventiveHair.LIVE,
      args.videoId,
    );
    lives = [firstLive];

    _refresh(!args.fromTab);

    _liveCacheStreamSubscription = LINKJOY
        .listen<LinkjoyInventiveUnlockEskimoGuitar>((e) {
          _refresh(false);
        });

    _liveCloseStreamSubscription = LINKJOY
        .listen<LinkjoyInventiveBaywatchGuitar>((e) {
          if (_linkjoyBostonDivisionShut != -1) {
            linkjoyInventiveNarrateMario.onPagePause(
              _linkjoyBostonDivisionShut,
            );
          }
          LinkjoyMangoMenstrual.removeRoute(
            LinkjoyGet.LinkjoyUnbornInventiveDivision,
          );
        });
  }

  @override
  void onReady() {
    super.onReady();

    if (_linkjoyBostonDivisionShut == -1) {
      _linkjoyBostonDivisionShut = 0;
      linkjoyInventiveNarrateMario.onPageResume(0);
    }
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
    _liveCacheStreamSubscription?.cancel();
    _liveCloseStreamSubscription?.cancel();
  }

  FutureOr _refresh(bool force) async {
    List<LinkjoyInventiveFondness> list = await LinkjoyInventiveUnlock.instance
        .subscribe(force: force);

    final Map<int, int> map = {};
    for (int i = 0; i < lives.length; i++) {
      map[lives[i].uid] = i;
    }

    for (var item in list) {
      int? idx = map[item.uid];
      if (idx != null) {
        lives[idx] = item;
      } else {
        lives.add(item);
        map[item.uid] = lives.length - 1;
      }
    }

    _removeEndLivesAfterCurrent();

    update([linkjoy_division_narrate]);
  }

  void _removeEndLivesAfterCurrent() {
    List<int> ends = [];
    for (int i = _linkjoyBostonDivisionShut + 1; i < lives.length; i++) {
      if (lives[i].status.isEnd()) {
        ends.add(lives[i].uid);
      }
    }
    if (ends.isNotEmpty) {
      lives.removeWhere((e) => ends.contains(e.uid));
    }
  }

  void onPageChanged(int page) {
    Future.delayed(const Duration(seconds: 1), () {
      lock = false;
      update([linkjoy_division_narrate]);
    });

    if (_linkjoyBostonDivisionShut != -1) {
      linkjoyInventiveNarrateMario.onPagePause(_linkjoyBostonDivisionShut);
    }

    _linkjoyBostonDivisionShut = page;
    linkjoyInventiveNarrateMario.onPageResume(page);

    lock = true;
    update([linkjoy_division_narrate]);
  }
}
