import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyUnbornDecide {
  late int cardType;

  late int createTime;

  late int expireTime;

  late int used;

  late int useTime;

  LinkjoyUnbornDecide();

  factory LinkjoyUnbornDecide.fromJson(Map<String, dynamic> json) {
    return LinkjoyUnbornDecide()
      ..cardType = LinkjoySmearSister.intDef(json, 'card_type', 0)
      ..createTime = LinkjoySmearSister.intDef(json, 'create_time', 0)
      ..expireTime = LinkjoySmearSister.intDef(json, 'expire_time', 0)
      ..used = LinkjoySmearSister.intDef(json, 'used', 0)
      ..useTime = LinkjoySmearSister.intDef(json, 'use_time', 0);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'card_type': cardType,
    'create_time': createTime,
    'expire_time': expireTime,
    'used': used,
    'use_time': useTime,
  };

  bool get isExpired =>
      DateTime.fromMillisecondsSinceEpoch(expireTime).isBefore(DateTime.now());

  bool get isUsed => used == 1;
}
