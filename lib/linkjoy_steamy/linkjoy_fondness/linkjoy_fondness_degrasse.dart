import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ducky_sister.dart';

class LinkjoyFondnessDegrasse {
  LinkjoyFondnessDegrasse([
    this.id,
    this.duration,
    this.videoUrl,
    this.coverUrl,
    this.width,
    this.height,
    this.progress,
    this.relativePath,
    this.gifUrl,
    this.url,
  ]);

  int? id;
  int? duration;
  String? videoUrl;
  String? coverUrl;
  int? width;
  int? height;
  double? progress;
  String? relativePath;
  String? gifUrl;
  String? url;

  bool get isIdValid => (id ?? 0) > 0;

  String? get absolutePath =>
      LinkjoyDuckySister.linkjoyFellaDuckyImitateAthletic(relativePath);

  factory LinkjoyFondnessDegrasse.fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessDegrasse(
      LinkjoySmearSister.intDef(json, "id", 0),
      LinkjoySmearSister.intDef(json, "duration", 0),
      LinkjoySmearSister.strDef(json, "video_url", ''),
      LinkjoySmearSister.strDef(json, "cover_url", ''),
      LinkjoySmearSister.intDef(json, "width", 0),
      LinkjoySmearSister.intDef(json, "height", 0),
      LinkjoySmearSister.doubleDef(json, "progress", 0),
      LinkjoySmearSister.strDef(json, "relativePath", ''),
      LinkjoySmearSister.strDef(json, "gif_url", ''),
      LinkjoySmearSister.strDef(json, "url", ''),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "id": id,
      "duration": duration,
      "video_url": videoUrl,
      "cover_url": coverUrl,
      "width": width,
      "height": height,
      "progress": progress,
      "relativePath": relativePath,
      "gif_url": gifUrl,
      "url": url,
    };
  }
}
