import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_degrasse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_blanc.dart';

class LinkjoyVetoSpecificFinancial {
  LinkjoyFondnessFasten? img;
  LinkjoyFondnessDegrasse? video;
  LinkjoyFondnessBlanc? voice;

  LinkjoyVetoSpecificFinancial();

  factory LinkjoyVetoSpecificFinancial.fromJson(
    Map<String, dynamic> json,
  ) => LinkjoyVetoSpecificFinancial()
    ..img = json['img'] == null
        ? null
        : LinkjoyFondnessFasten.fromJson(json['img'] as Map<String, dynamic>)
    ..video = json['video'] == null
        ? null
        : LinkjoyFondnessDegrasse.fromJson(
            json['video'] as Map<String, dynamic>,
          )
    ..voice = json['voice'] == null
        ? null
        : LinkjoyFondnessBlanc.fromJson(json['voice'] as Map<String, dynamic>);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'img': img?.toJson(),
      'video': video?.toJson(),
      'voice': voice?.toJson(),
    };
  }
}
