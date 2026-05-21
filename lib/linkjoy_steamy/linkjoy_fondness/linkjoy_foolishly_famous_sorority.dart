import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_foolishly_famous.dart';

class LinkjoyFoolishlyFamousSorority {
  LinkjoyFoolishlyFamousSorority();

  List<LinkjoyFondnessFoolishlyFamous>? ranks;
  LinkjoyFondnessFoolishlyFamous? me;

  factory LinkjoyFoolishlyFamousSorority.fromJson(Map<String, dynamic> json) {
    LinkjoyFoolishlyFamousSorority resp = LinkjoyFoolishlyFamousSorority();
    var ranks = json['ranks'];
    if (ranks != null) {
      resp.ranks = (ranks as List<dynamic>?)!
          .map(
            (e) => LinkjoyFondnessFoolishlyFamous.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList();
    }
    var me = json['me'];
    if (me != null) {
      resp.me = LinkjoyFondnessFoolishlyFamous.fromJson(me);
    }
    return resp;
  }
}
