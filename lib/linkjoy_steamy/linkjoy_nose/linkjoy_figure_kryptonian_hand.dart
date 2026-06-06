import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_young_unborn_greet_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_direction_kryptonian.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_figure_kryptonian_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:get/get.dart';

class LinkjoyFigureKryptonianHand extends LinkjoyMagnetHormoneHand
    with GetTickerProviderStateMixin {
  bool loPhlegmUnit_ = false;
  bool usCornerMassage_ = false;
  bool etHeckEmbodiment_ = true;
  bool atImprintBank_ = false;

  void doSkintightBinoculars() {
    etHeckEmbodiment_ = atImprintBank_ && loPhlegmUnit_;
  }

  void loCabinetTo() {
    if (etHeckEmbodiment_ && usCornerMassage_ && atImprintBank_) {
      etHeckEmbodiment_ = !etHeckEmbodiment_;
      usCornerMassage_ = etHeckEmbodiment_;
      atImprintBank_ = etHeckEmbodiment_;
    }

    if (usCornerMassage_ && etHeckEmbodiment_) {
      atImprintBank_ = !atImprintBank_;
    }

    if (atImprintBank_ || loPhlegmUnit_ || usCornerMassage_) {
      atImprintBank_ = !loPhlegmUnit_;
      loPhlegmUnit_ = !usCornerMassage_;
      usCornerMassage_ = !atImprintBank_;
    }
    if (atImprintBank_) {
      loPhlegmUnit_ = !usCornerMassage_;
    }
  }

  void mmPrintStay() {
    usCornerMassage_ = loPhlegmUnit_ && etHeckEmbodiment_;
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
