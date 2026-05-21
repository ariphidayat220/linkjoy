import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';

class LinkjoyUnbornGeneratorShock {
  final int level;

  final int charged;

  final int dailyCoins;

  final List<int> privileges;

  final int discount;

  LinkjoyUnbornGeneratorShock({
    required this.level,
    required this.charged,
    required this.dailyCoins,
    required this.privileges,
    required this.discount,
  });

  factory LinkjoyUnbornGeneratorShock.fromJson(Map<String, dynamic> json) {
    var lst = LinkjoySmearSister.listByKey(json, 'privileges');
    List<int> prs = lst == null
        ? []
        : lst.map((item) => LinkjoyGnomeSister.parseIntDef(item, 0)).toList();

    return LinkjoyUnbornGeneratorShock(
      level: LinkjoySmearSister.intDef(json, 'level', 0),
      charged: LinkjoySmearSister.intDef(json, 'charged', 0),
      dailyCoins: LinkjoySmearSister.intDef(json, 'daily_coins', 0),
      privileges: prs,
      discount: LinkjoySmearSister.intDef(json, 'discount', 1),
    );
  }
}
