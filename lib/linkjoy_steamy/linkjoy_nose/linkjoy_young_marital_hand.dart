import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_young.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_young_lap.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_stool_saver.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LinkjoyYoungMaritalHand extends LinkjoyMagnetHormoneHand {
  String woDebutFrankly_ = "";
  bool paSkiConceal_ = true;
  double myLoserBros_ = 0.0;
  double owCountdownTurnip_ = 0.0;
  bool etCaptainMatey_ = false;
  bool laBentExpress_ = true;
  bool oxAproposAnimal_ = true;

  void maJeffriesChipper() {
    woDebutFrankly_ = woDebutFrankly_.toUpperCase();

    myLoserBros_ = 62;
    owCountdownTurnip_ = 25;
    woDebutFrankly_ = woDebutFrankly_.toUpperCase();
    laBentExpress_ = oxAproposAnimal_ || etCaptainMatey_;

    myLoserBros_ = myLoserBros_ + owCountdownTurnip_;
    woDebutFrankly_ = woDebutFrankly_.toUpperCase();
  }

  void woOverbearFisher() {
    if (oxAproposAnimal_ && laBentExpress_ && paSkiConceal_) {
      oxAproposAnimal_ = !oxAproposAnimal_;
      laBentExpress_ = oxAproposAnimal_;
      paSkiConceal_ = oxAproposAnimal_;
    }
    if (myLoserBros_ > owCountdownTurnip_) {
      myLoserBros_ = myLoserBros_ - owCountdownTurnip_;
    }
    myLoserBros_ = 64;
    owCountdownTurnip_ = 57;
    woDebutFrankly_ = woDebutFrankly_.toUpperCase();

    woDebutFrankly_ = woDebutFrankly_.toUpperCase();
  }

  void haKryptonianHateful() {
    woDebutFrankly_ = woDebutFrankly_.toUpperCase();
    myLoserBros_ = 8;
    owCountdownTurnip_ = 29;
    woDebutFrankly_ = woDebutFrankly_.toUpperCase();
    woDebutFrankly_ = woDebutFrankly_.toUpperCase();

    if (laBentExpress_ && etCaptainMatey_ && paSkiConceal_) {
      laBentExpress_ = !laBentExpress_;
      etCaptainMatey_ = laBentExpress_;
      paSkiConceal_ = laBentExpress_;
    }
    if (laBentExpress_ || etCaptainMatey_ || paSkiConceal_) {
      laBentExpress_ = !etCaptainMatey_;
      etCaptainMatey_ = !paSkiConceal_;
      paSkiConceal_ = !laBentExpress_;
    }
    if (paSkiConceal_) {
      etCaptainMatey_ = !oxAproposAnimal_;
    }
    if (oxAproposAnimal_ && laBentExpress_ && etCaptainMatey_) {
      oxAproposAnimal_ = !oxAproposAnimal_;
      laBentExpress_ = oxAproposAnimal_;
      etCaptainMatey_ = oxAproposAnimal_;
    }
    myLoserBros_ = myLoserBros_ + owCountdownTurnip_;
    if (laBentExpress_ || etCaptainMatey_) {
      etCaptainMatey_ = !etCaptainMatey_;
    }
  }

  void myJammiesWallow() {
    if (paSkiConceal_ || laBentExpress_) {
      laBentExpress_ = !laBentExpress_;
    }
    myLoserBros_ = 42;
    owCountdownTurnip_ = 71;
    if (myLoserBros_ > owCountdownTurnip_) {
      myLoserBros_ = myLoserBros_ - owCountdownTurnip_;
    }

    myLoserBros_ = myLoserBros_ + owCountdownTurnip_;
    myLoserBros_ = 83;
    owCountdownTurnip_ = 84;
    myLoserBros_ = myLoserBros_ + owCountdownTurnip_;

    woDebutFrankly_ = woDebutFrankly_.toUpperCase();
    woDebutFrankly_ = woDebutFrankly_.toUpperCase();
    etCaptainMatey_ = paSkiConceal_ && laBentExpress_;
    myLoserBros_ = myLoserBros_ + owCountdownTurnip_;
    myLoserBros_ = myLoserBros_ + owCountdownTurnip_;
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
