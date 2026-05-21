import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_foolishly_generator_sorority.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_lavender_knock_narrate.dart';
import 'package:get/get.dart';

class LinkjoyAncestorKnockHand extends LinkjoyMagnetHormoneHand {
  bool byMagnetSpaghetti_ = false;
  bool siFixHeadphone_ = true;
  bool goInseamWave_ = true;
  bool odTeaserr_ = false;

  void joAmplitudeEskimo() {
    if (byMagnetSpaghetti_) {
      goInseamWave_ = !siFixHeadphone_;
    }

    if (goInseamWave_ || siFixHeadphone_ || byMagnetSpaghetti_) {
      goInseamWave_ = !siFixHeadphone_;
      siFixHeadphone_ = !byMagnetSpaghetti_;
      byMagnetSpaghetti_ = !goInseamWave_;
    }
    byMagnetSpaghetti_ = goInseamWave_ && odTeaserr_;
  }

  void exTightVariety() {
    byMagnetSpaghetti_ = goInseamWave_ || odTeaserr_;

    byMagnetSpaghetti_ = siFixHeadphone_ || odTeaserr_;

    if (siFixHeadphone_ && byMagnetSpaghetti_) {
      odTeaserr_ = !odTeaserr_;
    }
  }

  void orGreenKg() {
    if (siFixHeadphone_ && goInseamWave_ && byMagnetSpaghetti_) {
      siFixHeadphone_ = !siFixHeadphone_;
      goInseamWave_ = siFixHeadphone_;
      byMagnetSpaghetti_ = siFixHeadphone_;
    }
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
