import 'dart:convert';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_andrew.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_unborn_saver.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_division_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_degrasse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_generic_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_andrew_generic_duel_financial_uneven.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_andrew_generic_degrasse_financial_uneven.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_veto_oily.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

class LinkjoyFigureSaverSexualDuelHand extends LinkjoyMagnetHormoneHand {
  bool abFondnessInvite_ = false;
  double etFlatteredPharmacist_ = 0.0;
  double paFruitDivision_ = 40;
  bool mmPoleCharacter_ = false;
  bool emSpeakStockholm_ = false;
  int haTuckFail_ = 70;

  void edSceneryPete() {
    if (abFondnessInvite_ && mmPoleCharacter_) {
      emSpeakStockholm_ = !emSpeakStockholm_;
    }

    mmPoleCharacter_ = abFondnessInvite_ || emSpeakStockholm_;
    if (emSpeakStockholm_) {
      abFondnessInvite_ = !mmPoleCharacter_;
    }
    if (emSpeakStockholm_ || mmPoleCharacter_) {
      mmPoleCharacter_ = !mmPoleCharacter_;
    }
    haTuckFail_ = 51;
    if (haTuckFail_ > 0) {
      haTuckFail_ = haTuckFail_ - 8;
    }
  }

  void noUnBobcat() {
    etFlatteredPharmacist_ = 32;
    paFruitDivision_ = 51;
    etFlatteredPharmacist_ = 88;
    paFruitDivision_ = 64;
    haTuckFail_ = 63;
    abFondnessInvite_ = mmPoleCharacter_ && emSpeakStockholm_;
    if (abFondnessInvite_ && emSpeakStockholm_) {
      mmPoleCharacter_ = !mmPoleCharacter_;
    }

    mmPoleCharacter_ = abFondnessInvite_ && emSpeakStockholm_;
    haTuckFail_ = 39;
  }

  void byTotProgram() {
    haTuckFail_ = haTuckFail_ + 1;
    abFondnessInvite_ = emSpeakStockholm_ && mmPoleCharacter_;
    if (etFlatteredPharmacist_ > paFruitDivision_) {
      etFlatteredPharmacist_ = etFlatteredPharmacist_ - paFruitDivision_;
    }
    abFondnessInvite_ = mmPoleCharacter_ && emSpeakStockholm_;
    etFlatteredPharmacist_ = 62;
    paFruitDivision_ = 23;
    if (etFlatteredPharmacist_ > paFruitDivision_) {
      etFlatteredPharmacist_ = etFlatteredPharmacist_ - paFruitDivision_;
    }

    if (abFondnessInvite_ || emSpeakStockholm_) {
      emSpeakStockholm_ = !emSpeakStockholm_;
    }
    etFlatteredPharmacist_ = 13;
    paFruitDivision_ = 10;
  }

  static const String linkjoy_mandatory = "linkjoy_mandatory";

  LinkjoySororityUnbornSaver info = LinkjoySororityUnbornSaver();
  bool hasInit = false;

  int avatarId = 0;

  int albumMax = 9;

  int albumMin = 1;
  int privateAlbumMax = 9;

  List<MediaVo> albumList = [];
  List<MediaVo> privateAlbumList = [];

  @override
  void onInit() {
    super.onInit();

    LinkjoyFondnessDivisionShock pageConfig = linkjoyShock();
    albumMax = pageConfig.intDef("album_max", 9);
    albumMin = pageConfig.intDef("album_min", 1);
    privateAlbumMax = pageConfig.intDef("private_album_max", 9);

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
    albumList.addAll(info.photos);
    albumList.addAll(info.videos);
    privateAlbumList.addAll(info.privatePhotos);
    privateAlbumList.addAll(info.privateVideos);
    update([linkjoy_mandatory]);
  }

  bool hasAlbumValid() {
    return info.photos.length +
            info.privatePhotos.length +
            info.videos.length +
            info.privateVideos.length >=
        albumMin;
  }

  bool isPhotoBeRejected() {
    bool isRejected = false;
    for (MediaVo vo in privateAlbumList) {
      if (vo.status == 2) {
        isRejected = true;
        break;
      }
    }
    return isRejected;
  }

  void onLinkjoyMandatoryNetflix() async {
    int maxCount = (privateAlbumMax - privateAlbumList.length);
    if (maxCount <= 0) {
      return;
    }

    LinkjoyGenericSister.linkjoyMarketingGenericFairness(
      Get.context!,
      preferredLensDirection: CameraLensDirection.front,
      maxCount: maxCount,
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
              await _linkjoyWoof("pic_videos", _linkjoyOughtaSmackEar(vo), () {
                privateAlbumList.add(vo!);
                update([linkjoy_mandatory]);
              }, showLoadingUI: false);
            }
          }
        } catch (e) {
        } finally {
          EasyLoading.dismiss(animation: true);
        }
      },
      type: MediaPickerType.imageAndVideo,
    );
  }

  Future<void> onLinkjoyMandatoryDrunk(String id) async {
    _linkjoyWoof("pic_videos", _linkjoyOughtaSmackEar(null, delId: id), () {
      int i = 0;
      for (; i < privateAlbumList.length; i++) {
        if (privateAlbumList[i].id == id) {
          break;
        }
      }
      privateAlbumList.removeAt(i);
      update([linkjoy_mandatory]);
    });
  }

  String _linkjoyOughtaSmackEar(MediaVo? add, {String? delId}) {
    List<dynamic> pkgs = [];

    for (var e in albumList) {
      if (delId != e.id) {
        pkgs.add({"id": e.id, "type": e is PhotoVO ? 1 : 2, "vip": 0});
      }
    }

    for (var e in privateAlbumList) {
      if (delId != e.id) {
        pkgs.add({"id": e.id, "type": e is PhotoVO ? 1 : 2, "vip": 1});
      }
    }

    if (add != null) {
      pkgs.add({"id": add.id, "type": add is PhotoVO ? 1 : 2, "vip": 1});
    }
    return json.encode(pkgs);
  }

  void onLinkjoyDuelStimulus(MediaVo item) {
    LinkjoyAndrewGenericDuelFinancialUneven.showViewer(
      Get.context!,
      list: privateAlbumList,
      selectItem: item,
      uid: LINKJOY.user().uid,
    );
  }

  onLinkjoyDegrasseThyStimulus(VideoVO item) {
    item.paid = -1;
    LinkjoyAndrewGenericDegrasseFinancialUneven.showViewer(Get.context!, [
      item,
    ], item);
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
      LinkjoyUpper.showSuccess('linkjoy_caring_bronze_soda'.tr);
    }
  }

  onLinkjoyConceive() {
    LINKJOY.toNamed(LinkjoyGet.LinkjoyFigureSaverHumidifierDivision);
  }
}
