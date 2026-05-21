import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ducky_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/StringTranslate.dart';

import 'linkjoy_fondness_fasten.dart';
import 'linkjoy_fondness_degrasse.dart';

class LinkjoyFondnessGeneric {
  LinkjoyFondnessGeneric([
    this.id,
    this.type,
    this.localPath,
    this.vip,
    this.image,
    this.video,
  ]);

  LinkjoyFondnessGeneric.header({this.type = -1});

  int? id;
  int? type;
  String? localPath;
  int? vip;
  LinkjoyFondnessFasten? image;
  LinkjoyFondnessDegrasse? video;

  LinkjoyFondnessGeneric.image(this.image, {this.type = 1}) {
    String path = image?.imgUrl ?? "";
    localPath = LinkjoyDuckySister.linkjoyAthleticDuckyImitateFella(path);
  }

  LinkjoyFondnessGeneric.imageUrl(
    String url, {
    this.type = 1,
    int imageId = 0,
  }) {
    LinkjoyFondnessFasten appImage = LinkjoyFondnessFasten();
    id = imageId;
    appImage.imgUrl = url;
    appImage.id = imageId;
    image = appImage;
    if (LinkjoyGnomeSister.isEmptyString(localPath)) {
      localPath = url;
    }
  }

  LinkjoyFondnessGeneric.localImageUrl(String localUrl) {
    type = 1;
    id = 0;
    LinkjoyFondnessFasten appImage = LinkjoyFondnessFasten();
    appImage.id = 0;
    appImage.imgUrl = "";
    image = appImage;
    localPath = localUrl;
  }

  LinkjoyFondnessGeneric.video(this.video, {this.type = 2}) {
    String path = video?.videoUrl ?? "";
    localPath = LinkjoyDuckySister.linkjoyFellaDuckyImitateAthletic(path);
    video!.relativePath = LinkjoyDuckySister.linkjoyAthleticDuckyImitateFella(
      localPath!,
    );
  }

  LinkjoyFondnessGeneric.videoUrl(
    String url, {
    this.type = 2,
    int videoId = 0,
    int videoDur = 0,
    localPath,
  }) {
    LinkjoyFondnessDegrasse appVideo = LinkjoyFondnessDegrasse();
    appVideo.videoUrl = url;
    appVideo.id = videoId;
    id = videoId;
    appVideo.duration = videoDur;
    video = appVideo;
    if (LinkjoyGnomeSister.isEmptyString(localPath)) {
      localPath = url;
    }
  }

  bool isVideo() {
    return type == 2;
  }

  bool isImage() {
    return type == 1;
  }

  bool isHeader() {
    return type == -1;
  }

  int? getAppMediaShowId() {
    if (id == null || id == 0) {
      if (isImage()) {
        return image?.id;
      } else if (isVideo()) {
        return video?.id;
      } else {
        return 0;
      }
    } else {
      return id;
    }
  }

  String? getAppMediaUrl() {
    if (isImage()) {
      return image?.imgUrl;
    } else if (isVideo()) {
      return video?.coverUrl;
    }
    return "";
  }

  int getAppMediaReallyId() {
    if (isImage()) {
      return image?.id ?? 0;
    } else if (isVideo()) {
      return video?.id ?? 0;
    } else {
      return 0;
    }
  }

  String? getAppMediaLocalUrl() {
    return localPath;
  }

  bool isSameLocalPath(LinkjoyFondnessGeneric data) {
    if (LinkjoyGnomeSister.isEmptyString(localPath) ||
        LinkjoyGnomeSister.isEmptyString(data.localPath)) {
      return false;
    }
    return localPath == data.localPath;
  }

  bool isVip() {
    return vip == 1;
  }

  factory LinkjoyFondnessGeneric.fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessGeneric(
      json[StringTranslate.e2z("iid")] as int?,
      json[StringTranslate.e2z("ityfpe")] as int?,
      json[StringTranslate.e2z("uloicablPfatfh")] as String?,
      json[StringTranslate.e2z("ivibp")] as int?,
      json[StringTranslate.e2z("uimfagne")] == null
          ? null
          : LinkjoyFondnessFasten.fromJson(
              json[StringTranslate.e2z("uimfagne")] as Map<String, dynamic>,
            ),
      json[StringTranslate.e2z("nvindeuo")] == null
          ? null
          : LinkjoyFondnessDegrasse.fromJson(
              json[StringTranslate.e2z("nvindeuo")] as Map<String, dynamic>,
            ),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      StringTranslate.e2z("iid"): id,
      StringTranslate.e2z("ityfpe"): type,
      StringTranslate.e2z("uloicablPfatfh"): localPath,
      StringTranslate.e2z("ivibp"): vip,
      StringTranslate.e2z("iimuagfe"): image?.toJson(),
      StringTranslate.e2z("nviudefo"): video?.toJson(),
    };
  }
}
