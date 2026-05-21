import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

import 'linkjoy_fondness_fasten.dart';
import 'linkjoy_fondness_degrasse.dart';

class LinkjoyFoolishlyImGeneric {
  int? id;
  int? uid;
  int? type;
  int? fileId;
  String? imgUrl;
  int? imgWidth;
  int? imgHeight;
  LinkjoyFondnessDegrasse? video;
  int? status;
  int? createTime;
  int? updateTime;
  String? regionCode;

  LinkjoyFondnessFasten? get image {
    if (!isImage()) {
      return null;
    }
    return LinkjoyFondnessFasten(fileId, imgWidth, imgHeight, imgUrl);
  }

  isImage() {
    return type == 1;
  }

  isVideo() {
    return type == 2;
  }

  LinkjoyFoolishlyImGeneric();

  static LinkjoyFoolishlyImGeneric fromJson(Map<String, dynamic> json) {
    return LinkjoyFoolishlyImGeneric()
      ..id = LinkjoySmearSister.intDef(json, 'id', 0)
      ..uid = LinkjoySmearSister.intDef(json, 'uid', 0)
      ..type = LinkjoySmearSister.intDef(json, 'type', 0)
      ..fileId = LinkjoySmearSister.intDef(json, 'file_id', 0)
      ..imgUrl = LinkjoySmearSister.strDef(json, 'img_url', '')
      ..imgWidth = LinkjoySmearSister.intDef(json, 'img_width', 0)
      ..imgHeight = LinkjoySmearSister.intDef(json, 'img_height', 0)
      ..video = json['video'] == null
          ? null
          : LinkjoyFondnessDegrasse.fromJson(
              json['video'] as Map<String, dynamic>,
            )
      ..status = LinkjoySmearSister.intDef(json, 'status', 0)
      ..createTime = LinkjoySmearSister.intDef(json, 'create_time', 0)
      ..updateTime = LinkjoySmearSister.intDef(json, 'update_time', 0)
      ..regionCode = LinkjoySmearSister.strDef(json, 'region_code', '');
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'uid': uid,
      'type': type,
      'file_id': fileId,
      'img_url': imgUrl,
      'img_width': imgWidth,
      'img_height': imgHeight,
      'video': video?.toJson(),
      'status': status,
      'create_time': createTime,
      'update_time': updateTime,
      'region_code': regionCode,
    };
  }
}
