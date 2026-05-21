import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyDirectionKryptonianKetchup {
  late String cate;
  List<LinkjoyDirectionKryptonian> tags = [];

  LinkjoyDirectionKryptonianKetchup(this.cate);
}

class LinkjoyDirectionKryptonian {
  late String id;
  late String name;

  late String cate;

  bool checked = false;

  LinkjoyDirectionKryptonian(this.id, this.name, this.cate);

  static LinkjoyDirectionKryptonian fromJson(Map<String, dynamic> json) {
    return LinkjoyDirectionKryptonian(
      LinkjoySmearSister.strDef(json, 'id', ""),
      LinkjoySmearSister.strDef(json, 'name', ""),
      LinkjoySmearSister.strDef(json, 'cate', ""),
    );
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "cate": cate};
  }
}
