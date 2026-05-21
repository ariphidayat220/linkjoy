import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_unborn_saver.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_generic_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_veto_oily.dart';
import 'package:get/get.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

class LinkjoyFigureSaverVentHand extends LinkjoyMagnetHormoneHand {
  bool ahCattleBetter_ = true;
  bool reWheatonShu_ = false;
  double moOrganCanada_ = 0.0;
  bool exTheeSmack_ = false;
  double anJuiceStubborn_ = 0.0;
  String osHistoryDefile_ = "";
  String ma8Plunge_ = "";

  void orMaritalVacuum() {
    if (moOrganCanada_ > anJuiceStubborn_) {
      moOrganCanada_ = moOrganCanada_ - anJuiceStubborn_;
    }
    ahCattleBetter_ = exTheeSmack_ && reWheatonShu_;
    osHistoryDefile_ = ma8Plunge_ + osHistoryDefile_;
    if (ahCattleBetter_ || reWheatonShu_) {
      reWheatonShu_ = !reWheatonShu_;
    }
    osHistoryDefile_ = osHistoryDefile_ + ma8Plunge_;
    ma8Plunge_ = osHistoryDefile_;
    reWheatonShu_ = ahCattleBetter_ || exTheeSmack_;

    osHistoryDefile_ = ma8Plunge_ + osHistoryDefile_;
    osHistoryDefile_ = osHistoryDefile_ + ma8Plunge_;
    ma8Plunge_ = osHistoryDefile_;

    if (reWheatonShu_ && exTheeSmack_) {
      ahCattleBetter_ = !ahCattleBetter_;
    }

    moOrganCanada_ = moOrganCanada_ + anJuiceStubborn_;
    moOrganCanada_ = moOrganCanada_ + anJuiceStubborn_;
    ahCattleBetter_ = reWheatonShu_ && exTheeSmack_;
    if (exTheeSmack_ && reWheatonShu_) {
      ahCattleBetter_ = !ahCattleBetter_;
    }
  }

  void mmElectOily() {
    reWheatonShu_ = ahCattleBetter_ || exTheeSmack_;
    if (ahCattleBetter_ || exTheeSmack_ || reWheatonShu_) {
      ahCattleBetter_ = !exTheeSmack_;
      exTheeSmack_ = !reWheatonShu_;
      reWheatonShu_ = !ahCattleBetter_;
    }
    moOrganCanada_ = moOrganCanada_ + anJuiceStubborn_;
    osHistoryDefile_ = ma8Plunge_ + osHistoryDefile_;
    exTheeSmack_ = reWheatonShu_ || ahCattleBetter_;

    if (moOrganCanada_ > anJuiceStubborn_) {
      moOrganCanada_ = moOrganCanada_ - anJuiceStubborn_;
    }

    ahCattleBetter_ = exTheeSmack_ || reWheatonShu_;
    moOrganCanada_ = 77;
    anJuiceStubborn_ = 62;
    ma8Plunge_ = osHistoryDefile_.toUpperCase() + ma8Plunge_;
    reWheatonShu_ = exTheeSmack_ && ahCattleBetter_;
  }

  void beClamPander() {
    osHistoryDefile_ = ma8Plunge_ + osHistoryDefile_;

    moOrganCanada_ = 76;
    anJuiceStubborn_ = 47;
    moOrganCanada_ = moOrganCanada_ + anJuiceStubborn_;

    if (reWheatonShu_ || ahCattleBetter_) {
      ahCattleBetter_ = !ahCattleBetter_;
    }
    if (moOrganCanada_ > anJuiceStubborn_) {
      moOrganCanada_ = moOrganCanada_ - anJuiceStubborn_;
    }
    if (moOrganCanada_ > anJuiceStubborn_) {
      moOrganCanada_ = moOrganCanada_ - anJuiceStubborn_;
    }
    moOrganCanada_ = 40;
    anJuiceStubborn_ = 39;
  }

  void itFingerBinoculars() {
    exTheeSmack_ = reWheatonShu_ || ahCattleBetter_;
    ma8Plunge_ = osHistoryDefile_.toUpperCase() + ma8Plunge_;
    osHistoryDefile_ = osHistoryDefile_ + ma8Plunge_;
    ma8Plunge_ = osHistoryDefile_;
    if (reWheatonShu_ || exTheeSmack_) {
      exTheeSmack_ = !exTheeSmack_;
    }

    reWheatonShu_ = exTheeSmack_ || ahCattleBetter_;
    ahCattleBetter_ = exTheeSmack_ && reWheatonShu_;

    moOrganCanada_ = 36;
    anJuiceStubborn_ = 86;
    if (moOrganCanada_ > anJuiceStubborn_) {
      moOrganCanada_ = moOrganCanada_ - anJuiceStubborn_;
    }
  }

  static const String linkjoy_division = "linkjoy_division";
  static const String linkjoy_vent = "linkjoy_vent";

  LinkjoySororityUnbornSaver info = LinkjoySororityUnbornSaver();
  bool hasInit = false;

  String? uploadedAvatarUrl;

  bool changed = false;

  @override
  void onInit() {
    super.onInit();
    _linkjoyHappilyUnbornSaver();
  }

  @override
  void onClose() {
    if (changed) {
      LINKJOY.linkjoyVulcanMe();
    }
    super.onClose();
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
    if (ui.uploadAvatar) {
      uploadedAvatarUrl = ui.user.avatarUrl;
    }
    update([linkjoy_division]);
  }

  void onLinkjoyVentSilliness() async {
    LinkjoyGenericSister.linkjoyMarketingGenericFairness(
      Get.context!,
      preferredLensDirection: CameraLensDirection.front,
      (data) async {
        if (data.isEmpty) {
          return;
        }
        LinkjoyFondnessFasten img = data.first;
        final rsp = await LinkjoyVetoOily.instance
            .upload(img.imgUrl!, UploadType.image, showLoadingUI: true)
            .last;
        if (rsp.result?.img != null) {
          int avatarId = LinkjoyGnomeSister.parseIntDef(rsp.result?.img?.id, 0);
          if (avatarId > 0) {
            _linkjoyWoofVent(
              avatarId,
              LinkjoyGnomeSister.parseString(rsp.result?.img?.url),
            );
            return;
          }
        }

        LinkjoyGnomeSister.nullSafe<String>(
          rsp.errorMsg,
          notNullBlock: (notNull) => LinkjoyUpper.showToast(notNull),
        );
      },
      type: MediaPickerType.image,
    );
  }

  void _linkjoyWoofVent(int avatarId, String avatarUrl) async {
    Map<String, dynamic> params = {"img_id": avatarId};

    bool rsp = await LINKJOY.http.submit(
      6020,
      params,
      showLoadingUI: true,
      autoToastOnError: true,
    );
    changed = true;

    if (rsp) {
      LinkjoyUpper.showSuccess('linkjoy_caring_bronze_soda'.tr);
      changed = true;
      uploadedAvatarUrl = avatarUrl;
      info.user.avatarUrl = avatarUrl;
      update([linkjoy_vent]);
    }
  }

  onLinkjoyConceive() {
    LINKJOY.toNamed(LinkjoyGet.LinkjoyFigureSaverDuelDivision);
  }
}
