import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_degrasse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_blanc.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:flutter/cupertino.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import 'linkjoy_either_fairness_marsha_conceal.dart';
import 'linkjoy_generic_sister.dart';

typedef CameraPickerCallBack =
    void Function(MediaPickerType mediaType, dynamic data);

class ThumbnailResult {
  final Image? image;
  final int? dataSize;
  final int? width;
  final int? height;

  const ThumbnailResult({this.image, this.dataSize, this.width, this.height});
}

class LinkjoyEitherSister {
  static void showNativeCameraPicker(
    BuildContext context, {
    CameraLensDirection preferredLensDirection = CameraLensDirection.back,
    MediaPickerType type = MediaPickerType.imageAndVideo,
    required CameraPickerCallBack callback,
  }) async {
    bool isRecording = type != MediaPickerType.image;
    try {
      final AssetEntity? entity = await CameraPicker.pickFromCamera(
        context,
        pickerConfig: CameraPickerConfig(
          enableRecording: isRecording,
          preferredLensDirection: preferredLensDirection,
          textDelegate: LinkjoyEitherFairnessMarshaConceal(),
        ),
      );
      if (entity != null) {
        var data = await convertAssetEntity(entity);
        callback.call(type, data);
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10081, e, stack);
    }
  }

  static dynamic convertAssetEntity(AssetEntity obj) async {
    String? path = (await obj.file)?.path;
    if (obj.type == AssetType.image) {
      LinkjoyFondnessFasten appImage = LinkjoyFondnessFasten();
      appImage.height = obj.height;
      appImage.width = obj.width;
      appImage.imgUrl = path;
      appImage.mimeType = obj.mimeType;
      return appImage;
    } else if (obj.type == AssetType.video) {
      LinkjoyFondnessDegrasse appImage = LinkjoyFondnessDegrasse();
      appImage.height = obj.height;
      appImage.width = obj.width;
      appImage.videoUrl = path;
      appImage.duration = obj.duration;
      return appImage;
    } else if (obj.type == AssetType.audio) {
      LinkjoyFondnessBlanc appImage = LinkjoyFondnessBlanc();
      appImage.voiceUrl = path;
      appImage.duration = obj.duration;
      return appImage;
    }
    return null;
  }
}
