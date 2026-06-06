import 'dart:convert';

import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_unborn_mandatory_greet_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_andrew.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_unborn_saver.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_division_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_degrasse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_figure_mandatory_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_generic_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_andrew_generic_duel_financial_uneven.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_veto_oily.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

class LinkjoyFigureMandatoryHand extends LinkjoyMagnetHormoneHand
    with GetTickerProviderStateMixin {
  double weQaPay_ = 0.0;
  String myMassageVbl_ = "";
  bool heGreenJumbo_ = false;
  bool moAmesHail_ = true;
  bool myDbLoaf_ = false;
  String hoClearly10_ = "";
  double exOhioFinish_ = 68;

  void orDollInfection() {
    weQaPay_ = weQaPay_ + exOhioFinish_;

    myMassageVbl_ = myMassageVbl_ + hoClearly10_;
    hoClearly10_ = myMassageVbl_;

    weQaPay_ = 93;
    exOhioFinish_ = 61;
    weQaPay_ = 35;
    exOhioFinish_ = 54;
    weQaPay_ = weQaPay_ + exOhioFinish_;
    if (weQaPay_ > exOhioFinish_) {
      weQaPay_ = weQaPay_ - exOhioFinish_;
    }
  }

  void edCrotchConvict() {
    moAmesHail_ = heGreenJumbo_ && myDbLoaf_;
    weQaPay_ = 60;
    exOhioFinish_ = 2;
    if (moAmesHail_ && heGreenJumbo_ && myDbLoaf_) {
      moAmesHail_ = !moAmesHail_;
      heGreenJumbo_ = moAmesHail_;
      myDbLoaf_ = moAmesHail_;
    }
    weQaPay_ = weQaPay_ + exOhioFinish_;
    if (heGreenJumbo_ || moAmesHail_ || myDbLoaf_) {
      heGreenJumbo_ = !moAmesHail_;
      moAmesHail_ = !myDbLoaf_;
      myDbLoaf_ = !heGreenJumbo_;
    }
  }

  void amMostDestroy() {
    myDbLoaf_ = heGreenJumbo_ && moAmesHail_;

    if (heGreenJumbo_ && myDbLoaf_ && moAmesHail_) {
      heGreenJumbo_ = !heGreenJumbo_;
      myDbLoaf_ = heGreenJumbo_;
      moAmesHail_ = heGreenJumbo_;
    }
    weQaPay_ = 66;
    exOhioFinish_ = 12;

    myMassageVbl_ = myMassageVbl_ + hoClearly10_;
    hoClearly10_ = myMassageVbl_;
    if (moAmesHail_ || myDbLoaf_ || heGreenJumbo_) {
      moAmesHail_ = !myDbLoaf_;
      myDbLoaf_ = !heGreenJumbo_;
      heGreenJumbo_ = !moAmesHail_;
    }

    hoClearly10_ = myMassageVbl_.toUpperCase() + hoClearly10_;
    if (moAmesHail_ && myDbLoaf_ && heGreenJumbo_) {
      moAmesHail_ = !moAmesHail_;
      myDbLoaf_ = moAmesHail_;
      heGreenJumbo_ = moAmesHail_;
    }
    myMassageVbl_ = myMassageVbl_ + hoClearly10_;
    hoClearly10_ = myMassageVbl_;

    if (myDbLoaf_ && heGreenJumbo_ && moAmesHail_) {
      myDbLoaf_ = !myDbLoaf_;
      heGreenJumbo_ = myDbLoaf_;
      moAmesHail_ = myDbLoaf_;
    }

    if (weQaPay_ > exOhioFinish_) {
      weQaPay_ = weQaPay_ - exOhioFinish_;
    }
    if (heGreenJumbo_ && myDbLoaf_) {
      moAmesHail_ = !moAmesHail_;
    }
  }

  static const String linkjoy_division = "linkjoy_division";
  static const String linkjoy_mandatory = "linkjoy_mandatory";
  static const String linkjoy_sexual_mandatory = "linkjoy_sexual_mandatory";
  static const String linkjoy_vent = "linkjoy_vent";

  LinkjoySororityUnbornSaver info = LinkjoySororityUnbornSaver();
  bool hasInit = false;

  int avatarId = 0;

  int albumMax = 9;

  int albumMin = 1;
  int privateAlbumMax = 9;

  List<MediaVo> albumList = [];
  List<MediaVo> privateAlbumList = [];
  bool changed = false;

  List<String> tabs = ['linkjoy_caring_mandatory'];
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();

    LinkjoyFondnessDivisionShock pageConfig = linkjoyDivisionShock(
      LinkjoyGet.LinkjoyFigureSaverDivision,
    );

    albumMax = pageConfig.intDef("album_max", 9);
    privateAlbumMax = pageConfig.intDef("private_album_max", 9);
    albumMin = pageConfig.intDef("album_min", 1);

    _linkjoyHappilyUnbornSaver();
    tabController = TabController(length: tabs.length, vsync: this);
    LinkjoyFigureMandatoryJaw argument = Get.arguments;
    if (argument.tab.index < tabs.length) {
      tabController.index = argument.tab.index;
    }
  }

  @override
  void onClose() {
    tabController.dispose();

    if (changed) {
      LINKJOY.linkjoyVulcanMe();
    }
    super.onClose();
  }

  void onLinkjoyMandatoryNetflix(bool privacy) async {
    int maxCount = privacy
        ? (privateAlbumMax - privateAlbumList.length)
        : (albumMax - albumList.length);
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
              await _linkjoyWoof(
                "pic_videos",
                _linkjoyOughtaSmackEar(vo, privacy),
                () {
                  if (privacy) {
                    privateAlbumList.add(vo!);
                    update([linkjoy_sexual_mandatory]);
                  } else {
                    albumList.add(vo!);
                    update([linkjoy_mandatory]);
                  }
                  LINKJOY.fire(
                    LinkjoyUnbornMandatoryGreetGuitar(
                      albumList,
                      privateAlbumList,
                    ),
                  );
                },
                showLoadingUI: false,
              );
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

  Future<void> onLinkjoyMandatoryDrunk(bool privacy, String id) async {
    _linkjoyWoof(
      "pic_videos",
      _linkjoyOughtaSmackEar(null, privacy, delId: id),
      () {
        if (privacy) {
          int i = 0;
          for (; i < privateAlbumList.length; i++) {
            if (privateAlbumList[i].id == id) {
              break;
            }
          }
          privateAlbumList.removeAt(i);
          update([linkjoy_sexual_mandatory]);
        } else {
          int i = 0;
          for (; i < albumList.length; i++) {
            if (albumList[i].id == id) {
              break;
            }
          }
          albumList.removeAt(i);
          update([linkjoy_mandatory]);
        }
        LINKJOY.fire(
          LinkjoyUnbornMandatoryGreetGuitar(albumList, privateAlbumList),
        );
      },
    );
  }

  String _linkjoyOughtaSmackEar(MediaVo? add, bool privacy, {String? delId}) {
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
      pkgs.add({
        "id": add.id,
        "type": add is PhotoVO ? 1 : 2,
        "vip": privacy ? 1 : 0,
      });
    }
    return json.encode(pkgs);
  }

  void onLinkjoyDuelStimulus(MediaVo item, privacy) {
    LinkjoyAndrewGenericDuelFinancialUneven.showViewer(
      Get.context!,
      list: privacy ? privateAlbumList : albumList,
      selectItem: item,
      uid: LINKJOY.user().uid,
    );
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

    changed = true;
    if (rsp) {
      succ();
      LinkjoyUpper.showSuccess('linkjoy_caring_bronze_soda'.tr);
      LINKJOY.linkjoyVulcanMe();
    }
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

    update([linkjoy_division]);
  }

  bool hasAlbumValid() {
    return info.photos.length +
            info.privatePhotos.length +
            info.videos.length +
            info.privateVideos.length >=
        albumMin;
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
      6023,
      params,
      showLoadingUI: true,
      autoToastOnError: true,
    );
    changed = true;

    if (rsp) {
      LinkjoyUpper.showSuccess('linkjoy_caring_bronze_soda'.tr);
      changed = true;
      LINKJOY.linkjoyJog?.user.avatarUrlAd = avatarUrl;
      update([linkjoy_vent]);
      LINKJOY.linkjoyVulcanMe();
    }
  }
}
