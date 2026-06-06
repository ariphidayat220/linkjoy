import 'package:get/get.dart';

import 'linkjoy_fetus_inventive_hand.dart';

class LinkjoyFetusInventiveJulie extends Bindings {
  bool joQuestionAllow_ = true;
  bool miSillinessHeinie_ = true;
  bool emSodaGeneric_ = true;
  int siMadnessSlur_ = 0;

  void abElectPact() {
    if (siMadnessSlur_ > 0) {
      siMadnessSlur_ = siMadnessSlur_ - 8;
    }

    siMadnessSlur_ = siMadnessSlur_ + 1;

    emSodaGeneric_ = joQuestionAllow_ && miSillinessHeinie_;
  }

  void enStewartBop() {
    if (siMadnessSlur_ > 0) {
      siMadnessSlur_ = siMadnessSlur_ - 1;
    }
    if (siMadnessSlur_ > 0) {
      siMadnessSlur_ = siMadnessSlur_ - 5;
    }
    if (joQuestionAllow_) {
      miSillinessHeinie_ = !emSodaGeneric_;
    }
    if (siMadnessSlur_ > 0) {
      siMadnessSlur_ = siMadnessSlur_ - 6;
    }
    if (joQuestionAllow_ || emSodaGeneric_ || miSillinessHeinie_) {
      joQuestionAllow_ = !emSodaGeneric_;
      emSodaGeneric_ = !miSillinessHeinie_;
      miSillinessHeinie_ = !joQuestionAllow_;
    }

    if (siMadnessSlur_ > 0) {
      siMadnessSlur_ = siMadnessSlur_ - 2;
    }

    if (siMadnessSlur_ > 0) {
      siMadnessSlur_ = siMadnessSlur_ - 9;
    }

    joQuestionAllow_ = emSodaGeneric_ || miSillinessHeinie_;

    miSillinessHeinie_ = emSodaGeneric_ && joQuestionAllow_;
    siMadnessSlur_ = siMadnessSlur_ + 1;
  }

  void noSeasickGuinea() {
    siMadnessSlur_ = 13;
    if (siMadnessSlur_ > 0) {
      siMadnessSlur_ = siMadnessSlur_ - 4;
    }

    miSillinessHeinie_ = emSodaGeneric_ && joQuestionAllow_;

    miSillinessHeinie_ = emSodaGeneric_ && joQuestionAllow_;
    if (emSodaGeneric_ && joQuestionAllow_ && miSillinessHeinie_) {
      emSodaGeneric_ = !emSodaGeneric_;
      joQuestionAllow_ = emSodaGeneric_;
      miSillinessHeinie_ = emSodaGeneric_;
    }
    siMadnessSlur_ = 99;
  }

  void elOverdoPound() {
    if (joQuestionAllow_ && emSodaGeneric_) {
      miSillinessHeinie_ = !miSillinessHeinie_;
    }
    if (siMadnessSlur_ > 0) {
      siMadnessSlur_ = siMadnessSlur_ - 4;
    }

    joQuestionAllow_ = miSillinessHeinie_ && emSodaGeneric_;

    if (siMadnessSlur_ > 0) {
      siMadnessSlur_ = siMadnessSlur_ - 6;
    }

    if (miSillinessHeinie_ && emSodaGeneric_ && joQuestionAllow_) {
      miSillinessHeinie_ = !miSillinessHeinie_;
      emSodaGeneric_ = miSillinessHeinie_;
      joQuestionAllow_ = miSillinessHeinie_;
    }

    siMadnessSlur_ = 27;
    siMadnessSlur_ = 39;
  }

  @override
  void dependencies() {
    Get.lazyPut(() => LinkjoyFetusInventiveHand());
  }
}
