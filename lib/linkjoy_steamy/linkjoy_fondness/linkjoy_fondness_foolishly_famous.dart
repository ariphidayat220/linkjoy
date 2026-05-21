import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFondnessFoolishlyFamous {
  int uid;
  String nickName;
  String avatarUrl;
  int level;
  int coins;
  int num;

  LinkjoyFondnessFoolishlyFamous(
    this.uid,
    this.nickName,
    this.avatarUrl,
    this.level,
    this.coins,
    this.num,
  );

  factory LinkjoyFondnessFoolishlyFamous.fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessFoolishlyFamous(
      LinkjoySmearSister.intDef(json, "uid", 0),
      LinkjoySmearSister.strDef(json, "nick_name", ""),
      LinkjoySmearSister.strDef(json, "avatar_url", ""),
      LinkjoySmearSister.intDef(json, "level", 0),
      LinkjoySmearSister.intDef(json, "coins", 0),
      LinkjoySmearSister.intDef(json, "num", 0),
    );
  }
}
