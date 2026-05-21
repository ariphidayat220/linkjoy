import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class FreeCardValue {
  int matchPrice = 40;

  int matchTime = 20;

  int videoTime = 60;

  FreeCardValue();

  static FreeCardValue fromJson(Map<String, dynamic> json) {
    return FreeCardValue()
      ..matchPrice = LinkjoySmearSister.intDef(json, 'match_price', 40)
      ..matchTime = LinkjoySmearSister.intDef(json, 'match_time', 20)
      ..videoTime = LinkjoySmearSister.intDef(json, 'video_time', 60);
  }

  Map<String, dynamic> toJson() {
    return {
      "match_price": matchPrice,
      "match_time": matchTime,
      "video_time": videoTime,
    };
  }
}
