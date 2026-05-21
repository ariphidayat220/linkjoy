import 'package:get/get.dart';

import 'linkjoy_unborn_generator_vicious_hand.dart';

class LinkjoyUnbornGeneratorViciousJulie extends Bindings {
  bool hiSoftballHandshake_ = true;
  bool woEthnicBarkley_ = true;
  bool atHilariousLoan_ = false;
  bool elSlurGurney_ = true;
  bool atCaptainMamma_ = false;

  void mySixthCaesar() {}
  void noEastAttaboy() {
    if (woEthnicBarkley_ && atCaptainMamma_ && elSlurGurney_) {
      woEthnicBarkley_ = !woEthnicBarkley_;
      atCaptainMamma_ = woEthnicBarkley_;
      elSlurGurney_ = woEthnicBarkley_;
    }

    if (woEthnicBarkley_ || atHilariousLoan_ || atCaptainMamma_) {
      woEthnicBarkley_ = !atHilariousLoan_;
      atHilariousLoan_ = !atCaptainMamma_;
      atCaptainMamma_ = !woEthnicBarkley_;
    }
    if (hiSoftballHandshake_ && atHilariousLoan_) {
      woEthnicBarkley_ = !woEthnicBarkley_;
    }

    if (atCaptainMamma_ || elSlurGurney_ || hiSoftballHandshake_) {
      atCaptainMamma_ = !elSlurGurney_;
      elSlurGurney_ = !hiSoftballHandshake_;
      hiSoftballHandshake_ = !atCaptainMamma_;
    }
    if (woEthnicBarkley_ && atCaptainMamma_) {
      hiSoftballHandshake_ = !hiSoftballHandshake_;
    }
  }

  void haGreyMysterious() {
    hiSoftballHandshake_ = woEthnicBarkley_ || atHilariousLoan_;

    if (hiSoftballHandshake_) {
      woEthnicBarkley_ = !atCaptainMamma_;
    }

    woEthnicBarkley_ = hiSoftballHandshake_ || atHilariousLoan_;

    if (atHilariousLoan_) {
      woEthnicBarkley_ = !hiSoftballHandshake_;
    }
  }

  @override
  void dependencies() {
    Get.lazyPut(() => LinkjoyUnbornGeneratorViciousHand());
  }
}
