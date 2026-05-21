import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_young_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

import 'linkjoy_sorority_andrew.dart';

class LinkjoySororityUnbornSaver {
  late bool review = false;

  late LinkjoyYoungUnborn user;

  List<PhotoVO> photos = [];

  List<VideoVO> videos = [];

  List<PhotoVO> privatePhotos = [];

  List<VideoVO> privateVideos = [];

  late bool uploadAvatar;

  static LinkjoySororityUnbornSaver fromJson(Map<String, dynamic> json) {
    LinkjoySororityUnbornSaver u = LinkjoySororityUnbornSaver()
      ..user = LinkjoyYoungUnborn.fromJson(json['user']);

    u.review = LinkjoySmearSister.boolDef(json, "review", false);
    u.uploadAvatar = LinkjoySmearSister.boolDef(json, "upload_avatar", false);

    var photos = json['photos'];
    if (photos != null) {
      u.photos = (photos as List<dynamic>?)!
          .map((e) => PhotoVO.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var videos = json['videos'];
    if (videos != null) {
      u.videos = (videos as List<dynamic>?)!
          .map((e) => VideoVO.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var privatePhotos = json['private_photos'];
    if (privatePhotos != null) {
      u.privatePhotos = (privatePhotos as List<dynamic>?)!
          .map((e) => PhotoVO.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var privateVideos = json['private_videos'];
    if (privateVideos != null) {
      u.privateVideos = (privateVideos as List<dynamic>?)!
          .map((e) => VideoVO.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    return u;
  }
}
