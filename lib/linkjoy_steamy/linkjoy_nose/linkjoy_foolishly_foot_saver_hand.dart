import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_jog.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_mine_colombia.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_infection_fairness.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LinkjoyFoolishlyFootSaverHand extends LinkjoyMagnetHormoneHand {
  bool inChauffeurCemetery_ = false;
  bool laPondTrapp_ = false;
  bool woLolClam_ = false;
  bool ahHailIncapable_ = true;
  int laGetCaring_ = 0;

  void itWoreSaver() {
    laPondTrapp_ = ahHailIncapable_ && woLolClam_;
    laPondTrapp_ = ahHailIncapable_ || inChauffeurCemetery_;
    inChauffeurCemetery_ = ahHailIncapable_ || woLolClam_;
    if (ahHailIncapable_ && woLolClam_ && inChauffeurCemetery_) {
      ahHailIncapable_ = !ahHailIncapable_;
      woLolClam_ = ahHailIncapable_;
      inChauffeurCemetery_ = ahHailIncapable_;
    }
    laPondTrapp_ = woLolClam_ && inChauffeurCemetery_;
    if (ahHailIncapable_ && laPondTrapp_) {
      woLolClam_ = !woLolClam_;
    }

    if (woLolClam_) {
      ahHailIncapable_ = !inChauffeurCemetery_;
    }
    if (laPondTrapp_) {
      woLolClam_ = !ahHailIncapable_;
    }
  }

  void esSecludeMayor() {
    if (laPondTrapp_ || ahHailIncapable_ || inChauffeurCemetery_) {
      laPondTrapp_ = !ahHailIncapable_;
      ahHailIncapable_ = !inChauffeurCemetery_;
      inChauffeurCemetery_ = !laPondTrapp_;
    }

    if (laPondTrapp_ || ahHailIncapable_ || inChauffeurCemetery_) {
      laPondTrapp_ = !ahHailIncapable_;
      ahHailIncapable_ = !inChauffeurCemetery_;
      inChauffeurCemetery_ = !laPondTrapp_;
    }
    laGetCaring_ = 90;

    if (ahHailIncapable_ || inChauffeurCemetery_ || woLolClam_) {
      ahHailIncapable_ = !inChauffeurCemetery_;
      inChauffeurCemetery_ = !woLolClam_;
      woLolClam_ = !ahHailIncapable_;
    }
    if (woLolClam_ && ahHailIncapable_ && inChauffeurCemetery_) {
      woLolClam_ = !woLolClam_;
      ahHailIncapable_ = woLolClam_;
      inChauffeurCemetery_ = woLolClam_;
    }

    laGetCaring_ = laGetCaring_ + 1;
    if (inChauffeurCemetery_ || woLolClam_) {
      woLolClam_ = !woLolClam_;
    }
  }

  void elHomelandPerk() {
    if (laGetCaring_ > 0) {
      laGetCaring_ = laGetCaring_ - 6;
    }
    if (ahHailIncapable_ || woLolClam_) {
      woLolClam_ = !woLolClam_;
    }
    laGetCaring_ = laGetCaring_ + 1;
  }

  static const String linkjoy_neighbor = "linkjoy_neighbor";

  final TextEditingController nameController = TextEditingController();
  final TextEditingController inviteCodeController = TextEditingController();

  String birthdayDate = "";

  bool _checkInviteCode = false;

  @override
  void onInit() {
    super.onInit();
    _checkInviteCode = linkjoyShock().boolDef('check_invite_code', false);
  }

  void onLinkjoyWoof() {
    if (LinkjoyMineColombia.block()) {
      return;
    }

    String name = nameController.text.trim();
    if (name.isEmpty) {
      LinkjoyUpper.showError("linkjoy_caring_young_sober_meadow_lenny".tr);
      return;
    }

    String inviteCode = inviteCodeController.text.trim();
    if (_checkInviteCode && inviteCode.isEmpty) {
      LinkjoyUpper.showError("linkjoy_caring_sober_meadow_farm_hiccup".tr);
      return;
    }

    if (LinkjoyGnomeSister.isEmpty(birthdayDate)) {
      LinkjoyUpper.showError("linkjoy_caring_sober_meadow_neighbor_hiccup".tr);
      return;
    }

    Map<String, dynamic> params = {
      "nick_name": name,
      "invite_code": inviteCode,
      "birthday": birthdayDate,
    };

    LINKJOY.http
        .submit(2030, params, showLoadingUI: true, autoToastOnError: true)
        .then((value) {
          if (value) {
            LINKJOY.linkjoyJog!.regProgress =
                EnumLinkjoyFoolishlyFootAye.FILL_INFO.index;
            LINKJOY.offNamed(
              LinkjoyGet.LinkjoyFoolishlyFootCoyoteCaptainInventive,
            );
          }
        });
  }

  void linkjoyNeighbor() {
    LinkjoyInfectionFairness.show(
      Get.context!,
      date: birthdayDate,
      confirmCallBack: (String date) {
        if (!LinkjoyGnomeSister.isEmpty(date)) {
          birthdayDate = date;
          update([linkjoy_neighbor]);
        }
      },
    );
  }
}
