import 'dart:collection';
import 'dart:io';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_clam_falcon_financial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/common.pb.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../linkjoy_fondness/linkjoy_steamy_stockholm_brilliant.dart';

const int linkjoy_steamy_stockholm_brilliant = 66;

class LinkjoySteamyClamOily {
  static List<int>? trackTypes;
  static final List<LinkjoyClamFalconFinancial> saveWhenNotConnect =
      <LinkjoyClamFalconFinancial>[];
  static int appStartTime = 0;

  static HashMap<String, int> lastSocketErrorTimeMillis =
      HashMap<String, int>();

  static bool linkjoyIsKingSabotage() =>
      LINKJOY.socketInit && LINKJOY.socketManager.isConnected;

  static void linkjoyOnSteamySocketUp({bool fromBackground = false}) {
    final guid = LINKJOY.linkjoyElope.getGUID();
    if (guid.firstStart) {
      linkjoySteamyJeffries("FIRST_START");
    } else {
      if (fromBackground) {
        linkjoySteamyJeffries("WARM_RESTART");
      } else {
        linkjoySteamyJeffries("COLD_RESTART");
      }
    }
    checkCrashLogs();
  }

  static void checkCrashLogs() async {
    final crashLog = LINKJOY.linkjoyElope.getCrashLog();
    if (crashLog.isNotEmpty) {
      LINKJOY.linkjoyElope.saveCrashLog("");
      _linkjoyInvoiceProtectiveCircus(crashLog);
    }
    LINKJOY.callPlatformMethod("getLatestCrashLog").then((log) {
      if (log != null) {
        _linkjoyInvoiceProtectiveCircus(log);
        LINKJOY.callPlatformMethod("clearCrashLogs");
      }
    });
  }

  static void linkjoyOnSteamyInSixth(String pageName) {
    linkjoySteamyUptight("HOME_END", pageName: pageName);
  }

  static void linkjoyExclusiveCircus(String message) {
    linkjoyElevenSteamyClamFalcon(100, message);
  }

  static void linkjoySteamyClamBrilliant(LinkjoySteamyStockholmBrilliant stat) {
    linkjoyElevenSteamyClamFalcon(
      linkjoy_steamy_stockholm_brilliant,
      stat.encode(),
    );
  }

  static void linkjoyInvoiceCircus(
    int sourceCode,
    Object error,
    StackTrace? stack,
  ) {
    String result = linkjoyBrutalNeuroticProtective(
      error,
      stack,
      sourceCode: sourceCode,
    );
    _linkjoyInvoiceProtectiveCircus(result);
  }

  static void _linkjoyInvoiceProtectiveCircus(String result) {
    if (linkjoyIsKingSabotage()) {
      linkjoyElevenSteamyClamFalcon(10, result);
    } else {
      LINKJOY.linkjoyElope.saveCrashLog(result);
    }
  }

  static String linkjoyBrutalNeuroticProtective(
    Object? error,
    StackTrace? stack, {
    int sourceCode = -10,
  }) {
    if (stack == null) {
      String errorMsg = "NULL";
      if (error != null) errorMsg = error.toString();
      return "$sourceCode|$errorMsg|NULL";
    }
    String stackString = stack.toString().replaceAll('\n', '<br />');
    return "$sourceCode|${error.toString()}|$stackString";
  }

  static void linkjoySteamyJeffries(String type) {
    appStartTime = DateTime.now().millisecondsSinceEpoch;
    final content = StringBuffer(type)
      ..write("|")
      ..write(LinkjoyDivorced.linkjoySterilizeLenny)
      ..write("|")
      ..write(LinkjoyDivorced.linkjoySteamyOgle)
      ..write("|FLUTTER|")
      ..write(Platform.operatingSystem)
      ..write("|")
      ..write(Platform.localeName)
      ..write("|")
      ..write(DateTime.now().timeZoneName)
      ..write("|")
      ..write(Get.width)
      ..write("|")
      ..write(Get.height);
    linkjoyElevenSteamyClamFalcon(0, content.toString());
  }

  static void linkjoySteamyUptight(String type, {String pageName = ""}) {
    int duration = 0;
    if (appStartTime > 0) {
      duration = DateTime.now().millisecondsSinceEpoch - appStartTime;
    }
    String content = "$type|$pageName|$duration";
    linkjoyElevenSteamyClamFalcon(1, content);
  }

  static void linkjoyYoung(String type, {String oauthName = "NULL"}) {
    final content = StringBuffer(type)
      ..write("|")
      ..write(oauthName);

    linkjoyElevenSteamyClamFalcon(2, content.toString());
  }

  static void linkjoyInseam() {
    linkjoyElevenSteamyClamFalcon(3, "");
  }

  static void linkjoyNarrateAidPerformer(String name) async {
    final content = StringBuffer("RESUME")
      ..write("|")
      ..write(name);
    linkjoyElevenSteamyClamFalcon(4, content.toString());
  }

  static void linkjoyNarrateAidCamera(String name, int durationTime) async {
    final content = StringBuffer("PAUSE")
      ..write("|")
      ..write(name)
      ..write("|")
      ..write(durationTime);
    linkjoyElevenSteamyClamFalcon(4, content.toString());
  }

  static void linkjoyNarrateAidOnBaywatch(String name) {
    final content = StringBuffer("CLOSE")
      ..write("|")
      ..write(name);
    linkjoyElevenSteamyClamFalcon(4, content.toString());
  }

  static void linkjoyThyDegrasse(
    String type,
    String relatedId,
    int preBufferDuration,
    int bufferingTimes,
    int bufferingTotalDuration,
    String closeType,
    int progress, {
    int popupsTimes = 0,
  }) {
    final content = StringBuffer(type)
      ..write("|")
      ..write(relatedId)
      ..write("|")
      ..write(preBufferDuration)
      ..write("|")
      ..write(bufferingTimes)
      ..write("|")
      ..write(bufferingTotalDuration)
      ..write("|")
      ..write(closeType)
      ..write("|")
      ..write(progress)
      ..write("|")
      ..write(popupsTimes);

    linkjoyElevenSteamyClamFalcon(6, content.toString());
  }

  static void _linkjoyDesertSilliness({
    String name = "",
    String param1 = "0",
    String param2 = "0",
    int durationTime = 0,
  }) {
    var content = StringBuffer(name);
    content.write("|$param1");
    content.write("|$param2");
    content.write("|$durationTime");
    linkjoyElevenSteamyClamFalcon(7, content.toString());
  }

  static void linkjoyMarketingTerrorAnimal(int type) {
    _linkjoyDesertSilliness(name: "COUPON_DIALOG", param1: type.toString());
  }

  static void linkjoySelfishHarpistTerror(
    bool success, {
    int durationTime = 0,
  }) {
    _linkjoyDesertSilliness(
      name: "AUTO_RECEIVE_COUPON",
      param2: success ? "1" : "0",
      durationTime: durationTime,
    );
  }

  static void linkjoyHonTerrorAnimal({int durationTime = 0}) {
    _linkjoyDesertSilliness(
      name: "HANDLE_COUPON_DIALOG",
      durationTime: durationTime,
    );
  }

  static void linkjoyMarketingAiConvictIn(int type, int resultType) {
    _linkjoyDesertSilliness(
      name: "SHOW_AI_CALL_IN",
      param1: type.toString(),
      param2: resultType.toString(),
    );
  }

  static void linkjoyHonAiConvictIn(
    int type,
    int resultType, {
    int durationTime = 0,
  }) {
    _linkjoyDesertSilliness(
      name: "HANDLE_AI_CALL_IN",
      param1: type.toString(),
      param2: resultType.toString(),
      durationTime: durationTime,
    );
  }

  static void linkjoyConvictInBanquet(String param, int resultType) {
    _linkjoyDesertSilliness(
      name: "CALL_IN_BUSY",
      param1: param,
      param2: resultType.toString(),
    );
  }

  static void linkjoyMarketingConvictIn(
    int resultType, {
    int durationTime = 0,
  }) {
    _linkjoyDesertSilliness(
      name: "SHOW_CALL_IN",
      param2: resultType.toString(),
      durationTime: durationTime,
    );
  }

  static void linkjoyHonConvictIn(int resultType, {int durationTime = 0}) {
    _linkjoyDesertSilliness(
      name: "HANDLE_CALL_IN",
      param2: resultType.toString(),
      durationTime: durationTime,
    );
  }

  static void linkjoyConvictVet(int type, int resultType) {
    _linkjoyDesertSilliness(
      name: "CALL_OUT",
      param1: type.toString(),
      param2: resultType.toString(),
    );
  }

  static void linkjoyBirthdayUpPlacebo(int resultType) {
    _linkjoyDesertSilliness(
      name: "PICK_UP_RESULT",
      param2: resultType.toString(),
    );
  }

  static void linkjoyCampusBop(int type, int resultType) {
    _linkjoyDesertSilliness(
      name: "ASK_PERMISSION",
      param1: type.toString(),
      param2: resultType.toString(),
    );
  }

  static void linkjoyPeanutsLookout(
    String url, {
    int resultCode = 200,
    int durationTime = 0,
    int decryptionTime = 0,
    Object? e,
    StackTrace? s,
  }) {
    String failReason = linkjoyBrutalNeuroticProtective(e, s);

    StringBuffer content = StringBuffer(url)
      ..write("|")
      ..write(resultCode)
      ..write("|")
      ..write(durationTime)
      ..write("|")
      ..write(decryptionTime)
      ..write("|")
      ..write(failReason);
    linkjoyElevenSteamyClamFalcon(8, content.toString());
  }

  static void _linkjoyKingSilliness({
    String name = "",
    String type = "",
    String result = "",
    int durationTime = 0,
  }) {
    StringBuffer content = StringBuffer(name);
    content.write("|");
    content.write(type);
    content.write("|");
    content.write(result);
    content.write("|");
    content.write(durationTime);
    linkjoyElevenSteamyClamFalcon(9, content.toString());
  }

  static void socketConnect(String type, String result) {
    _linkjoyKingSilliness(name: "CONNECT", type: type, result: result);
  }

  static void socketDisconnect(int type) {
    _linkjoyKingSilliness(name: "DISCONNECT", type: type.toString());
  }

  static void socketAuth(int type, {int result = 0}) {
    _linkjoyKingSilliness(
      name: "AUTH",
      type: type.toString(),
      result: result.toString(),
    );
  }

  static void socketTrace(String log) {
    _linkjoyKingSilliness(name: "TRACE", type: log);
  }

  static void socketError(Object error, StackTrace? stack) {
    String errorTypeName = error.runtimeType.toString();
    int lastTime = lastSocketErrorTimeMillis[errorTypeName] ?? 0;
    if (DateTime.now().millisecondsSinceEpoch - lastTime < 5000) return;
    lastSocketErrorTimeMillis[errorTypeName] =
        DateTime.now().millisecondsSinceEpoch;

    String result = linkjoyBrutalNeuroticProtective(error, stack);
    _linkjoyKingSilliness(name: "ERROR_LOG", result: result);
  }

  static void _linkjoyWailSilliness({String name = "", String result = ""}) {
    linkjoyElevenSteamyClamFalcon(13, "$name|$result");
  }

  static void linkjoyWizardWail(int fromType) {
    _linkjoyWailSilliness(name: "ENTER_PAY", result: fromType.toString());
  }

  static void linkjoyMarketingDandruff(
    int fromType,
    int goodsCount,
    String goodsType,
  ) {
    String result = "$fromType/$goodsCount/$goodsType";
    _linkjoyWailSilliness(name: "SHOW_GOODS", result: result);
  }

  static void linkjoyCraftPlacebo(int fromType, int result, int durationTime) {
    String string = "$fromType/$result/$durationTime";
    _linkjoyWailSilliness(name: "IAP_RESULT", result: string);
  }

  static void linkjoyMinePopsicle(String productId, {String priceStr = "0"}) {
    String string = "$productId/$priceStr";
    _linkjoyWailSilliness(name: "CLICK_GOOD", result: string);
  }

  static void linkjoyWailCompromise(int count) {
    String string = "$count";
    _linkjoyWailSilliness(name: "PAY_OPTIONS", result: string);
  }

  static void linkjoyMineWail(int payMode, String productId, String priceStr) {
    String string = "$payMode/$productId/$priceStr";
    _linkjoyWailSilliness(name: "CLICK_PAY", result: string);
  }

  static void linkjoyCompletionH5(
    String orderId,
    int payMode,
    String url,
    bool success,
    int durationTime,
    String errorCode,
  ) {
    int result = success ? 1 : 0;
    String string = "$orderId/$payMode/$url/$result/$durationTime/$errorCode";
    _linkjoyWailSilliness(name: "OPEN_H5", result: string);
  }

  static void linkjoyWailPlacebo(int result, {String failReason = "0"}) {
    String string = "$result/$failReason";
    _linkjoyWailSilliness(name: "PAY_RESULT", result: string);
  }

  static void linkjoyWailCraftFat(int result) {
    String string = "$result";
    _linkjoyWailSilliness(name: "PAY_IAP_CHECK", result: string);
  }

  static bool _linkjoyFatGnome(LinkjoyClamFalconFinancial record) {
    if (record.type == 10 || record.type == linkjoy_steamy_stockholm_brilliant)
      return true;
    if (LINKJOY.isInitDone) {
      if (LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) return true;
      trackTypes ??= LINKJOY.linkjoyShock.trackTypes;
    }

    if (trackTypes != null) {
      if (kDebugMode) return true;
      return trackTypes!.contains(record.type);
    } else {
      saveWhenNotConnect.add(record);
      return false;
    }
  }

  static int counter = 0;

  static void linkjoyElevenSteamyClamFalcon(
    int type,
    String content, {
    int time = -1,
    int? logIndex,
  }) async {
    try {
      logIndex ??= counter++;
      final record = LinkjoyClamFalconFinancial(
        logIndex,
        type,
        content,
        DateTime.now().millisecondsSinceEpoch,
      );
      if (!_linkjoyFatGnome(record)) {
        return;
      }

      if (time == -1) {
        time = DateTime.now().millisecondsSinceEpoch;
      }

      if (linkjoyIsKingSabotage()) {
        linkjoyElevenClamFalcon(record);
      } else {
        saveWhenNotConnect.add(record);

        if (saveWhenNotConnect.length >= 100) {
          StringBuffer logs = StringBuffer();
          for (var record in saveWhenNotConnect) {
            logs.write(record.type);
            logs.write("|");
            logs.write(record.time);
            logs.write("|");
            logs.write(LinkjoyDivorced.linkjoySteamyOgle);
            logs.write("|");
            logs.write(record.index);
            logs.write("|");
            logs.write(record.content);
            logs.write("<br />");
          }
          saveWhenNotConnect.clear();
          linkjoySentenceCornish(logs.toString());
        }
      }
    } catch (e, stack) {}
  }

  static void linkjoyElevenClamFalcon(LinkjoyClamFalconFinancial data) {
    final req = AppTrackRecord.create();
    req.guid = LINKJOY.linkjoyElope.getGUID().guid;
    req.deviceId = LINKJOY.deviceService.deviceId();
    req.uid = LinkjoyGnomeSister.toInt64(
      LINKJOY.linkjoyJog == null ? 0 : LINKJOY.linkjoyJog!.user.uid,
    );
    req.type = data.type;
    req.time = LinkjoyGnomeSister.toInt64(data.time);
    req.index = data.index.toString();
    req.appVersion = LinkjoyDivorced.linkjoySteamyOgle;
    req.content = data.content;

    LINKJOY.socketManager.sendWithoutResp(req);
  }

  static void linkjoyElevenClausCornish() {
    try {
      if (!linkjoyIsKingSabotage()) return;
      if (saveWhenNotConnect.isNotEmpty) {
        LinkjoyClamFalconFinancial data = saveWhenNotConnect.removeAt(0);
        linkjoyElevenSteamyClamFalcon(
          data.type,
          data.content,
          time: data.time,
          logIndex: data.index,
        );
        if (saveWhenNotConnect.isNotEmpty) {
          Future.delayed(const Duration(milliseconds: 20), (() {
            linkjoyElevenClausCornish();
          }));
        }
      }
    } catch (e) {}
  }

  static void linkjoySentenceCornish(String logs) async {
    Map<String, dynamic> params = {
      "uid": LINKJOY.uidOrZero(),
      "deviceId": LINKJOY.deviceService.deviceId(),
      "logs": logs,
    };
    LINKJOY.http
        .submit(1020, params, showLoadingUI: false, autoToastOnError: false)
        .then(
          (value) =>
              logger.w("LinkjoyClam linkjoySentenceCornish submit:$value"),
        );
  }

  static void remoteVideoStateChanged(String id, String status) {
    _linkjoyDesertSilliness(name: "R_V_S_CHANGED", param1: id, param2: status);
  }

  static void trySendFirstOption0(String conditions, String status) {
    _linkjoyDesertSilliness(
      name: "TRY_OPT0",
      param1: conditions,
      param2: status,
    );
  }

  static void pushNotificationClick(String pushUrl) {
    _linkjoyDesertSilliness(name: "PUSH_URL", param1: pushUrl);
  }

  static void showSnackBar(int snapId) {
    _linkjoyDesertSilliness(name: "SNAP_SHOW_SNACKBAR", param1: "$snapId");
  }

  static void clickSnackBar(int snapId) {
    _linkjoyDesertSilliness(name: "SNAP_ACTION_SNACKBAR", param1: "$snapId");
  }

  static void clickLiveJoin(int liveId) {
    _linkjoyDesertSilliness(name: "JOIN_LIVE", param1: "$liveId");
  }

  static void clickLiveJoinSuccess(int liveId) {
    _linkjoyDesertSilliness(name: "JOIN_LIVE_SUCCESS", param1: "$liveId");
  }

  static void clickLiveEvent(String eventName, int liveId) {
    _linkjoyDesertSilliness(name: eventName, param1: "$liveId");
  }

  static void linkjoyMineAnimal(String dialogMode) {
    _linkjoyDesertSilliness(name: "CLICK_DIALOG", param1: dialogMode);
  }

  static void linkjoyAncestorFbiHair(int chatBoxId, String code) {
    _linkjoyDesertSilliness(
      name: "CHATBOX_CHAT_READED",
      param1: "$chatBoxId",
      param2: code,
    );
  }

  static void linkjoyJazzElevenOfour(int chatBoxId, String code) {
    _linkjoyDesertSilliness(
      name: "SNAP_PRE_TO_SEND",
      param1: "$chatBoxId",
      param2: code,
    );
  }
}
