import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyUnbornTerror {
  late int id;
  late int couponId;
  late int diamondAmount;

  late int status;

  late int vipDuration;

  late DateTime expireTime;

  static LinkjoyUnbornTerror fromJson(Map<String, dynamic> json) {
    LinkjoyUnbornTerror u = LinkjoyUnbornTerror()
      ..id = LinkjoySmearSister.intDef(json, 'id', 0)
      ..couponId = LinkjoySmearSister.intDef(json, 'coupon_id', 0)
      ..diamondAmount = LinkjoySmearSister.intDef(json, 'diamond_amount', 0)
      ..status = LinkjoySmearSister.intDef(json, 'status', 0)
      ..vipDuration = LinkjoySmearSister.intDef(json, 'vip_duration', 0);

    int millis = LinkjoySmearSister.intDef(json, 'expire_time', 0);
    u.expireTime = DateTime.fromMillisecondsSinceEpoch(millis);

    return u;
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "couponId": couponId,
      "status": status,
      "diamond_amount": diamondAmount,
      "vip_duration": vipDuration,
      "expire_time": expireTime.millisecondsSinceEpoch,
    };
  }
}
