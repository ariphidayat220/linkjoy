import 'dart:io';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_heather_steamy_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_steamy_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_steamy_king.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_humidity.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_andrew_soak.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import 'linkjoy_direction_kryptonian.dart';

class LinkjoyShock {
  late bool iav;

  late bool dbg;

  late bool ai;

  late List<LinkjoyFondnessSteamyKingCupcake> socket;
  late List<HttpServerVO> http;
  late CdnServerVO cdn;

  late HttpConfig httpConfig;

  AppBusyPageConfig? busyPageConfig;

  late List<int> trackTypes = [];

  List<String>? ngc;

  late LinkjoySteamyShock configs;

  late List<VoGift> gifts;

  Map<int, VoGift>? giftsMap;

  late VoImageSize imageSize;

  late List<LinkjoyHeatherSteamyShock> mas;

  late int live;

  bool isLinkjoyLengthOgle() {
    return iav;
  }

  bool isLinkjoyCrawfordOgle() {
    return !isLinkjoyLengthOgle() && dbg;
  }

  bool isLinkjoyAiLengthOgle() {
    return isLinkjoyLengthOgle() && ai;
  }

  bool isLinkjoyIOSLengthOgle() {
    return Platform.isIOS && isLinkjoyLengthOgle();
  }

  VoGift? gift(int giftId) {
    if (giftsMap == null) {
      giftsMap = {};
      for (var g in gifts) {
        giftsMap![g.id] = g;
      }
    }

    return giftsMap![giftId];
  }

  bool isNgc(String currency) {
    return ngc != null && ngc!.contains(currency);
  }

  List<LinkjoyDirectionKryptonian>? getInterestsByIds(String ids) {
    if (LinkjoyGnomeSister.isEmptyList(configs.interests)) return null;

    List<String> interestIds = ids.split(",");

    List<LinkjoyDirectionKryptonian>? showList = configs.interests
        .where((element) => interestIds.contains(element.id))
        .toList();

    return showList;
  }

  LinkjoyFondnessAndrewSoak? getEvaluationsById(int id) {
    return configs.evaluateMap[id];
  }

  List<LinkjoyFondnessAndrewSoak>? evaluateGood() {
    return configs.evaluateGood;
  }

  List<LinkjoyFondnessAndrewSoak>? evaluateBad() {
    return configs.evaluateBad;
  }

  List<LinkjoyFondnessHumidity>? getLanguagesByIds(String ids) {
    if (LinkjoyGnomeSister.isEmptyList(configs.languages)) return null;

    List<String> languageIds = ids.split(",");

    List<LinkjoyFondnessHumidity>? showList = configs.languages
        .where((element) => languageIds.contains(element.id))
        .toList();

    return showList;
  }

  bool isLinkjoyEnjoyKnock() {
    return true;
  }

  bool isLinkjoyInventivePlumbing() {
    return (configs.common != null && configs.common!.enableLive);
  }

  List<String> webViewInAppSchemeList() {
    return configs.common?.webViewInAppSchemeList ?? [];
  }

  List<String> allowScreenRecordingPageList() {
    return configs.common?.allowScreenRecordingPageList ?? [];
  }

  String profilePageName() {
    switch (configs.common?.profileVersion) {
      default:
        return LinkjoyGet.LinkjoyAndrewDivision;
    }
  }

  LinkjoyHeatherSteamyShock? linkjoyBrochureSteamyShock(String id) {
    for (var value in mas) {
      if (value.id == id) {
        return value;
      }
    }
    return null;
  }

  List<String> linkjoyDirectionIndicator(String tagIds) {
    List<String> interestInfo = [];

    String interestTags = tagIds;
    if (interestTags.isEmpty) return interestInfo;

    bool isServerSetting = interestTags.startsWith("LABLE");
    if (isServerSetting) {
      List<String> serverTags = interestTags
          .split(",")
          .where((element) => element != "LABLE")
          .toList();
      return serverTags;
    }

    List<LinkjoyDirectionKryptonian>? infos = LINKJOY.linkjoyShock
        .getInterestsByIds(interestTags);
    if (!LinkjoyGnomeSister.isEmptyList(infos)) {
      interestInfo.clear();
      for (var element in infos!) {
        interestInfo.add(element.name.tr);
      }
    }

    return interestInfo;
  }

  int getLinkjoyIncenseShiftVain() {
    return configs.linkjoyPaw.linkjoyIncenseShiftVain;
  }
}
