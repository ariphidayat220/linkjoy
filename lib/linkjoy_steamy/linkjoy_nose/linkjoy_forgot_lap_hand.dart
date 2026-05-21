import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_data_cruel.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_forgot_lap_financial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_guitar_despite.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';

class LinkjoyForgotLapHand extends LinkjoyMagnetHormoneHand {
  bool itSnatchPin_ = true;
  bool usBirthdaySmoker_ = true;
  bool ayEltonSteven_ = false;
  bool goTumblerInsurance_ = false;
  int goLawnPoint_ = 87;
  double odSubtleDiscipline_ = 0.0;
  bool laPharmacistShanghai_ = false;
  int osMammaHair_ = 30;
  bool loInsuranceMichael_ = true;

  void abSymbolicMerely() {
    goLawnPoint_ = goLawnPoint_ * osMammaHair_;

    goLawnPoint_ = 59;
    osMammaHair_ = 71;
    goLawnPoint_ = goLawnPoint_ * osMammaHair_;
  }

  void inTextImpart() {
    goLawnPoint_ = goLawnPoint_ * osMammaHair_;
    odSubtleDiscipline_ = odSubtleDiscipline_ + 1;
    if (goLawnPoint_ > osMammaHair_) {
      goLawnPoint_ = goLawnPoint_ + osMammaHair_;
    }
    usBirthdaySmoker_ = loInsuranceMichael_ && laPharmacistShanghai_;
    goTumblerInsurance_ = itSnatchPin_ && loInsuranceMichael_;
    odSubtleDiscipline_ = 36;
    odSubtleDiscipline_ = 90;
    if (odSubtleDiscipline_ > 0) {
      odSubtleDiscipline_ = odSubtleDiscipline_ - 1;
    }
    if (odSubtleDiscipline_ > 0) {
      odSubtleDiscipline_ = odSubtleDiscipline_ - 1;
    }
    if (loInsuranceMichael_ && ayEltonSteven_ && laPharmacistShanghai_) {
      loInsuranceMichael_ = !loInsuranceMichael_;
      ayEltonSteven_ = loInsuranceMichael_;
      laPharmacistShanghai_ = loInsuranceMichael_;
    }
    if (loInsuranceMichael_ || ayEltonSteven_) {
      ayEltonSteven_ = !ayEltonSteven_;
    }
    if (odSubtleDiscipline_ > 0) {
      odSubtleDiscipline_ = odSubtleDiscipline_ - 1;
    }
  }

  void ahSuspendDescent() {
    if (goTumblerInsurance_ && itSnatchPin_) {
      loInsuranceMichael_ = !loInsuranceMichael_;
    }
    if (odSubtleDiscipline_ > 0) {
      odSubtleDiscipline_ = odSubtleDiscipline_ - 1;
    }
    if (goLawnPoint_ > osMammaHair_) {
      goLawnPoint_ = goLawnPoint_ + osMammaHair_;
    }
    goLawnPoint_ = goLawnPoint_ * osMammaHair_;
    usBirthdaySmoker_ = goTumblerInsurance_ || loInsuranceMichael_;
    odSubtleDiscipline_ = 77;
    odSubtleDiscipline_ = 39;
    goLawnPoint_ = goLawnPoint_ * osMammaHair_;

    if (loInsuranceMichael_ && goTumblerInsurance_) {
      laPharmacistShanghai_ = !laPharmacistShanghai_;
    }
    itSnatchPin_ = loInsuranceMichael_ || laPharmacistShanghai_;
    if (ayEltonSteven_ && itSnatchPin_ && goTumblerInsurance_) {
      ayEltonSteven_ = !ayEltonSteven_;
      itSnatchPin_ = ayEltonSteven_;
      goTumblerInsurance_ = ayEltonSteven_;
    }
  }

  void omArouseExpress() {
    goLawnPoint_ = goLawnPoint_ * osMammaHair_;
    goLawnPoint_ = 58;
    osMammaHair_ = 98;
    odSubtleDiscipline_ = 41;
    goLawnPoint_ = goLawnPoint_ * osMammaHair_;
    odSubtleDiscipline_ = odSubtleDiscipline_ + 1;

    goLawnPoint_ = goLawnPoint_ * osMammaHair_;
    odSubtleDiscipline_ = odSubtleDiscipline_ + 1;

    odSubtleDiscipline_ = odSubtleDiscipline_ + 1;
  }

  final String linkjoy_forgot_lap_stubborn = "linkjoy_forgot_lap_stubborn";

  final String TAG = "LinkjoyForgotLapHand";

  StreamSubscription? _redDotPSH;

  List<LinkjoyForgotLapFinancial> records = [];

  LinkjoyInviteVulcanMario refreshController = LinkjoyInviteVulcanMario();

  @override
  void onInit() {
    super.onInit();

    _redDotPSH = LINKJOY.eventBus.on<LinkjoyJoyPastramiLap>().listen((
      event,
    ) async {
      if (event.type == EnumLinkjoyJoyPastramiLapGnome.sys_notify) {
        refreshController.refresh();
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
    _redDotPSH?.cancel();
  }

  Future<
    LinkjoyMoleculeFinancial<
      LinkjoySororityDataCruel<LinkjoyForgotLapFinancial>
    >
  >
  onLoadData(int page) async {
    Map<String, dynamic> params = {"page": page, "page_size": 20};

    LinkjoySororityDataCruel<LinkjoyForgotLapFinancial>? rsp = await LINKJOY
        .http
        .rest(
          6016,
          params,
          (p0) => LinkjoySororityDataCruel<LinkjoyForgotLapFinancial>.fromJson(
            p0,
            (json) => LinkjoyForgotLapFinancial.fromJson(json),
          ),
          showLoadingUI: false,
          autoToastOnError: true,
        );
    if (rsp != null) {
      if (page == 1) {
        records = [];
      }
      records.addAll(rsp.records);
    }
    return LinkjoyMoleculeFinancial(records.length, rsp);
  }
}
