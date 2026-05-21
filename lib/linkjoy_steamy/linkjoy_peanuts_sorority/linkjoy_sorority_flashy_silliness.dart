import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoySororityFlashySilliness {
  List<LinkjoyFlashySilliness> list = [];

  static LinkjoySororityFlashySilliness fromJson(Map<String, dynamic> json) {
    LinkjoySororityFlashySilliness resp = LinkjoySororityFlashySilliness();

    var list = json['list'];
    if (list != null) {
      resp.list = (list as List<dynamic>?)!
          .map(
            (e) => LinkjoyFlashySilliness.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    }
    return resp;
  }

  Map<String, dynamic> toJson() {
    return {"list": list.map((e) => e.toJson()).toList()};
  }

  static Future<LinkjoySororityFlashySilliness?> getData(
    int uid, {
    bool showLoadingUI = false,
    bool useCache = true,
  }) async {
    useCache =
        useCache && LINKJOY.isLinkjoyFoolishly == true && uid == LINKJOY.uid();
    LinkjoySororityFlashySilliness? resp;
    if (useCache) {
      resp = LINKJOY.linkjoyElope.getLinkjoyFlashySillinessStubborn();
    }
    if (resp == null) {
      resp = await LINKJOY.http.rest(
        7030,
        {"uid": uid},
        showLoadingUI: showLoadingUI,
        (json) => LinkjoySororityFlashySilliness.fromJson(json),
      );
      if (resp != null && useCache) {
        List<LinkjoyFlashySilliness> list = [];
        list.addAll(resp.list);
        list.sort((a, b) {
          return a.cost - b.cost;
        });
        resp.list = list;
        LINKJOY.linkjoyElope.setLinkjoyFlashySillinessStubborn(resp);
      }
    }
    return resp;
  }
}

class LinkjoyFlashySilliness {
  late int giftId;
  late String action;

  int? _giftCost;
  bool highlight = false;

  LinkjoyFlashySilliness(this.giftId, this.action);

  static LinkjoyFlashySilliness fromJson(Map<String, dynamic> json) {
    return LinkjoyFlashySilliness(
      LinkjoySmearSister.intDef(json, "gift_id", 0),
      LinkjoySmearSister.strDef(json, "action", ""),
    );
  }

  Map<String, dynamic> toJson() {
    return {"gift_id": giftId, "action": action};
  }

  VoGift? get gift {
    return LINKJOY.linkjoyShock.gift(giftId);
  }

  int get cost {
    _giftCost ??= LINKJOY.linkjoyShock.gift(giftId)?.cost ?? 0;
    return _giftCost!;
  }
}
