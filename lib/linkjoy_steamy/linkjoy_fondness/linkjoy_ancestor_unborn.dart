import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

import 'linkjoy_fondness_hilarious.dart';
import 'linkjoy_unborn.dart';

class LinkjoyAncestorUnborn {
  late int uid;
  late String nickName;
  late String avatarUrl;

  int? countryId;
  int? price;
  String? signature;
  int? _followed;

  int get followed => _followed ?? 0;

  set followed(int value) {
    _followed = value;
  }

  int? followedCount;
  int? gender;
  int? age;

  late int onlineStatus;

  String? tagIds;
  String? languages;

  LinkjoyFondnessHilarious? country;

  int temp = 0;

  int chatAuthExpire = 0;
  int level = 0;
  int vip = 0;

  @override
  int get hashCode => uid.hashCode;

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is LinkjoyAncestorUnborn && uid == other.uid;
  }

  bool get isFollowed {
    return followed == 1 || followed == 3;
  }

  static LinkjoyAncestorUnborn fromJson(Map<String, dynamic> json) {
    LinkjoyAncestorUnborn u = LinkjoyAncestorUnborn()
      ..uid = LinkjoySmearSister.intDef(json, "uid", 0)
      ..nickName = LinkjoySmearSister.strDef(json, "nick_name", "")
      ..avatarUrl = LinkjoySmearSister.strDef(json, "avatar_url", "")
      ..countryId = LinkjoySmearSister.intDef(json, "country_code", 0)
      ..price = LinkjoySmearSister.intDef(json, "price", 0)
      ..signature = LinkjoySmearSister.strDef(json, "signature", "")
      .._followed = LinkjoySmearSister.intDef(json, "followed", 0)
      ..followedCount = LinkjoySmearSister.intDef(json, "followed_count", 0)
      ..gender = LinkjoySmearSister.intDef(json, "gender", 0)
      ..age = LinkjoySmearSister.intDef(json, "age", 0)
      ..tagIds = LinkjoySmearSister.strDef(json, "tag_ids", "")
      ..languages = LinkjoySmearSister.strDef(json, "languages", "")
      ..country = json['country'] == null
          ? null
          : LinkjoyFondnessHilarious.fromJson(json['country'])
      ..temp = LinkjoySmearSister.intDef(json, "temp", 0)
      ..chatAuthExpire = LinkjoySmearSister.intDef(json, "chat_auth_expire", 0)
      ..level = LinkjoySmearSister.intDef(json, "level", 0)
      ..vip = LinkjoySmearSister.intDef(json, 'vip', 0);
    if (LinkjoyAncestorSister.isLinkjoySailorProcessing(u.uid)) {
      u.temp = 100;
    }

    return u;
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    "uid": uid,
    "nick_name": nickName,
    "avatar_url": avatarUrl,
    "countryId": countryId,
    "price": price,
    "signature": signature,
    "followed": _followed,
    "followed_count": followedCount,
    "gender": gender,
    "age": age,
    "tag_ids": tagIds,
    "languages": languages,
    "country": country?.toJson(),
    "temp": temp,
    "level": level,
    "vip": vip,
    "chat_auth_expire": chatAuthExpire,
  };

  LinkjoyUnborn toLinkjoyUnborn() {
    return LinkjoyUnborn()
      ..uid = uid
      ..avatarUrl = avatarUrl
      ..nickName = nickName
      ..onlineStatus = 0;
  }
}
