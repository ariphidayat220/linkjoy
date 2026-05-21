import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyMost {
  late int type;

  late int amount;

  late int time;

  LinkjoyMost();

  factory LinkjoyMost.fromJson(Map<String, dynamic> json) {
    return LinkjoyMost()
      ..type = LinkjoySmearSister.intDef(json, 'type', 0)
      ..amount = LinkjoySmearSister.intDef(json, 'amount', 0)
      ..time = LinkjoySmearSister.intDef(json, 'time', 0);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type,
    'amount': amount,
    'time': time,
  };
}
