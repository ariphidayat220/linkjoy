import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_hilarious_unlock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_hilarious.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_humidity.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_web.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair_oily.dart';
import 'package:linkjoy/linkjoy_steamy/proto/object.pb.dart';

enum EnumLinkjoyUnbornHair {
  ANCHOR_REG,

  OK,

  FORBID,

  DEL,

  ANCHOR_DETECT_COMPLETE,

  ANCHOR_INFO_COMPLETE,

  ANCHOR_INFO_REJECT;

  static EnumLinkjoyUnbornHair? check(int value) {
    if (EnumLinkjoyUnbornHair.values.length > value) {
      return EnumLinkjoyUnbornHair.values[value];
    }
    return null;
  }
}

class LinkjoyUnborn {
  int uid = 0;
  String nickName = "";
  String avatarUrl = "";

  int countryId = 0;
  LinkjoyFondnessHilarious? _country;
  int price = 0;

  int onlineStatus = 0;

  int ucode = 0;

  String signature = "";

  String? tagIds;
  String? languages;
  int level = 0;
  int vip = 0;
  int gender = 0;
  int birthday = 0;
  int balance = 0;

  int liveId = 0;

  LinkjoyUnborn();

  LinkjoyUnborn.mini(this.uid, this.nickName, this.avatarUrl);

  LinkjoyUnborn.fromJson(Map<String, dynamic> json) {
    uid = LinkjoySmearSister.intDef(json, "uid", 0);
    nickName = LinkjoySmearSister.strDef(json, "nick_name", "");
    avatarUrl = LinkjoySmearSister.strDef(json, "avatar_url", "");
    countryId = LinkjoySmearSister.intDef(json, "country_id", 0);
    price = LinkjoySmearSister.intDef(json, "price", 0);
    onlineStatus = LinkjoySmearSister.intDef(json, "online_status", 0);
    ucode = LinkjoySmearSister.intDef(json, "ucode", 0);
    signature = LinkjoySmearSister.strDef(json, "signature", "");
    level = LinkjoySmearSister.intDef(json, "level", 0);
    vip = LinkjoySmearSister.intDef(json, "vip", 0);
    gender = LinkjoySmearSister.intDef(json, "gender", 0);
    birthday = LinkjoySmearSister.intDef(json, "birthday", 0);
    balance = LinkjoySmearSister.intDef(json, "balance", 0);
    liveId = LinkjoySmearSister.intDef(json, "live_id", 0);

    if (onlineStatus != 0) {
      LinkjoyUnbornChickenHairOily().save(uid, onlineStatus);
    }
  }

  LinkjoyUnborn.fromProto(UserInfo protoObj) {
    uid = protoObj.uid.toInt();
    nickName = protoObj.nickName;
    avatarUrl = protoObj.avatarUrl;
    _country = LinkjoyFondnessHilarious.fromProto(protoObj.userCountry);
    price = protoObj.price;
    onlineStatus = protoObj.onlineStatus;
    ucode = LinkjoyGnomeSister.stringToInt(protoObj.ucode)!;
    signature = protoObj.signature;
    level = protoObj.level;
    vip = 0;
    gender = protoObj.gender;
    birthday = protoObj.birthday.toInt();

    if (onlineStatus != 0) {
      LinkjoyUnbornChickenHairOily().save(uid, onlineStatus);
    }
  }

  LinkjoyUnborn.fromProtoUser(
    User user,
    Country country,
    int price, {
    String tags = "",
    String language = "",
    int weight = 0,
    int height = 0,
    int lv = 0,
  }) {
    uid = user.uid.toInt();
    ucode = LinkjoyGnomeSister.stringToInt(user.ucode) ?? 0;
    nickName = user.nickName;
    avatarUrl = user.avatarUrl;
    countryId = LinkjoyGnomeSister.stringToInt(country.code) ?? 0;
    _country = LinkjoyFondnessHilarious.fromProto(country);
    price = price;
    signature = user.signature;
    level = lv;
    vip = 0;
    tagIds = tags;
    languages = language;
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    "uid": uid,
    "avatar_url": avatarUrl,
    "nick_name": nickName,
    "country_id": countryId,
    "price": price,
    "online_status": onlineStatus,
    "ucode": ucode,
    "signature": signature,
    "vip": vip,
    "level": level,
    "gender": gender,
    "birthday": birthday,
    "balance": balance,
    "live_id": liveId,
  };

  LinkjoyFondnessHilarious? getUserCountry() {
    _country ??= LinkjoyHilariousUnlock.instance.getCountry(countryId);
    return _country;
  }

  bool isVip() {
    return vip == 1;
  }

  LinkjoyFondnessHumidity? firstLanguage() {
    String? langIds = languages;
    if (langIds == null || langIds.isEmpty) return null;
    List<LinkjoyFondnessHumidity>? list = LINKJOY.linkjoyShock
        .getLanguagesByIds(langIds);
    if (list == null || list.isEmpty) return null;
    return list.first;
  }

  String linkjoyCoralScratcherNeighbor() {
    int age = LinkjoyDestineSister.getAge(birthday);
    if (age > 32) {
      return nickName;
    } else {
      return "$nickName,$age";
    }
  }

  static bool colorfulNickname(int? level) {
    level = level ?? 1;
    return LinkjoyDeliver.colorful_nickname.minLevel <= level;
  }

  static bool avatarFrame(int? level) {
    level = level ?? 1;
    return LinkjoyDeliver.avatar_frame.minLevel <= level;
  }
}
