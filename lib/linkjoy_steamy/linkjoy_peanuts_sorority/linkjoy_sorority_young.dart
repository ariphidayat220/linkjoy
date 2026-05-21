import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_young_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoySororityYoung {
  late String session;

  late String secret;

  late LinkjoyYoungUnborn user;

  late int role;

  late LinkjoyUnbornDeposit runtime;

  late int reg;

  late int regProgress;

  static LinkjoySororityYoung fromJson(Map<String, dynamic> json) {
    return LinkjoySororityYoung()
      ..session = json['session']
      ..secret = json['secret']
      ..user = LinkjoyYoungUnborn.fromJson(json['user'])
      ..runtime = LinkjoyUnbornDeposit.fromJson(json['runtime'])
      ..role = LinkjoySmearSister.intDef(json, "role", 0)
      ..regProgress = LinkjoySmearSister.intDef(json, "reg_progress", 0)
      ..reg = LinkjoySmearSister.intDef(json, "reg", 0);
  }
}
