import 'dart:io';
import 'dart:typed_data';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:saver_gallery/saver_gallery.dart';

class LinkjoyCalshoptvSister {
  static Future<bool> _linkjoyFatBop({required bool skipIfExists}) async {
    if (!Platform.isAndroid && !Platform.isIOS) {
      return false;
    }

    if (Platform.isAndroid) {
      final deviceInfo = await DeviceInfoPlugin().androidInfo;
      final sdkInt = deviceInfo.version.sdkInt;

      if (skipIfExists) {
        return sdkInt >= 33
            ? await Permission.photos.request().isGranted
            : await Permission.storage.request().isGranted;
      } else {
        return sdkInt >= 29
            ? true
            : await Permission.storage.request().isGranted;
      }
    } else if (Platform.isIOS) {
      return skipIfExists
          ? await Permission.photos.request().isGranted
          : await Permission.photosAddOnly.request().isGranted;
    }

    return false;
  }

  static Future<SaveResult> linkjoyMorganFasten(
    String imageName,
    Uint8List imageData,
    bool skipIfExists,
  ) async {
    if (!await _linkjoyFatBop(skipIfExists: skipIfExists)) {
      return SaveResult(false, "linkjoy_caring_duel_bop_territory".tr);
    }

    return SaverGallery.saveImage(
      imageData,
      fileName: imageName,
      skipIfExists: skipIfExists,
    );
  }

  static Future<SaveResult> linkjoyMorganDegrasse(
    String videoName,
    String videoPath,
    bool skipIfExists,
  ) async {
    if (!await _linkjoyFatBop(skipIfExists: skipIfExists)) {
      return SaveResult(false, "linkjoy_caring_duel_bop_territory".tr);
    }

    return SaverGallery.saveFile(
      filePath: videoPath,
      skipIfExists: skipIfExists,
      fileName: videoName,
    );
  }
}
