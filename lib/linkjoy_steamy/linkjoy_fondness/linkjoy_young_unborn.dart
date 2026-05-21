import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyYoungUnborn extends LinkjoyFondness {
  late int uid;

  late String ucode;

  late int gender;

  late String nickName;

  late String avatarUrl;

  late String? avatarUrlAd;

  late String regionCode;

  late String countryCode;

  String? signature;

  String? birthday;

  late int weight;

  late int height;

  late int bust;

  late String? tagIds;

  late String? languages;

  late DateTime regTime;

  late int status;

  late int price;

  late int score;

  late int level;

  static LinkjoyYoungUnborn fromJson(Map<String, dynamic> json) {
    LinkjoyYoungUnborn u = LinkjoyYoungUnborn()
      ..uid = LinkjoySmearSister.intDef(json, 'uid', 0)
      ..ucode = json['ucode']
      ..nickName = json['nick_name']
      ..gender = LinkjoySmearSister.intDef(json, 'gender', 0)
      ..avatarUrl = LinkjoySmearSister.strDef(json, 'avatar_url', '')
      ..avatarUrlAd = LinkjoySmearSister.strDef(json, 'avatar_url_ad', '')
      ..regionCode = json['region_code']
      ..countryCode = json['country_code']
      ..signature = json['signature']
      ..birthday = json['birthday']
      ..weight = LinkjoySmearSister.intDef(json, "weight", 0)
      ..height = LinkjoySmearSister.intDef(json, "height", 0)
      ..bust = LinkjoySmearSister.intDef(json, "bust", 0)
      ..tagIds = LinkjoySmearSister.strDef(json, "tag_ids", "")
      ..languages = LinkjoySmearSister.strDef(json, "languages", "")
      ..regTime = DateTime.fromMillisecondsSinceEpoch(
        LinkjoySmearSister.intDef(json, "reg_time", 0),
      )
      ..status = LinkjoySmearSister.intDef(
        json,
        "status",
        EnumLinkjoyUnbornHair.OK.index,
      )
      ..price = LinkjoySmearSister.intDef(json, 'price', 0)
      ..score = LinkjoySmearSister.intDef(json, 'score', 0)
      ..level = LinkjoySmearSister.intDef(json, 'level', 0);

    return u;
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "uid": uid,
      "ucode": ucode,
      "nick_name": nickName,
      "gender": gender,
      "avatar_url": avatarUrl,
      "avatar_url_ad": avatarUrlAd,
      "region_code": regionCode,
      "country_code": countryCode,
      "signature": signature ?? "",
      "birthday": birthday ?? "",
      "weight": weight,
      "height": height,
      "bust": bust,
      "tag_ids": tagIds,
      "languages": languages,
      "reg_time": regTime.millisecondsSinceEpoch,
      "status": status,
      "price": price,
      "score": score,
      "level": level,
    };
  }
}
