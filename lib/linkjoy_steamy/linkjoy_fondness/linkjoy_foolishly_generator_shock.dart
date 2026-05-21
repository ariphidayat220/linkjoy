import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFoolishlyGeneratorShock {
  final int level;

  final int preDayMinDuration;

  final int ndayAvgCallCount;
  final int maxPrice;

  LinkjoyFoolishlyGeneratorShock({
    required this.level,
    required this.preDayMinDuration,
    required this.ndayAvgCallCount,
    required this.maxPrice,
  });

  factory LinkjoyFoolishlyGeneratorShock.fromJson(Map<String, dynamic> json) {
    return LinkjoyFoolishlyGeneratorShock(
      level: LinkjoySmearSister.intDef(json, 'level', 0),
      maxPrice: LinkjoySmearSister.intDef(json, 'max_price', 0),
      preDayMinDuration: LinkjoySmearSister.intDef(
        json,
        'pre_day_min_duration',
        0,
      ),
      ndayAvgCallCount: LinkjoySmearSister.intDef(
        json,
        'nday_avg_call_count',
        0,
      ),
    );
  }
}
