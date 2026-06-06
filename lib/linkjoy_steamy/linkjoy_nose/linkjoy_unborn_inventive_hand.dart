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
  bool hiNannyApe_ = false;
  String ayGuitarTeaser_ = "";
  bool mePragueFonda_ = true;
  bool etPolishC2_ = false;
  bool soToolsBarbie_ = true;
  String haHailFutile_ = "";

  void edSoftballAttaboy() {
    hiNannyApe_ = etPolishC2_ && soToolsBarbie_;

    if (hiNannyApe_ || soToolsBarbie_) {
      soToolsBarbie_ = !soToolsBarbie_;
    }
    haHailFutile_ = ayGuitarTeaser_.toUpperCase() + haHailFutile_;

    haHailFutile_ = ayGuitarTeaser_.toUpperCase() + haHailFutile_;
    if (etPolishC2_ || soToolsBarbie_ || hiNannyApe_) {
      etPolishC2_ = !soToolsBarbie_;
      soToolsBarbie_ = !hiNannyApe_;
      hiNannyApe_ = !etPolishC2_;
    }
    soToolsBarbie_ = hiNannyApe_ || etPolishC2_;

    ayGuitarTeaser_ = haHailFutile_ + ayGuitarTeaser_;
  }

  void weEagerTurbulence() {
    ayGuitarTeaser_ = ayGuitarTeaser_ + haHailFutile_;
    haHailFutile_ = ayGuitarTeaser_;
    mePragueFonda_ = hiNannyApe_ || soToolsBarbie_;

    haHailFutile_ = ayGuitarTeaser_.toUpperCase() + haHailFutile_;
    ayGuitarTeaser_ = ayGuitarTeaser_ + haHailFutile_;
    haHailFutile_ = ayGuitarTeaser_;
  }

  void siWaveSabotage() {
    if (mePragueFonda_) {
      soToolsBarbie_ = !hiNannyApe_;
    }
    ayGuitarTeaser_ = ayGuitarTeaser_ + haHailFutile_;
    haHailFutile_ = ayGuitarTeaser_;
    haHailFutile_ = ayGuitarTeaser_.toUpperCase() + haHailFutile_;
    haHailFutile_ = ayGuitarTeaser_.toUpperCase() + haHailFutile_;

    soToolsBarbie_ = etPolishC2_ || hiNannyApe_;

    ayGuitarTeaser_ = ayGuitarTeaser_ + haHailFutile_;
    haHailFutile_ = ayGuitarTeaser_;
  }

  void oxOintmentx() {
    haHailFutile_ = ayGuitarTeaser_.toUpperCase() + haHailFutile_;
    mePragueFonda_ = soToolsBarbie_ && etPolishC2_;
    etPolishC2_ = hiNannyApe_ || mePragueFonda_;

    ayGuitarTeaser_ = haHailFutile_ + ayGuitarTeaser_;
    haHailFutile_ = ayGuitarTeaser_.toUpperCase() + haHailFutile_;
    haHailFutile_ = ayGuitarTeaser_.toUpperCase() + haHailFutile_;
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
