import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoySororityFlashyPredator {
  List<GiftFeed> list = [];

  static LinkjoySororityFlashyPredator fromJson(Map<String, dynamic> json) {
    LinkjoySororityFlashyPredator resp = LinkjoySororityFlashyPredator();

    var list = json['list'];
    if (list != null) {
      resp.list = (list as List<dynamic>?)!
          .map((e) => GiftFeed.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    return resp;
  }
}

class GiftFeed {
  LinkjoyUnborn from;
  LinkjoyUnborn to;
  int giftId;
  String giftIcon;
  String giftName;
  int coinBack;

  GiftFeed(
    this.from,
    this.to,
    this.giftId,
    this.giftIcon,
    this.giftName,
    this.coinBack,
  );

  static GiftFeed fromJson(Map<String, dynamic> json) {
    return GiftFeed(
      LinkjoyUnborn.fromJson(json['from']),
      LinkjoyUnborn.fromJson(json['to']),
      LinkjoySmearSister.intDef(json, "gift_id", 0),
      LinkjoySmearSister.strDef(json, "gift_icon", ""),
      LinkjoySmearSister.strDef(json, "gift_name", ""),
      LinkjoySmearSister.intDef(json, "coin_back", 0),
    );
  }
}
