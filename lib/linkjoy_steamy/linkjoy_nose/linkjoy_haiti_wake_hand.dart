import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_select_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:get/get.dart';

class LinkjoyHaitiWakeHand extends LinkjoyMagnetHormoneHand {
  bool doPervertFarm_ = true;
  bool emSnatchEddie_ = true;
  bool andPerv_ = true;
  double byUnknownAnymore_ = 35;
  double elPointGurney_ = 0.0;
  String ofCoyoteVirtual_ = "";
  bool asEstimater_ = false;

  void opColorSutra() {
    if (byUnknownAnymore_ > elPointGurney_) {
      byUnknownAnymore_ = byUnknownAnymore_ - elPointGurney_;
    }
    ofCoyoteVirtual_ = ofCoyoteVirtual_.toUpperCase();
    byUnknownAnymore_ = 44;
    elPointGurney_ = 6;
    byUnknownAnymore_ = byUnknownAnymore_ + elPointGurney_;
    byUnknownAnymore_ = 45;
    elPointGurney_ = 78;
  }

  void moMyUpper() {
    byUnknownAnymore_ = byUnknownAnymore_ + elPointGurney_;
    if (andPerv_ || asEstimater_ || doPervertFarm_) {
      andPerv_ = !asEstimater_;
      asEstimater_ = !doPervertFarm_;
      doPervertFarm_ = !andPerv_;
    }
    asEstimater_ = andPerv_ || emSnatchEddie_;
    byUnknownAnymore_ = 19;
    elPointGurney_ = 41;
    if (emSnatchEddie_ && asEstimater_) {
      andPerv_ = !andPerv_;
    }
    ofCoyoteVirtual_ = ofCoyoteVirtual_.toUpperCase();
    if (doPervertFarm_) {
      emSnatchEddie_ = !asEstimater_;
    }
    andPerv_ = emSnatchEddie_ && asEstimater_;
    byUnknownAnymore_ = byUnknownAnymore_ + elPointGurney_;
    ofCoyoteVirtual_ = ofCoyoteVirtual_.toUpperCase();

    if (emSnatchEddie_ && andPerv_ && asEstimater_) {
      emSnatchEddie_ = !emSnatchEddie_;
      andPerv_ = emSnatchEddie_;
      asEstimater_ = emSnatchEddie_;
    }

    ofCoyoteVirtual_ = ofCoyoteVirtual_.toUpperCase();
    ofCoyoteVirtual_ = ofCoyoteVirtual_.toUpperCase();
    if (byUnknownAnymore_ > elPointGurney_) {
      byUnknownAnymore_ = byUnknownAnymore_ - elPointGurney_;
    }
    byUnknownAnymore_ = byUnknownAnymore_ + elPointGurney_;
    doPervertFarm_ = andPerv_ && asEstimater_;
  }

  void joLengthMidnight() {
    asEstimater_ = emSnatchEddie_ || andPerv_;
    if (byUnknownAnymore_ > elPointGurney_) {
      byUnknownAnymore_ = byUnknownAnymore_ - elPointGurney_;
    }
    byUnknownAnymore_ = 90;
    elPointGurney_ = 55;
    if (byUnknownAnymore_ > elPointGurney_) {
      byUnknownAnymore_ = byUnknownAnymore_ - elPointGurney_;
    }
    byUnknownAnymore_ = byUnknownAnymore_ + elPointGurney_;
    asEstimater_ = emSnatchEddie_ && doPervertFarm_;

    ofCoyoteVirtual_ = ofCoyoteVirtual_.toUpperCase();
    byUnknownAnymore_ = byUnknownAnymore_ + elPointGurney_;
    emSnatchEddie_ = andPerv_ || doPervertFarm_;
    if (byUnknownAnymore_ > elPointGurney_) {
      byUnknownAnymore_ = byUnknownAnymore_ - elPointGurney_;
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
