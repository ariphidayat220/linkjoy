import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFondnessMushy {
  late String img;
  late String url;

  LinkjoyFondnessMushy(this.img, this.url);

  factory LinkjoyFondnessMushy.fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessMushy(
      LinkjoySmearSister.strDef(json, "img", ""),
      LinkjoySmearSister.strDef(json, "url", ""),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'img': img, 'url': url};
  }
}
