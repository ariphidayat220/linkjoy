import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyQuinto {
  late int id;

  late int dayIdx;

  late int coin;

  late int cardMatch;

  late int cardIm;

  late int cardVideo;

  late int cardKey;

  late int status;

  LinkjoyQuinto();

  factory LinkjoyQuinto.fromJson(Map<String, dynamic> json) {
    return LinkjoyQuinto()
      ..id = LinkjoySmearSister.intDef(json, 'id', 0)
      ..dayIdx = LinkjoySmearSister.intDef(json, 'day_idx', 0)
      ..coin = LinkjoySmearSister.intDef(json, 'coin', 0)
      ..cardMatch = LinkjoySmearSister.intDef(json, 'card_match', 0)
      ..cardIm = LinkjoySmearSister.intDef(json, 'card_im', 0)
      ..cardVideo = LinkjoySmearSister.intDef(json, 'card_video', 0)
      ..cardKey = LinkjoySmearSister.intDef(json, 'card_key', 0)
      ..status = LinkjoySmearSister.intDef(json, 'status', 0);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'day_idx': dayIdx,
    'coin': coin,
    'card_match': cardMatch,
    'card_im': cardIm,
    'card_video': cardVideo,
    'card_key': cardKey,
    'status': status,
  };

  bool get checked => status == 1;

  bool get ready => status == 0;

  bool get wait => status == 2;
}
