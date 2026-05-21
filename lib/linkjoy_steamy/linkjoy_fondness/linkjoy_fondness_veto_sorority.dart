import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

import 'linkjoy_veto_specific_financial.dart';

class LinkjoyFondnessVetoSorority {
  LinkjoyFondnessVetoSorority([this.code, this.msg, this.data]);

  int? code;
  String? msg;
  LinkjoyVetoSpecificFinancial? data;

  factory LinkjoyFondnessVetoSorority.fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessVetoSorority(
      LinkjoySmearSister.intDef(json, 'code', 0),
      LinkjoySmearSister.strDef(json, 'msg', ''),
      json['data'] == null
          ? null
          : LinkjoyVetoSpecificFinancial.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{"code": code, "msg": msg, 'data': data?.toJson()};
  }
}
