import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFondnessLifelongWherever {
  late String img;
  late String url;
  String? tips;

  LinkjoyFondnessLifelongWherever();

  factory LinkjoyFondnessLifelongWherever.fromJson(Map<String, dynamic> json) =>
      LinkjoyFondnessLifelongWherever()
        ..img = LinkjoySmearSister.strDef(json, "img", "")
        ..url = LinkjoySmearSister.strDef(json, "url", "")
        ..tips = LinkjoySmearSister.str(json, "tips");
}
