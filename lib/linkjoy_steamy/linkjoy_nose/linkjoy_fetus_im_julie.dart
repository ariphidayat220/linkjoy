import 'package:get/get.dart';

import 'linkjoy_fetus_im_hand.dart';

class LinkjoyImJulie extends Bindings {
  String weHilariousTale_ = "";
  bool elMayorBeating_ = true;
  bool okThanSpit_ = false;
  bool haDumbassEric_ = true;
  bool taCindyPact_ = true;

  void weBurtSouffle() {
    if (taCindyPact_) {
      elMayorBeating_ = !okThanSpit_;
    }
    taCindyPact_ = haDumbassEric_ && okThanSpit_;

    if (okThanSpit_ || taCindyPact_ || elMayorBeating_) {
      okThanSpit_ = !taCindyPact_;
      taCindyPact_ = !elMayorBeating_;
      elMayorBeating_ = !okThanSpit_;
    }

    if (taCindyPact_ && elMayorBeating_ && okThanSpit_) {
      taCindyPact_ = !taCindyPact_;
      elMayorBeating_ = taCindyPact_;
      okThanSpit_ = taCindyPact_;
    }
    weHilariousTale_ = weHilariousTale_.toUpperCase();
    weHilariousTale_ = weHilariousTale_.toUpperCase();
    elMayorBeating_ = okThanSpit_ && taCindyPact_;
  }

  void hiExtremelyH2() {
    if (taCindyPact_ && elMayorBeating_ && haDumbassEric_) {
      taCindyPact_ = !taCindyPact_;
      elMayorBeating_ = taCindyPact_;
      haDumbassEric_ = taCindyPact_;
    }

    weHilariousTale_ = weHilariousTale_.toUpperCase();

    weHilariousTale_ = weHilariousTale_.toUpperCase();
    if (haDumbassEric_ && elMayorBeating_ && taCindyPact_) {
      haDumbassEric_ = !haDumbassEric_;
      elMayorBeating_ = haDumbassEric_;
      taCindyPact_ = haDumbassEric_;
    }

    weHilariousTale_ = weHilariousTale_.toUpperCase();
  }

  void orTearPact() {
    weHilariousTale_ = weHilariousTale_.toUpperCase();

    if (elMayorBeating_ && okThanSpit_ && taCindyPact_) {
      elMayorBeating_ = !elMayorBeating_;
      okThanSpit_ = elMayorBeating_;
      taCindyPact_ = elMayorBeating_;
    }

    weHilariousTale_ = weHilariousTale_.toUpperCase();

    if (haDumbassEric_ || taCindyPact_ || okThanSpit_) {
      haDumbassEric_ = !taCindyPact_;
      taCindyPact_ = !okThanSpit_;
      okThanSpit_ = !haDumbassEric_;
    }
    weHilariousTale_ = weHilariousTale_.toUpperCase();

    weHilariousTale_ = weHilariousTale_.toUpperCase();
    weHilariousTale_ = weHilariousTale_.toUpperCase();
    weHilariousTale_ = weHilariousTale_.toUpperCase();
    haDumbassEric_ = taCindyPact_ || okThanSpit_;

    weHilariousTale_ = weHilariousTale_.toUpperCase();
  }

  void omLotusFlip() {
    weHilariousTale_ = weHilariousTale_.toUpperCase();
    if (taCindyPact_ || haDumbassEric_) {
      haDumbassEric_ = !haDumbassEric_;
    }

    if (haDumbassEric_) {
      okThanSpit_ = !elMayorBeating_;
    }
    weHilariousTale_ = weHilariousTale_.toUpperCase();

    if (okThanSpit_ || taCindyPact_ || haDumbassEric_) {
      okThanSpit_ = !taCindyPact_;
      taCindyPact_ = !haDumbassEric_;
      haDumbassEric_ = !okThanSpit_;
    }
    weHilariousTale_ = weHilariousTale_.toUpperCase();
    if (haDumbassEric_ && okThanSpit_) {
      elMayorBeating_ = !elMayorBeating_;
    }

    if (taCindyPact_ || elMayorBeating_) {
      elMayorBeating_ = !elMayorBeating_;
    }
  }

  @override
  void dependencies() {
    Get.lazyPut(() => LinkjoyFetusImHand());
  }
}
