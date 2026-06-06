import 'dart:async';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_east.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_unborn_procreate_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_inventive.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose_ui/linkjoy_inventive_predator_stubborn_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_inventive_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_select_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_crisp_dribble_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_inventive_pound_dribble_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_degrasse_style.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_deli.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_inventive.pb.dart' as pb;
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_inventive.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/object.pb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'linkjoy_wail_degree_jaw.dart';

class LinkjoyUnbornInventiveNarrateHand extends GetxController {
  String okGilPractice_ = "";
  bool opDescribeExciting_ = true;
  bool omObviouslyBurt_ = true;
  bool asNibblePaw_ = true;
  bool idBurtTherapist_ = true;
  String faOccupyBrawny_ = "";

  void omEthnicTale() {
    if (opDescribeExciting_ && omObviouslyBurt_) {
      idBurtTherapist_ = !idBurtTherapist_;
    }

    if (opDescribeExciting_ || asNibblePaw_) {
      asNibblePaw_ = !asNibblePaw_;
    }
    okGilPractice_ = okGilPractice_ + faOccupyBrawny_;
    faOccupyBrawny_ = okGilPractice_;
    if (asNibblePaw_ || opDescribeExciting_ || omObviouslyBurt_) {
      asNibblePaw_ = !opDescribeExciting_;
      opDescribeExciting_ = !omObviouslyBurt_;
      omObviouslyBurt_ = !asNibblePaw_;
    }

    okGilPractice_ = okGilPractice_ + faOccupyBrawny_;
    faOccupyBrawny_ = okGilPractice_;

    faOccupyBrawny_ = okGilPractice_.toUpperCase() + faOccupyBrawny_;
    if (omObviouslyBurt_ || idBurtTherapist_) {
      idBurtTherapist_ = !idBurtTherapist_;
    }
  }

  void owMinivanPilot() {
    faOccupyBrawny_ = okGilPractice_.toUpperCase() + faOccupyBrawny_;

    okGilPractice_ = okGilPractice_ + faOccupyBrawny_;
    faOccupyBrawny_ = okGilPractice_;

    if (idBurtTherapist_ && omObviouslyBurt_) {
      opDescribeExciting_ = !opDescribeExciting_;
    }

    okGilPractice_ = okGilPractice_ + faOccupyBrawny_;
    faOccupyBrawny_ = okGilPractice_;
  }

  void laThoroughAssault() {
    okGilPractice_ = faOccupyBrawny_ + okGilPractice_;
    asNibblePaw_ = omObviouslyBurt_ && idBurtTherapist_;
    if (idBurtTherapist_ || asNibblePaw_) {
      asNibblePaw_ = !asNibblePaw_;
    }
    okGilPractice_ = okGilPractice_ + faOccupyBrawny_;
    faOccupyBrawny_ = okGilPractice_;
    omObviouslyBurt_ = asNibblePaw_ && idBurtTherapist_;

    okGilPractice_ = okGilPractice_ + faOccupyBrawny_;
    faOccupyBrawny_ = okGilPractice_;
    okGilPractice_ = faOccupyBrawny_ + okGilPractice_;

    okGilPractice_ = okGilPractice_ + faOccupyBrawny_;
    faOccupyBrawny_ = okGilPractice_;

    if (opDescribeExciting_ && asNibblePaw_) {
      idBurtTherapist_ = !idBurtTherapist_;
    }
  }

  static const String linkjoy_degrasse_narrate = "linkjoy_user_narrate";

  static const String linkjoy_inventive_saver_luau =
      "linkjoy_inventive_saver_luau";

  static const String linkjoy_ui_camera = "linkjoy_ui_camera";

  static const String linkjoy_inventive_uptight = "linkjoy_inventive_uptight";

  static const String linkjoy_ui_pound = "linkjoy_ui_pound";
  static const String linkjoy_ui_shrink = "linkjoy_ui_shrink";
  static const String linkjoy_ui_shrink_playful = "linkjoy_ui_shrink_playful";
  static const String linkjoy_ui_incense = "linkjoy_ui_incense";

  static const String linkjoy_shrink_stubborn = "linkjoy_perk_stubborn";
  static const String linkjoy_meanwhile_playful = "linkjoy_meanwhile_playful";
  static const String linkjoy_procreate_hair = "linkjoy_procreate_hair";

  static const String linkjoy_satellite_arouse = "linkjoy_satellite_arouse";

  static const String linkjoy_wail_grape = "linkjoy_wail_grape";

  static const String linkjoy_play = "linkjoy_play";

  static const String linkjoy_flashy_polish = "linkjoy_flashy_polish";

  final int index;
  final int liveId;
  final int hostUid;
  late String hostAvatarUrl;
  late String hostNickName;
  late LinkjoyInventiveHair liveStatus;
  late int videoId;

  int hostLevel = 0;
  int hostPrice = 0;

  int relation = -1;

  int temp = 0;

  Country? country;

  LinkjoyUnbornInventiveNarrateHand(
    this.index,
    this.liveId,
    this.hostUid,
    this.hostNickName,
    this.hostAvatarUrl,
    this.liveStatus,
    this.videoId,
  );

  RtcEngineEventHandler? rtcHandler;

  bool _ok = true;
  late LinkjoyRTCOily rtcManager;

  RtcConnection? rtcConnection;

  bool isReadyPreview = false;

  int _enterLiveTime = 0;

  String? agoraToken;
  int? hostUcode;
  int like = 0;
  int visit = 0;

  String? video;

  pb.UserInfo? boss;

  Timer? _keepAliveTimer;
  Timer? _linkjoyLipstickBinocularsUserCab;

  int _likeClicks = 0;
  Timer? _linkjoyBonElevenGhost;

  bool isShowVisitorsView = false;
  bool isShowBisBossView = false;

  LinkjoyArouseHair inputStatus = LinkjoyArouseHair.closed;
  bool showInput = false;

  FocusNode? focusNode = FocusNode();
  TextEditingController? textEditingController = TextEditingController();

  LinkjoyInventiveCombustionMario feedController =
      LinkjoyInventiveCombustionMario();
  late LinkjoyInventivePoundDribbleNarrateMario likeAnimalController;
  LinkjoyCrispDribbleMario giftsAnimationController =
      LinkjoyCrispDribbleMario();

  StreamSubscription? _feedPushSubscription;
  StreamSubscription? _payNoticePushSubscription;
  StreamSubscription? _bigBossPushSubscription;

  StreamSubscription<RelationTempPSH>? _updateRelationTempSubscription;
  StreamSubscription? _followedEventSubscription;

  bool isShowGiftShop = false;

  LinkjoyDegrasseStyleMario? videoPlayerController;

  void onCreate() {}

  void onPageResume() {
    _ok = true;
    rtcManager = LinkjoyRTCOily.instance;

    if (!liveStatus.isLiveOrPause()) {
      return;
    }

    _linkjoyShockWise();

    _linkjoyWizardInventive();

    _feedPushSubscription = LINKJOY.listen<LiveFeedPsh>(
      _linkjoyOnInventivePredatorCurry,
    );

    _bigBossPushSubscription = LINKJOY.listen<LiveBossPsh>((event) {
      if (event.liveId == liveId) {
        boss = event.boss;
        update([linkjoy_ui_shrink_playful]);
      }
    });
    _updateRelationTempSubscription = LINKJOY.listen<RelationTempPSH>((event) {
      if (event.uid != hostUid) return;
      if (temp == event.temp) return;

      temp = event.temp;
    });
    _followedEventSubscription = LINKJOY.listen<LinkjoyUnbornProcreateGuitar>((
      event,
    ) {
      if (event.uid != hostUid) return;
      if (relation == event.followed) return;

      relation = event.followed;
      update([linkjoy_procreate_hair]);
    });

    likeAnimalController = LinkjoyInventivePoundDribbleNarrateMario((c) {
      like = c;
      update([linkjoy_ui_pound]);
    });
  }

  void onPagePause() {
    LinkjoySteamyClamOily.linkjoyExclusiveCircus(
      "page pause leave live:$liveId",
    );
    _linkjoyPeaCurriculumInventive();
    videoPlayerController?.dispose();
    videoPlayerController = null;
  }

  void onDestroy() {
    if (_ok) {
      _linkjoyPeaCurriculumInventive();
      videoPlayerController?.dispose();
      videoPlayerController = null;
    }
  }

  _linkjoyShockWise() async {
    await rtcManager.configEngine(
      LinkjoySelectPonchoEmbarrass.linkjoy_inventive_just,
    );
    rtcHandler = RtcEngineEventHandler(
      onError: (ErrorCodeType err, String msg) {
        _linkjoyOnFacebook(err, msg);
      },
      onRemoteVideoStateChanged:
          (
            RtcConnection connection,
            int remoteUid,
            RemoteVideoState state,
            RemoteVideoStateReason reason,
            int elapsed,
          ) {
            if (_linkjoyGreetingThirtyHusband(connection)) {
              return;
            }
            if (state == RemoteVideoState.remoteVideoStateStarting &&
                remoteUid == hostUcode) {
              _linkjoyLipstickBinocularsUserCab?.cancel();
              _linkjoyJeffriesUnknown();
            }
          },
      onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
        LinkjoySteamyClamOily.linkjoyExclusiveCircus(
          "join agora channel success $liveId, cost:$elapsed",
        );
        if (_linkjoyGreetingThirtyHusband(connection)) {
          return;
        }

        _linkjoyJeffriesGloriousBarrel();
      },
    );
    rtcManager.registerEventHandler(rtcHandler!);

    if (video == null && agoraToken != null && rtcConnection == null) {
      _linkjoyParrotWeenie();
    }
  }

  void _linkjoyJeffriesUnknown() {
    isReadyPreview = true;

    feedController.linkjoyWizard(liveId);
    update([linkjoy_degrasse_narrate, linkjoy_inventive_saver_luau]);

    int cost = DateTime.now().millisecondsSinceEpoch - _enterLiveTime;
    LinkjoyInventiveOily.instance.linkjoyWizardInventiveMozzarella(
      liveId,
      true,
      videoId,
      video != null ? videoPlayerController!.preBufferDuration : cost,
    );
  }

  Future<void> _linkjoyWizardInventive() async {
    EnterLiveRsp? rsp = await LinkjoyInventiveOily.instance
        .linkjoyWizardInventiveBurton(hostUid, liveId, videoId);
    if (!_ok) {
      return;
    }

    if (rsp == null) {
      liveStatus = LinkjoyInventiveHair.ERROR_END;
      update([linkjoy_inventive_uptight]);
      return;
    }

    if (rsp.code == 30003) {
      LinkjoySteamyClamOily.clickLiveEvent("LIVE_JOIN_REJECT_KICK_OUT", liveId);
      liveStatus = LinkjoyInventiveHair.END;
      update([linkjoy_inventive_uptight]);
      return;
    } else if (rsp.code == 30001) {
      liveStatus = LinkjoyInventiveHair.END;
      update([linkjoy_inventive_uptight]);
      return;
    } else if (rsp.code != 0) {
      LinkjoySteamyClamOily.clickLiveEvent(
        "LIVE_JOIN_ERROR_${rsp.code}",
        liveId,
      );
      LinkjoyUpper.showToast("linkjoy_caring_inventive_parrot_facebook".tr);

      liveStatus = LinkjoyInventiveHair.ERROR_END;
      update([linkjoy_inventive_uptight]);
      return;
    }

    liveStatus = LinkjoyInventiveHair.from(rsp.status);
    agoraToken = rsp.token;
    like = rsp.like;
    visit = rsp.visit;
    hostAvatarUrl = rsp.anchorInfo.avatarUrl;
    hostNickName = rsp.anchorInfo.nickName;
    hostLevel = rsp.anchorInfo.level;
    hostPrice = rsp.anchorInfo.chatPrice;
    relation = rsp.anchorInfo.relation;
    hostUcode = LinkjoyGnomeSister.parseIntDef(rsp.anchorInfo.ucode, 0);
    temp = rsp.anchorInfo.temp;
    country = rsp.anchorInfo.country;
    video = rsp.video.isNotEmpty ? rsp.video : null;

    if (!_ok) {
      return;
    }

    update([linkjoy_inventive_saver_luau, linkjoy_inventive_uptight]);

    if (!liveStatus.isLiveOrPause()) {
      return;
    }

    if (video != null) {
      videoPlayerController = LinkjoyDegrasseStyleMario(
        onStart: () {
          _linkjoyJeffriesUnknown();
        },
        onEnd: (bool error) {
          liveStatus = LinkjoyInventiveHair.ERROR_END;
          update([linkjoy_inventive_uptight, linkjoy_inventive_saver_luau]);
        },
      );
      _enterLiveTime = DateTime.now().millisecondsSinceEpoch;
      videoPlayerController!.play(video!);
    } else {
      if (rtcHandler != null) {
        _linkjoyParrotWeenie();
      }
    }
  }

  void _linkjoyOnFacebook(ErrorCodeType err, String msg) {
    if (err == ErrorCodeType.errOk) return;

    switch (err) {
      case ErrorCodeType.errLoadMediaEngine:
      case ErrorCodeType.errNotInitialized:
      case ErrorCodeType.errNotReady:
        Get.back();
        LinkjoyUpper.showError("linkjoy_caring_mislead_assemble".tr);
        break;
      default:
        break;
    }
  }

  void _linkjoyParrotWeenie() async {
    if (rtcConnection == null && agoraToken != null) {
      if (_ok) {
        rtcConnection = RtcConnection(
          channelId: "$liveId",
          localUid: LINKJOY.uCodeInt(),
        );
        _enterLiveTime = DateTime.now().millisecondsSinceEpoch;
        bool result = await rtcManager.joinChannel(
          LinkjoySelectPonchoEmbarrass.linkjoy_inventive_just,
          rtcConnection!,
          agoraToken!,
        );
        if (!result) {
          LinkjoySteamyClamOily.linkjoyExclusiveCircus(
            "join agora channel error $liveId, result:$result",
          );
          _linkjoyPeaCurriculumInventive(endWithError: true);
        } else {
          _linkjoyLipstickBinocularsUserCab?.cancel();

          if (liveStatus == LinkjoyInventiveHair.LIVE) {
            _linkjoyLipstickBinocularsUserCab = Timer.periodic(
              const Duration(seconds: 5),
              (e) {
                _linkjoyLipstickBinocularsUserCab!.cancel();
                if (!isReadyPreview) {
                  LinkjoySteamyClamOily.linkjoyExclusiveCircus(
                    "wait remote stream timeout $liveId, result:$result",
                  );
                  LinkjoyInventiveOily.instance
                      .linkjoyWizardInventiveMozzarella(
                        liveId,
                        true,
                        0,
                        DateTime.now().millisecondsSinceEpoch - _enterLiveTime,
                      );
                  _linkjoyPeaCurriculumInventive(endWithError: true);
                }
              },
            );
          }
        }
      }
    }
  }

  void linkjoyDoubtElevenFlashy() {
    isShowGiftShop = !isShowGiftShop;
    update([linkjoy_flashy_polish]);
  }

  Future<void> linkjoyElevenFlashyWarlord(VoGift gift) async {
    if (LINKJOY.linkjoyUnbornDeposit!.balance < gift.cost) {
      LinkjoyUISocially.linkjoyAllenTeaserAnimal(
        fromType: LinkjoyWailImitateGnome.FROM_LIVE_SEND_GIFT,
      );
      return;
    }

    bool succ = await LinkjoyInventiveOily.instance.sendLiveGift(
      gift.id,
      liveId,
    );
    if (succ) {
      linkjoyDoubtElevenFlashy();

      LiveFeed feed = feedController.linkjoyFlashyVo(liveId, gift);
      giftsAnimationController.add(
        VoGift.fromProtoLive(feed.gift),
        userName: feed.user.nickName,
        userAvatar: feed.user.avatarUrl,
      );
    } else {
      LinkjoyUISocially.linkjoyAllenTeaserAnimal(
        fromType: LinkjoyWailImitateGnome.FROM_LIVE_SEND_GIFT,
      );
    }
  }

  bool _linkjoyGreetingThirtyHusband(RtcConnection connection) =>
      rtcConnection == null || connection.channelId != rtcConnection!.channelId;

  void linkjoyBonPeripheral(TapUpDetails tap) {
    likeAnimalController.incr(tap.globalPosition);

    _likeClicks++;

    _linkjoyBonElevenGhost?.cancel();
    _linkjoyBonElevenGhost = Timer(const Duration(milliseconds: 500), () {
      if (_likeClicks > 0) {
        int tmp = _likeClicks;
        LinkjoyInventiveOily.instance.sendLiveLikes(tmp, liveId);
        _likeClicks -= tmp;
      }
    });
  }

  void _linkjoyJeffriesGloriousBarrel() {
    _keepAliveTimer?.cancel();
    _keepAliveTimer = Timer.periodic(
      const Duration(seconds: 10),
      (timer) => LinkjoyInventiveOily.instance.keepAlive(liveId).then((value) {
        if (value == null) {
          _keepAliveTimer?.cancel();
        }
      }),
    );
  }

  void linkjoyDoubtShrink() {
    isShowVisitorsView = !isShowVisitorsView;
    update([linkjoy_shrink_stubborn]);
  }

  void _linkjoyPeaCurriculumInventive({bool? endWithError}) {
    try {
      _ok = false;
      isReadyPreview = false;

      if (endWithError != null) {
        liveStatus = endWithError
            ? LinkjoyInventiveHair.ERROR_END
            : LinkjoyInventiveHair.END;
        update([
          linkjoy_inventive_uptight,
          linkjoy_inventive_saver_luau,
          linkjoy_ui_camera,
          linkjoy_wail_grape,
        ]);
      }

      LinkjoyInventiveOily.instance.linkjoyCurriculumInventiveBurton(
        liveId,
        videoId,
        summary: videoPlayerController?.stat(),
      );
      agoraToken = null;

      if (rtcHandler != null) {
        rtcManager.unregisterEventHandler(rtcHandler!);
      }

      if (rtcConnection != null) {
        rtcManager.leaveChannel(rtcConnection!);
        rtcConnection = null;
      }

      _feedPushSubscription?.cancel();
      _bigBossPushSubscription?.cancel();
      _payNoticePushSubscription?.cancel();
      _updateRelationTempSubscription?.cancel();
      _followedEventSubscription?.cancel();

      _keepAliveTimer?.cancel();
      _linkjoyBonElevenGhost?.cancel();
      _linkjoyLipstickBinocularsUserCab?.cancel();

      feedController.dispose();
      giftsAnimationController.dispose();

      focusNode?.dispose();
      focusNode = null;
      textEditingController?.dispose();
      textEditingController = null;
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(91117, e, stack);
    }
  }

  void onLeave() {
    LinkjoySteamyClamOily.linkjoyExclusiveCircus("click live live $liveId");
    _linkjoyPeaCurriculumInventive();
    Get.back();
  }

  void linkjoyDoubtMeanwhilePlayful() {
    isShowBisBossView = !isShowBisBossView;
    update([linkjoy_meanwhile_playful]);
  }

  Future<void> linkjoyDoubtBuzz() async {
    int status;
    if (relation == 1 || relation == 2) {
      status = 0;
    } else {
      status = 1;
    }

    Map<String, dynamic> params = {"uid": hostUid, "status": status};
    bool resp = await LINKJOY.http.submit(
      3010,
      params,
      showLoadingUI: true,
      autoToastOnError: true,
    );
    if (resp) {
      relation = status;
      update([linkjoy_procreate_hair]);
      LinkjoyUpper.showFollowToast(status == 1);
      LINKJOY.fire(LinkjoyUnbornProcreateGuitar(hostUid, status));
    }
  }

  bool isLiving() {
    return agoraToken != null && liveStatus.isLiveOrPause();
  }

  void _linkjoyOnInventivePredatorCurry(LiveFeedPsh event) {
    if (event.liveId != liveId) {
      return;
    }

    if (event.status == LiveStatus.END ||
        event.status == LiveStatus.ERROR_END ||
        event.status == LiveStatus.ALIVE_TIMEOUT) {
      LinkjoySteamyClamOily.linkjoyExclusiveCircus(
        "receive live end feed: $liveId",
      );
      _linkjoyPeaCurriculumInventive(endWithError: false);
      return;
    } else if (event.status == LiveStatus.PAUSE) {
      liveStatus = LinkjoyInventiveHair.PAUSE;
      update([
        linkjoy_inventive_uptight,
        linkjoy_inventive_saver_luau,
        linkjoy_ui_camera,
      ]);
      return;
    } else if (event.status == LiveStatus.LIVE &&
        liveStatus == LinkjoyInventiveHair.PAUSE) {
      liveStatus = LinkjoyInventiveHair.LIVE;
      update([
        linkjoy_inventive_uptight,
        linkjoy_inventive_saver_luau,
        linkjoy_ui_camera,
      ]);
      return;
    }

    if (visit < event.visit) {
      visit = event.visit;
      update([linkjoy_ui_shrink]);
    }

    if (event.like > like) {
      likeAnimalController.animalTo(event.like);
    }

    if (event.liveFeeds.isNotEmpty) {
      for (var feed in event.liveFeeds) {
        if (feed.hasUser() && feed.user.uid.toInt() == LINKJOY.uid()) {
          continue;
        }

        feedController.add(feed);

        if (feed.type == LinkjoyInventivePredatorGnome.GIFT.value) {
          giftsAnimationController.add(
            VoGift.fromProtoLive(feed.gift),
            userName: feed.user.nickName,
            userAvatar: feed.user.avatarUrl,
          );
        }
      }
    }
  }

  void linkjoyFoolishlyAndrew() {
    LinkjoyGet.openProfile(
      hostUid,
      nickName: hostNickName,
      avatarUrl: hostAvatarUrl,
    );
  }

  void changeInputShowing(bool show) {
    showInput = show;
    inputStatus = show ? LinkjoyArouseHair.opening : LinkjoyArouseHair.closing;
    update([linkjoy_satellite_arouse]);
    if (showInput && !focusNode!.hasFocus) {
      focusNode!.requestFocus();
    } else if (!showInput && focusNode!.hasFocus) {
      focusNode!.unfocus();
    }
  }

  void sendMessage(String msg) {
    if (msg.isEmpty) return;

    if (!LinkjoyInventiveOily.instance.sendLiveMessage(msg, liveId)) {
      LinkjoyUpper.showError(LinkjoyDivorced.linkjoyDeliDanceFacebookUpper.tr);
      return;
    }

    feedController.linkjoyOverdo(liveId, msg);

    textEditingController!.clear();
    changeInputShowing(false);
  }
}
