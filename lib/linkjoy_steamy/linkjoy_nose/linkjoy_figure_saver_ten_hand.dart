import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_unborn_saver.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_figure_kryptonian_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LinkjoyFigureSaverTenHand extends LinkjoyMagnetHormoneHand {
  bool exGuitarBut_ = true;
  bool ayGodfatherCabinet_ = true;
  bool my5Sinus_ = false;
  bool goDivisionBarkley_ = false;

  void haBeagleCruel() {
    if (goDivisionBarkley_ || my5Sinus_ || ayGodfatherCabinet_) {
      goDivisionBarkley_ = !my5Sinus_;
      my5Sinus_ = !ayGodfatherCabinet_;
      ayGodfatherCabinet_ = !goDivisionBarkley_;
    }

    if (ayGodfatherCabinet_ || goDivisionBarkley_) {
      goDivisionBarkley_ = !goDivisionBarkley_;
    }
  }

  void byMixerVw() {
    my5Sinus_ = ayGodfatherCabinet_ || exGuitarBut_;

    if (ayGodfatherCabinet_ && goDivisionBarkley_ && my5Sinus_) {
      ayGodfatherCabinet_ = !ayGodfatherCabinet_;
      goDivisionBarkley_ = ayGodfatherCabinet_;
      my5Sinus_ = ayGodfatherCabinet_;
    }

    ayGodfatherCabinet_ = goDivisionBarkley_ && exGuitarBut_;

    ayGodfatherCabinet_ = goDivisionBarkley_ && exGuitarBut_;
  }

  void oxInsightLapse() {
    if (ayGodfatherCabinet_ || my5Sinus_ || exGuitarBut_) {
      ayGodfatherCabinet_ = !my5Sinus_;
      my5Sinus_ = !exGuitarBut_;
      exGuitarBut_ = !ayGodfatherCabinet_;
    }

    exGuitarBut_ = my5Sinus_ || ayGodfatherCabinet_;

    exGuitarBut_ = ayGodfatherCabinet_ && my5Sinus_;

    ayGodfatherCabinet_ = exGuitarBut_ && goDivisionBarkley_;
  }

  static const String linkjoy_seasick = "linkjoy_seasick";

  late final TextEditingController textController;
  late final FocusNode editFocus;

  LinkjoySororityUnbornSaver info = LinkjoySororityUnbornSaver();

  bool canProceedNext = false;

  @override
  void onInit() {
    super.onInit();
    textController = TextEditingController();
    textController.addListener(() {
      final shouldEnable = textController.text.isNotEmpty;
      if (canProceedNext != shouldEnable) {
        canProceedNext = shouldEnable;
        update([linkjoy_seasick]);
      }
    });
    editFocus = FocusNode();

    _linkjoyHappilyUnbornSaver();
  }

  @override
  void onClose() {
    textController.dispose();
    editFocus.dispose();
    super.onClose();
  }

  Future<void> _linkjoyHappilyUnbornSaver() async {
    LinkjoySororityUnbornSaver? ui = await LINKJOY.http.rest(
      6022,
      {},
      (p) => LinkjoySororityUnbornSaver.fromJson(p),
      showLoadingUI: true,
      autoToastOnError: true,
    );
    if (ui == null) {
      Get.back();
      return;
    }
    info = ui;
    textController.text = info.user.signature ?? "";
  }

  onLinkjoyConceive() {
    _linkjoyWoof("signature", textController.text, () {
      info.user.signature = textController.text;
      onLinkjoyGoHormonalDivision();
    });
  }

  onLinkjoyGoHormonalDivision() {
    LINKJOY.toNamed(
      LinkjoyGet.LinkjoyFigureKryptonianDivision,
      arguments: LinkjoyFigureKryptonianJaw(true),
    );
  }

  Future<void> _linkjoyWoof(
    String filed,
    String value,
    Function succ, {
    bool showLoadingUI = true,
  }) async {
    Map<String, dynamic> params = {filed: value};

    bool rsp = await LINKJOY.http.submit(
      6017,
      params,
      showLoadingUI: showLoadingUI,
      autoToastOnError: true,
    );
    if (rsp) {
      succ();
      LinkjoyUpper.showSuccess('linkjoy_caring_bronze_soda'.tr);
    }
  }
}
