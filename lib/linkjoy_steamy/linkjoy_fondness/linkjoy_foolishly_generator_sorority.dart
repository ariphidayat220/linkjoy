import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

import 'linkjoy_foolishly_generator_shock.dart';

class LinkjoyFoolishlyGeneratorSorority {
  final int level;

  final int price;

  final int ndayAvgCallCount;

  final int avgCallDuration;

  final List<LinkjoyFoolishlyGeneratorShock> levelConfig;

  LinkjoyFoolishlyGeneratorSorority({
    required this.level,
    required this.price,
    required this.ndayAvgCallCount,
    required this.avgCallDuration,
    required this.levelConfig,
  });

  LinkjoyFoolishlyGeneratorShock next() {
    for (LinkjoyFoolishlyGeneratorShock lv in levelConfig) {
      if (lv.level > level) {
        return lv;
      }
    }
    return levelConfig.last;
  }

  LinkjoyFoolishlyGeneratorShock current() {
    for (LinkjoyFoolishlyGeneratorShock lv in levelConfig) {
      if (lv.level == level) {
        return lv;
      }
    }
    return levelConfig.first;
  }

  factory LinkjoyFoolishlyGeneratorSorority.fromJson(
    Map<String, dynamic> json,
  ) {
    return LinkjoyFoolishlyGeneratorSorority(
      level: LinkjoySmearSister.intDef(json, 'level', 1),
      price: LinkjoySmearSister.intDef(json, 'price', 1),
      ndayAvgCallCount: LinkjoySmearSister.intDef(
        json,
        'nday_avg_call_count',
        1,
      ),
      avgCallDuration: LinkjoySmearSister.intDef(json, 'avg_call_duration', 1),
      levelConfig: json['level_config'] == null
          ? <LinkjoyFoolishlyGeneratorShock>[]
          : List<LinkjoyFoolishlyGeneratorShock>.from(
              json['level_config'].map(
                (x) => LinkjoyFoolishlyGeneratorShock.fromJson(x),
              ),
            ),
    );
  }
}
