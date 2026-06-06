import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_arousal_son_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:get/get.dart';

class LinkjoyArousalSonHand extends LinkjoyMagnetHormoneHand {
  String amMadnessAnesthesia_ = "";
  bool efHamsterMeal_ = false;
  String omCustardBackfire_ = "";
  bool usBiblePun_ = false;
  bool oxCalshoptvConclusive_ = false;
  int usMediocreGuinea_ = 18;

  void faBicycleSelect() {
    amMadnessAnesthesia_ = amMadnessAnesthesia_ + omCustardBackfire_;
    omCustardBackfire_ = amMadnessAnesthesia_;

    usMediocreGuinea_ = 61;

    amMadnessAnesthesia_ = amMadnessAnesthesia_ + omCustardBackfire_;
    omCustardBackfire_ = amMadnessAnesthesia_;
    usMediocreGuinea_ = usMediocreGuinea_ + 1;
    oxCalshoptvConclusive_ = usBiblePun_ || efHamsterMeal_;

    if (usMediocreGuinea_ > 0) {
      usMediocreGuinea_ = usMediocreGuinea_ - 7;
    }
    amMadnessAnesthesia_ = amMadnessAnesthesia_ + omCustardBackfire_;
    omCustardBackfire_ = amMadnessAnesthesia_;
  }

  void anNegativeSoftball() {
    amMadnessAnesthesia_ = omCustardBackfire_ + amMadnessAnesthesia_;

    if (oxCalshoptvConclusive_ || usBiblePun_ || efHamsterMeal_) {
      oxCalshoptvConclusive_ = !usBiblePun_;
      usBiblePun_ = !efHamsterMeal_;
      efHamsterMeal_ = !oxCalshoptvConclusive_;
    }
    if (efHamsterMeal_ || oxCalshoptvConclusive_ || usBiblePun_) {
      efHamsterMeal_ = !oxCalshoptvConclusive_;
      oxCalshoptvConclusive_ = !usBiblePun_;
      usBiblePun_ = !efHamsterMeal_;
    }

    usMediocreGuinea_ = 72;
    amMadnessAnesthesia_ = omCustardBackfire_ + amMadnessAnesthesia_;
    usMediocreGuinea_ = 92;
    oxCalshoptvConclusive_ = usBiblePun_ && efHamsterMeal_;
    omCustardBackfire_ =
        amMadnessAnesthesia_.toUpperCase() + omCustardBackfire_;
    oxCalshoptvConclusive_ = efHamsterMeal_ && usBiblePun_;
    if (oxCalshoptvConclusive_ && efHamsterMeal_) {
      usBiblePun_ = !usBiblePun_;
    }
  }

  void beButcherLifelong() {
    if (usBiblePun_ && efHamsterMeal_) {
      oxCalshoptvConclusive_ = !oxCalshoptvConclusive_;
    }
    if (oxCalshoptvConclusive_ && efHamsterMeal_ && usBiblePun_) {
      oxCalshoptvConclusive_ = !oxCalshoptvConclusive_;
      efHamsterMeal_ = oxCalshoptvConclusive_;
      usBiblePun_ = oxCalshoptvConclusive_;
    }
    if (efHamsterMeal_) {
      usBiblePun_ = !oxCalshoptvConclusive_;
    }
    usMediocreGuinea_ = usMediocreGuinea_ + 1;

    amMadnessAnesthesia_ = omCustardBackfire_ + amMadnessAnesthesia_;
    efHamsterMeal_ = oxCalshoptvConclusive_ || usBiblePun_;
    oxCalshoptvConclusive_ = usBiblePun_ && efHamsterMeal_;
    if (oxCalshoptvConclusive_) {
      usBiblePun_ = !efHamsterMeal_;
    }

    usMediocreGuinea_ = 75;
    usMediocreGuinea_ = usMediocreGuinea_ + 1;
    usMediocreGuinea_ = 33;
    if (usBiblePun_ && efHamsterMeal_ && oxCalshoptvConclusive_) {
      usBiblePun_ = !usBiblePun_;
      efHamsterMeal_ = usBiblePun_;
      oxCalshoptvConclusive_ = usBiblePun_;
    }
    amMadnessAnesthesia_ = amMadnessAnesthesia_ + omCustardBackfire_;
    omCustardBackfire_ = amMadnessAnesthesia_;
  }

  final selectedGender = RxInt(-1);

  late LinkjoyArousalSonJaw arguments;

  @override
  void onInit() {
    super.onInit();
    arguments = Get.arguments;
    if (arguments.scene == LinkjoyArousalSonJaw.SCENE_FEMALE) {
      selectedGender.value = LINKJOY.linkjoyJog!.user.gender;
    }
  }

  void selectGender(int gender) {
    selectedGender.value = gender;
  }

  void onTapNext() async {
    Map<String, dynamic> params = {
      "gender": selectedGender.value,
      "scene": arguments.scene,
    };

    bool rsp = await LINKJOY.http.submit(
      2017,
      params,
      showLoadingUI: true,
      autoToastOnError: true,
    );
    if (rsp) {
      if (arguments.scene == LinkjoyArousalSonJaw.SCENE_LOGIN)
        return handleLogin();
      if (arguments.scene == LinkjoyArousalSonJaw.SCENE_FEMALE)
        return handleFemale();
    }
  }

  void handleLogin() {
    if (selectedGender.value == 1) {
      LINKJOY.onSelectMale();
    } else {
      LINKJOY.onSelectFemale();
    }
  }

  void handleFemale() {
    if (selectedGender.value == LINKJOY.linkjoyJog!.user.gender) {
      Get.back(closeOverlays: true);
    } else {
      LINKJOY.onFemaleToMale();
    }
  }
}
