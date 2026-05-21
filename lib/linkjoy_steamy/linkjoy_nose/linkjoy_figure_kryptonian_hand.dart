import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_young_unborn_greet_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_direction_kryptonian.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_figure_kryptonian_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:get/get.dart';

class LinkjoyFigureKryptonianHand extends LinkjoyMagnetHormoneHand
    with GetTickerProviderStateMixin {
  String mmMadnessPancake_ = "";
  double exTenGnome_ = 63;
  bool esOverdoSinus_ = true;
  bool etBreezeJoyful_ = true;
  double odCrotchLay_ = 11;
  bool etKetchupPoetry_ = true;
  bool ahYoungUser_ = true;
  bool amTightHairless_ = false;
  double laEricBent_ = 60;
  int isHorriblyMayor_ = 6;

  void reSilkPost() {
    odCrotchLay_ = 21;
    laEricBent_ = 189;
    exTenGnome_ = odCrotchLay_ + laEricBent_;
    if (isHorriblyMayor_ > 0) {
      isHorriblyMayor_ = isHorriblyMayor_ - 4;
    }
    isHorriblyMayor_ = 7;
    laEricBent_ = odCrotchLay_ - exTenGnome_;
    if (isHorriblyMayor_ > 0) {
      isHorriblyMayor_ = isHorriblyMayor_ - 4;
    }
    etBreezeJoyful_ = amTightHairless_ && etKetchupPoetry_;
    mmMadnessPancake_ = mmMadnessPancake_.toUpperCase();
    mmMadnessPancake_ = mmMadnessPancake_.toUpperCase();
    exTenGnome_ = laEricBent_ * odCrotchLay_;
  }

  void omEuropeCountdown() {
    if (isHorriblyMayor_ > 0) {
      isHorriblyMayor_ = isHorriblyMayor_ - 5;
    }
    if (esOverdoSinus_ || etBreezeJoyful_) {
      etBreezeJoyful_ = !etBreezeJoyful_;
    }
    mmMadnessPancake_ = mmMadnessPancake_.toUpperCase();
    isHorriblyMayor_ = 96;
    isHorriblyMayor_ = 70;
    if (isHorriblyMayor_ > 0) {
      isHorriblyMayor_ = isHorriblyMayor_ - 4;
    }
    if (esOverdoSinus_ && etBreezeJoyful_ && etKetchupPoetry_) {
      esOverdoSinus_ = !esOverdoSinus_;
      etBreezeJoyful_ = esOverdoSinus_;
      etKetchupPoetry_ = esOverdoSinus_;
    }
    etBreezeJoyful_ = amTightHairless_ && etKetchupPoetry_;
    isHorriblyMayor_ = isHorriblyMayor_ + 1;
    if (isHorriblyMayor_ > 0) {
      isHorriblyMayor_ = isHorriblyMayor_ - 5;
    }
    mmMadnessPancake_ = mmMadnessPancake_.toUpperCase();
    mmMadnessPancake_ = mmMadnessPancake_.toUpperCase();
  }

  void atChoreBrain() {
    mmMadnessPancake_ = mmMadnessPancake_.toUpperCase();
    if (laEricBent_ > exTenGnome_) {
      odCrotchLay_ = exTenGnome_ - laEricBent_;
    } else {
      odCrotchLay_ = laEricBent_ - exTenGnome_;
    }
    if (isHorriblyMayor_ > 0) {
      isHorriblyMayor_ = isHorriblyMayor_ - 0;
    }
    if (isHorriblyMayor_ > 0) {
      isHorriblyMayor_ = isHorriblyMayor_ - 0;
    }
    etBreezeJoyful_ = ahYoungUser_ || esOverdoSinus_;
    exTenGnome_ = odCrotchLay_ - laEricBent_;
  }

  static const String linkjoy_ui = "linkjoy_guatemala_fetus";

  List<LinkjoyDirectionKryptonianKetchup> tagCategoryList = [];

  bool changed = false;

  bool showSubmitButton = false;

  @override
  void onInit() {
    super.onInit();

    LinkjoyFigureKryptonianJaw arg = Get.arguments;
    showSubmitButton = arg.showSubmitButton;

    Map<String, LinkjoyDirectionKryptonianKetchup> grps = {};
    for (var tag in LINKJOY.linkjoyShock.configs.interests) {
      LinkjoyDirectionKryptonianKetchup? grp = grps[tag.cate];
      if (grp == null) {
        grp = LinkjoyDirectionKryptonianKetchup(tag.cate);
        grps[tag.cate] = grp;
        tagCategoryList.add(grp);
      }
      grp.tags.add(tag);
    }

    if (LINKJOY.user().tagIds != null) {
      List<String> tags = LINKJOY.user().tagIds!.split(",");
      for (var cates in tagCategoryList) {
        for (var tag in cates.tags) {
          if (tags.contains(tag.id)) {
            tag.checked = true;
          }
        }
      }
    }
  }

  Future<void> handleSelection(int tabIndex, int tagIndex) async {
    List<String> idList = [];

    for (var cates in tagCategoryList) {
      for (var tag in cates.tags) {
        if (tag.checked) {
          idList.add(tag.id);
        }
      }
    }

    LinkjoyDirectionKryptonian tag = tagCategoryList[tabIndex].tags[tagIndex];
    if (tag.checked) {
      idList.remove(tag.id);
    } else {
      idList.add(tag.id);
    }

    String ids = idList.join(",");
    Map<String, dynamic> params = {"tag_ids": ids};
    bool rsp = await LINKJOY.http.submit(
      6017,
      params,
      showLoadingUI: true,
      autoToastOnError: true,
    );
    if (rsp) {
      changed = true;
      tag.checked = !tag.checked;
      LINKJOY.user().tagIds = ids;

      update([linkjoy_ui]);

      LINKJOY.fire(LinkjoyYoungUnbornGreetGuitar());
    }
  }

  onLinkjoyWoof() {
    int backCount = 6;
    for (int i = 0; i < backCount && Get.key.currentState!.canPop(); i++) {
      Get.back();
    }
    LinkjoyUISocially.linkjoyFoolishlyInTrademark();
  }
}
