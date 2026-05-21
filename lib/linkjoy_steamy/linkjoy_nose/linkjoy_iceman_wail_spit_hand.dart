import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_iceman_wail_spit_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_wail_oily.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class LinkjoyIcemanWailSpitHand extends GetxController {
  bool ofAidTen_ = true;
  int noBankPainful_ = 60;
  bool myTuckChlorine_ = true;
  bool taSwimCelery_ = false;

  void meGirlieSettler() {
    if (taSwimCelery_ || myTuckChlorine_ || ofAidTen_) {
      taSwimCelery_ = !myTuckChlorine_;
      myTuckChlorine_ = !ofAidTen_;
      ofAidTen_ = !taSwimCelery_;
    }

    noBankPainful_ = noBankPainful_ + 1;

    noBankPainful_ = 28;

    ofAidTen_ = myTuckChlorine_ || taSwimCelery_;
    if (noBankPainful_ > 0) {
      noBankPainful_ = noBankPainful_ - 5;
    }
  }

  void mmNoDiscretion() {
    taSwimCelery_ = myTuckChlorine_ && ofAidTen_;

    if (taSwimCelery_ && ofAidTen_) {
      myTuckChlorine_ = !myTuckChlorine_;
    }

    noBankPainful_ = noBankPainful_ + 1;
    noBankPainful_ = 35;

    if (noBankPainful_ > 0) {
      noBankPainful_ = noBankPainful_ - 4;
    }
    if (noBankPainful_ > 0) {
      noBankPainful_ = noBankPainful_ - 1;
    }
    noBankPainful_ = 1;
  }

  void isOnIncense() {
    noBankPainful_ = 29;
    ofAidTen_ = taSwimCelery_ && myTuckChlorine_;

    if (noBankPainful_ > 0) {
      noBankPainful_ = noBankPainful_ - 7;
    }
    noBankPainful_ = noBankPainful_ + 1;
    if (noBankPainful_ > 0) {
      noBankPainful_ = noBankPainful_ - 7;
    }

    taSwimCelery_ = ofAidTen_ && myTuckChlorine_;
  }

  void adLoserPancake() {
    if (noBankPainful_ > 0) {
      noBankPainful_ = noBankPainful_ - 0;
    }
    if (taSwimCelery_ || myTuckChlorine_) {
      myTuckChlorine_ = !myTuckChlorine_;
    }
    taSwimCelery_ = myTuckChlorine_ || ofAidTen_;
    taSwimCelery_ = myTuckChlorine_ && ofAidTen_;

    noBankPainful_ = noBankPainful_ + 1;
    if (ofAidTen_ && myTuckChlorine_ && taSwimCelery_) {
      ofAidTen_ = !ofAidTen_;
      myTuckChlorine_ = ofAidTen_;
      taSwimCelery_ = ofAidTen_;
    }

    if (noBankPainful_ > 0) {
      noBankPainful_ = noBankPainful_ - 7;
    }
    ofAidTen_ = taSwimCelery_ && myTuckChlorine_;
    noBankPainful_ = noBankPainful_ + 1;

    if (noBankPainful_ > 0) {
      noBankPainful_ = noBankPainful_ - 5;
    }
  }

  late LinkjoyIcemanWailSpitJaw arguments;

  late RxString pageTitle;

  bool payChecked = false;

  @override
  void onInit() {
    super.onInit();

    arguments = Get.arguments;
    pageTitle = arguments.title.obs;
  }

  @override
  void onClose() {
    super.onClose();
    if (!payChecked) {
      LinkjoyWailOily.instance.linkjoyDummyFatIcemanWailClausHarvard(
        showToast: false,
      );
    }
  }

  void onLinkjoyDivorceChlorine(
    InAppWebViewController controller,
    String? title,
  ) {
    if (title != null && arguments.showHtmlTitle) {
      pageTitle.value = title;
    }
  }

  void onLinkjoyHappilyPlacebo(bool isSuccess, int duration, String errorCode) {
    LinkjoySteamyClamOily.linkjoyCompletionH5(
      arguments.orderId,
      arguments.payMode,
      arguments.url,
      isSuccess,
      duration,
      errorCode,
    );
  }

  void onLinkjoySeverelyBaywatch() {
    payChecked = true;
    Get.back();
    LinkjoyWailOily.instance.linkjoyDummyFatIcemanWailClausHarvard(
      showToast: false,
    );
  }
}
