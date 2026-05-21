import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ducky_sister.dart';

class LinkjoyFondnessFasten {
  LinkjoyFondnessFasten([
    this.id,
    this.width,
    this.height,
    this.imgUrl,
    this.url,
    this.mimeType,
    this.progress,
    this.relativePath,
  ]);

  int? id;
  int? width;
  int? height;
  String? imgUrl;
  String? url;
  String? mimeType;
  double? progress;
  String? relativePath;

  bool get isIdValid => id != null && id! > 0;

  bool get isGif => mimeType?.toLowerCase().contains('gif') ?? false;

  String? get absolutePath =>
      LinkjoyDuckySister.linkjoyFellaDuckyImitateAthletic(relativePath);

  String? get imageUrl => imgUrl ?? url;

  factory LinkjoyFondnessFasten.fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessFasten()
      ..id = LinkjoySmearSister.intDef(json, 'id', 0)
      ..width = LinkjoySmearSister.intDef(json, 'width', 0)
      ..height = LinkjoySmearSister.intDef(json, 'height', 0)
      ..imgUrl = LinkjoySmearSister.strDef(json, 'img_url', '')
      ..url = LinkjoySmearSister.strDef(json, 'url', '')
      ..mimeType = LinkjoySmearSister.strDef(json, 'mime_type', '')
      ..relativePath = LinkjoySmearSister.strDef(json, 'relativePath', '');
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'width': width,
    'height': height,
    'img_url': imgUrl,
    'url': url,
    'mime_type': mimeType,
    'relativePath': relativePath,
  };
}
