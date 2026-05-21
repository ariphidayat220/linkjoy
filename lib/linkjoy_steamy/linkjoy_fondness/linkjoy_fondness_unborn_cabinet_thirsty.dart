import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFondnessUnbornCabinetThirsty {
  int? id;
  int? business_id;
  int? type;
  int? status;
  String? type_desc;
  String? type_icon;
  String? status_desc;
  String? info;
  double? amount;
  int? create_time;
  LinkjoyFondnessUnbornCabinetThirstyBeeper? extend;

  static LinkjoyFondnessUnbornCabinetThirsty fromJson(
    Map<String, dynamic> json,
  ) {
    return LinkjoyFondnessUnbornCabinetThirsty()
      ..id = LinkjoySmearSister.intDef(json, "id", 0)
      ..business_id = LinkjoySmearSister.intDef(json, "business_id", 0)
      ..type = LinkjoySmearSister.intDef(json, "type", 0)
      ..status = LinkjoySmearSister.intDef(json, "status", 0)
      ..type_desc = LinkjoySmearSister.strDef(json, "type_desc", "")
      ..type_icon = LinkjoySmearSister.strDef(json, "type_icon", "")
      ..status_desc = LinkjoySmearSister.strDef(json, "status_desc", "")
      ..info = LinkjoySmearSister.strDef(json, "info", "")
      ..amount = LinkjoySmearSister.doubleDef(json, "amount", 0)
      ..create_time = LinkjoySmearSister.intDef(json, "create_time", 0)
      ..extend = LinkjoyFondnessUnbornCabinetThirstyBeeper.fromJson(
        json['extend'],
      );
  }
}

class LinkjoyFondnessUnbornCabinetThirstyBeeper {
  int? duration;
  String? gift_icon;

  static LinkjoyFondnessUnbornCabinetThirstyBeeper fromJson(
    Map<String, dynamic> json,
  ) {
    return LinkjoyFondnessUnbornCabinetThirstyBeeper()
      ..duration = LinkjoySmearSister.intDef(json, "duration", 0)
      ..gift_icon = LinkjoySmearSister.strDef(json, "gift_icon", "");
  }
}
