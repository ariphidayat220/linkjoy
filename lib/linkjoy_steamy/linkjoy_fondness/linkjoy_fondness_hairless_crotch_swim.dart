import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_madness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_wail_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';

import 'linkjoy_fondness_fasten.dart';
import 'linkjoy_fondness_degrasse.dart';

class LinkjoyFondnessSwimStubbornFreaked {
  LinkjoyFondnessSwimHairlessWail? firstPay;
  LinkjoyFondnessSwimVicious? vipAward;
  LinkjoyFondnessSwimVicious? signAward;

  static LinkjoyFondnessSwimStubbornFreaked fromJson(
    Map<String, dynamic> json,
  ) {
    return LinkjoyFondnessSwimStubbornFreaked()
      ..firstPay = json["first_pay"] == null
          ? null
          : LinkjoyFondnessSwimHairlessWail.fromJson(
              json["first_pay"] as Map<String, dynamic>,
            )
      ..vipAward = json["vip_award"] == null
          ? null
          : LinkjoyFondnessSwimVicious.fromJson(
              json["vip_award"] as Map<String, dynamic>,
            )
      ..signAward = json["sign_award"] == null
          ? null
          : LinkjoyFondnessSwimVicious.fromJson(
              json["sign_award"] as Map<String, dynamic>,
            );
  }
}

class LinkjoyFondnessSwimVicious {
  late int coin;
  late int cardVideo;
  late int cardMatch;
  late int cardIm;

  late int cardKey;

  LinkjoyFondnessSwimVicious(
    this.coin,
    this.cardVideo,
    this.cardMatch,
    this.cardIm,
    this.cardKey,
  );

  static LinkjoyFondnessSwimVicious fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessSwimVicious(
      LinkjoySmearSister.intDef(json, 'coin', 0),
      LinkjoySmearSister.intDef(json, 'card_video', 0),
      LinkjoySmearSister.intDef(json, 'card_match', 0),
      LinkjoySmearSister.intDef(json, 'card_im', 0),
      LinkjoySmearSister.intDef(json, 'card_key', 0),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "coin": coin,
      "card_video": cardVideo,
      "card_match": cardMatch,
      "card_im": cardIm,
      "card_key": cardKey,
    };
  }

  void add(LinkjoyFondnessSwimVicious append) {
    coin += append.coin;
    cardVideo += append.cardVideo;
    cardMatch += append.cardMatch;
    cardIm += append.cardIm;
    cardKey += append.cardKey;
  }
}

class LinkjoyFondnessSwimHairlessWail {
  LinkjoyFondnessFasten? photo;
  LinkjoyFondnessDegrasse? video;

  LinkjoyWedgieMadness? option;

  static LinkjoyFondnessSwimHairlessWail fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessSwimHairlessWail()
      ..photo = json['photo'] == null
          ? null
          : LinkjoyFondnessFasten.fromJson(
              json['photo'] as Map<String, dynamic>,
            )
      ..video = json['video'] == null
          ? null
          : LinkjoyFondnessDegrasse.fromJson(
              json['video'] as Map<String, dynamic>,
            );
  }
}
