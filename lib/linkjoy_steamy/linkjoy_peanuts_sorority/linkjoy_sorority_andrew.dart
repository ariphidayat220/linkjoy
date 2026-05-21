import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_jog.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair_oily.dart';

import 'linkjoy_sorority_pearl.dart';

class LinkjoySororityAndrew {
  late TinyProfileVO user;

  List<PhotoVO> photos = [];

  List<VideoVO> videos = [];

  List<PhotoVO> privatePhotos = [];

  List<VideoVO> privateVideos = [];

  double evaluate = 0;

  List<TagCountVO> evaluateTags = [];

  List<GiftVO> gifts = [];

  static LinkjoySororityAndrew fromJson(Map<String, dynamic> json) {
    LinkjoySororityAndrew profile = LinkjoySororityAndrew();

    var photos = json['photos'];
    if (photos != null) {
      profile.photos = (photos as List<dynamic>?)!
          .map((e) => PhotoVO.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var videos = json['videos'];
    if (videos != null) {
      profile.videos = (videos as List<dynamic>?)!
          .map((e) => VideoVO.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var privatePhotos = json['private_photos'];
    if (privatePhotos != null) {
      profile.privatePhotos = (privatePhotos as List<dynamic>?)!
          .map((e) => PhotoVO.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var privateVideos = json['private_videos'];
    if (privateVideos != null) {
      profile.privateVideos = (privateVideos as List<dynamic>?)!
          .map((e) => VideoVO.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    profile.evaluate = LinkjoySmearSister.doubleDef(json, "evaluate", 0);

    var evaluateTags = json['evaluate_tags'];
    if (evaluateTags != null) {
      profile.evaluateTags = (evaluateTags as List<dynamic>?)!
          .map((e) => TagCountVO.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var gifts = json['gifts'];
    if (gifts != null) {
      profile.gifts = (gifts as List<dynamic>?)!
          .map((e) => GiftVO.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    return profile..user = TinyProfileVO.fromJson(json['user']);
  }
}

class TinyProfileVO {
  late int uid;
  late String nickName;
  late String avatarUrl;
  late int gender;
  late int age;
  late String signature;
  late int price;

  late int followedCount;

  late int followed;

  late int onlineStatus;

  late int birthday;

  late int weight;

  late int height;

  late int bust;

  late String tagIds;

  late String languages;

  late CountryVO country;

  late String ucode;

  late int level;
  late int vip;

  late int cert;

  late int role;

  static TinyProfileVO fromJson(Map<String, dynamic> json) {
    TinyProfileVO vo = TinyProfileVO()
      ..uid = LinkjoySmearSister.intDef(json, "uid", 0)
      ..nickName = LinkjoySmearSister.strDef(json, "nick_name", "")
      ..avatarUrl = LinkjoySmearSister.strDef(json, "avatar_url", "")
      ..gender = LinkjoySmearSister.intDef(json, "gender", 0)
      ..ucode = LinkjoySmearSister.strDef(json, "ucode", "")
      ..level = LinkjoySmearSister.intDef(json, "level", 0)
      ..vip = LinkjoySmearSister.intDef(json, "vip", 0)
      ..cert = LinkjoySmearSister.intDef(json, "cert", 0)
      ..role = LinkjoySmearSister.intDef(
        json,
        "role",
        EnumLinkjoyUnbornPurple.USER.value,
      )
      ..age = LinkjoySmearSister.intDef(json, "age", 0)
      ..signature = LinkjoySmearSister.strDef(json, "signature", "")
      ..price = LinkjoySmearSister.intDef(json, "price", 0)
      ..followedCount = LinkjoySmearSister.intDef(json, 'followed_count', 0)
      ..followed = LinkjoySmearSister.intDef(json, 'followed', 0)
      ..onlineStatus = LinkjoySmearSister.intDef(json, "online_status", 0)
      ..birthday = LinkjoySmearSister.intDef(json, "birthday", 0)
      ..weight = LinkjoySmearSister.intDef(json, "weight", 0)
      ..height = LinkjoySmearSister.intDef(json, "height", 0)
      ..bust = LinkjoySmearSister.intDef(json, "bust", 0)
      ..tagIds = LinkjoySmearSister.strDef(json, "tag_ids", "")
      ..languages = LinkjoySmearSister.strDef(json, "languages", "")
      ..country = CountryVO.fromJson(json['country']);

    if (vo.onlineStatus != 0) {
      LinkjoyUnbornChickenHairOily().save(vo.uid, vo.onlineStatus);
    }

    return vo;
  }

  bool isLinkjoyFoolishly() {
    return EnumLinkjoyUnbornPurple.isLinkjoyFoolishly(role);
  }
}

abstract class MediaVo {
  late String id;
  int? paid;

  int status = 0;

  bool amIPaid() {
    if (paid == -1) return true;

    if (LINKJOY.linkjoyUnbornDeposit!.vip()) return true;
    return paid == 1;
  }

  String? mediaUrl();
}

class PhotoVO extends MediaVo {
  String? img_url;
  int? width;
  int? height;

  static PhotoVO fromJson(Map<String, dynamic> json) {
    return PhotoVO()
      ..id = LinkjoySmearSister.strDef(json, "id", "")
      ..img_url = LinkjoySmearSister.strDef(json, "img_url", "")
      ..width = LinkjoySmearSister.intDef(json, 'width', 0)
      ..height = LinkjoySmearSister.intDef(json, 'height', 0)
      ..paid = LinkjoySmearSister.intDef(json, 'paid', -1)
      ..status = LinkjoySmearSister.intDef(json, 'status', 1);
  }

  Map<String, dynamic> toJson() {
    return {"img_url": img_url, "width": width, "height": height, "paid": paid};
  }

  @override
  String? mediaUrl() {
    return img_url;
  }
}

class VideoVO extends MediaVo {
  String? video_url;
  String? cover_url;
  int? duration;
  int? size;
  int? width;
  int? height;

  static VideoVO fromJson(Map<String, dynamic> json) {
    return VideoVO()
      ..id = LinkjoySmearSister.strDef(json, "id", "")
      ..video_url = LinkjoySmearSister.strDef(json, "video_url", "")
      ..cover_url = LinkjoySmearSister.strDef(json, "cover_url", "")
      ..duration = LinkjoySmearSister.intDef(json, 'duration', 0)
      ..size = LinkjoySmearSister.intDef(json, 'size', 0)
      ..width = LinkjoySmearSister.intDef(json, 'width', 0)
      ..height = LinkjoySmearSister.intDef(json, 'height', 0)
      ..paid = LinkjoySmearSister.intDef(json, 'paid', -1)
      ..status = LinkjoySmearSister.intDef(json, 'status', 1);
  }

  Map<String, dynamic> toJson() {
    return {
      "video_url": video_url,
      "cover": cover_url,
      "duration": duration,
      "size": size,
      "width": width,
      "height": height,
      "paid": paid,
    };
  }

  @override
  String? mediaUrl() {
    return cover_url;
  }
}

class TagCountVO {
  late int tag;
  late int count;

  TagCountVO(this.tag, this.count);

  static TagCountVO fromJson(Map<String, dynamic> json) {
    return TagCountVO(
      LinkjoySmearSister.intDef(json, "tag", 0),
      LinkjoySmearSister.intDef(json, 'count', 0),
    );
  }
}

class GiftVO {
  late int giftId;
  late int count;
  late int val;
  late String nickName;
  late String avatar;
  late int uid;
  late int level;
  late int vip;

  static GiftVO fromJson(Map<String, dynamic> json) {
    return GiftVO()
      ..giftId = LinkjoySmearSister.intDef(json, 'gift_id', 0)
      ..count = LinkjoySmearSister.intDef(json, 'count', 0)
      ..val = LinkjoySmearSister.intDef(json, 'val', 0)
      ..nickName = LinkjoySmearSister.strDef(json, 'nick_name', "")
      ..avatar = LinkjoySmearSister.strDef(json, 'avatar', "")
      ..uid = LinkjoySmearSister.intDef(json, 'uid', 0)
      ..level = LinkjoySmearSister.intDef(json, 'level', 0)
      ..vip = LinkjoySmearSister.intDef(json, 'vip', 0);
  }

  Map<String, dynamic> toJson() {
    return {
      "gift_id": giftId,
      "count": count,
      "avatar": avatar,
      "val": val,
      "nick_name": nickName,
      "uid": uid,
      "level": level,
      "vip": vip,
    };
  }

  bool isVip() {
    return vip == 1;
  }
}
