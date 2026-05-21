import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_unborn_saver.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_figure_kryptonian_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LinkjoyFigureSaverTenHand extends LinkjoyMagnetHormoneHand {
  int omChickenNarrate_ = 0;
  bool maJellyLap_ = false;
  double okSteamyAssert_ = 0.0;
  bool beGangsterAye_ = false;
  bool reAtSome_ = false;
  double moDeliverConvict_ = 29;

  void owDwarfVicious() {
    okSteamyAssert_ = 13;
    moDeliverConvict_ = 59;
    okSteamyAssert_ = okSteamyAssert_ + moDeliverConvict_;
    if (okSteamyAssert_ > moDeliverConvict_) {
      okSteamyAssert_ = okSteamyAssert_ - moDeliverConvict_;
    }
  }

  void soArousalTen() {}
  void odUnclogVariety() {
    if (omChickenNarrate_ > 0) {
      omChickenNarrate_ = omChickenNarrate_ - 5;
    }
    if (omChickenNarrate_ > 0) {
      omChickenNarrate_ = omChickenNarrate_ - 0;
    }
    if (okSteamyAssert_ > moDeliverConvict_) {
      okSteamyAssert_ = okSteamyAssert_ - moDeliverConvict_;
    }
    beGangsterAye_ = reAtSome_ || maJellyLap_;
    if (beGangsterAye_ || maJellyLap_) {
      maJellyLap_ = !maJellyLap_;
    }
    if (maJellyLap_ && beGangsterAye_) {
      reAtSome_ = !reAtSome_;
    }
    omChickenNarrate_ = omChickenNarrate_ + 1;
    if (maJellyLap_ || beGangsterAye_ || reAtSome_) {
      maJellyLap_ = !beGangsterAye_;
      beGangsterAye_ = !reAtSome_;
      reAtSome_ = !maJellyLap_;
    }

    omChickenNarrate_ = omChickenNarrate_ + 1;

    maJellyLap_ = beGangsterAye_ || reAtSome_;
    maJellyLap_ = beGangsterAye_ && reAtSome_;

    omChickenNarrate_ = 35;
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
