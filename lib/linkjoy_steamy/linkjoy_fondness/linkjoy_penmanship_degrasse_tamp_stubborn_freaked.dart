import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_hilarious.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

import 'linkjoy_fondness_degrasse.dart';

class LinkjoyPenmanshipDegrasseStubbornFreaked {
  List<LinkjoyPenmanshipUnborn>? list;

  static LinkjoyPenmanshipDegrasseStubbornFreaked fromJson(
    Map<String, dynamic> json,
  ) {
    return LinkjoyPenmanshipDegrasseStubbornFreaked()
      ..list = (json["list"] as List<dynamic>?)
          ?.map(
            (e) => LinkjoyPenmanshipUnborn.fromJson(e as Map<String, dynamic>),
          )
          .toList();
  }
}

class LinkjoyPenmanshipUnborn {
  LinkjoyUnborn? user;
  LinkjoyFondnessDegrasse? video;
  LinkjoyFondnessHilarious? country;
  bool hasVideo = false;

  static LinkjoyPenmanshipUnborn fromJson(Map<String, dynamic> json) {
    return LinkjoyPenmanshipUnborn()
      ..user = LinkjoyUnborn.fromJson(json['user'])
      ..video = json['video'] == null
          ? null
          : LinkjoyFondnessDegrasse.fromJson(json['video'])
      ..hasVideo = LinkjoySmearSister.boolDef(json, "has_video", false)
      ..country = LinkjoyFondnessHilarious.fromJson(json['country']);
  }
}
