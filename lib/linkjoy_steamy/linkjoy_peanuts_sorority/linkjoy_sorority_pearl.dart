import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_mushy.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_grad.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';

class LinkjoySororityPearl extends LinkjoyMoleculeSorority<LinkjoyUnborn> {
  List<LinkjoyFondnessGrad> regions = [];

  Map<int, CountryVO> countryMap = {};

  List<LinkjoyFondnessMushy> banners = [];

  List<LinkjoyFondnessMushy> bannersUserTop = [];

  static LinkjoySororityPearl fromJson(Map<String, dynamic> json) {
    LinkjoySororityPearl discover = LinkjoySororityPearl();

    var regions = json['regions'];
    if (regions != null) {
      discover.regions = (regions as List<dynamic>?)!
          .map((e) => LinkjoyFondnessGrad.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var records = json['records'];
    if (records != null) {
      discover.records = (records as List<dynamic>?)!
          .map((e) => LinkjoyUnborn.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var countryMap = json['country_map'];
    if (countryMap != null) {
      for (var e in (countryMap as Map<String, dynamic>?)!.entries) {
        discover.countryMap[LinkjoyGnomeSister.parseIntDef(e.key, 0)] =
            CountryVO.fromJson(e.value);
      }
    }

    var banners = json['banners'];
    if (banners != null) {
      discover.banners = (banners as List<dynamic>?)!
          .map((e) => LinkjoyFondnessMushy.fromJson(e as Map<String, dynamic>))
          .toList();
      discover.banners = discover.banners
          .where((element) => element.img != '')
          .toList();
    }

    var bannersUserTop = json['banners_user_top'];
    if (bannersUserTop != null) {
      discover.bannersUserTop = (bannersUserTop as List<dynamic>?)!
          .map((e) => LinkjoyFondnessMushy.fromJson(e as Map<String, dynamic>))
          .toList();
      discover.bannersUserTop = discover.bannersUserTop
          .where((element) => element.img != '')
          .toList();
    }
    return discover
      ..page = LinkjoySmearSister.intDef(json, 'page', 0)
      ..hasMore = LinkjoySmearSister.boolDef(json, 'has_more', true);
  }
}

class CountryVO {
  late String code;
  late String flag;
  late String name;

  static CountryVO fromJson(Map<String, dynamic> json) {
    return CountryVO()
      ..code = LinkjoySmearSister.strDef(json, "code", "")
      ..flag = LinkjoySmearSister.strDef(json, "flag", "")
      ..name = LinkjoySmearSister.strDef(json, "name", "");
  }

  Map<String, dynamic> toJson() {
    return {"code": code, "flag": flag, "name": name};
  }
}
