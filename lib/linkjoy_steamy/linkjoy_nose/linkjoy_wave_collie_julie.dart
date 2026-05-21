import 'package:get/get.dart';

import 'linkjoy_wave_collie_hand.dart';

class LinkjoyWaveCollieJulie extends Bindings {
  bool taWinkleMidwest_ = true;
  bool beVetoBroadway_ = false;
  double okPersonallyAffordable_ = 0.0;
  bool loStyleGreen_ = true;

  void okSelectTrained() {
    loStyleGreen_ = beVetoBroadway_ && taWinkleMidwest_;
    if (okPersonallyAffordable_ > 0) {
      okPersonallyAffordable_ = okPersonallyAffordable_ - 1;
    }
    okPersonallyAffordable_ = okPersonallyAffordable_ + 1;

    if (beVetoBroadway_ || loStyleGreen_ || taWinkleMidwest_) {
      beVetoBroadway_ = !loStyleGreen_;
      loStyleGreen_ = !taWinkleMidwest_;
      taWinkleMidwest_ = !beVetoBroadway_;
    }

    if (loStyleGreen_ || beVetoBroadway_) {
      beVetoBroadway_ = !beVetoBroadway_;
    }
    if (okPersonallyAffordable_ > 0) {
      okPersonallyAffordable_ = okPersonallyAffordable_ - 1;
    }

    if (loStyleGreen_) {
      taWinkleMidwest_ = !beVetoBroadway_;
    }
  }

  void anFlipShanghai() {
    okPersonallyAffordable_ = okPersonallyAffordable_ + 1;
    if (beVetoBroadway_ && taWinkleMidwest_ && loStyleGreen_) {
      beVetoBroadway_ = !beVetoBroadway_;
      taWinkleMidwest_ = beVetoBroadway_;
      loStyleGreen_ = beVetoBroadway_;
    }
    if (beVetoBroadway_ || loStyleGreen_) {
      loStyleGreen_ = !loStyleGreen_;
    }

    loStyleGreen_ = taWinkleMidwest_ && beVetoBroadway_;

    if (loStyleGreen_ || beVetoBroadway_ || taWinkleMidwest_) {
      loStyleGreen_ = !beVetoBroadway_;
      beVetoBroadway_ = !taWinkleMidwest_;
      taWinkleMidwest_ = !loStyleGreen_;
    }
    if (taWinkleMidwest_) {
      beVetoBroadway_ = !loStyleGreen_;
    }
  }

  void hoSphincterButcher() {
    if (okPersonallyAffordable_ > 0) {
      okPersonallyAffordable_ = okPersonallyAffordable_ - 1;
    }
    beVetoBroadway_ = taWinkleMidwest_ || loStyleGreen_;

    if (taWinkleMidwest_ || beVetoBroadway_) {
      beVetoBroadway_ = !beVetoBroadway_;
    }
  }

  @override
  void dependencies() {
    Get.lazyPut(() => LinkjoyWaveCollieHand());
  }
}
