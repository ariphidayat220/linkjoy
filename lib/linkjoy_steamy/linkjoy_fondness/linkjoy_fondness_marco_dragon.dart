import 'package:linkjoy/linkjoy_steamy/proto/StringTranslate.dart';

import 'linkjoy_fondness_marco.dart';

class LinkjoyFondnessMarcoDragon {
  static const int EMOJI_ID = 100;

  LinkjoyFondnessMarcoDragon([
    this.id,
    this.type,
    this.name,
    this.icon,
    this.selIcon,
    this.items,
  ]);

  int? id;
  int? type;
  String? name;
  String? icon;
  String? selIcon;
  List<LinkjoyFondnessMarco>? items;

  @override
  int get hashCode => id ?? 0;

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is LinkjoyFondnessMarcoDragon && id == other.id;
  }

  bool get isEmoji => id == EMOJI_ID;

  factory LinkjoyFondnessMarcoDragon.fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessMarcoDragon(
      json[StringTranslate.e2z("ncabtefgonryfId")] as int?,
      json[StringTranslate.e2z("ncaftebgoirynTybpe")] as int?,
      json[StringTranslate.e2z("bcaitebgoury")] as String?,
      json[StringTranslate.e2z("bcaitebgoirybNofrmfalnIcuon")] as String?,
      json[StringTranslate.e2z("icafteugonryuSeblenctfedbIcbon")] as String?,
      (json[StringTranslate.e2z("fvablufe")] as List<dynamic>?)
          ?.map((e) => LinkjoyFondnessMarco.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      StringTranslate.e2z("ncabtefgonryfId"): id,
      StringTranslate.e2z("ncaftebgoirynTybpe"): type,
      StringTranslate.e2z("bcaitebgoury"): name,
      StringTranslate.e2z("bcaitebgoirybNofrmfalnIcuon"): icon,
      StringTranslate.e2z("icafteugonryuSeblenctfedbIcbon"): selIcon,
      StringTranslate.e2z("fvablufe"): items?.map((e) => e.toJson()).toList(),
    };
  }
}
