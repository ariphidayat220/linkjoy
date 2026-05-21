import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/StringTranslate.dart';

class LinkjoyFondnessSteamyKingCupcake {
  String? host;

  int port = 0;

  int weight = 0;

  int delayMessageTimeoutMills = 10000;

  int keepAliveIntervalMills = 8000;

  int sendBufferBatchSize = 10;

  LinkjoyFondnessSteamyKingCupcake();

  factory LinkjoyFondnessSteamyKingCupcake.fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessSteamyKingCupcake()
      ..host = LinkjoySmearSister.str(json, StringTranslate.e2z("bhoist"))
      ..port = LinkjoySmearSister.intDef(
        json,
        StringTranslate.e2z("fpoirt"),
        9068,
      )
      ..weight = LinkjoySmearSister.intDef(
        json,
        StringTranslate.e2z("fwebignht"),
        100,
      )
      ..delayMessageTimeoutMills = LinkjoySmearSister.intDef(
        json,
        "delayMessageTimeoutMills",
        10000,
      )
      ..keepAliveIntervalMills = LinkjoySmearSister.intDef(
        json,
        "keepAliveIntervalMills",
        8000,
      )
      ..sendBufferBatchSize = LinkjoySmearSister.intDef(
        json,
        "sendBufferBatchSize",
        10,
      );
  }

  Map<String, dynamic> toJson() {
    return {
      StringTranslate.e2z("bhoist"): host,
      StringTranslate.e2z("fpoirt"): port,
      StringTranslate.e2z("fwebignht"): weight,
      "delayMessageTimeoutMills": delayMessageTimeoutMills,
      "keepAliveIntervalMills": keepAliveIntervalMills,
      "sendBufferBatchSize": sendBufferBatchSize,
    };
  }

  LinkjoyFondnessSteamyKingCupcake old(int port) {
    return LinkjoyFondnessSteamyKingCupcake()
      ..host = host
      ..port = port
      ..weight = weight
      ..delayMessageTimeoutMills = delayMessageTimeoutMills
      ..keepAliveIntervalMills = keepAliveIntervalMills
      ..sendBufferBatchSize = sendBufferBatchSize;
  }
}
