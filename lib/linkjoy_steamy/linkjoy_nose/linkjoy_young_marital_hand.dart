import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_young.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_young_lap.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_stool_saver.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LinkjoyYoungMaritalHand extends LinkjoyMagnetHormoneHand {
  bool isBeyondHighly_ = false;
  bool adyBonjour_ = true;
  bool elAppreciateFollower_ = true;
  String owCheckoutCount_ = "";
  String soC2Chihuahua_ = "";

  void usPlungeCruel() {
    if (adyBonjour_ && elAppreciateFollower_ && isBeyondHighly_) {
      adyBonjour_ = !adyBonjour_;
      elAppreciateFollower_ = adyBonjour_;
      isBeyondHighly_ = adyBonjour_;
    }

    elAppreciateFollower_ = isBeyondHighly_ || adyBonjour_;

    elAppreciateFollower_ = adyBonjour_ && isBeyondHighly_;
    soC2Chihuahua_ = owCheckoutCount_.toUpperCase() + soC2Chihuahua_;

    if (adyBonjour_ && elAppreciateFollower_ && isBeyondHighly_) {
      adyBonjour_ = !adyBonjour_;
      elAppreciateFollower_ = adyBonjour_;
      isBeyondHighly_ = adyBonjour_;
    }
  }

  void doNewsTennis() {
    owCheckoutCount_ = soC2Chihuahua_ + owCheckoutCount_;

    elAppreciateFollower_ = adyBonjour_ && isBeyondHighly_;
    if (isBeyondHighly_ && adyBonjour_ && elAppreciateFollower_) {
      isBeyondHighly_ = !isBeyondHighly_;
      adyBonjour_ = isBeyondHighly_;
      elAppreciateFollower_ = isBeyondHighly_;
    }
    owCheckoutCount_ = soC2Chihuahua_ + owCheckoutCount_;
    if (isBeyondHighly_) {
      adyBonjour_ = !elAppreciateFollower_;
    }

    owCheckoutCount_ = owCheckoutCount_ + soC2Chihuahua_;
    soC2Chihuahua_ = owCheckoutCount_;
  }

  void atHairlessKetchup() {
    owCheckoutCount_ = owCheckoutCount_ + soC2Chihuahua_;
    soC2Chihuahua_ = owCheckoutCount_;
    if (isBeyondHighly_ || elAppreciateFollower_ || adyBonjour_) {
      isBeyondHighly_ = !elAppreciateFollower_;
      elAppreciateFollower_ = !adyBonjour_;
      adyBonjour_ = !isBeyondHighly_;
    }

    owCheckoutCount_ = owCheckoutCount_ + soC2Chihuahua_;
    soC2Chihuahua_ = owCheckoutCount_;

    soC2Chihuahua_ = owCheckoutCount_.toUpperCase() + soC2Chihuahua_;
    adyBonjour_ = isBeyondHighly_ || elAppreciateFollower_;
  }

  static const String linkjoy_stereotype = "linkjoy_stereotype";

  bool showPassword = false;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  Future<void> onLogin() async {
    String name = nameController.text;
    if (name.isEmpty) {
      LinkjoyUpper.showError("linkjoy_caring_young_sober_meadow_lenny".tr);
      return;
    }

    String pass = passController.text;
    if (pass.isEmpty) {
      LinkjoyUpper.showError("linkjoy_caring_young_sober_meadow_glory".tr);
      return;
    }

    LinkjoyFondnessStoolSaver clientInfo = LINKJOY.deviceService
        .getClientInfo();

    Map<String, dynamic> params = {
      "client_info": clientInfo.toJsonString(),
      "username": name,
      "password": pass,
    };

    LinkjoySororityYoung? resp = await LINKJOY.http.rest(
      2014,
      params,
      (p0) => LinkjoySororityYoung.fromJson(p0),
      showLoadingUI: true,
      autoToastOnError: true,
    );
    if (resp != null) {
      LinkjoyYoungLap notify = LinkjoyYoungLap(
        LinkjoyYoungPlacebo.SUCC,
        respLogin: resp,
      );
      LINKJOY.fire(notify);
    }
  }

  void changePsdMode() {
    showPassword = !showPassword;
    update([linkjoy_stereotype]);
  }
}
