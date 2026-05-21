import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyForgotLapFinancial {
  LinkjoyForgotLapFinancial();

  late int id;
  late int type;
  late int snapType;
  late String? title;
  late String? content;
  late String? url;
  late int time;
  late String? imgUrl;
  late LinkjoyFondnessFasten? image;

  static LinkjoyForgotLapFinancial fromJson(Map<String, dynamic> json) {
    return LinkjoyForgotLapFinancial()
      ..snapType = LinkjoySmearSister.intDef(json, 'snap_type', 0)
      ..id = LinkjoySmearSister.intDef(json, 'id', 0)
      ..type = LinkjoySmearSister.intDef(json, 'type', 0)
      ..title = json['title'] as String?
      ..content = json['content'] as String?
      ..url = json['url'] as String?
      ..time = LinkjoySmearSister.intDef(json, 'publish_time', 0)
      ..imgUrl = json['img_url'] as String?
      ..image = json['image'] == null
          ? null
          : LinkjoyFondnessFasten.fromJson(json['image']);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type,
    'snapType': snapType,
    'title': title,
    'url': url,
    'time': time,
    'imgUrl': imgUrl,
    'image': image,
  };
}
