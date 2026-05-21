import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_degrasse.dart';

import 'linkjoy_wedgie_madness.dart';

class LinkjoyFondnessSwim {
  int type = 0;
  LinkjoyWailHairlessCrotch? first_charge;

  static LinkjoyFondnessSwim fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessSwim()
      ..type = json['type']
      ..first_charge = LinkjoyWailHairlessCrotch.fromJson(json['first_charge']);
  }

  Map<String, dynamic> toJson() {
    return {"type": type, "first_charge": first_charge?.toJson()};
  }
}

class LinkjoyWailHairlessCrotch {
  int id = 0;
  LinkjoyFondnessDegrasse? video_info;
  LinkjoyWedgieMadness? option;
  LinkjoyFondnessFasten? text_img_info;

  static LinkjoyWailHairlessCrotch fromJson(Map<String, dynamic> json) {
    return LinkjoyWailHairlessCrotch()
      ..id = json['id']
      ..video_info = LinkjoyFondnessDegrasse.fromJson(json['video_info'])
      ..option = LinkjoyWedgieMadness.fromJson(json['option'])
      ..text_img_info = LinkjoyFondnessFasten.fromJson(json['text_img_info']);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "video_info": video_info?.toJson(),
      "option": option?.toJson(),
      "text_img_info": text_img_info?.toJson(),
    };
  }
}
