import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFondnessAndrewSoak {
  late int id;
  late String name;

  bool checked = false;

  LinkjoyFondnessAndrewSoak(this.id, this.name);

  static LinkjoyFondnessAndrewSoak fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessAndrewSoak(
      LinkjoySmearSister.intDef(json, 'id', -1),
      LinkjoySmearSister.strDef(json, 'name', ""),
    );
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name};
  }
}
