import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_pearl.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';

class LinkjoySororityEric {
  int page = 1;

  bool hasMore = false;

  List<LinkjoyUnborn> records = [];

  Map<int, CountryVO> countryMap = {};

  static LinkjoySororityEric fromJson(Map<String, dynamic> json) {
    LinkjoySororityEric follows = LinkjoySororityEric();

    var records = json['records'];
    if (records != null) {
      follows.records = (records as List<dynamic>?)!
          .map((e) => LinkjoyUnborn.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var countryMap = json['country_map'];
    if (countryMap != null) {
      for (var e in (countryMap as Map<String, dynamic>?)!.entries) {
        follows.countryMap[LinkjoyGnomeSister.parseIntDef(e.key, 0)] =
            CountryVO.fromJson(e.value);
      }
    }

    return follows
      ..page = LinkjoySmearSister.intDef(json, 'page', 1)
      ..hasMore = LinkjoySmearSister.boolDef(json, 'has_more', true);
  }
}
