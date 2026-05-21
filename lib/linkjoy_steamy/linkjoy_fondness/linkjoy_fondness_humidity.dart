import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFondnessHumidity {
  late String id;
  late String name;

  LinkjoyFondnessHumidity(this.id, this.name);

  static LinkjoyFondnessHumidity fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessHumidity(
      LinkjoySmearSister.strDef(json, 'id', ""),
      LinkjoySmearSister.strDef(json, 'name', ""),
    );
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name};
  }
}
