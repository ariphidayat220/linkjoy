import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyVirtualSillinessSorority {
  LinkjoyVirtualSillinessSorority(this.code, this.sessionId);

  late String code;
  late String sessionId;

  factory LinkjoyVirtualSillinessSorority.fromJson(Map<String, dynamic> json) {
    return LinkjoyVirtualSillinessSorority(
      LinkjoySmearSister.strDef(json, 'code', ""),
      LinkjoySmearSister.strDef(json, 'session_id', ''),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{"code": code, "session_id": sessionId};
  }
}
