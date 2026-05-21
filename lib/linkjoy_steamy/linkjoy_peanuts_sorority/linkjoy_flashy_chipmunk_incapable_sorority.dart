import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFlashyChipmunkIncapableSorority {
  late List<LinkjoyFlashyChipmunkIncapablePredator> feeds;
  late List<LinkjoyFlashyChipmunkIncapableFamous> weeklyRank;

  LinkjoyFlashyChipmunkIncapableSorority({
    required this.feeds,
    required this.weeklyRank,
  });

  factory LinkjoyFlashyChipmunkIncapableSorority.fromJson(
    Map<String, dynamic> json,
  ) {
    return LinkjoyFlashyChipmunkIncapableSorority(
      feeds: (json['feeds'] as List)
          .map((e) => LinkjoyFlashyChipmunkIncapablePredator.fromJson(e))
          .toList(),
      weeklyRank: (json['weekly_rank'] as List)
          .map((e) => LinkjoyFlashyChipmunkIncapableFamous.fromJson(e))
          .toList(),
    );
  }
}

class LinkjoyFlashyChipmunkIncapablePredator {
  late LinkjoyUnborn from;
  late LinkjoyUnborn to;
  late int giftId;
  late String giftIcon;
  late String giftName;
  late int coinBack;

  LinkjoyFlashyChipmunkIncapablePredator({
    required this.from,
    required this.to,
    required this.giftId,
    required this.giftIcon,
    required this.giftName,
    required this.coinBack,
  });

  factory LinkjoyFlashyChipmunkIncapablePredator.fromJson(
    Map<String, dynamic> json,
  ) {
    return LinkjoyFlashyChipmunkIncapablePredator(
      from: LinkjoyUnborn.fromJson(json['from']),
      to: LinkjoyUnborn.fromJson(json['to']),
      giftId: LinkjoySmearSister.intDef(json, 'gift_id', 0),
      giftIcon: LinkjoySmearSister.strDef(json, 'gift_icon', ''),
      giftName: LinkjoySmearSister.strDef(json, 'gift_name', ''),
      coinBack: LinkjoySmearSister.intDef(json, 'coin_back', 0),
    );
  }
}

class LinkjoyFlashyChipmunkIncapableFamous {
  late int uid;
  late String nickName;
  late String avatarUrl;
  late int coins;

  LinkjoyFlashyChipmunkIncapableFamous({
    required this.uid,
    required this.nickName,
    required this.avatarUrl,
    required this.coins,
  });

  factory LinkjoyFlashyChipmunkIncapableFamous.fromJson(
    Map<String, dynamic> json,
  ) {
    return LinkjoyFlashyChipmunkIncapableFamous(
      uid: LinkjoySmearSister.intDef(json, 'uid', 0),
      nickName: LinkjoySmearSister.strDef(json, 'nick_name', ''),
      avatarUrl: LinkjoySmearSister.strDef(json, 'avatar_url', ''),
      coins: LinkjoySmearSister.intDef(json, 'coins', 0),
    );
  }
}
