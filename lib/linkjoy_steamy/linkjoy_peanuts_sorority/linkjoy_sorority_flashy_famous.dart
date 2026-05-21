import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_andrew.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoySororityFlashyFamous {
  List<GiftVO> list = [];

  int mine = 0;

  static LinkjoySororityFlashyFamous fromJson(Map<String, dynamic> json) {
    LinkjoySororityFlashyFamous rank = LinkjoySororityFlashyFamous();

    var list = json['list'];
    if (list != null) {
      rank.list = (list as List<dynamic>?)!
          .map((e) => GiftVO.fromJson(e as Map<String, dynamic>))
          .toList();
      rank.list.sort((a, b) => b.count.compareTo(a.count));
    }

    rank.mine = LinkjoySmearSister.intDef(json, "mine", 0);

    return rank;
  }

  GiftVO? top1() {
    if (list.isEmpty) return null;
    return list[0];
  }

  bool isTOP1() {
    if (list.isEmpty) return false;

    return LINKJOY.uid() == list[0].uid;
  }

  int becomeTOP1Need() {
    if (list.isEmpty) return 1;
    return list[0].count - mine + 1;
  }
}
