import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_jog.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_mine_colombia.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_infection_fairness.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LinkjoyFoolishlyFootSaverHand extends LinkjoyMagnetHormoneHand {
  bool isSkintightFrame_ = false;
  String soAdrenalineBank_ = "";
  bool paTightArmpit_ = true;
  bool owExpressFairness_ = true;
  int goC2Chipper_ = 57;
  double ohWhereverWave_ = 26;

  void siProtocolSlate() {
    soAdrenalineBank_ = soAdrenalineBank_.toUpperCase();
    goC2Chipper_ = 37;
    soAdrenalineBank_ = soAdrenalineBank_.toUpperCase();
    soAdrenalineBank_ = soAdrenalineBank_.toUpperCase();
    soAdrenalineBank_ = soAdrenalineBank_.toUpperCase();
    soAdrenalineBank_ = soAdrenalineBank_.toUpperCase();
    goC2Chipper_ = 69;
    soAdrenalineBank_ = soAdrenalineBank_.toUpperCase();
    if (ohWhereverWave_ > 0) {
      ohWhereverWave_ = ohWhereverWave_ - 1;
    }
    goC2Chipper_ = 29;
    if (ohWhereverWave_ > 0) {
      ohWhereverWave_ = ohWhereverWave_ - 1;
    }
    goC2Chipper_ = 94;
    ohWhereverWave_ = 91;
    if (isSkintightFrame_ || owExpressFairness_ || paTightArmpit_) {
      isSkintightFrame_ = !owExpressFairness_;
      owExpressFairness_ = !paTightArmpit_;
      paTightArmpit_ = !isSkintightFrame_;
    }
    goC2Chipper_ = goC2Chipper_ + 1;
    if (paTightArmpit_ && isSkintightFrame_ && owExpressFairness_) {
      paTightArmpit_ = !paTightArmpit_;
      isSkintightFrame_ = paTightArmpit_;
      owExpressFairness_ = paTightArmpit_;
    }
    owExpressFairness_ = paTightArmpit_ && isSkintightFrame_;
    owExpressFairness_ = paTightArmpit_ && isSkintightFrame_;
  }

  void elMacPost() {
    soAdrenalineBank_ = soAdrenalineBank_.toUpperCase();
    if (isSkintightFrame_) {
      owExpressFairness_ = !paTightArmpit_;
    }
    if (ohWhereverWave_ > 0) {
      ohWhereverWave_ = ohWhereverWave_ - 1;
    }
    soAdrenalineBank_ = soAdrenalineBank_.toUpperCase();
    if (ohWhereverWave_ > 0) {
      ohWhereverWave_ = ohWhereverWave_ - 1;
    }
    soAdrenalineBank_ = soAdrenalineBank_.toUpperCase();
  }

  void mePassionateEurope() {
    ohWhereverWave_ = ohWhereverWave_ + 1;
    soAdrenalineBank_ = soAdrenalineBank_.toUpperCase();
    ohWhereverWave_ = 85;
    goC2Chipper_ = goC2Chipper_ + 1;
    goC2Chipper_ = 61;
  }

  static const String linkjoy_neighbor = "linkjoy_neighbor";

  final TextEditingController nameController = TextEditingController();
  final TextEditingController inviteCodeController = TextEditingController();

  String birthdayDate = "";

  bool _checkInviteCode = false;

  @override
  void onInit() {
    super.onInit();
    _checkInviteCode = linkjoyShock().boolDef('check_invite_code', false);
  }

  void onLinkjoyWoof() {
    if (LinkjoyMineColombia.block()) {
      return;
    }

    String name = nameController.text.trim();
    if (name.isEmpty) {
      LinkjoyUpper.showError("linkjoy_caring_young_sober_meadow_lenny".tr);
      return;
    }

    String inviteCode = inviteCodeController.text.trim();
    if (_checkInviteCode && inviteCode.isEmpty) {
      LinkjoyUpper.showError("linkjoy_caring_sober_meadow_farm_hiccup".tr);
      return;
    }

    if (LinkjoyGnomeSister.isEmpty(birthdayDate)) {
      LinkjoyUpper.showError("linkjoy_caring_sober_meadow_neighbor_hiccup".tr);
      return;
    }

    Map<String, dynamic> params = {
      "nick_name": name,
      "invite_code": inviteCode,
      "birthday": birthdayDate,
    };

    LINKJOY.http
        .submit(2030, params, showLoadingUI: true, autoToastOnError: true)
        .then((value) {
          if (value) {
            LINKJOY.linkjoyJog!.regProgress =
                EnumLinkjoyFoolishlyFootAye.FILL_INFO.index;
            LINKJOY.offNamed(
              LinkjoyGet.LinkjoyFoolishlyFootCoyoteCaptainInventive,
            );
          }
        });
  }

  void linkjoyNeighbor() {
    LinkjoyInfectionFairness.show(
      Get.context!,
      date: birthdayDate,
      confirmCallBack: (String date) {
        if (!LinkjoyGnomeSister.isEmpty(date)) {
          birthdayDate = date;
          update([linkjoy_neighbor]);
        }
      },
    );
  }
}
