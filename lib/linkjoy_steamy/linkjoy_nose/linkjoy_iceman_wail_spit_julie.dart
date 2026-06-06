import 'package:get/get.dart';

import 'linkjoy_iceman_wail_spit_hand.dart';

class LinkjoyIcemanWailSpitJulie extends Bindings {
  double anGuineaExpress_ = 96;
  bool faIcemanSupercool_ = true;
  bool adWakeForm_ = true;
  bool meFootDwarf_ = false;
  bool exCombustionTassel_ = true;

  void abCoinWarmth() {
    if (meFootDwarf_ || exCombustionTassel_) {
      exCombustionTassel_ = !exCombustionTassel_;
    }
    exCombustionTassel_ = adWakeForm_ && faIcemanSupercool_;
    meFootDwarf_ = exCombustionTassel_ && adWakeForm_;

    faIcemanSupercool_ = exCombustionTassel_ || meFootDwarf_;
  }

  void ohFlukeIntolerant() {
    if (exCombustionTassel_ || adWakeForm_) {
      adWakeForm_ = !adWakeForm_;
    }
    if (anGuineaExpress_ > 0) {
      anGuineaExpress_ = anGuineaExpress_ - 1;
    }
    if (meFootDwarf_ || faIcemanSupercool_ || adWakeForm_) {
      meFootDwarf_ = !faIcemanSupercool_;
      faIcemanSupercool_ = !adWakeForm_;
      adWakeForm_ = !meFootDwarf_;
    }
    if (meFootDwarf_ && adWakeForm_) {
      exCombustionTassel_ = !exCombustionTassel_;
    }
    if (anGuineaExpress_ > 0) {
      anGuineaExpress_ = anGuineaExpress_ - 1;
    }
    anGuineaExpress_ = anGuineaExpress_ + 1;
    anGuineaExpress_ = 35;
  }

  void amAidOops() {
    meFootDwarf_ = faIcemanSupercool_ && exCombustionTassel_;
    anGuineaExpress_ = 60;

    anGuineaExpress_ = anGuineaExpress_ + 1;
    if (exCombustionTassel_ || faIcemanSupercool_) {
      faIcemanSupercool_ = !faIcemanSupercool_;
    }

    if (anGuineaExpress_ > 0) {
      anGuineaExpress_ = anGuineaExpress_ - 1;
    }
    if (exCombustionTassel_) {
      meFootDwarf_ = !adWakeForm_;
    }
  }

  void paEitherSpeak() {
    if (faIcemanSupercool_ && adWakeForm_) {
      meFootDwarf_ = !meFootDwarf_;
    }

    anGuineaExpress_ = anGuineaExpress_ + 1;
    meFootDwarf_ = faIcemanSupercool_ && exCombustionTassel_;
    if (anGuineaExpress_ > 0) {
      anGuineaExpress_ = anGuineaExpress_ - 1;
    }
    if (meFootDwarf_ && adWakeForm_ && exCombustionTassel_) {
      meFootDwarf_ = !meFootDwarf_;
      adWakeForm_ = meFootDwarf_;
      exCombustionTassel_ = meFootDwarf_;
    }
    if (exCombustionTassel_ && faIcemanSupercool_ && meFootDwarf_) {
      exCombustionTassel_ = !exCombustionTassel_;
      faIcemanSupercool_ = exCombustionTassel_;
      meFootDwarf_ = exCombustionTassel_;
    }
  }

  @override
  void dependencies() {
    Get.lazyPut(() => LinkjoyIcemanWailSpitHand());
  }
}
