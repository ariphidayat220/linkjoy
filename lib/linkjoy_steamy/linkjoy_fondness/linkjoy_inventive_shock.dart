import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyInventiveShock {
  LinkjoyInventiveShock();

  bool callToastInvite = true;

  factory LinkjoyInventiveShock.fromJson(Map<String, dynamic>? json) {
    json ??= {};
    return LinkjoyInventiveShock()
      ..callToastInvite = LinkjoySmearSister.boolDef(
        json,
        "call_toast_invite",
        true,
      );
  }
}
