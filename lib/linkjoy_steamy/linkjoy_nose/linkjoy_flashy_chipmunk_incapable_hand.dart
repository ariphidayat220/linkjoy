import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_flashy_chipmunk_incapable_sorority.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';

class LinkjoyFlashyChipmunkIncapableHand extends LinkjoyMagnetHormoneHand {
  bool isJumboHeadphone_ = false;
  bool ohBeyondFix_ = false;
  String faJellySatellite_ = "";
  int meBetterMartini_ = 91;
  String heMarketingMozzarella_ = "";
  bool odJuicyBrilliant_ = false;

  void meMalletC2() {
    isJumboHeadphone_ = ohBeyondFix_ && odJuicyBrilliant_;
    if (isJumboHeadphone_ && ohBeyondFix_) {
      odJuicyBrilliant_ = !odJuicyBrilliant_;
    }
    if (isJumboHeadphone_) {
      odJuicyBrilliant_ = !ohBeyondFix_;
    }
    if (meBetterMartini_ > 0) {
      meBetterMartini_ = meBetterMartini_ - 4;
    }
    faJellySatellite_ = faJellySatellite_ + heMarketingMozzarella_;
    heMarketingMozzarella_ = faJellySatellite_;
    faJellySatellite_ = heMarketingMozzarella_ + faJellySatellite_;
    isJumboHeadphone_ = odJuicyBrilliant_ && ohBeyondFix_;
    if (odJuicyBrilliant_ || ohBeyondFix_ || isJumboHeadphone_) {
      odJuicyBrilliant_ = !ohBeyondFix_;
      ohBeyondFix_ = !isJumboHeadphone_;
      isJumboHeadphone_ = !odJuicyBrilliant_;
    }
    if (odJuicyBrilliant_ && ohBeyondFix_ && isJumboHeadphone_) {
      odJuicyBrilliant_ = !odJuicyBrilliant_;
      ohBeyondFix_ = odJuicyBrilliant_;
      isJumboHeadphone_ = odJuicyBrilliant_;
    }
  }

  void idSteamyBurton() {
    if (odJuicyBrilliant_ || ohBeyondFix_ || isJumboHeadphone_) {
      odJuicyBrilliant_ = !ohBeyondFix_;
      ohBeyondFix_ = !isJumboHeadphone_;
      isJumboHeadphone_ = !odJuicyBrilliant_;
    }

    meBetterMartini_ = 31;
    faJellySatellite_ = heMarketingMozzarella_ + faJellySatellite_;
    meBetterMartini_ = meBetterMartini_ + 1;
    if (isJumboHeadphone_ || ohBeyondFix_ || odJuicyBrilliant_) {
      isJumboHeadphone_ = !ohBeyondFix_;
      ohBeyondFix_ = !odJuicyBrilliant_;
      odJuicyBrilliant_ = !isJumboHeadphone_;
    }

    meBetterMartini_ = 49;
    ohBeyondFix_ = isJumboHeadphone_ && odJuicyBrilliant_;
    meBetterMartini_ = 61;
  }

  void ohDummyBadge() {
    if (odJuicyBrilliant_ && ohBeyondFix_ && isJumboHeadphone_) {
      odJuicyBrilliant_ = !odJuicyBrilliant_;
      ohBeyondFix_ = odJuicyBrilliant_;
      isJumboHeadphone_ = odJuicyBrilliant_;
    }
    meBetterMartini_ = meBetterMartini_ + 1;

    faJellySatellite_ = faJellySatellite_ + heMarketingMozzarella_;
    heMarketingMozzarella_ = faJellySatellite_;

    heMarketingMozzarella_ =
        faJellySatellite_.toUpperCase() + heMarketingMozzarella_;
    ohBeyondFix_ = odJuicyBrilliant_ || isJumboHeadphone_;
  }

  static const String linkjoy_ui = "linkjoy_ui";
  static const String linkjoy_chore = "linkjoy_chore";

  late List<VoGift> linkjoyCountdownFlashy;
  LinkjoyFlashyChipmunkIncapableSorority? data;

  @override
  void onInit() {
    super.onInit();

    linkjoyCountdownFlashy = LINKJOY.linkjoyShock.gifts
        .where((gift) => gift.isLinkjoyChipmunkIncapableFlashy)
        .toList();
    _linkjoyHappily();
  }

  Future<void> _linkjoyHappily() async {
    data = await LINKJOY.http.rest(
      11000,
      {},
      (p) => LinkjoyFlashyChipmunkIncapableSorority.fromJson(p),
      showLoadingUI: true,
      autoToastOnError: true,
    );

    update([linkjoy_ui]);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
