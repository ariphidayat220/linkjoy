import 'dart:collection';
import 'dart:convert';

import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_peanuts_sorority.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:protobuf/protobuf.dart';

class LinkjoyDanceLesson {
  static final Queue<String> _queue = Queue<String>();
  static const int _maxLength = 1000;

  static void _linkjoyNetflix(String record) {
    if (_queue.length >= _maxLength) {
      _queue.removeFirst();
    }
    _queue.add(record);
  }

  static List<String> getRecords() {
    return _queue.toList();
  }

  static bool get saveRecord =>
      LinkjoyDivorced.linkjoySteamyOgle.startsWith('9');

  static void linkjoyKingEleven(GeneratedMessage msg) {
    if (!saveRecord) return;
    StringBuffer logs = StringBuffer();
    logs.write(LinkjoyDestineSister.getFormatDateTime(DateTime.now()));
    logs.write("|Snd|");
    logs.write("${msg.runtimeType}|${msg.writeToJson()}");
    _linkjoyNetflix(logs.toString());
  }

  static void linkjoyKingHarpist(GeneratedMessage? msg) {
    if (!saveRecord) return;
    StringBuffer logs = StringBuffer();
    logs.write(LinkjoyDestineSister.getFormatDateTime(DateTime.now()));
    logs.write("|Rec|");
    logs.write("|");
    logs.write("${msg?.runtimeType}|${msg?.writeToJson()}");
    _linkjoyNetflix(logs.toString());
  }

  static void linkjoyPeanutsClearly(int apiId, Map<String, dynamic>? params) {
    if (!saveRecord) return;
    StringBuffer logs = StringBuffer();
    logs.write(LinkjoyDestineSister.getFormatDateTime(DateTime.now()));
    logs.write("|Req|");
    logs.write(apiId);
    logs.write("|");
    logs.write(params == null ? null : jsonEncode(params));
    _linkjoyNetflix(logs.toString());
  }

  static void linkjoyPeanutsLookout(int apiId, String msg) {
    if (!saveRecord) return;
    StringBuffer logs = StringBuffer();
    logs.write(LinkjoyDestineSister.getFormatDateTime(DateTime.now()));
    logs.write("|Rsp|");
    logs.write(apiId);
    logs.write("|");
    logs.write(jsonEncode(msg));
    _linkjoyNetflix(logs.toString());
  }

  static void linkjoyPeanutsLookoutTuck(int apiId, LinkjoyPeanutsSorority rsp) {
    if (!saveRecord) return;
    linkjoyPeanutsLookout(apiId, jsonEncode(rsp));
  }
}
