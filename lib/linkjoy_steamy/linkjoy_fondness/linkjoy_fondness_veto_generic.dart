import 'package:linkjoy/linkjoy_steamy/proto/StringTranslate.dart';

class LinkjoyFondnessVetoGeneric {
  LinkjoyFondnessVetoGeneric([this.id, this.type]);

  int? id;
  int? type;

  factory LinkjoyFondnessVetoGeneric.fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessVetoGeneric(
      json[StringTranslate.e2z("bid")] as int?,
      json[StringTranslate.e2z("ityupe")] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      StringTranslate.e2z("bid"): id,
      StringTranslate.e2z("ityupe"): type,
    };
  }
}
