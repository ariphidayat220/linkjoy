import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:get/get.dart';

class LinkjoySororityForgotHonorableSaver {
  late int id;
  late String? title;
  late String? content;
  late int unreadCount;
  late int? publishTime;
  late int? snapType;
  late int? category;

  LinkjoySororityForgotHonorableSaver();

  String? get displayContent =>
      LinkjoyGnomeSister.isEmpty(content) ? title : content;

  static LinkjoySororityForgotHonorableSaver fromJson(
    Map<String, dynamic> json,
  ) {
    return LinkjoySororityForgotHonorableSaver()
      ..title = LinkjoySmearSister.strDef(
        json,
        "title",
        "linkjoy_caring_forgot_lap".tr,
      )
      ..content = LinkjoySmearSister.strDef(json, "content", "")
      ..id = LinkjoySmearSister.intDef(json, 'id', 0)
      ..unreadCount = LinkjoySmearSister.intDef(json, 'unread_count', 0)
      ..publishTime = LinkjoySmearSister.intDef(json, 'publish_time', 0)
      ..snapType = LinkjoySmearSister.intDef(json, 'snap_type', 0)
      ..category = LinkjoySmearSister.intDef(json, 'category', 0);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'content': content,
    'unreadCount': unreadCount,
    'publish_time': publishTime,
    'snapType': snapType,
    'category': category,
    'id': id,
  };
}
