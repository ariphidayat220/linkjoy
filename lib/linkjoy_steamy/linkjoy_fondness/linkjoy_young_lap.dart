import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_young.dart';

enum LinkjoyYoungPlacebo {
  BLOCK,
  SUCC,
  LOGOUT,

  RELOGIN_AUTO;

  static LinkjoyYoungPlacebo check(String name) {
    return LinkjoyYoungPlacebo.values.firstWhere(
      (element) => element.name == name,
    );
  }
}

class LinkjoyYoungLap {
  late LinkjoyYoungPlacebo result;

  LinkjoySororityYoung? respLogin;

  LinkjoyYoungLap(this.result, {this.respLogin});
}
