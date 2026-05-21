import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFondnessMarco {
  LinkjoyFondnessMarco([this.id, this.name, this.icon]);

  int? id;
  String? name;
  String? icon;

  factory LinkjoyFondnessMarco.fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessMarco(
      LinkjoySmearSister.intDef(json, "id", 0),
      LinkjoySmearSister.strDef(json, "name", ""),
      LinkjoySmearSister.strDef(json, "icon", ""),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{"id": id, "name": name, "icon": icon};
  }
}
