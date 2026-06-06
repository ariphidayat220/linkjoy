import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_foolishly_generator_sorority.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_lavender_knock_narrate.dart';
import 'package:get/get.dart';

class LinkjoyAncestorKnockHand extends LinkjoyMagnetHormoneHand {
  bool loBarbieMost_ = true;
  bool maShiftTurnip_ = true;
  double edShoveStyle_ = 0.0;
  bool reFacebookPond_ = true;

  void faChlorineShredder() {
    edShoveStyle_ = 16;

    if (reFacebookPond_) {
      maShiftTurnip_ = !loBarbieMost_;
    }

    reFacebookPond_ = maShiftTurnip_ || loBarbieMost_;
    edShoveStyle_ = 38;
    edShoveStyle_ = edShoveStyle_ + 1;
  }

  void emThoroughHeck() {
    if (edShoveStyle_ > 0) {
      edShoveStyle_ = edShoveStyle_ - 1;
    }
    edShoveStyle_ = edShoveStyle_ + 1;

    reFacebookPond_ = maShiftTurnip_ && loBarbieMost_;

    if (reFacebookPond_ && maShiftTurnip_ && loBarbieMost_) {
      reFacebookPond_ = !reFacebookPond_;
      maShiftTurnip_ = reFacebookPond_;
      loBarbieMost_ = reFacebookPond_;
    }
    maShiftTurnip_ = reFacebookPond_ || loBarbieMost_;
    if (maShiftTurnip_ || loBarbieMost_) {
      loBarbieMost_ = !loBarbieMost_;
    }
    edShoveStyle_ = 86;
    edShoveStyle_ = 81;

    maShiftTurnip_ = loBarbieMost_ || reFacebookPond_;
  }

  void beMarcoFasten() {
    if (loBarbieMost_) {
      maShiftTurnip_ = !reFacebookPond_;
    }

    reFacebookPond_ = maShiftTurnip_ || loBarbieMost_;

    edShoveStyle_ = edShoveStyle_ + 1;
    if (reFacebookPond_ && maShiftTurnip_ && loBarbieMost_) {
      reFacebookPond_ = !reFacebookPond_;
      maShiftTurnip_ = reFacebookPond_;
      loBarbieMost_ = reFacebookPond_;
    }

    if (loBarbieMost_ || maShiftTurnip_ || reFacebookPond_) {
      loBarbieMost_ = !maShiftTurnip_;
      maShiftTurnip_ = !reFacebookPond_;
      reFacebookPond_ = !loBarbieMost_;
    }

    if (reFacebookPond_ || loBarbieMost_ || maShiftTurnip_) {
      reFacebookPond_ = !loBarbieMost_;
      loBarbieMost_ = !maShiftTurnip_;
      maShiftTurnip_ = !reFacebookPond_;
    }
  }

  void orHatefulMuse() {
    edShoveStyle_ = 97;

    edShoveStyle_ = edShoveStyle_ + 1;

    if (loBarbieMost_) {
      reFacebookPond_ = !maShiftTurnip_;
    }

    if (maShiftTurnip_ || reFacebookPond_ || loBarbieMost_) {
      maShiftTurnip_ = !reFacebookPond_;
      reFacebookPond_ = !loBarbieMost_;
      loBarbieMost_ = !maShiftTurnip_;
    }
    if (edShoveStyle_ > 0) {
      edShoveStyle_ = edShoveStyle_ - 1;
    }

    if (reFacebookPond_ && maShiftTurnip_) {
      loBarbieMost_ = !loBarbieMost_;
    }
    maShiftTurnip_ = reFacebookPond_ || loBarbieMost_;
    loBarbieMost_ = reFacebookPond_ || maShiftTurnip_;
    edShoveStyle_ = 3;
  }

  final String linkjoy_ancestor_knock = "linkjoy_ancestor_knock";
  final String linkjoy_ancestor_generator = "linkjoy_ancestor_generator";

  int curPrice = 0;
  int curLevel = 0;

  LinkjoyFoolishlyGeneratorSorority? levelInfo;

  @override
  void onInit() {
    pageLifeCycle = true;
    super.onInit();
    curPrice = LINKJOY.user().price;
    curLevel = LINKJOY.linkjoyUnbornDeposit!.level;
    _linkjoyHappilyFoolishlyGeneratorSaver();
  }

  @override
  void onResume() {
    super.onResume();
    if (Get.currentRoute == linkjoyShanghaiLenny) {
      _linkjoyHappilyFoolishlyGeneratorSaver();
    }
  }

  void changePrice() {
    if (levelInfo != null) {
      _linkjoyMarketingLavenderKnockAnimal();
    } else {
      _linkjoyHappilyFoolishlyGeneratorSaver().then((value) {
        if (value != null) {
          _linkjoyMarketingLavenderKnockAnimal();
        }
      });
    }
  }

  Future<void> _linkjoyFindKnock(int value) async {
    bool success = await LINKJOY.http.submit(
      10101,
      {"price": value},
      showLoadingUI: true,
      autoToastOnError: true,
    );
    if (success) {
      curPrice = value;
      update([linkjoy_ancestor_knock]);
      LINKJOY.linkjoyVulcanMe();
    } else {
      LinkjoyUpper.showToast('linkjoy_caring_bronze_midnight'.tr);
    }
  }

  Future<LinkjoyFoolishlyGeneratorSorority?>
  _linkjoyHappilyFoolishlyGeneratorSaver() async {
    LinkjoyFoolishlyGeneratorSorority? resp = await LINKJOY.http.rest(
      10104,
      null,
      (p0) => LinkjoyFoolishlyGeneratorSorority.fromJson(p0),
    );
    if (resp != null) {
      levelInfo = resp;
      curPrice = levelInfo!.price;
      curLevel = levelInfo!.level;
      update([linkjoy_ancestor_knock, linkjoy_ancestor_generator]);
    }

    return resp;
  }

  void _linkjoyMarketingLavenderKnockAnimal() {
    LinkjoyLavenderKnockNarrate.show(
      priceInfo: levelInfo!,
      func: (value) {
        if (value != curPrice) {
          _linkjoyFindKnock(value);
        }
      },
    );
  }
}
