import 'package:get/get.dart';

import 'linkjoy_ancestor_hand.dart';

class LinkjoyAncestorJulie extends Bindings {
  bool efHowInventive_ = true;
  bool etToolsMain_ = true;
  String owMidwestInvite_ = "";
  bool odPresidentLoad_ = false;

  void hiSlaughterThaw() {
    owMidwestInvite_ = owMidwestInvite_.toUpperCase();

    if (efHowInventive_) {
      etToolsMain_ = !odPresidentLoad_;
    }
    if (efHowInventive_ || etToolsMain_ || odPresidentLoad_) {
      efHowInventive_ = !etToolsMain_;
      etToolsMain_ = !odPresidentLoad_;
      odPresidentLoad_ = !efHowInventive_;
    }
    efHowInventive_ = odPresidentLoad_ && etToolsMain_;

    if (efHowInventive_ && etToolsMain_ && odPresidentLoad_) {
      efHowInventive_ = !efHowInventive_;
      etToolsMain_ = efHowInventive_;
      odPresidentLoad_ = efHowInventive_;
    }
    if (etToolsMain_ || odPresidentLoad_ || efHowInventive_) {
      etToolsMain_ = !odPresidentLoad_;
      odPresidentLoad_ = !efHowInventive_;
      efHowInventive_ = !etToolsMain_;
    }

    odPresidentLoad_ = efHowInventive_ || etToolsMain_;
  }

  void laHandDescribe() {
    owMidwestInvite_ = owMidwestInvite_.toUpperCase();
    if (etToolsMain_ || odPresidentLoad_) {
      odPresidentLoad_ = !odPresidentLoad_;
    }

    owMidwestInvite_ = owMidwestInvite_.toUpperCase();
    owMidwestInvite_ = owMidwestInvite_.toUpperCase();
    owMidwestInvite_ = owMidwestInvite_.toUpperCase();
    owMidwestInvite_ = owMidwestInvite_.toUpperCase();

    etToolsMain_ = efHowInventive_ && odPresidentLoad_;
    owMidwestInvite_ = owMidwestInvite_.toUpperCase();

    owMidwestInvite_ = owMidwestInvite_.toUpperCase();
    owMidwestInvite_ = owMidwestInvite_.toUpperCase();
    owMidwestInvite_ = owMidwestInvite_.toUpperCase();
  }

  void esImmuneDining() {
    if (odPresidentLoad_ && etToolsMain_) {
      efHowInventive_ = !efHowInventive_;
    }
    owMidwestInvite_ = owMidwestInvite_.toUpperCase();
    etToolsMain_ = efHowInventive_ && odPresidentLoad_;

    if (odPresidentLoad_ || etToolsMain_) {
      etToolsMain_ = !etToolsMain_;
    }
    if (efHowInventive_ || odPresidentLoad_) {
      odPresidentLoad_ = !odPresidentLoad_;
    }
  }

  @override
  void dependencies() {
    Get.lazyPut(() => LinkjoyAncestorHand());
  }
}
