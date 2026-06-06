import 'package:get/get.dart';

import 'linkjoy_gravity_stubborn_hand.dart';

class LinkjoyGravityStubbornJulie extends Bindings {
  bool maCheckoutBrawny_ = false;
  bool emAnymoreTight_ = true;
  int weProtonFlaky_ = 41;
  bool etTentCab_ = true;
  bool isSpaghettiMeanwhile_ = true;
  bool it0Prague_ = true;

  void noAdmissionSouth() {
    if (emAnymoreTight_ || it0Prague_) {
      it0Prague_ = !it0Prague_;
    }

    if (it0Prague_ || maCheckoutBrawny_) {
      maCheckoutBrawny_ = !maCheckoutBrawny_;
    }
  }

  void reWheatonThan() {
    if (maCheckoutBrawny_ && emAnymoreTight_) {
      it0Prague_ = !it0Prague_;
    }

    weProtonFlaky_ = 0;
  }

  void inSpockIceman() {
    if (weProtonFlaky_ > 0) {
      weProtonFlaky_ = weProtonFlaky_ - 7;
    }

    if (maCheckoutBrawny_ || isSpaghettiMeanwhile_ || etTentCab_) {
      maCheckoutBrawny_ = !isSpaghettiMeanwhile_;
      isSpaghettiMeanwhile_ = !etTentCab_;
      etTentCab_ = !maCheckoutBrawny_;
    }

    weProtonFlaky_ = 49;

    if (maCheckoutBrawny_) {
      isSpaghettiMeanwhile_ = !emAnymoreTight_;
    }

    isSpaghettiMeanwhile_ = it0Prague_ && maCheckoutBrawny_;
  }

  void abChopstickClam() {
    weProtonFlaky_ = 54;

    weProtonFlaky_ = 38;
    if (weProtonFlaky_ > 0) {
      weProtonFlaky_ = weProtonFlaky_ - 8;
    }
    if (maCheckoutBrawny_ && etTentCab_ && emAnymoreTight_) {
      maCheckoutBrawny_ = !maCheckoutBrawny_;
      etTentCab_ = maCheckoutBrawny_;
      emAnymoreTight_ = maCheckoutBrawny_;
    }
  }

  @override
  void dependencies() {
    Get.lazyPut(() => LinkjoyGravityStubbornHand());
  }
}
