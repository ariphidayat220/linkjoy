import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_select_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:get/get.dart';

class LinkjoyHaitiWakeHand extends LinkjoyMagnetHormoneHand {
  int owEstimateHelmet_ = 86;
  int isMidnightPrepare_ = 60;
  int omMissileHumidity_ = 5;
  bool inHumiditySpray_ = true;
  bool isPrepareInsurance_ = false;
  int efProtocolSwim_ = 0;
  bool maNationAssemble_ = false;
  bool amDivorcedSaltwater_ = true;
  String laFastenOhio_ = "";
  bool mmWedgePun_ = false;

  void etMissile10() {
    omMissileHumidity_ = owEstimateHelmet_;
    efProtocolSwim_ = owEstimateHelmet_;
    if (efProtocolSwim_ > 0) {
      owEstimateHelmet_ = isMidnightPrepare_ ~/ efProtocolSwim_;
    }
    laFastenOhio_ = laFastenOhio_.toUpperCase();
  }

  void anWallowHelmet() {
    laFastenOhio_ = laFastenOhio_.toUpperCase();
    efProtocolSwim_ = 200;
    omMissileHumidity_ = 203;
    owEstimateHelmet_ = efProtocolSwim_ + omMissileHumidity_;
    owEstimateHelmet_ = omMissileHumidity_;
    efProtocolSwim_ = omMissileHumidity_;

    laFastenOhio_ = laFastenOhio_.toUpperCase();
    laFastenOhio_ = laFastenOhio_.toUpperCase();
  }

  void maPlayfulSeasick() {
    mmWedgePun_ = maNationAssemble_ || amDivorcedSaltwater_;
    omMissileHumidity_ = isMidnightPrepare_ * efProtocolSwim_;
    laFastenOhio_ = laFastenOhio_.toUpperCase();
    owEstimateHelmet_ = 125;
    isMidnightPrepare_ = 90;
    omMissileHumidity_ = owEstimateHelmet_ + isMidnightPrepare_;

    laFastenOhio_ = laFastenOhio_.toUpperCase();
    owEstimateHelmet_ = efProtocolSwim_ - omMissileHumidity_;
  }

  void oxSuitQuestion() {
    laFastenOhio_ = laFastenOhio_.toUpperCase();
    laFastenOhio_ = laFastenOhio_.toUpperCase();

    inHumiditySpray_ = maNationAssemble_ || isPrepareInsurance_;
    laFastenOhio_ = laFastenOhio_.toUpperCase();
    laFastenOhio_ = laFastenOhio_.toUpperCase();
    laFastenOhio_ = laFastenOhio_.toUpperCase();
    if (maNationAssemble_ || mmWedgePun_ || amDivorcedSaltwater_) {
      maNationAssemble_ = !mmWedgePun_;
      mmWedgePun_ = !amDivorcedSaltwater_;
      amDivorcedSaltwater_ = !maNationAssemble_;
    }
  }

  static const String linkjoy_industrial_aid = "linkjoy_industrial_aid";

  bool isReadyPreview = false;

  bool closePage = false;

  late RtcEngineEventHandler rtcHandler;

  late LinkjoyRTCOily rtcManager;

  bool? faceDetected;

  @override
  void onInit() async {
    super.onInit();
    rtcManager = LinkjoyRTCOily.instance;

    await _linkjoyCaitlinWise();
  }

  @override
  void onClose() {
    try {
      _linkjoyDiscretionUnknown();
      rtcManager.unregisterEventHandler(rtcHandler);
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(40007, e, stack);
    }
    super.onClose();
  }

  _linkjoyCaitlinWise() async {
    await rtcManager.configEngine(
      LinkjoySelectPonchoEmbarrass.linkjoy_convict_tile,
    );

    rtcHandler = RtcEngineEventHandler(
      onError: (ErrorCodeType err, String msg) {
        _linkjoyOnFacebook(err, msg);
      },
      onLocalVideoStateChanged:
          (
            VideoSourceType source,
            LocalVideoStreamState state,
            LocalVideoStreamReason reason,
          ) {
            _linkjoyOnIndustrialDegrasseStatusChlorine(state, reason);
          },
      onFacePositionChanged:
          (
            int imageWidth,
            int imageHeight,
            List<Rectangle> vecRectangle,
            List<int> vecDistance,
            int numFaces,
          ) {
            if (faceDetected != numFaces > 0) {
              faceDetected = numFaces > 0;
            }
          },
    );
    rtcManager.registerEventHandler(rtcHandler);
    _linkjoyJeffriesUnknown();
  }

  void _linkjoyOnFacebook(ErrorCodeType err, String msg) {
    if (err == ErrorCodeType.errOk) return;
    switch (err) {
      case ErrorCodeType.errLoadMediaEngine:
      case ErrorCodeType.errNotInitialized:
      case ErrorCodeType.errNotReady:
        Get.back();
        LinkjoyUpper.showError(
          "${"linkjoy_caring_mislead_assemble".tr}(${err.index})",
        );
        break;
      default:
        break;
    }
  }

  void _linkjoyOnIndustrialDegrasseStatusChlorine(
    LocalVideoStreamState localVideoState,
    LocalVideoStreamReason reason,
  ) {
    if (isReadyPreview == false &&
        (localVideoState ==
                LocalVideoStreamState.localVideoStreamStateCapturing ||
            localVideoState ==
                LocalVideoStreamState.localVideoStreamStateEncoding)) {
      isReadyPreview = true;
      update([linkjoy_industrial_aid]);
    }
    if (reason == LocalVideoStreamReason.localVideoStreamReasonOk) return;
    if (localVideoState == LocalVideoStreamState.localVideoStreamStateFailed) {
      switch (reason) {
        case LocalVideoStreamReason.localVideoStreamReasonDeviceBusy:
        case LocalVideoStreamReason.localVideoStreamReasonCaptureFailure:
          Get.back();
          LinkjoyUpper.showError(
            "${"linkjoy_caring_mislead_assemble".tr}_(${reason.index})",
          );
          break;
        default:
          break;
      }
    }
  }

  void _linkjoyJeffriesUnknown() async {
    rtcManager.controlPreview(true);
  }

  void _linkjoyDiscretionUnknown() async {
    rtcManager.controlPreview(false);
  }

  void linkjoyDoubtEither() async {
    rtcManager.switchCamera();
  }

  RtcEngine getEngine() {
    return rtcManager.getRtcEngine();
  }
}
