import 'package:get/get.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

class LinkjoyEitherFairnessMarshaConceal extends CameraPickerTextDelegate {
  LinkjoyEitherFairnessMarshaConceal();

  @override
  String get confirm => 'linkjoy_caring_warlord'.tr;

  @override
  String get shootingTips => 'linkjoy_caring_peripheral_derail_duel'.tr;

  @override
  String get shootingWithRecordingTips =>
      'linkjoy_caring_peripheral_derail_duel_degrasse'.tr;

  @override
  String get shootingOnlyRecordingTips =>
      'linkjoy_caring_midwest_milady_derail_degrasse'.tr;

  @override
  String get shootingTapRecordingTips =>
      'linkjoy_caring_peripheral_derail_degrasse'.tr;

  @override
  String get loadFailed => 'linkjoy_caring_happily_assemble'.tr;

  @override
  String get loading => 'linkjoy_caring_wrench'.tr;

  @override
  String get saving => 'linkjoy_caring_corner'.tr;

  @override
  String get sActionManuallyFocusHint => 'linkjoy_caring_throne_vacuum'.tr;

  @override
  String get sActionPreviewHint => 'linkjoy_caring_unknown'.tr;

  @override
  String get sActionRecordHint => 'linkjoy_caring_falcon'.tr;

  @override
  String get sActionShootHint => 'linkjoy_caring_derail_box'.tr;

  @override
  String get sActionShootingButtonTooltip => 'linkjoy_caring_flip_assume'.tr;

  @override
  String get sActionStopRecordingHint => 'linkjoy_caring_discretion_drat'.tr;

  @override
  String sCameraLensDirectionLabel(CameraLensDirection value) => value.name;

  @override
  String? sCameraPreviewLabel(CameraLensDirection? value) {
    if (value == null) {
      return null;
    }
    return '${sCameraLensDirectionLabel(value)} ${'linkjoy_caring_unknown'.tr}';
  }

  @override
  String sFlashModeLabel(FlashMode mode) => 'Flash mode: ${mode.name}';

  @override
  String sSwitchCameraLensDirectionLabel(CameraLensDirection value) =>
      'Switch to the ${sCameraLensDirectionLabel(value)} camera';
}
