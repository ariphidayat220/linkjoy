import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_degrasse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_blanc.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

import 'linkjoy_generic_sister.dart';
import 'linkjoy_gnome_sister.dart';

typedef ImagePickerCallBack =
    void Function(MediaPickerType mediaType, List<dynamic> mediaList);

class ThumbnailResult {
  final Image? image;
  final int? dataSize;
  final int? width;
  final int? height;

  const ThumbnailResult({this.image, this.dataSize, this.width, this.height});

  @override
  String toString() {
    return ' \n\timage: ${image.toString()},\n\tdataSize: $dataSize,\n\twidth: $width,\n\theight: $height';
  }
}

class LinkjoyFastenFairnessSister {
  static void linkjoyMarketingSeverelyFastenFairness(
    BuildContext context, {
    MediaPickerType type = MediaPickerType.imageAndVideo,
    int maxCount = 1,
    required ImagePickerCallBack callback,
  }) {
    if (maxCount <= 0) maxCount = 1;
    RequestType requestType = RequestType.common;
    if (type == MediaPickerType.image) {
      requestType = RequestType.image;
    } else if (type == MediaPickerType.video) {
      requestType = RequestType.video;
    } else if (type == MediaPickerType.audio) {
      requestType = RequestType.audio;
    }

    var textDelegate = assetPickerTextDelegateFromLocale(Get.deviceLocale);
    AssetPicker.pickAssets(
          context,
          pickerConfig: AssetPickerConfig(
            maxAssets: maxCount,
            requestType: requestType,
            textDelegate: textDelegate == const AssetPickerTextDelegate()
                ? const EnglishAssetPickerTextDelegate()
                : textDelegate,
          ),
        )
        .then((result) {
          LinkjoyGnomeSister.nullSafe<List<AssetEntity>>(
            result,
            notNullBlock: (fileResult) async {
              List<dynamic> selectedURLs = [];
              for (var element in fileResult) {
                var obj = await linkjoyTwiceDownloadDye(element);
                selectedURLs.add(obj);
              }
              callback.call(type, selectedURLs);
            },
          );
        })
        .onError((error, stackTrace) {});
  }

  static dynamic linkjoyTwiceDownloadDye(AssetEntity obj) async {
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

  static Future<Uint8List> linkjoyBrochureFarberFinancial({
    String? imagePath,
    String? videoPath,
  }) async {
    Uint8List? bytes;
    final Completer<Uint8List> completer = Completer();
    if (imagePath != null) {
      final file = File(imagePath);
      bytes = file.readAsBytesSync();
    } else {
      bytes = await VideoThumbnail.thumbnailData(
        video: videoPath!,
        imageFormat: ImageFormat.JPEG,
      );
    }
    completer.complete(bytes);
    return completer.future;
  }

  static Future<Image> linkjoyBrochureFarber({
    String? imagePath,
    String? videoPath,
    BoxFit fit = BoxFit.cover,
  }) {
    return linkjoyBrochureFarberFinancial(
      imagePath: imagePath,
      videoPath: videoPath,
    ).then((data) {
      return Image.memory(data, fit: fit);
    });
  }

  static Future<ThumbnailResult> linkjoyBrochureFarberBellySaver({
    String? imagePath,
    String? videoPath,
  }) async {
    Uint8List? bytes;
    final Completer<ThumbnailResult> completer = Completer();
    if (imagePath != null) {
      final file = File(imagePath);
      bytes = file.readAsBytesSync();
    } else {
      bytes = await VideoThumbnail.thumbnailData(
        video: videoPath!,
        imageFormat: ImageFormat.JPEG,
      );
    }
    if (bytes != null) {
      int imageDataSize = bytes.length;

      final image = Image.memory(bytes);
      image.image
          .resolve(const ImageConfiguration())
          .addListener(
            ImageStreamListener((ImageInfo info, bool _) {
              completer.complete(
                ThumbnailResult(
                  image: image,
                  dataSize: imageDataSize,
                  height: info.image.height,
                  width: info.image.width,
                ),
              );
            }),
          );
    }

    return completer.future;
  }
}
