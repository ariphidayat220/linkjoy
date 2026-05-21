import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyFondnessConclusiveProject {
  LinkjoyFondnessConclusiveProject([
    this.videoToken,
    this.voiceToken,
    this.imageToken,
    this.logToken,
    this.expireTime,
  ]);

  String? videoToken;
  String? voiceToken;
  String? imageToken;
  String? logToken;
  int? expireTime;

  factory LinkjoyFondnessConclusiveProject.fromJson(Map<String, dynamic> json) {
    return LinkjoyFondnessConclusiveProject(
      LinkjoySmearSister.strDef(json, "video_token", ""),
      LinkjoySmearSister.strDef(json, "voice_token", ""),
      LinkjoySmearSister.strDef(json, "image_token", ""),
      LinkjoySmearSister.strDef(json, "log_token", ""),
      LinkjoySmearSister.intDef(json, "expire_time", 0),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "video_token": videoToken,
      "voice_token": voiceToken,
      "image_token": imageToken,
      "log_token": logToken,
      "expire_time": expireTime,
    };
  }
}
