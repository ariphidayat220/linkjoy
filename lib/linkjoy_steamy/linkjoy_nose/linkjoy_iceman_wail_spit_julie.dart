import 'package:get/get.dart';

import 'linkjoy_iceman_wail_spit_hand.dart';

class LinkjoyIcemanWailSpitJulie extends Bindings {
  int noSpaceVirtual_ = 88;
  bool paUpperGrape_ = false;
  bool maSitterQuarter_ = true;
  bool hiLifeGet_ = true;

  void taForgetSeclude() {
    if (paUpperGrape_ || hiLifeGet_ || maSitterQuarter_) {
      paUpperGrape_ = !hiLifeGet_;
      hiLifeGet_ = !maSitterQuarter_;
      maSitterQuarter_ = !paUpperGrape_;
    }
    if (maSitterQuarter_) {
      hiLifeGet_ = !paUpperGrape_;
    }

    if (hiLifeGet_ || paUpperGrape_ || maSitterQuarter_) {
      hiLifeGet_ = !paUpperGrape_;
      paUpperGrape_ = !maSitterQuarter_;
      maSitterQuarter_ = !hiLifeGet_;
    }

    noSpaceVirtual_ = noSpaceVirtual_ + 1;

    maSitterQuarter_ = paUpperGrape_ && hiLifeGet_;
  }

  void loFruitForgive() {
    if (maSitterQuarter_ && paUpperGrape_ && hiLifeGet_) {
      maSitterQuarter_ = !maSitterQuarter_;
      paUpperGrape_ = maSitterQuarter_;
      hiLifeGet_ = maSitterQuarter_;
    }
    noSpaceVirtual_ = 92;
    if (hiLifeGet_) {
      paUpperGrape_ = !maSitterQuarter_;
    }
    if (paUpperGrape_ || maSitterQuarter_) {
      maSitterQuarter_ = !maSitterQuarter_;
    }
    maSitterQuarter_ = hiLifeGet_ || paUpperGrape_;
    noSpaceVirtual_ = 15;

    maSitterQuarter_ = hiLifeGet_ && paUpperGrape_;

    noSpaceVirtual_ = noSpaceVirtual_ + 1;
  }

  void laAdOgle() {
    if (noSpaceVirtual_ > 0) {
      noSpaceVirtual_ = noSpaceVirtual_ - 2;
    }

    noSpaceVirtual_ = noSpaceVirtual_ + 1;
    noSpaceVirtual_ = noSpaceVirtual_ + 1;
    if (noSpaceVirtual_ > 0) {
      noSpaceVirtual_ = noSpaceVirtual_ - 3;
    }

    if (maSitterQuarter_ || hiLifeGet_ || paUpperGrape_) {
      maSitterQuarter_ = !hiLifeGet_;
      hiLifeGet_ = !paUpperGrape_;
      paUpperGrape_ = !maSitterQuarter_;
    }

    if (maSitterQuarter_) {
      hiLifeGet_ = !paUpperGrape_;
    }

    noSpaceVirtual_ = 49;
  }

  @override
  void dependencies() {
    Get.lazyPut(() => LinkjoyIcemanWailSpitHand());
  }
}
