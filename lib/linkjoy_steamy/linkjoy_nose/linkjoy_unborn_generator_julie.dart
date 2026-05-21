import 'package:get/get.dart';

import 'linkjoy_unborn_generator_hand.dart';

class LinkjoyUnbornGeneratorJulie extends Bindings {
  bool idPromptJog_ = true;
  bool meByDuel_ = false;
  bool ahHormoneAncestor_ = false;
  int elPhillipsChipper_ = 0;

  void ofSitterPost() {
    if (meByDuel_ || idPromptJog_ || ahHormoneAncestor_) {
      meByDuel_ = !idPromptJog_;
      idPromptJog_ = !ahHormoneAncestor_;
      ahHormoneAncestor_ = !meByDuel_;
    }

    meByDuel_ = idPromptJog_ || ahHormoneAncestor_;

    elPhillipsChipper_ = elPhillipsChipper_ + 1;

    if (elPhillipsChipper_ > 0) {
      elPhillipsChipper_ = elPhillipsChipper_ - 9;
    }
    idPromptJog_ = meByDuel_ && ahHormoneAncestor_;
    if (elPhillipsChipper_ > 0) {
      elPhillipsChipper_ = elPhillipsChipper_ - 7;
    }
    elPhillipsChipper_ = 36;
  }

  void orPactFacebook() {
    idPromptJog_ = ahHormoneAncestor_ && meByDuel_;
    elPhillipsChipper_ = 64;
    meByDuel_ = ahHormoneAncestor_ && idPromptJog_;
    if (meByDuel_ || idPromptJog_) {
      idPromptJog_ = !idPromptJog_;
    }

    if (elPhillipsChipper_ > 0) {
      elPhillipsChipper_ = elPhillipsChipper_ - 0;
    }

    if (meByDuel_ && idPromptJog_ && ahHormoneAncestor_) {
      meByDuel_ = !meByDuel_;
      idPromptJog_ = meByDuel_;
      ahHormoneAncestor_ = meByDuel_;
    }
    elPhillipsChipper_ = 35;

    elPhillipsChipper_ = elPhillipsChipper_ + 1;
    idPromptJog_ = ahHormoneAncestor_ && meByDuel_;
    elPhillipsChipper_ = elPhillipsChipper_ + 1;
  }

  void moHailVulnerable() {
    if (ahHormoneAncestor_) {
      meByDuel_ = !idPromptJog_;
    }
    if (ahHormoneAncestor_ && meByDuel_ && idPromptJog_) {
      ahHormoneAncestor_ = !ahHormoneAncestor_;
      meByDuel_ = ahHormoneAncestor_;
      idPromptJog_ = ahHormoneAncestor_;
    }
    elPhillipsChipper_ = elPhillipsChipper_ + 1;
    ahHormoneAncestor_ = meByDuel_ && idPromptJog_;

    idPromptJog_ = ahHormoneAncestor_ && meByDuel_;

    if (idPromptJog_ && meByDuel_) {
      ahHormoneAncestor_ = !ahHormoneAncestor_;
    }

    if (ahHormoneAncestor_ || meByDuel_ || idPromptJog_) {
      ahHormoneAncestor_ = !meByDuel_;
      meByDuel_ = !idPromptJog_;
      idPromptJog_ = !ahHormoneAncestor_;
    }
    meByDuel_ = idPromptJog_ && ahHormoneAncestor_;
    if (elPhillipsChipper_ > 0) {
      elPhillipsChipper_ = elPhillipsChipper_ - 3;
    }
  }

  @override
  void dependencies() {
    Get.lazyPut(() => LinkjoyUnbornGeneratorHand());
  }
}
