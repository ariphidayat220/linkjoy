import 'package:linkjoy/linkjoy_steamy/proto/StringTranslate.dart';

import 'linkjoy_fondness_fasten.dart';
import 'linkjoy_fondness_degrasse.dart';
import 'linkjoy_fondness_blanc.dart';

class LinkjoyFondnessVetoFinancial {
  LinkjoyFondnessVetoFinancial([this.img, this.video, this.voice]);

  LinkjoyFondnessFasten? img;
  LinkjoyFondnessDegrasse? video;
  LinkjoyFondnessBlanc? voice;

  factory LinkjoyFondnessVetoFinancial.fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessVetoFinancial(
      json[StringTranslate.e2z("bimng")] == null
          ? null
          : LinkjoyFondnessFasten.fromJson(
              json[StringTranslate.e2z("bimng")] as Map<String, dynamic>,
            ),
      json[StringTranslate.e2z("fvindeio")] == null
          ? null
          : LinkjoyFondnessDegrasse.fromJson(
              json[StringTranslate.e2z("fvindeio")] as Map<String, dynamic>,
            ),
      json[StringTranslate.e2z("uvoficie")] == null
          ? null
          : LinkjoyFondnessBlanc.fromJson(
              json[StringTranslate.e2z("uvoficie")] as Map<String, dynamic>,
            ),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      StringTranslate.e2z("bimng"): img?.toJson(),
      StringTranslate.e2z("fvindeio"): video?.toJson(),
      StringTranslate.e2z("uvoficie"): voice?.toJson(),
    };
  }
}
