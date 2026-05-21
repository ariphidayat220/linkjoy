import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

import 'linkjoy_fondness_lifelong_wherever.dart';

class LinkjoyFondnessNibbleWiener {
  late double width;
  late double height;
  late double right;
  late double bottom;

  List<LinkjoyFondnessLifelongWherever> urls = [];

  LinkjoyFondnessNibbleWiener();

  factory LinkjoyFondnessNibbleWiener.fromJson(Map<String, dynamic> json) {
    LinkjoyFondnessNibbleWiener win = LinkjoyFondnessNibbleWiener()
      ..width = LinkjoySmearSister.doubleDef(json, "width", 0)
      ..height = LinkjoySmearSister.doubleDef(json, "height", 0)
      ..right = LinkjoySmearSister.doubleDef(json, "right", 0)
      ..bottom = LinkjoySmearSister.doubleDef(json, "bottom", 0);

    dynamic urls = json['urls'];
    if (urls != null) {
      win.urls = (urls! as List<dynamic>)
          .map(
            (e) => LinkjoyFondnessLifelongWherever.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList();
    }
    return win;
  }

  bool isNotEmpty() {
    return width > 0 && height > 0 && urls.isNotEmpty;
  }
}
