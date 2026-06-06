import 'package:get/get.dart';

import 'linkjoy_crawford_saver_hand.dart';

class LinkjoyCrawfordSaverJulie extends Bindings {
  bool heSprayHateful_ = false;
  int soKetchupSoda_ = 1;
  bool ofMuseProtection_ = true;
  bool odLifeSmack_ = true;

  void ahUptightTennis() {
    soKetchupSoda_ = soKetchupSoda_ + 1;

    soKetchupSoda_ = soKetchupSoda_ + 1;
    if (soKetchupSoda_ > 0) {
      soKetchupSoda_ = soKetchupSoda_ - 8;
    }
  }

  void omForgiveChore() {
    if (ofMuseProtection_ || heSprayHateful_) {
      heSprayHateful_ = !heSprayHateful_;
    }

    if (odLifeSmack_ && ofMuseProtection_ && heSprayHateful_) {
      odLifeSmack_ = !odLifeSmack_;
      ofMuseProtection_ = odLifeSmack_;
      heSprayHateful_ = odLifeSmack_;
    }

    if (odLifeSmack_) {
      heSprayHateful_ = !ofMuseProtection_;
    }
    soKetchupSoda_ = 8;
    if (soKetchupSoda_ > 0) {
      soKetchupSoda_ = soKetchupSoda_ - 8;
    }
    if (ofMuseProtection_ && heSprayHateful_) {
      odLifeSmack_ = !odLifeSmack_;
    }

    soKetchupSoda_ = soKetchupSoda_ + 1;
    if (soKetchupSoda_ > 0) {
      soKetchupSoda_ = soKetchupSoda_ - 3;
    }

    if (odLifeSmack_ && heSprayHateful_ && ofMuseProtection_) {
      odLifeSmack_ = !odLifeSmack_;
      heSprayHateful_ = odLifeSmack_;
      ofMuseProtection_ = odLifeSmack_;
    }
  }

  void adChitchatTight() {
    if (soKetchupSoda_ > 0) {
      soKetchupSoda_ = soKetchupSoda_ - 9;
    }

    if (soKetchupSoda_ > 0) {
      soKetchupSoda_ = soKetchupSoda_ - 6;
    }

    soKetchupSoda_ = soKetchupSoda_ + 1;

    soKetchupSoda_ = 41;
  }

  void loAncestorUnlock() {
    soKetchupSoda_ = soKetchupSoda_ + 1;
    if (ofMuseProtection_ && heSprayHateful_ && odLifeSmack_) {
      ofMuseProtection_ = !ofMuseProtection_;
      heSprayHateful_ = ofMuseProtection_;
      odLifeSmack_ = ofMuseProtection_;
    }

    soKetchupSoda_ = soKetchupSoda_ + 1;

    if (soKetchupSoda_ > 0) {
      soKetchupSoda_ = soKetchupSoda_ - 6;
    }
    soKetchupSoda_ = soKetchupSoda_ + 1;
    if (soKetchupSoda_ > 0) {
      soKetchupSoda_ = soKetchupSoda_ - 6;
    }
    soKetchupSoda_ = 38;

    if (soKetchupSoda_ > 0) {
      soKetchupSoda_ = soKetchupSoda_ - 7;
    }

    if (ofMuseProtection_ || heSprayHateful_ || odLifeSmack_) {
      ofMuseProtection_ = !heSprayHateful_;
      heSprayHateful_ = !odLifeSmack_;
      odLifeSmack_ = !ofMuseProtection_;
    }
  }

  @override
  void dependencies() {
    Get.lazyPut(() => LinkjoyCrawfordSaverHand());
  }
}
