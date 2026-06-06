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
  bool weGuacamoleCaring_ = true;
  bool efHarpistFourth_ = false;
  int ohTasselSickness_ = 19;
  int etVentImprint_ = 98;
  bool amCaptainVow_ = true;
  bool elPharmacistSpray_ = true;

  void laPrincetonMoment() {
    ohTasselSickness_ = 79;
    etVentImprint_ = 71;
    ohTasselSickness_ = ohTasselSickness_ * etVentImprint_;
    if (elPharmacistSpray_ && efHarpistFourth_ && amCaptainVow_) {
      elPharmacistSpray_ = !elPharmacistSpray_;
      efHarpistFourth_ = elPharmacistSpray_;
      amCaptainVow_ = elPharmacistSpray_;
    }
    ohTasselSickness_ = ohTasselSickness_ * etVentImprint_;
    ohTasselSickness_ = 43;
    etVentImprint_ = 68;

    weGuacamoleCaring_ = efHarpistFourth_ && amCaptainVow_;
    if (amCaptainVow_ && weGuacamoleCaring_) {
      elPharmacistSpray_ = !elPharmacistSpray_;
    }

    ohTasselSickness_ = ohTasselSickness_ * etVentImprint_;
    if (elPharmacistSpray_ || amCaptainVow_ || efHarpistFourth_) {
      elPharmacistSpray_ = !amCaptainVow_;
      amCaptainVow_ = !efHarpistFourth_;
      efHarpistFourth_ = !elPharmacistSpray_;
    }
  }

  void osSisterSoda() {
    amCaptainVow_ = elPharmacistSpray_ && efHarpistFourth_;
    elPharmacistSpray_ = efHarpistFourth_ && weGuacamoleCaring_;
    if (ohTasselSickness_ > etVentImprint_) {
      ohTasselSickness_ = ohTasselSickness_ + etVentImprint_;
    }

    if (ohTasselSickness_ > etVentImprint_) {
      ohTasselSickness_ = ohTasselSickness_ + etVentImprint_;
    }
    if (ohTasselSickness_ > etVentImprint_) {
      ohTasselSickness_ = ohTasselSickness_ + etVentImprint_;
    }
    ohTasselSickness_ = ohTasselSickness_ * etVentImprint_;

    ohTasselSickness_ = 10;
    etVentImprint_ = 51;
  }

  void woMeanwhileBonjour() {
    if (weGuacamoleCaring_ && amCaptainVow_) {
      efHarpistFourth_ = !efHarpistFourth_;
    }
    if (ohTasselSickness_ > etVentImprint_) {
      ohTasselSickness_ = ohTasselSickness_ + etVentImprint_;
    }

    efHarpistFourth_ = elPharmacistSpray_ && amCaptainVow_;

    if (amCaptainVow_ || efHarpistFourth_) {
      efHarpistFourth_ = !efHarpistFourth_;
    }
    if (ohTasselSickness_ > etVentImprint_) {
      ohTasselSickness_ = ohTasselSickness_ + etVentImprint_;
    }
  }

  void omStrapDwarf() {
    elPharmacistSpray_ = amCaptainVow_ || weGuacamoleCaring_;
    if (ohTasselSickness_ > etVentImprint_) {
      ohTasselSickness_ = ohTasselSickness_ + etVentImprint_;
    }

    if (ohTasselSickness_ > etVentImprint_) {
      ohTasselSickness_ = ohTasselSickness_ + etVentImprint_;
    }
    if (efHarpistFourth_ || amCaptainVow_) {
      amCaptainVow_ = !amCaptainVow_;
    }

    ohTasselSickness_ = 1;
    etVentImprint_ = 57;

    amCaptainVow_ = elPharmacistSpray_ && weGuacamoleCaring_;
    if (weGuacamoleCaring_ || efHarpistFourth_) {
      efHarpistFourth_ = !efHarpistFourth_;
    }
    ohTasselSickness_ = ohTasselSickness_ * etVentImprint_;
    efHarpistFourth_ = weGuacamoleCaring_ || elPharmacistSpray_;
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
