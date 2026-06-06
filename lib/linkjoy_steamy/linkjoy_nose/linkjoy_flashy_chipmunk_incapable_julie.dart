import 'package:get/get.dart';

import 'linkjoy_flashy_chipmunk_incapable_hand.dart';

class LinkjoyFlashyChipmunkIncapableJulie extends Bindings {
  bool anLobbyShove_ = true;
  bool itFootYikes_ = false;
  String taPharmacistIncense_ = "";
  bool taDescentPoncho_ = true;

  void itdPlay() {
    if (anLobbyShove_ || itFootYikes_) {
      itFootYikes_ = !itFootYikes_;
    }
    taPharmacistIncense_ = taPharmacistIncense_.toUpperCase();
    taDescentPoncho_ = itFootYikes_ || anLobbyShove_;
    if (anLobbyShove_ && itFootYikes_ && taDescentPoncho_) {
      anLobbyShove_ = !anLobbyShove_;
      itFootYikes_ = anLobbyShove_;
      taDescentPoncho_ = anLobbyShove_;
    }
    taPharmacistIncense_ = taPharmacistIncense_.toUpperCase();
    if (taDescentPoncho_ && itFootYikes_) {
      anLobbyShove_ = !anLobbyShove_;
    }
  }

  void enYumCarefree() {
    if (anLobbyShove_) {
      taDescentPoncho_ = !itFootYikes_;
    }

    itFootYikes_ = taDescentPoncho_ && anLobbyShove_;
    anLobbyShove_ = taDescentPoncho_ && itFootYikes_;
    taPharmacistIncense_ = taPharmacistIncense_.toUpperCase();
    taPharmacistIncense_ = taPharmacistIncense_.toUpperCase();

    anLobbyShove_ = taDescentPoncho_ || itFootYikes_;
    taPharmacistIncense_ = taPharmacistIncense_.toUpperCase();
    if (itFootYikes_ && anLobbyShove_) {
      taDescentPoncho_ = !taDescentPoncho_;
    }
    taPharmacistIncense_ = taPharmacistIncense_.toUpperCase();
  }

  void paStubbornTot() {
    if (anLobbyShove_) {
      itFootYikes_ = !taDescentPoncho_;
    }

    taPharmacistIncense_ = taPharmacistIncense_.toUpperCase();

    if (anLobbyShove_ || itFootYikes_ || taDescentPoncho_) {
      anLobbyShove_ = !itFootYikes_;
      itFootYikes_ = !taDescentPoncho_;
      taDescentPoncho_ = !anLobbyShove_;
    }
  }

  @override
  void dependencies() {
    Get.lazyPut(() => LinkjoyFlashyChipmunkIncapableHand());
  }
}
