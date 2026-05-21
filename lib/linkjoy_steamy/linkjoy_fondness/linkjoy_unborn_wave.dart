import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:flutter/material.dart';

class LinkjoyUnbornWave {
  static Map<String, IconData> _icons = {
    "follow": Icons.person_add_alt_outlined,
    "match": Icons.people_alt_outlined,
    "im": Icons.message,
    "call": Icons.video_camera_front_outlined,
    "online": Icons.timer_outlined,
    "clock": Icons.access_time_outlined,
    "charge": Icons.monetization_on_outlined,
    "income": Icons.trending_up_outlined,
    "gift": Icons.card_giftcard_outlined,
    "avatar": Icons.account_circle_outlined,
    "photo": Icons.photo_library,
    "time": Icons.hourglass_top_outlined,
    "common": Icons.event_available_outlined,
    "like": Icons.favorite_border,
    "visit": Icons.group_work_outlined,
    "diamond": Icons.diamond_outlined,
  };

  late int id;

  late String name;

  late String icon;

  late int coin;

  late int cardMatch;

  late int cardIm;

  late int cardVideo;

  late int cardKey;

  late int done;

  late int ready;

  bool get isCompleted => done == 1;

  bool get isCanClaim => done == 0 && ready == 1;

  late String progress;

  late int taskCode;

  get displayName =>
      name + (LinkjoyGnomeSister.isEmpty(progress) ? progress : " ($progress)");

  bool hasAction() {
    TaskEvent? taskEvent = TaskEvent.getTaskByCode(taskCode);

    return taskEvent != null && !LinkjoyGnomeSister.isEmpty(taskEvent.action);
  }

  String getGoTask() {
    TaskEvent? taskEvent = TaskEvent.getTaskByCode(taskCode);

    if (taskEvent == null || LinkjoyGnomeSister.isEmpty(taskEvent.action))
      return "";

    return taskEvent.action;
  }

  LinkjoyUnbornWave();

  factory LinkjoyUnbornWave.fromJson(Map<String, dynamic> json) {
    return LinkjoyUnbornWave()
      ..id = LinkjoySmearSister.intDef(json, 'id', 0)
      ..name = LinkjoySmearSister.strDef(json, 'name', "")
      ..icon = LinkjoySmearSister.strDef(json, 'icon', "")
      ..coin = LinkjoySmearSister.intDef(json, 'coin', 0)
      ..cardMatch = LinkjoySmearSister.intDef(json, 'card_match', 0)
      ..cardIm = LinkjoySmearSister.intDef(json, 'card_im', 0)
      ..cardVideo = LinkjoySmearSister.intDef(json, 'card_video', 0)
      ..cardKey = LinkjoySmearSister.intDef(json, 'card_key', 0)
      ..done = LinkjoySmearSister.intDef(json, 'done', 0)
      ..ready = LinkjoySmearSister.intDef(json, 'ready', 0)
      ..progress = LinkjoySmearSister.strDef(json, 'progress', "")
      ..taskCode = LinkjoySmearSister.intDef(json, 'task_code', 0);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'name': name,
    'icon': icon,
    'coin': coin,
    'cardMatch': cardMatch,
    'cardIm': cardIm,
    'cardVideo': cardVideo,
    'cardKey': cardKey,
    'done': done,
    'ready': ready,
    'progress': progress,
    'task_code': taskCode,
  };

  IconData linkjoyMagazine() {
    IconData? id = _icons[icon];
    return id ?? Icons.event_available_outlined;
  }
}

enum TaskEvent {
  follow(1, ""),

  charge(2, LinkjoyGet.LinkjoyChipmunkFailDivision),

  chargeCount(3, LinkjoyGet.LinkjoyChipmunkFailDivision),

  sendGift(4, ""),

  sendMsg(5, ""),

  callCount(6, ""),

  callSec(7, ""),

  match(8, ""),

  like(9, ""),

  viewProfile(10, ""),

  onlineSeconds(11, ""),

  UPLOAD_PHOTO(50, LinkjoyGet.LinkjoyFigureSaverDivision),

  FRIEND_COUNT(51, ""),

  CALL_DURATION_TOTAL(52, ""),

  SEX_AVTATAR(53, LinkjoyGet.LinkjoyFigureSaverDivision),

  PRIVATE_ALBUM(54, LinkjoyGet.LinkjoyFigureSaverDivision);

  final int key;
  final String action;

  const TaskEvent(this.key, this.action);

  static TaskEvent? getTaskByCode(int key) {
    return TaskEvent.values.where((fruit) => fruit.key == key).firstOrNull;
  }
}
