import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFondnessPhillipsMushySubjective {
  late String img;
  late String title;
  late String desc;
  late String bigCardImg;
  late String smallCardImg;

  LinkjoyFondnessPhillipsMushySubjective();

  factory LinkjoyFondnessPhillipsMushySubjective.fromJson(
    Map<String, dynamic> json,
  ) => LinkjoyFondnessPhillipsMushySubjective()
    ..img = LinkjoySmearSister.strDef(json, "img", "")
    ..title = LinkjoySmearSister.strDef(json, "title", "")
    ..desc = LinkjoySmearSister.strDef(json, "desc", "")
    ..bigCardImg = LinkjoySmearSister.strDef(json, "big_card_img", "")
    ..smallCardImg = LinkjoySmearSister.strDef(json, "small_card_img", "");
}
