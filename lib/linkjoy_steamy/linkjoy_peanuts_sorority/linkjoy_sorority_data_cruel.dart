import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_hilarious_unlock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_hilarious.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';

class LinkjoySororityDataCruel<T> extends LinkjoyMoleculeSorority<T> {
  late int pageSize;
  late int totalPages;
  late int total;
  Map<int, LinkjoyFondnessHilarious>? countryMap;

  LinkjoySororityDataCruel();

  LinkjoySororityDataCruel.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) {
    page = LinkjoySmearSister.intDef(json, "page", 0);
    total = LinkjoySmearSister.intDef(json, "total", 0);
    totalPages = LinkjoySmearSister.intDef(json, "total_pages", 0);
    pageSize = LinkjoySmearSister.intDef(json, "page_size", 20);
    hasMore = LinkjoySmearSister.boolDef(json, "has_more", false);
    records =
        (json["records"] as List<dynamic>?)
            ?.map((e) => fromJsonT(e as Map<String, dynamic>))
            .toList() ??
        [];
    countryMap =
        (json['country_map'] as Map<String, dynamic>?)?.map(
          (key, value) => MapEntry(
            int.parse(key),
            LinkjoyFondnessHilarious.fromJson(value),
          ),
        ) ??
        {};
    if (!LinkjoyGnomeSister.isEmptyMap(countryMap)) {
      LinkjoyHilariousUnlock.instance.refreshAllCountries(countryMap!);
    }
  }

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T) toJsonT) {
    return {
      "page": page,
      "total": total,
      "has_more": hasMore,
      "total_pages": totalPages,
      "page_size": pageSize,
      "records": records.map((e) => toJsonT(e)).toList(),
      'country_map': countryMap?.map(
        (key, value) => MapEntry(key.toString(), value.toJson()),
      ),
    };
  }
}
