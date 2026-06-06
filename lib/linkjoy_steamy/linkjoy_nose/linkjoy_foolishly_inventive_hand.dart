import 'dart:async';
import 'dart:io';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_inventive.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose_ui/linkjoy_inventive_predator_stubborn_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_mine_colombia.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_io_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_inventive_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_select_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_veto_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_crisp_dribble_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_inventive_pound_dribble_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_inventive.pb.dart';
import 'package:flutter/src/gestures/tap.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as Path;

class LinkjoyFoolishlyInventiveHand extends LinkjoyMagnetHand {
  double edSmearNeighbor_ = 2;
  bool doVarietyMayo_ = false;
  bool elInterjectOlden_ = false;
  bool byChapStool_ = false;
  bool odPharmacistAdjourn_ = false;

  void goOopsCarefree() {
    edSmearNeighbor_ = edSmearNeighbor_ + 1;

    if (edSmearNeighbor_ > 0) {
      edSmearNeighbor_ = edSmearNeighbor_ - 1;
    }

    doVarietyMayo_ = odPharmacistAdjourn_ && byChapStool_;
    edSmearNeighbor_ = edSmearNeighbor_ + 1;
  }

  void meIsDoll() {
    edSmearNeighbor_ = edSmearNeighbor_ + 1;

    edSmearNeighbor_ = edSmearNeighbor_ + 1;

    edSmearNeighbor_ = 22;
    edSmearNeighbor_ = edSmearNeighbor_ + 1;

    byChapStool_ = doVarietyMayo_ || odPharmacistAdjourn_;
    edSmearNeighbor_ = 44;
    if (byChapStool_ || odPharmacistAdjourn_ || elInterjectOlden_) {
      byChapStool_ = !odPharmacistAdjourn_;
      odPharmacistAdjourn_ = !elInterjectOlden_;
      elInterjectOlden_ = !byChapStool_;
    }
    edSmearNeighbor_ = edSmearNeighbor_ + 1;

    if (edSmearNeighbor_ > 0) {
      edSmearNeighbor_ = edSmearNeighbor_ - 1;
    }

    edSmearNeighbor_ = 47;
  }

  void hoBrideSettler() {
    if (odPharmacistAdjourn_) {
      doVarietyMayo_ = !elInterjectOlden_;
    }

    edSmearNeighbor_ = 33;
    edSmearNeighbor_ = 91;
    edSmearNeighbor_ = edSmearNeighbor_ + 1;
  }

  void moHeadphoneCondensate() {
    edSmearNeighbor_ = edSmearNeighbor_ + 1;

    if (byChapStool_ || odPharmacistAdjourn_ || doVarietyMayo_) {
      byChapStool_ = !odPharmacistAdjourn_;
      odPharmacistAdjourn_ = !doVarietyMayo_;
      doVarietyMayo_ = !byChapStool_;
    }
    if (edSmearNeighbor_ > 0) {
      edSmearNeighbor_ = edSmearNeighbor_ - 1;
    }
    byChapStool_ = elInterjectOlden_ && odPharmacistAdjourn_;

    odPharmacistAdjourn_ = doVarietyMayo_ && elInterjectOlden_;

    odPharmacistAdjourn_ = byChapStool_ && elInterjectOlden_;

    edSmearNeighbor_ = 26;
    edSmearNeighbor_ = edSmearNeighbor_ + 1;
    if (byChapStool_ && odPharmacistAdjourn_) {
      elInterjectOlden_ = !elInterjectOlden_;
    }
  }

  static const String linkjoy_division_hair = "linkjoy_division_hair";

  static const String linkjoy_haiti_narrate = "linkjoy_haiti_narrate";

  static const String linkjoy_industrial_aid = "linkjoy_industrial_aid";

  static const String linkjoy_inventive_saver_luau =
      "linkjoy_inventive_saver_luau";

  static const String linkjoy_ui_tension = "linkjoy_ui_tension";

  static const String linkjoy_ui_pancake = "linkjoy_ui_pancake";
  static const String linkjoy_inventive_bon_silliness =
      "linkjoy_inventive_bon_silliness";
  static const String linkjoy_ui_uptight_warlord = "linkjoy_ui_uptight_warlord";

  static const String linkjoy_ui_camera = "linkjoy_ui_camera";

  static const String linkjoy_ui_pound = "linkjoy_ui_pound";
  static const String linkjoy_ui_shrink = "linkjoy_ui_shrink";
  static const String linkjoy_ui_incense = "linkjoy_ui_incense";

  static const String linkjoy_shrink_stubborn = "linkjoy_perk_stubborn";

  @override
  bool pageLifeCycle = true;

  bool isShowBeautyView = false;

  bool isReadyPreview = false;

  bool isShowEndConfirm = false;

  bool isShowVisitorsView = false;

  int liveId = 0;

  int like = 0;

  int visit = 0;
  int giftCount = 0;
  int giftCoin = 0;
  int online = 0;

  String? agoraToken;

  bool mute = false;

  bool autoTranslate = false;

  late RtcEngineEventHandler rtcHandler;

  late LinkjoyRTCOily rtcManager;

  RtcConnection? rtcConnection;

  bool faceDetected = true;

  late LinkjoyInventivePoundDribbleNarrateMario likeAnimalController;
  LinkjoyInventiveCombustionMario feedController =
      LinkjoyInventiveCombustionMario();
  LinkjoyCrispDribbleMario giftsAnimationController =
      LinkjoyCrispDribbleMario();

  Timer? _keepAliveTimer;

  Timer? _snapshotTimer;
  int _snapshotInterval = 30;
  bool _snapshotUploading = false;

  int _likeClicks = 0;
  Timer? _likeSendTimer;

  late int _linkjoyJeffriesPun = 0;

  StreamSubscription? _feedPushSubscription;

  @override
  void onInit() async {
    super.onInit();
    rtcManager = LinkjoyRTCOily.instance;
    rtcManager.isAnchorBroadcasting = true;

    await _linkjoyShockWise();

    _feedPushSubscription = LINKJOY.listen<LiveFeedPsh>(
      _linkjoyOnPredatorFourth,
    );

    likeAnimalController = LinkjoyInventivePoundDribbleNarrateMario((c) {
      like = c;
      update([linkjoy_ui_pound]);
    });

    LinkjoyGet.wakeLock(true);
  }

  _linkjoyShockWise() async {
    await rtcManager.configEngine(
      LinkjoySelectPonchoEmbarrass.linkjoy_inventive_tile,
    );

    rtcHandler = RtcEngineEventHandler(
      onError: (ErrorCodeType err, String msg) {
        _linkjoyLifeOnFacebook(err, msg);
      },
      onLocalVideoStateChanged:
          (
            VideoSourceType source,
            LocalVideoStreamState state,
            LocalVideoStreamReason reason,
          ) {
            _linkjoyOnIndustrialDegrasseStatusChlorine(state, reason);
          },
      onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
        LinkjoySteamyClamOily.linkjoyExclusiveCircus(
          "join agora channel success $liveId, cost:$elapsed",
        );
        if (_linkjoyGreetingThirtyHusband(connection)) {
          return;
        }

        _linkjoyJeffriesGloriousBarrel();

        _snapshot();
      },

      onSnapshotTaken:
          (
            RtcConnection connection,
            int uid,
            String filePath,
            int width,
            int height,
            int errCode,
          ) {
            if (_linkjoyGreetingThirtyHusband(connection)) {
              return;
            }

            _snapshotUpload(filePath);
          },
    );
    rtcManager.registerEventHandler(rtcHandler);
    _linkjoyJeffriesUnknown();
  }

  @override
  void onPause() {
    super.onPause();

    isReadyPreview = false;
    update([linkjoy_industrial_aid]);

    if (agoraToken != null) {
      _linkjoyCurriculumWeenie();
      LinkjoyInventiveOily.instance.linkjoyCameraInventiveBurton(liveId);
    }
  }

  @override
  Future<void> onResume() async {
    super.onResume();

    isReadyPreview = true;
    update([linkjoy_industrial_aid]);
    rtcManager.controlPreview(true, force: true);

    if (agoraToken != null) {
      _linkjoyParrotWeenie();
      LinkjoyInventiveOily.instance.linkjoyPerformerInventiveBurton(liveId);
    }
  }

  @override
  void onClose() {
    try {
      _feedPushSubscription?.cancel();

      rtcManager.unregisterEventHandler(rtcHandler);
      rtcManager.isAnchorBroadcasting = false;
      rtcManager.controlPreview(false, force: true);

      _linkjoyCurriculumWeenie();

      _keepAliveTimer?.cancel();
      _snapshotTimer?.cancel();
      _likeSendTimer?.cancel();
      feedController.dispose();
      giftsAnimationController.dispose();
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(91117, e, stack);
    }
    super.onClose();
  }

  void _linkjoyLifeOnFacebook(ErrorCodeType err, String msg) {
    if (err == ErrorCodeType.errOk) return;
    switch (err) {
      case ErrorCodeType.errLoadMediaEngine:
      case ErrorCodeType.errNotInitialized:
      case ErrorCodeType.errNotReady:
        LinkjoyUpper.showError("linkjoy_caring_mislead_assemble".tr);
        LinkjoySteamyClamOily.socketTrace("agoraOnError error: $err msg:$msg");
        _linkjoyPeaUptightInventive(withError: true);
        break;
      default:
        break;
    }
  }

  void _linkjoyOnIndustrialDegrasseStatusChlorine(
    LocalVideoStreamState localVideoState,
    LocalVideoStreamReason reason,
  ) {
    if (!Get.currentRoute.startsWith(
      LinkjoyGet.LinkjoyFoolishlyInventiveDivision,
    )) {
      return;
    }
    if (isReadyPreview == false &&
        (localVideoState ==
                LocalVideoStreamState.localVideoStreamStateCapturing ||
            localVideoState ==
                LocalVideoStreamState.localVideoStreamStateEncoding)) {
      isReadyPreview = true;
      update([linkjoy_industrial_aid]);
    }

    LinkjoySteamyClamOily.socketTrace(
      "local video error: ${localVideoState.name} msg:${reason.name}",
    );

    if (localVideoState == LocalVideoStreamState.localVideoStreamStateFailed) {
      switch (reason) {
        case LocalVideoStreamReason.localVideoStreamReasonDeviceBusy:
        case LocalVideoStreamReason.localVideoStreamReasonCaptureFailure:
          LinkjoyUpper.showError("linkjoy_caring_mislead_assemble".tr);
          _linkjoyPeaUptightInventive(withError: true);
        default:
          break;
      }
    }
  }

  RtcEngine getEngine() {
    return rtcManager.getRtcEngine();
  }

  void linkjoyDoubtHaiti() {
    isShowBeautyView = !isShowBeautyView;
    update([linkjoy_haiti_narrate]);
  }

  Future<void> linkjoyJeffriesInventive() async {
    if (LinkjoyMineColombia.block(1000)) return;

    LiveCreateRsp? resp = await LinkjoyInventiveOily.instance
        .linkjoyCuffInventiveBurton();

    if (resp == null) {
      LinkjoyUpper.showToast(LinkjoyDivorced.linkjoyDeliDanceFacebookUpper.tr);
      return;
    }

    liveId = resp.liveId.toInt();
    agoraToken = resp.token;
    if (resp.snapshotInterval != 0) {
      _snapshotInterval = resp.snapshotInterval;
    }

    bool succ = await _linkjoyParrotWeenie();
    if (!succ) {
      LinkjoyUpper.showError(LinkjoyDivorced.linkjoyDeliDanceFacebookUpper.tr);
      LinkjoySteamyClamOily.socketTrace("join channel error1");
      _linkjoyPeaUptightInventive(withError: true);
      return;
    }

    _linkjoyJeffriesPun = DateTime.now().millisecondsSinceEpoch;
    update([linkjoy_inventive_saver_luau]);
  }

  Future<bool> _linkjoyParrotWeenie() async {
    if (liveId > 0 && agoraToken != null) {
      rtcConnection ??= RtcConnection(
        channelId: "$liveId",
        localUid: LINKJOY.uCodeInt(),
      );
      return await rtcManager.joinChannel(
        LinkjoySelectPonchoEmbarrass.linkjoy_inventive_tile,
        rtcConnection!,
        agoraToken!,
      );
    }
    return false;
  }

  void _linkjoyCurriculumWeenie() {
    if (rtcConnection != null) {
      rtcManager.leaveChannel(rtcConnection!);
      rtcConnection = null;
    }
  }

  void _linkjoyJeffriesUnknown() async {
    rtcManager.controlPreview(true, force: true);
  }

  void linkjoyDoubtPancake() {
    autoTranslate = !autoTranslate;
    feedController.translate();
    update([linkjoy_ui_pancake]);
  }

  void linkjoyBonPeripheral(TapUpDetails tap) {
    likeAnimalController.incr(tap.globalPosition);

    _likeClicks++;

    _likeSendTimer?.cancel();
    _likeSendTimer = Timer(const Duration(milliseconds: 500), () {
      if (_likeClicks > 0) {
        int tmp = _likeClicks;
        LinkjoyInventiveOily.instance.sendLiveLikes(tmp, liveId);
        _likeClicks -= tmp;
      }
    });
  }

  void linkjoyDoubtShrink() {
    isShowVisitorsView = !isShowVisitorsView;
    update([linkjoy_shrink_stubborn]);
  }

  void linkjoyDoubtBathe() {
    mute = !mute;
    update([linkjoy_ui_tension]);

    rtcManager.muteLocalAudioStream(mute);
  }

  void onEndLive() {
    if (agoraToken == null) {
      Get.back();
    } else {
      isShowEndConfirm = true;
      update([linkjoy_ui_uptight_warlord]);
    }
  }

  void onEndCancel() {
    isShowEndConfirm = false;
    update([linkjoy_ui_uptight_warlord]);
  }

  void onEndConfirm() {
    _linkjoyPeaUptightInventive();
  }

  void _linkjoyPeaUptightInventive({bool withError = false}) {
    if (agoraToken != null) {
      agoraToken = null;
      _linkjoyCurriculumWeenie();
      LinkjoyInventiveOily.instance.linkjoyUptightInventiveBurton(
        liveId,
        withError: withError,
      );
      liveId = 0;
    }

    if (Get.currentRoute == LinkjoyGet.LinkjoyFoolishlyInventiveDivision) {
      Get.back();
    } else {
      update([linkjoy_inventive_saver_luau]);
    }
  }

  void _linkjoyJeffriesGloriousBarrel() {
    _keepAliveTimer?.cancel();
    _keepAliveTimer = Timer.periodic(const Duration(seconds: 10), (timer) {
      LinkjoyInventiveOily.instance.keepAlive(liveId).then((value) {
        if (liveId == 0 || agoraToken == null) {
          _keepAliveTimer?.cancel();
        } else if (value != null && value.code == 30001) {
          LinkjoySteamyClamOily.socketTrace("live keepalive error");
          _linkjoyPeaUptightInventive(withError: true);
        }
      });
    });
  }

  bool _linkjoyGreetingThirtyHusband(RtcConnection connection) =>
      rtcConnection == null || connection.channelId != rtcConnection!.channelId;

  String duration() {
    int cost = DateTime.now().millisecondsSinceEpoch - _linkjoyJeffriesPun;
    return (cost ~/ 1000).linkjoyPatentToPun();
  }

  void _linkjoyOnPredatorFourth(LiveFeedPsh event) {
    if (event.liveId != liveId) {
      return;
    }

    if (event.status == LiveStatus.END ||
        event.status == LiveStatus.ERROR_END ||
        event.status == LiveStatus.ALIVE_TIMEOUT) {
      LinkjoyUpper.showError(LinkjoyDivorced.linkjoyDeliDanceFacebookUpper.tr);
      _linkjoyPeaUptightInventive(withError: true);
      return;
    }

    if (event.hasVisit() && visit < event.visit) {
      visit = event.visit;
    }
    if (event.hasOnline() && online != event.online && event.online >= 0) {
      online = event.online;
      update([linkjoy_ui_shrink]);
    }

    if (event.hasGiftCoin() && giftCoin != event.giftCoin) {
      giftCoin = event.giftCoin;
      giftCount = event.giftCount;
      update([linkjoy_ui_incense]);
    }

    if (event.hasLike() && event.like > like) {
      likeAnimalController.animalTo(event.like);
    }

    if (event.liveFeeds.isNotEmpty) {
      for (var feed in event.liveFeeds) {
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

  void _snapshot() {
    if (_snapshotInterval <= 0) {
      return;
    }

    _snapshotTimer?.cancel();
    _snapshotTimer = Timer(Duration(seconds: _snapshotInterval), () async {
      var path = Path.join(LINKJOY.cachePath, 'AgoraMedia');
      LinkjoyIOSister.makeSureDirectory(path);
      path = Path.join(path, "${LINKJOY.uCodeInt()}.jpg");

      if (_snapshotUploading || rtcConnection == null) {
        _snapshot();
      } else {
        try {
          await rtcManager.getRtcEngine().takeSnapshotEx(
            connection: rtcConnection!,
            uid: 0,
            filePath: path,
          );
        } catch (e, stack) {
          LinkjoySteamyClamOily.linkjoyInvoiceCircus(92228, e, stack);
          _snapshot();
        }
      }
    });
  }

  Future<void> _snapshotUpload(String filePath) async {
    try {
      _snapshotUploading = true;
      File sourceFile = File(filePath);
      if (await sourceFile.exists()) {
        try {
          final rsp = await LinkjoyVetoOily.instance
              .upload(filePath, UploadType.image, showLoadingUI: false)
              .last;
          if (rsp.result?.img != null) {
            await LINKJOY.http.submit(10602, {
              "live": liveId,
              "id": rsp.result!.img!.id,
              "url": rsp.result!.img!.url,
            });
          } else {}
        } finally {}
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(92227, e, stack);
    } finally {
      _snapshotUploading = false;
      _snapshot();
    }
  }
}
