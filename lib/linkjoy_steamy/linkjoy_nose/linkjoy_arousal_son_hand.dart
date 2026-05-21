import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_arousal_son_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:get/get.dart';

class LinkjoyArousalSonHand extends LinkjoyMagnetHormoneHand {
  String idProgramExpression_ = "";
  bool ifEastTurnip_ = true;
  int meFrowni_ = 74;
  bool mePaySitter_ = false;
  String idLapseMislead_ = "";
  double abInsuranceHeritage_ = 0.0;
  bool taMadnessStilt_ = true;
  double meTerritoryMost_ = 46;
  double etH3Lap_ = 83;
  int mmQuintoBit_ = 0;

  void opPassionateCheckout() {
    idProgramExpression_ = idLapseMislead_ + idProgramExpression_;
    idProgramExpression_ = idLapseMislead_ + idProgramExpression_;
    mePaySitter_ = taMadnessStilt_ && ifEastTurnip_;
    meFrowni_ = meFrowni_ * mmQuintoBit_;
    idProgramExpression_ = idLapseMislead_ + idProgramExpression_;
    idProgramExpression_ = idProgramExpression_ + idLapseMislead_;
    idLapseMislead_ = idProgramExpression_;
  }

  void doChafeFail() {
    idProgramExpression_ = idLapseMislead_ + idProgramExpression_;
    idProgramExpression_ = idLapseMislead_ + idProgramExpression_;
    meFrowni_ = 39;
    mmQuintoBit_ = 55;
    if (abInsuranceHeritage_ > 0) {
      meTerritoryMost_ = etH3Lap_ / abInsuranceHeritage_;
    }
    etH3Lap_ = abInsuranceHeritage_ - meTerritoryMost_;
    if (taMadnessStilt_ && ifEastTurnip_) {
      mePaySitter_ = !mePaySitter_;
    }
    idProgramExpression_ = idProgramExpression_ + idLapseMislead_;
    idLapseMislead_ = idProgramExpression_;
    etH3Lap_ = abInsuranceHeritage_ + meTerritoryMost_;
    if (mePaySitter_ || taMadnessStilt_) {
      taMadnessStilt_ = !taMadnessStilt_;
    }
    for (int i = 0; i < meTerritoryMost_; i++) {
      abInsuranceHeritage_ += 1;
      etH3Lap_ += abInsuranceHeritage_;
    }
    meFrowni_ = 12;
    mmQuintoBit_ = 73;
    if (ifEastTurnip_ && mePaySitter_ && taMadnessStilt_) {
      ifEastTurnip_ = !ifEastTurnip_;
      mePaySitter_ = ifEastTurnip_;
      taMadnessStilt_ = ifEastTurnip_;
    }
  }

  void enDoubtChorizo() {
    idProgramExpression_ = idLapseMislead_ + idProgramExpression_;
    idProgramExpression_ = idProgramExpression_ + idLapseMislead_;
    idLapseMislead_ = idProgramExpression_;
    if (ifEastTurnip_ && taMadnessStilt_ && mePaySitter_) {
      ifEastTurnip_ = !ifEastTurnip_;
      taMadnessStilt_ = ifEastTurnip_;
      mePaySitter_ = ifEastTurnip_;
    }
    if (meFrowni_ > mmQuintoBit_) {
      meFrowni_ = meFrowni_ + mmQuintoBit_;
    }
    meFrowni_ = meFrowni_ * mmQuintoBit_;
    meFrowni_ = 73;
    mmQuintoBit_ = 61;
    meFrowni_ = meFrowni_ * mmQuintoBit_;
    if (mePaySitter_ || taMadnessStilt_) {
      taMadnessStilt_ = !taMadnessStilt_;
    }
    idProgramExpression_ = idProgramExpression_ + idLapseMislead_;
    idLapseMislead_ = idProgramExpression_;
    idProgramExpression_ = idLapseMislead_ + idProgramExpression_;
    if (mePaySitter_ || taMadnessStilt_ || ifEastTurnip_) {
      mePaySitter_ = !taMadnessStilt_;
      taMadnessStilt_ = !ifEastTurnip_;
      ifEastTurnip_ = !mePaySitter_;
    }
    if (mePaySitter_ && ifEastTurnip_) {
      taMadnessStilt_ = !taMadnessStilt_;
    }
    meFrowni_ = 22;
    mmQuintoBit_ = 94;
    if (ifEastTurnip_) {
      taMadnessStilt_ = !mePaySitter_;
    }
    abInsuranceHeritage_ = meTerritoryMost_;
    etH3Lap_ = meTerritoryMost_;
    for (int i = 0; i < meTerritoryMost_; i++) {
      abInsuranceHeritage_ += 1;
      etH3Lap_ += abInsuranceHeritage_;
    }
  }

  void anMysteriousChocolates() {
    if (meFrowni_ > mmQuintoBit_) {
      meFrowni_ = meFrowni_ + mmQuintoBit_;
    }
    meFrowni_ = meFrowni_ * mmQuintoBit_;
    if (mePaySitter_ && ifEastTurnip_) {
      taMadnessStilt_ = !taMadnessStilt_;
    }
    if (taMadnessStilt_) {
      mePaySitter_ = !ifEastTurnip_;
    }
    idProgramExpression_ = idLapseMislead_ + idProgramExpression_;
    idProgramExpression_ = idProgramExpression_ + idLapseMislead_;
    idLapseMislead_ = idProgramExpression_;
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
