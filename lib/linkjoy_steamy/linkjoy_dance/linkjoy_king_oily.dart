import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_steamy_king.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_king.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_dance_lesson.dart';
import 'package:protobuf/protobuf.dart';

import 'linkjoy_king_sorority.dart';

enum LinkjoyKingArousalGnome { OLD, NEW, UID }

class LinkjoyKingOily {
  late LinkjoyKing socketNew;

  bool get isConnected => socketNew.isConnected;

  static final LinkjoyKingOily _instance = LinkjoyKingOily._();

  LinkjoyKingOily._();

  factory LinkjoyKingOily() {
    _instance.socketNew = LinkjoyKing();
    return _instance;
  }

  void start(String reason) {
    List<LinkjoyFondnessSteamyKingCupcake> newNodes =
        LINKJOY.linkjoyShock.socket;
    socketNew.start(reason);
  }

  void stop(String reason) {
    LinkjoySteamyClamOily.socketDisconnect(3);
    socketNew.stop(reason);
  }

  Future<void> auth() async {
    LinkjoySteamyClamOily.socketAuth(9);
    socketNew.auth();
  }

  void logout(String reason) {
    socketNew.reconnect(reason);
  }

  bool sendWithoutResp(GeneratedMessage msg) {
    LinkjoyDanceLesson.linkjoyKingEleven(msg);
    return socketNew.sendWithoutResp(msg);
  }

  Future<T?> sendWithReturn<T extends GeneratedMessage>(
    GeneratedMessage msg, {
    int timeoutMillis = 10000,
    bool showLoadingUI = false,
    bool autoToastOnError = false,
    String? autoErrorWhenError,
  }) async {
    LinkjoyDanceLesson.linkjoyKingEleven(msg);
    return socketNew.sendWithReturn<T>(
      msg,
      timeoutMillis: timeoutMillis,
      showLoadingUI: showLoadingUI,
      autoToastOnError: autoToastOnError,
      autoErrorWhenError: autoErrorWhenError,
    );
  }

  Future<LinkjoyKingSorority<T>?> sendWithResp<T extends GeneratedMessage>(
    GeneratedMessage msg, {
    int timeoutMillis = 10000,
  }) async {
    LinkjoyDanceLesson.linkjoyKingEleven(msg);
    return await socketNew
        .sendWithResp<T>(msg, timeoutMillis: timeoutMillis)
        .first;
  }
}
