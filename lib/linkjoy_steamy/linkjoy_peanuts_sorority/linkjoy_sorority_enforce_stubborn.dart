import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoySororityEnforceStubborn
    extends LinkjoyMoleculeSorority<LinkjoyUnborn> {
  static LinkjoySororityEnforceStubborn fromJson(Map<String, dynamic> json) {
    LinkjoySororityEnforceStubborn list = LinkjoySororityEnforceStubborn();

    var records = json['records'];
    if (records != null) {
      list.records = (records as List<dynamic>?)!
          .map((e) => LinkjoyUnborn.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    return list
      ..page = LinkjoySmearSister.intDef(json, 'page', 0)
      ..hasMore = LinkjoySmearSister.boolDef(json, 'has_more', true);
  }
}
