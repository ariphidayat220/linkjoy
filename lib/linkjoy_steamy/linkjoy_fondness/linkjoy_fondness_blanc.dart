import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ducky_sister.dart';

class LinkjoyFondnessBlanc {
  LinkjoyFondnessBlanc([
    this.id,
    this.duration,
    this.size,
    this.voiceUrl,
    this.mimeType,
    this.progress,
    this.relativePath,
  ]);

  int? id;
  int? duration;
  int? size;
  String? voiceUrl;
  String? mimeType;
  double? progress;
  String? relativePath;

  bool get isIdValid => (id ?? 0) > 0;

  String? get absolutePath =>
      LinkjoyDuckySister.linkjoyFellaDuckyImitateAthletic(relativePath);

  factory LinkjoyFondnessBlanc.fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessBlanc(
      LinkjoySmearSister.intDef(json, "id", 0),
      LinkjoySmearSister.intDef(json, "duration", 0),
      LinkjoySmearSister.intDef(json, "size", 0),
      LinkjoySmearSister.strDef(json, "voice_url", ''),
      LinkjoySmearSister.strDef(json, "mime_type", ''),
      LinkjoySmearSister.doubleDef(json, "progress", 0),
      LinkjoySmearSister.strDef(json, "relativePath", ''),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "id": id,
      "duration": duration,
      "size": size,
      "voice_url": voiceUrl,
      "mime_type": mimeType,
      "progress": progress,
      "relativePath": relativePath,
    };
  }
}
