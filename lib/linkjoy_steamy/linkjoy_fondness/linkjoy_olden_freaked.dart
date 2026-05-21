import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

import 'linkjoy_quinto.dart';
import 'linkjoy_unborn_wave.dart';

class LinkjoyOldenFreaked {
  List<LinkjoyQuinto>? signList;

  List<LinkjoyUnbornWave>? onceTasks;

  List<LinkjoyUnbornWave>? dailyTasks;

  List<LinkjoyUnbornWave>? weeklyTasks;

  int? signEndTime;

  late int dailyEndTime;

  late int weeklyEndTime;

  static LinkjoyOldenFreaked fromJson(Map<String, dynamic> json) {
    return LinkjoyOldenFreaked()
      ..signList = (json["sign_list"] as List<dynamic>?)
          ?.map((e) => LinkjoyQuinto.fromJson(e as Map<String, dynamic>))
          .toList()
      ..onceTasks = (json["once_tasks"] as List<dynamic>?)
          ?.map((e) => LinkjoyUnbornWave.fromJson(e as Map<String, dynamic>))
          .toList()
      ..dailyTasks = (json["daily_tasks"] as List<dynamic>?)
          ?.map((e) => LinkjoyUnbornWave.fromJson(e as Map<String, dynamic>))
          .toList()
      ..weeklyTasks = (json["weekly_tasks"] as List<dynamic>?)
          ?.map((e) => LinkjoyUnbornWave.fromJson(e as Map<String, dynamic>))
          .toList()
      ..signEndTime = LinkjoySmearSister.intDef(json, 'sign_end_time', 0)
      ..dailyEndTime = LinkjoySmearSister.intDef(json, 'daily_end_time', 0)
      ..weeklyEndTime = LinkjoySmearSister.intDef(json, 'weekly_end_time', 0);
  }

  Map<String, dynamic> toJson() {
    return {
      "signList": signList,
      "once_tasks": onceTasks,
      "daily_tasks": dailyTasks,
      "weekly_tasks": weeklyTasks,
      "sign_end_time": signEndTime,
      "dailyEndTime": dailyEndTime,
      "weeklyEndTime": weeklyEndTime,
    };
  }
}
