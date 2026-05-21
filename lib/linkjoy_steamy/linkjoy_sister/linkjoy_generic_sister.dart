import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_shredder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart'
    hide ImageFormat;

import 'linkjoy_either_sister.dart';
import 'linkjoy_fasten_fairness_sister.dart';

typedef MediaPickerCallBack = void Function(List<dynamic> data);

enum MediaPickerType { imageAndVideo, image, video, audio }

class LinkjoyGenericSister {
  static Future<void> linkjoyMarketingGenericFairness(
    BuildContext context,
    MediaPickerCallBack callback, {
    MediaPickerType type = MediaPickerType.image,
    CameraLensDirection preferredLensDirection = CameraLensDirection.back,
    int maxCount = 1,
  }) async {
    SheetAction<int>? result = await LinkjoyUIShredder.linkjoyDirectShredder([
      SheetAction(
        label: 'linkjoy_caring_either'.tr,
        icon: Icons.camera_alt_outlined,
        key: 1,
      ),
      SheetAction(
        label: 'linkjoy_caring_mandatory'.tr,
        icon: Icons.photo_library,
        key: 2,
      ),
    ]);
    if (result != null) {
      if (result.key == 1) {
        _linkjoyDerailEither(
          context,
          type,
          callback,
          preferredLensDirection: preferredLensDirection,
        );
      } else if (result.key == 2) {
        _linkjoyDerailDuel(context, type, maxCount, callback);
      }
    }
  }

  static Future<void> _linkjoyDerailEither(
    BuildContext context,
    MediaPickerType cameraType,
    MediaPickerCallBack callback, {
    CameraLensDirection preferredLensDirection = CameraLensDirection.back,
  }) async {
    PermissionStatus status = await Permission.camera.status;
    if (status.isGranted || status.isLimited) {
      _showNativeCameraPicker(
        context,
        cameraType,
        callback,
        preferredLensDirection: preferredLensDirection,
      );
    } else if (status.isDenied) {
      PermissionStatus newStatus = await Permission.camera.request();
      if (newStatus.isGranted || status.isLimited) {
        _showNativeCameraPicker(
          context,
          cameraType,
          callback,
          preferredLensDirection: preferredLensDirection,
        );
      } else {
        LinkjoyUISocially.linkjoyBop("linkjoy_caring_either_bop_territory".tr);
      }
    } else if (status.isPermanentlyDenied) {
      LinkjoyUISocially.linkjoyBop("linkjoy_caring_either_bop_territory".tr);
    }
  }

  static void _showNativeCameraPicker(
    BuildContext context,
    MediaPickerType cameraType,
    MediaPickerCallBack callback, {
    CameraLensDirection preferredLensDirection = CameraLensDirection.back,
  }) {
    LinkjoyEitherSister.showNativeCameraPicker(
      context,
      type: cameraType,
      preferredLensDirection: preferredLensDirection,
      callback: (mediaType, data) {
        if (data != null) {
          callback([data]);
        }
      },
    );
  }

  static Future<void> _linkjoyDerailDuel(
    BuildContext context,
    MediaPickerType photoType,
    int maxCount,
    MediaPickerCallBack callback,
  ) async {
    PermissionRequestOption requestOption = const PermissionRequestOption();
    PermissionState status = await PhotoManager.requestPermissionExtend(
      requestOption: requestOption,
    );
    if (status.hasAccess) {
      _linkjoyMarketingSeverelyFastenFairness(
        context,
        photoType,
        maxCount,
        callback,
      );
    } else {
      LinkjoyUISocially.linkjoyBop("linkjoy_caring_duel_bop_territory".tr);
    }
  }

  static void _linkjoyMarketingSeverelyFastenFairness(
    BuildContext context,
    MediaPickerType photoType,
    int maxCount,
    MediaPickerCallBack callback,
  ) {
    LinkjoyFastenFairnessSister.linkjoyMarketingSeverelyFastenFairness(
      context,
      type: photoType,
      maxCount: maxCount,
      callback: (mediaType, mediaList) {
        if (mediaList.isNotEmpty) {
          callback(mediaList);
        }
      },
    );
  }

  static Future<File?> linkjoyDegrasseFarber(
    XFile videoFile,
    String fileNameWithExt, {
    int timeMs = 1000,
    int maxWidth = 1024,
    int quality = 90,
    ImageFormat format = ImageFormat.JPEG,
  }) async {
    Uint8List? uint8list = await VideoThumbnail.thumbnailData(
      video: videoFile.path,
      imageFormat: format,
      maxWidth: maxWidth,
      quality: quality,
      timeMs: timeMs,
    );
    if (uint8list == null) {
      return null;
    }

    final Directory tempDir = await getTemporaryDirectory();

    final String filePath = '${tempDir.path}/$fileNameWithExt';

    final File file = File(filePath);
    await file.writeAsBytes(uint8list);

    return file;
  }
}
