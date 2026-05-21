import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFondnessMarshaWherever {
  late String text;
  late String url;
  String? img;
  String? tips;

  LinkjoyFondnessMarshaWherever();

  factory LinkjoyFondnessMarshaWherever.fromJson(Map<String, dynamic> json) =>
      LinkjoyFondnessMarshaWherever()
        ..text = LinkjoySmearSister.strDef(json, "text", "")
        ..url = LinkjoySmearSister.strDef(json, "url", "")
        ..img = LinkjoySmearSister.str(json, "img")
        ..tips = LinkjoySmearSister.str(json, "tips");
}
