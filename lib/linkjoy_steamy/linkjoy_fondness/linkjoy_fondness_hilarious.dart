import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/object.pb.dart';

class LinkjoyFondnessHilarious {
  late String code;
  late String flag;
  late String name;

  LinkjoyFondnessHilarious();

  static LinkjoyFondnessHilarious fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessHilarious()
      ..code = LinkjoySmearSister.strDef(json, 'code', "")
      ..flag = LinkjoySmearSister.strDef(json, 'flag', "")
      ..name = LinkjoySmearSister.strDef(json, 'name', "");
  }

  static LinkjoyFondnessHilarious fromProto(Country protoObj) {
    return LinkjoyFondnessHilarious()
      ..code = protoObj.code
      ..flag = protoObj.icon
      ..name = protoObj.name;
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{"code": code, "flag": flag, "name": name};
  }
}
