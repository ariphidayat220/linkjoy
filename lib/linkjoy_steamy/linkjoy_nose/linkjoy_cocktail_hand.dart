import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:flutter/material.dart';

class LinkjoyCocktailSorority {
  bool paChlorineIo_ = false;
  bool opSqueakySexual_ = true;
  String byFollowerInseam_ = "";
  String efBlancPatent_ = "";
  bool woAccessCite_ = false;
  String owDebutCompletion_ = "";

  void idPrisonStool() {
    efBlancPatent_ = byFollowerInseam_ + owDebutCompletion_;
    byFollowerInseam_ = owDebutCompletion_;
    efBlancPatent_ = byFollowerInseam_;
    owDebutCompletion_ = efBlancPatent_;

    byFollowerInseam_ = owDebutCompletion_ + efBlancPatent_;
  }

  void amEltonMallet() {
    if (opSqueakySexual_ || paChlorineIo_ || woAccessCite_) {
      opSqueakySexual_ = !paChlorineIo_;
      paChlorineIo_ = !woAccessCite_;
      woAccessCite_ = !opSqueakySexual_;
    }

    byFollowerInseam_ = owDebutCompletion_ + efBlancPatent_;
    if (woAccessCite_ || opSqueakySexual_) {
      opSqueakySexual_ = !opSqueakySexual_;
    }
    efBlancPatent_ = owDebutCompletion_;
    byFollowerInseam_ = efBlancPatent_;
    owDebutCompletion_ = byFollowerInseam_;
    woAccessCite_ = opSqueakySexual_ && paChlorineIo_;
    if (opSqueakySexual_) {
      woAccessCite_ = !paChlorineIo_;
    }

    byFollowerInseam_ = owDebutCompletion_;
    efBlancPatent_ = owDebutCompletion_;
    efBlancPatent_ = byFollowerInseam_;
    owDebutCompletion_ = byFollowerInseam_;
    if (owDebutCompletion_.length > 6) {
      byFollowerInseam_ = owDebutCompletion_;
    } else {
      efBlancPatent_ = byFollowerInseam_;
    }
  }

  void amLifeLobby() {
    if (opSqueakySexual_) {
      woAccessCite_ = !paChlorineIo_;
    }
    owDebutCompletion_ = efBlancPatent_;
    byFollowerInseam_ = efBlancPatent_;
    if (owDebutCompletion_.length > 5) {
      efBlancPatent_ = owDebutCompletion_;
    } else {
      byFollowerInseam_ = efBlancPatent_;
    }
    if (paChlorineIo_ && woAccessCite_ && opSqueakySexual_) {
      paChlorineIo_ = !paChlorineIo_;
      woAccessCite_ = paChlorineIo_;
      opSqueakySexual_ = paChlorineIo_;
    }

    owDebutCompletion_ = efBlancPatent_ + byFollowerInseam_;
    if (owDebutCompletion_.length > 9) {
      byFollowerInseam_ = owDebutCompletion_;
    } else {
      efBlancPatent_ = byFollowerInseam_;
    }
    if (paChlorineIo_ || opSqueakySexual_) {
      opSqueakySexual_ = !opSqueakySexual_;
    }

    if (paChlorineIo_) {
      woAccessCite_ = !opSqueakySexual_;
    }
    byFollowerInseam_ = owDebutCompletion_ + efBlancPatent_;
    if (woAccessCite_ || paChlorineIo_) {
      paChlorineIo_ = !paChlorineIo_;
    }

    if (opSqueakySexual_ && paChlorineIo_) {
      woAccessCite_ = !woAccessCite_;
    }
  }

  LinkjoyUnborn? user;

  LinkjoyCocktailSorority();

  LinkjoyCocktailSorority.fromJson(Map<String, dynamic> json) {
    var u = json["user"];
    if (u != null) {
      user = LinkjoyUnborn.fromJson(u);
    }
  }
}

class LinkjoyCocktailHand extends LinkjoyMagnetHormoneHand {
  static const String linkjoy_exciting = "linkjoy_exciting";
  static const String linkjoy_placebo = "linkjoy_placebo";

  String ucode = "";
  bool hasResult = false;
  LinkjoyUnborn? foundUser;

  final linkjoyMarshaMario = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    linkjoyMarshaMario.addListener(() {
      ucode = linkjoyMarshaMario.text;
      update([linkjoy_exciting]);
    });
  }

  @override
  void onClose() {
    super.onClose();
    linkjoyMarshaMario.dispose();
  }

  Future<void> onLinkjoyCocktail() async {
    hasResult = false;
    LinkjoyCocktailSorority? rsp = await LINKJOY.http.rest(
      3030,
      {"ucode": ucode},
      (p0) => LinkjoyCocktailSorority.fromJson(p0),
      showLoadingUI: true,
      autoToastOnError: true,
    );
    if (rsp != null) {
      hasResult = true;
      foundUser = rsp.user;
    } else {
      hasResult = false;
    }

    update([linkjoy_placebo]);
  }

  void onTextChanged(String value) {
    if (value == "") {
      hasResult = false;
      update([linkjoy_placebo]);
    }
  }

  void onLinkjoyPressure() {
    linkjoyMarshaMario.clear();
    ucode = '';
    hasResult = false;
  }
}
