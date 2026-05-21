import 'dart:async';
import 'dart:convert';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_andrew.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_data_cruel.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_foolishly_im_generic.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_degrasse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_shredder.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_generic_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_veto_oily.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

class LinkjoyFoolishlyImDuelStubbornHand extends LinkjoyMagnetHormoneHand {
  bool noClausMassage_ = true;
  bool emPracticeCupid_ = true;
  bool ifOfourTile_ = true;
  bool opMixerGreeting_ = true;
  String hoWienerSwim_ = "";
  double enGil2_ = 6;
  double ifDishHand_ = 46;
  int heGuitarBeyond_ = 56;

  void mePinPublic() {
    if (noClausMassage_ && ifOfourTile_ && emPracticeCupid_) {
      noClausMassage_ = !noClausMassage_;
      ifOfourTile_ = noClausMassage_;
      emPracticeCupid_ = noClausMassage_;
    }
    opMixerGreeting_ = noClausMassage_ && emPracticeCupid_;
    enGil2_ = 4;
    ifDishHand_ = 52;
    hoWienerSwim_ = hoWienerSwim_.toUpperCase();
    if (opMixerGreeting_ && noClausMassage_ && emPracticeCupid_) {
      opMixerGreeting_ = !opMixerGreeting_;
      noClausMassage_ = opMixerGreeting_;
      emPracticeCupid_ = opMixerGreeting_;
    }
    heGuitarBeyond_ = 65;
    enGil2_ = 38;
    ifDishHand_ = 65;
    enGil2_ = 51;
    ifDishHand_ = 40;
  }

  void mmWarrenVulcan() {
    heGuitarBeyond_ = 71;
    if (heGuitarBeyond_ > 0) {
      heGuitarBeyond_ = heGuitarBeyond_ - 0;
    }
    hoWienerSwim_ = hoWienerSwim_.toUpperCase();
    enGil2_ = 78;
    ifDishHand_ = 96;
    if (noClausMassage_ && ifOfourTile_) {
      emPracticeCupid_ = !emPracticeCupid_;
    }
    hoWienerSwim_ = hoWienerSwim_.toUpperCase();
    hoWienerSwim_ = hoWienerSwim_.toUpperCase();
    enGil2_ = 1;
    ifDishHand_ = 78;
  }

  void hoMainMerely() {
    enGil2_ = 31;
    ifDishHand_ = 18;
    opMixerGreeting_ = emPracticeCupid_ && noClausMassage_;
    heGuitarBeyond_ = 36;
    if (ifOfourTile_ && noClausMassage_ && opMixerGreeting_) {
      ifOfourTile_ = !ifOfourTile_;
      noClausMassage_ = ifOfourTile_;
      opMixerGreeting_ = ifOfourTile_;
    }
    if (emPracticeCupid_ || noClausMassage_) {
      noClausMassage_ = !noClausMassage_;
    }
    if (opMixerGreeting_) {
      ifOfourTile_ = !noClausMassage_;
    }
    heGuitarBeyond_ = heGuitarBeyond_ + 1;
    enGil2_ = enGil2_ + ifDishHand_;
  }

  final String linkjoy_stubborn = "linkjoy_stubborn";
  final String linkjoy_duel_above_stubborn_eskimo =
      "linkjoy_duel_above_stubborn_eskimo";

  int albumMax = 6;

  List<LinkjoyFoolishlyImGeneric> photoSelectedList = [];

  List<LinkjoyFoolishlyImGeneric> photoList = [];

  int page = 1;
  bool hasMore = true;

  bool isRefreshing = true;
  late EasyRefreshController refreshController;

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
    refreshController = EasyRefreshController(controlFinishLoad: true);
  }

  @override
  void onReady() {
    super.onReady();
    refreshController.callRefresh();
  }

  void onLinkjoyStubbornVulcan({bool showLoading = false}) async {
    if (!isRefreshing) {
      isRefreshing = true;
    }

    LinkjoySororityDataCruel<LinkjoyFoolishlyImGeneric>? rsp =
        await requestForPhotoList(true, showLoading: showLoading);
    if (rsp != null) {
      photoList.clear();
      photoSelectedList.clear();
      update([linkjoy_duel_above_stubborn_eskimo]);
      photoList.addAll(rsp.records);
    }

    update([linkjoy_stubborn]);

    isRefreshing = false;
    if (hasMore) {
      refreshController.resetFooter();
    } else {
      refreshController.finishLoad(IndicatorResult.noMore);
    }
  }

  void onLinkjoyStubbornHappilyDirect() async {
    if (!hasMore) {
      refreshController.finishLoad(IndicatorResult.noMore);
      return;
    }
    LinkjoySororityDataCruel<LinkjoyFoolishlyImGeneric>? rsp =
        await requestForPhotoList(false);
    if (rsp != null) {
      photoList.addAll(rsp.records);
    }

    update([linkjoy_stubborn]);
    refreshController.finishLoad(
      hasMore ? IndicatorResult.success : IndicatorResult.noMore,
    );
  }

  Future<LinkjoySororityDataCruel<LinkjoyFoolishlyImGeneric>?>
  requestForPhotoList(bool refresh, {bool showLoading = false}) async {
    Map<String, dynamic> params = {"page": refresh ? 1 : page + 1};

    LinkjoySororityDataCruel<LinkjoyFoolishlyImGeneric>? rsp = await LINKJOY
        .http
        .rest(
          3033,
          params,
          (p0) => LinkjoySororityDataCruel<LinkjoyFoolishlyImGeneric>.fromJson(
            p0,
            (json) => LinkjoyFoolishlyImGeneric.fromJson(json),
          ),
          showLoadingUI: showLoading,
          autoToastOnError: true,
        );
    if (rsp != null) {
      page = rsp.page;
      hasMore = rsp.hasMore;
    }
    return rsp;
  }

  void onDeletePhoto() async {
    if (photoSelectedList.isNotEmpty) {
      LinkjoyUISocially.linkjoyWarlordSlur(
        onLinkjoyMandatorySlur,
        title: "linkjoy_caring_foolishly_im_duel_slur_divorce".tr,
        confirmText: "linkjoy_caring_slur".tr,
      );
    }
  }

  Future<void> onLinkjoyMandatorySlur() async {
    if (photoSelectedList.isEmpty) return;

    String ids = "";
    for (LinkjoyFoolishlyImGeneric media in photoSelectedList) {
      if (LinkjoyGnomeSister.isEmpty(ids)) {
        ids = "${media.fileId}";
      } else {
        ids = "$ids,${media.fileId}";
      }
    }
    Map<String, dynamic> params = {"file_ids": ids};

    bool rsp = await LINKJOY.http.submit(
      3032,
      params,
      showLoadingUI: true,
      autoToastOnError: true,
    );
    if (rsp) {
      LinkjoyUpper.showSuccess('linkjoy_caring_bronze_soda'.tr);
      photoSelectedList.clear();
      update([linkjoy_stubborn]);
      onLinkjoyStubbornVulcan();
    }
  }

  void onLinkjoyMandatoryNetflix() async {
    LinkjoyGenericSister.linkjoyMarketingGenericFairness(
      Get.context!,
      preferredLensDirection: CameraLensDirection.front,
      maxCount: albumMax,
      (list) async {
        int idx = 0;
        try {
          for (var data in list) {
            EasyLoading.show(
              status: "${++idx}/${list.length}",
              maskType: EasyLoadingMaskType.black,
            );
            MediaVo? vo;
            if (data is LinkjoyFondnessFasten) {
              final rsp = await LinkjoyVetoOily.instance
                  .upload(data.imgUrl!, UploadType.image, showLoadingUI: false)
                  .last;
              if (rsp.result?.img != null) {
                vo = PhotoVO()
                  ..id = LinkjoyGnomeSister.parseString(rsp.result?.img?.id)
                  ..img_url = LinkjoyGnomeSister.parseString(
                    rsp.result?.img?.url,
                  );
              } else {
                LinkjoyGnomeSister.nullSafe<String>(
                  rsp.errorMsg,
                  notNullBlock: (notNull) => LinkjoyUpper.showToast(notNull),
                );
              }
            } else if (data is LinkjoyFondnessDegrasse) {
              final rsp = await LinkjoyVetoOily.instance
                  .upload(
                    data.videoUrl!,
                    UploadType.video,
                    showLoadingUI: false,
                  )
                  .last;
              if (rsp.result?.video != null) {
                vo = VideoVO()
                  ..id = LinkjoyGnomeSister.parseString(rsp.result!.video!.id)
                  ..video_url = LinkjoyGnomeSister.parseString(
                    rsp.result!.video!.url,
                  )
                  ..cover_url = LinkjoyGnomeSister.parseString(
                    rsp.result!.video!.coverUrl,
                  );
              } else {
                LinkjoyGnomeSister.nullSafe<String>(
                  rsp.errorMsg,
                  notNullBlock: (notNull) => LinkjoyUpper.showToast(notNull),
                );
              }
            }

            if (vo != null) {
              await _linkjoyWoof(
                _linkjoyOughtaSmackEar(vo),
                () {},
                showLoadingUI: false,
              );
            }
          }

          onLinkjoyStubbornVulcan();
        } catch (e) {
        } finally {
          EasyLoading.dismiss(animation: true);
        }
      },
      type: MediaPickerType.imageAndVideo,
    );
  }

  String _linkjoyOughtaSmackEar(MediaVo? add) {
    List<dynamic> pkgs = [];
    if (add != null) {
      pkgs.add({"id": add.id, "type": add is PhotoVO ? 1 : 2});
    }
    return json.encode(pkgs);
  }

  Future<void> _linkjoyWoof(
    String value,
    Function succ, {
    bool showLoadingUI = true,
  }) async {
    Map<String, dynamic> params = {"files": value};

    bool rsp = await LINKJOY.http.submit(
      3031,
      params,
      showLoadingUI: showLoadingUI,
      autoToastOnError: true,
    );

    if (rsp) {
      succ();
      LinkjoyUpper.showSuccess('linkjoy_caring_bronze_soda'.tr);
    }
  }

  void onSelectItem(LinkjoyFoolishlyImGeneric media) {
    if (photoSelectedList.contains(media)) {
      photoSelectedList.remove(media);
    } else {
      if (photoSelectedList.length < albumMax) {
        photoSelectedList.add(media);
      }
    }
    update([linkjoy_stubborn, linkjoy_duel_above_stubborn_eskimo]);
  }

  void onSendMedia() {
    if (photoSelectedList.isNotEmpty) {
      if (hasPendingOrFailedReviewInSelectedList()) {
        linkjoyMarketingImDuelTrademarkIntolerant();
        return;
      }
      Get.back(result: photoSelectedList);
    }
  }

  bool hasPendingOrFailedReviewInSelectedList() {
    if (photoSelectedList.isEmpty) {
      return false;
    }
    for (LinkjoyFoolishlyImGeneric media in photoSelectedList) {
      if (media.status != 1) {
        return true;
      }
    }
    return false;
  }

  void linkjoyMarketingImDuelTrademarkIntolerant() {
    LinkjoyUIShredder.linkjoyImDuelTrademarkIntolerant(
      () => onLinkjoyMandatoryNetflix(),
    );
  }
}
