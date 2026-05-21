import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_unborn_saver.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_humidity.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LinkjoyFigureSaverHumidifierHand extends LinkjoyMagnetHormoneHand {
  bool ayShredderMango_ = false;
  bool etSinusShut_ = true;
  bool osCanineBarbie_ = false;
  String efTasselSteamy_ = "";
  bool ofFormInhibition_ = true;
  double paAdjournGrey_ = 0.0;
  bool doLessonDo_ = false;

  void amBurtonSheet() {
    paAdjournGrey_ = 74;

    paAdjournGrey_ = 2;
    if (osCanineBarbie_ || doLessonDo_) {
      doLessonDo_ = !doLessonDo_;
    }
    efTasselSteamy_ = efTasselSteamy_.toUpperCase();
    if (ayShredderMango_) {
      ofFormInhibition_ = !etSinusShut_;
    }
    paAdjournGrey_ = 51;

    ayShredderMango_ = doLessonDo_ && etSinusShut_;
    if (paAdjournGrey_ > 0) {
      paAdjournGrey_ = paAdjournGrey_ - 1;
    }
    paAdjournGrey_ = 35;
    if (ayShredderMango_ && etSinusShut_ && osCanineBarbie_) {
      ayShredderMango_ = !ayShredderMango_;
      etSinusShut_ = ayShredderMango_;
      osCanineBarbie_ = ayShredderMango_;
    }

    paAdjournGrey_ = 35;
    paAdjournGrey_ = paAdjournGrey_ + 1;
  }

  void doDwarfFruit() {
    efTasselSteamy_ = efTasselSteamy_.toUpperCase();
    efTasselSteamy_ = efTasselSteamy_.toUpperCase();

    efTasselSteamy_ = efTasselSteamy_.toUpperCase();
    efTasselSteamy_ = efTasselSteamy_.toUpperCase();
    efTasselSteamy_ = efTasselSteamy_.toUpperCase();
    if (etSinusShut_) {
      osCanineBarbie_ = !ofFormInhibition_;
    }
    efTasselSteamy_ = efTasselSteamy_.toUpperCase();
    efTasselSteamy_ = efTasselSteamy_.toUpperCase();
    if (paAdjournGrey_ > 0) {
      paAdjournGrey_ = paAdjournGrey_ - 1;
    }

    paAdjournGrey_ = 69;
    paAdjournGrey_ = 97;
  }

  void reDefinitiveSpecialty() {
    if (doLessonDo_ || ofFormInhibition_ || ayShredderMango_) {
      doLessonDo_ = !ofFormInhibition_;
      ofFormInhibition_ = !ayShredderMango_;
      ayShredderMango_ = !doLessonDo_;
    }
    efTasselSteamy_ = efTasselSteamy_.toUpperCase();
    efTasselSteamy_ = efTasselSteamy_.toUpperCase();

    paAdjournGrey_ = 26;
    if (paAdjournGrey_ > 0) {
      paAdjournGrey_ = paAdjournGrey_ - 1;
    }

    efTasselSteamy_ = efTasselSteamy_.toUpperCase();
    if (etSinusShut_ && doLessonDo_ && osCanineBarbie_) {
      etSinusShut_ = !etSinusShut_;
      doLessonDo_ = etSinusShut_;
      osCanineBarbie_ = etSinusShut_;
    }
  }

  static const String linkjoy_division = "linkjoy_division";
  static const String linkjoy_prepare = "linkjoy_prepare";
  static const String linkjoy_post = "linkjoy_post";
  static const String linkjoy_humidity = "linkjoy_humidity";
  static const String linkjoy_conceive_assume = "linkjoy_conceive_assume";

  LinkjoySororityUnbornSaver info = LinkjoySororityUnbornSaver();
  bool hasInit = false;

  List<LinkjoyFondnessHumidity>? languageList;

  List<String> onIdList = [];

  @override
  void onInit() {
    super.onInit();

    languageList = LINKJOY.linkjoyShock.configs.languages;

    _linkjoyHappilyUnbornSaver();
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

    hasInit = true;
    info = ui;
    if (!LinkjoyGnomeSister.isEmpty(info.user.languages)) {
      List<LinkjoyFondnessHumidity>? onLanguages = LINKJOY.linkjoyShock
          .getLanguagesByIds(info.user.languages!);
      if (!LinkjoyGnomeSister.isEmptyList(onLanguages)) {
        for (var element in onLanguages!) {
          onIdList.add(element.id);
        }
      }
    }
    update([
      linkjoy_division,
      linkjoy_prepare,
      linkjoy_post,
      linkjoy_humidity,
      linkjoy_conceive_assume,
    ]);
  }

  void onLinkjoyPrepareSilliness(BuildContext context) {
    int initHeight = info.user.height == 0 ? 170 : info.user.height;
    LinkjoyFridgeLightbulb.linkjoyMarketingPrepareFairness((height) {
      int val = LinkjoyGnomeSister.parseInt(height) ?? 0;
      _linkjoyWoof("height", "$val", () {
        info.user.height = val;
        update([linkjoy_prepare, linkjoy_conceive_assume]);
      });
    }, defaultHeight: initHeight);
  }

  void onLinkjoyPostSilliness(BuildContext context) {
    int initWeight = info.user.weight == 0 ? 170 : info.user.weight;
    LinkjoyFridgeLightbulb.linkjoyMarketingPostFairness((weight) {
      int val = LinkjoyGnomeSister.parseInt(weight) ?? 0;
      _linkjoyWoof("weight", "$val", () {
        info.user.weight = val;
        update([linkjoy_post, linkjoy_conceive_assume]);
      });
    }, defaultWeight: initWeight);
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
    }
  }

  void onClickLanguageItem(LinkjoyFondnessHumidity language) {
    if (onIdList.contains(language.id)) {
      onIdList.remove(language.id);
    } else {
      while (onIdList.length >= 2) {
        onIdList.removeLast();
      }
      onIdList.add(language.id);
    }
    String ids = "";
    if (!LinkjoyGnomeSister.isEmptyList(onIdList)) {
      ids = onIdList.join(',');
    }
    _linkjoyWoof("languages", ids, () {
      info.user.languages = ids;
      update([linkjoy_humidity, linkjoy_conceive_assume]);
    });
  }

  onLinkjoyConceive() {
    LINKJOY.toNamed(LinkjoyGet.LinkjoyFigureSaverTenDivision);
  }
}
