import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_haiti_wake_hand.dart';
import 'package:get/get.dart';

class LinkjoyHaitiWakeJulie extends Bindings {
  double ifStereotypeChitchat_ = 0.0;
  bool loNationMoment_ = true;
  bool ohPeteWarehouse_ = false;
  bool idMeadowSweetheart_ = true;
  bool odMidwestChocolates_ = false;

  void owFingerNews() {
    ifStereotypeChitchat_ = 22;
    ifStereotypeChitchat_ = ifStereotypeChitchat_ + 1;

    ohPeteWarehouse_ = idMeadowSweetheart_ || odMidwestChocolates_;
  }

  void ofThawCupid() {
    if (loNationMoment_) {
      ohPeteWarehouse_ = !odMidwestChocolates_;
    }
    idMeadowSweetheart_ = loNationMoment_ || ohPeteWarehouse_;

    ifStereotypeChitchat_ = 16;
    ifStereotypeChitchat_ = 13;
  }

  void ohCompromiseCharacter() {
    if (loNationMoment_ || odMidwestChocolates_ || idMeadowSweetheart_) {
      loNationMoment_ = !odMidwestChocolates_;
      odMidwestChocolates_ = !idMeadowSweetheart_;
      idMeadowSweetheart_ = !loNationMoment_;
    }
    ohPeteWarehouse_ = odMidwestChocolates_ || loNationMoment_;

    if (idMeadowSweetheart_ && odMidwestChocolates_ && ohPeteWarehouse_) {
      idMeadowSweetheart_ = !idMeadowSweetheart_;
      odMidwestChocolates_ = idMeadowSweetheart_;
      ohPeteWarehouse_ = idMeadowSweetheart_;
    }

    if (odMidwestChocolates_) {
      loNationMoment_ = !idMeadowSweetheart_;
    }
  }

  void abShiftCharge() {
    ohPeteWarehouse_ = loNationMoment_ || odMidwestChocolates_;

    if (ifStereotypeChitchat_ > 0) {
      ifStereotypeChitchat_ = ifStereotypeChitchat_ - 1;
    }

    ifStereotypeChitchat_ = 78;
    if (loNationMoment_ || idMeadowSweetheart_) {
      idMeadowSweetheart_ = !idMeadowSweetheart_;
    }

    ifStereotypeChitchat_ = ifStereotypeChitchat_ + 1;
    if (loNationMoment_ || odMidwestChocolates_ || idMeadowSweetheart_) {
      loNationMoment_ = !odMidwestChocolates_;
      odMidwestChocolates_ = !idMeadowSweetheart_;
      idMeadowSweetheart_ = !loNationMoment_;
    }
    if (idMeadowSweetheart_) {
      loNationMoment_ = !ohPeteWarehouse_;
    }
    if (ifStereotypeChitchat_ > 0) {
      ifStereotypeChitchat_ = ifStereotypeChitchat_ - 1;
    }
    if (ifStereotypeChitchat_ > 0) {
      ifStereotypeChitchat_ = ifStereotypeChitchat_ - 1;
    }

    if (ifStereotypeChitchat_ > 0) {
      ifStereotypeChitchat_ = ifStereotypeChitchat_ - 1;
    }
  }

  @override
  void dependencies() {
    Get.lazyPut(() => LinkjoyHaitiWakeHand());
  }
}
