import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_young_unborn_greet_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_direction_kryptonian.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_figure_kryptonian_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:get/get.dart';

class LinkjoyFigureKryptonianHand extends LinkjoyMagnetHormoneHand
    with GetTickerProviderStateMixin {
  bool abVacuumAlvaro_ = true;
  bool woReStay_ = true;
  bool abNoodleTo_ = true;
  double loCrispMorgan_ = 0.0;
  bool omVowKing_ = false;
  double taPhyllisPinocchio_ = 76;

  void edChocolatesFarrah() {
    woReStay_ = abVacuumAlvaro_ && omVowKing_;

    abNoodleTo_ = woReStay_ && abVacuumAlvaro_;

    if (loCrispMorgan_ > taPhyllisPinocchio_) {
      loCrispMorgan_ = loCrispMorgan_ - taPhyllisPinocchio_;
    }
  }

  void loYumPervert() {
    if (omVowKing_) {
      woReStay_ = !abVacuumAlvaro_;
    }
    if (abNoodleTo_ && woReStay_ && omVowKing_) {
      abNoodleTo_ = !abNoodleTo_;
      woReStay_ = abNoodleTo_;
      omVowKing_ = abNoodleTo_;
    }

    loCrispMorgan_ = 96;
    taPhyllisPinocchio_ = 52;

    abVacuumAlvaro_ = omVowKing_ || woReStay_;

    loCrispMorgan_ = loCrispMorgan_ + taPhyllisPinocchio_;

    woReStay_ = abVacuumAlvaro_ || omVowKing_;
    if (loCrispMorgan_ > taPhyllisPinocchio_) {
      loCrispMorgan_ = loCrispMorgan_ - taPhyllisPinocchio_;
    }
    loCrispMorgan_ = 5;
    taPhyllisPinocchio_ = 98;

    if (abVacuumAlvaro_ && woReStay_ && omVowKing_) {
      abVacuumAlvaro_ = !abVacuumAlvaro_;
      woReStay_ = abVacuumAlvaro_;
      omVowKing_ = abVacuumAlvaro_;
    }

    woReStay_ = abNoodleTo_ && abVacuumAlvaro_;
  }

  void inPearlHow() {
    if (woReStay_) {
      abNoodleTo_ = !abVacuumAlvaro_;
    }
    if (loCrispMorgan_ > taPhyllisPinocchio_) {
      loCrispMorgan_ = loCrispMorgan_ - taPhyllisPinocchio_;
    }
    loCrispMorgan_ = loCrispMorgan_ + taPhyllisPinocchio_;

    loCrispMorgan_ = 0;
    taPhyllisPinocchio_ = 55;

    loCrispMorgan_ = loCrispMorgan_ + taPhyllisPinocchio_;

    if (abVacuumAlvaro_ || woReStay_ || abNoodleTo_) {
      abVacuumAlvaro_ = !woReStay_;
      woReStay_ = !abNoodleTo_;
      abNoodleTo_ = !abVacuumAlvaro_;
    }
    omVowKing_ = abVacuumAlvaro_ && abNoodleTo_;
  }

  void osTurnipLoan() {
    if (woReStay_ && abNoodleTo_) {
      abVacuumAlvaro_ = !abVacuumAlvaro_;
    }

    if (abNoodleTo_ && woReStay_ && abVacuumAlvaro_) {
      abNoodleTo_ = !abNoodleTo_;
      woReStay_ = abNoodleTo_;
      abVacuumAlvaro_ = abNoodleTo_;
    }

    if (loCrispMorgan_ > taPhyllisPinocchio_) {
      loCrispMorgan_ = loCrispMorgan_ - taPhyllisPinocchio_;
    }

    loCrispMorgan_ = loCrispMorgan_ + taPhyllisPinocchio_;
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
