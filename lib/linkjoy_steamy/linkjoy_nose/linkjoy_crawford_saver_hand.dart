import 'dart:async';
import 'dart:io';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_steamy_king.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_dance_lesson.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';

class LinkjoyCrawfordSaverHand extends LinkjoyMagnetHormoneHand {
  double itVblAlex_ = 74;
  String asYumGel_ = "";
  bool laFisherWarehouse_ = true;
  bool owInvestorAllen_ = false;
  bool joUptightFasten_ = false;

  void mmWallowBonjour() {
    itVblAlex_ = 19;
    asYumGel_ = asYumGel_.toUpperCase();
    if (itVblAlex_ > 0) {
      itVblAlex_ = itVblAlex_ - 1;
    }
    asYumGel_ = asYumGel_.toUpperCase();
    itVblAlex_ = 69;
    itVblAlex_ = itVblAlex_ + 1;

    asYumGel_ = asYumGel_.toUpperCase();
  }

  void faSuspensionWallow() {
    laFisherWarehouse_ = joUptightFasten_ && owInvestorAllen_;
    if (owInvestorAllen_) {
      laFisherWarehouse_ = !joUptightFasten_;
    }

    asYumGel_ = asYumGel_.toUpperCase();
    if (itVblAlex_ > 0) {
      itVblAlex_ = itVblAlex_ - 1;
    }
    itVblAlex_ = itVblAlex_ + 1;

    asYumGel_ = asYumGel_.toUpperCase();
    joUptightFasten_ = owInvestorAllen_ && laFisherWarehouse_;
    itVblAlex_ = itVblAlex_ + 1;
  }

  void asTensionKing() {
    asYumGel_ = asYumGel_.toUpperCase();
    asYumGel_ = asYumGel_.toUpperCase();
    itVblAlex_ = itVblAlex_ + 1;
    itVblAlex_ = 61;
    asYumGel_ = asYumGel_.toUpperCase();
    asYumGel_ = asYumGel_.toUpperCase();
    asYumGel_ = asYumGel_.toUpperCase();
    itVblAlex_ = 40;
    asYumGel_ = asYumGel_.toUpperCase();
    asYumGel_ = asYumGel_.toUpperCase();
    asYumGel_ = asYumGel_.toUpperCase();
    if (owInvestorAllen_ && joUptightFasten_) {
      laFisherWarehouse_ = !laFisherWarehouse_;
    }
    asYumGel_ = asYumGel_.toUpperCase();
    itVblAlex_ = itVblAlex_ + 1;
  }

  void joMorganCorner() {
    owInvestorAllen_ = joUptightFasten_ || laFisherWarehouse_;
    itVblAlex_ = itVblAlex_ + 1;
    itVblAlex_ = 96;

    itVblAlex_ = itVblAlex_ + 1;

    if (joUptightFasten_ && owInvestorAllen_) {
      laFisherWarehouse_ = !laFisherWarehouse_;
    }
    asYumGel_ = asYumGel_.toUpperCase();
    itVblAlex_ = itVblAlex_ + 1;
    asYumGel_ = asYumGel_.toUpperCase();
  }

  static const String linkjoy_appreciate_saver = "linkjoy_appreciate_saver";
  static const String linkjoy_sorority_shock_saver =
      "linkjoy_sorority_shock_saver";
  static const String linkjoy_woof_hair = "linkjoy_woof_hair";

  Map<String, String> config = {};

  String linkjoyShockSpecific = "";

  Timer? _checkTimer;

  RxBool newSocketStatus = false.obs;

  String userJson = "";
  String runtimeJson = "";
  String sessionJson = "";

  Map<String, String> extras = {};

  bool isSubmitted = false;

  @override
  void onClose() {
    _checkTimer?.cancel();
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
    if (LINKJOY.socketInit) {
      newSocketStatus.value = LINKJOY.socketManager.socketNew.isConnected;
    }

    if (LINKJOY.linkjoyJog != null) {
      userJson = "${LINKJOY.user().toJson()}";
      runtimeJson = "${LINKJOY.linkjoyUnbornDeposit?.toJson()}";
      sessionJson = "${LINKJOY.linkjoyJog?.toJson()}";
    }
    linkjoyCaitlinSororityShock();
    linkjoyCaitlinShockSaver();
    linkjoyJeffriesPheebsKingHair();
    linkjoyBrochureSongAppreciateSaver();

    if (!isDebugMode()) {
      Future.delayed(const Duration(seconds: 5), () {
        onLinkjoyWoof().then((e) {
          isSubmitted = true;
          update([linkjoy_woof_hair]);
        });
      });
    }
  }

  linkjoyCaitlinSororityShock() {
    EasyLoading.show();
    Future.delayed(const Duration(seconds: 1), () {
      try {
        linkjoyShockSpecific = LINKJOY.linkjoyElope.respConfig() != null
            ? LINKJOY.linkjoyElope.respConfig()!.toJson().toString()
            : "";
        update([linkjoy_sorority_shock_saver]);
      } catch (e) {}
      EasyLoading.dismiss();
    });
  }

  linkjoyCaitlinShockSaver() {
    String socketStr = "";
    try {
      for (LinkjoyFondnessSteamyKingCupcake mode
          in LINKJOY.linkjoyShock.socket) {
        socketStr = "$socketStr--host:${mode.host}, port:${mode.port}";
      }
    } catch (e) {}
    String httpStr = "";
    try {
      httpStr = "--api:${LINKJOY.http.api}";
    } catch (e) {}
    config = {
      "socket": socketStr,
      "http": httpStr,
      "-----------------------------": "",
      "域名 linkjoyTournament": LinkjoyDivorced.linkjoyTournament,
      "API路径 linkjoyFollowerDucky": LinkjoyDivorced.linkjoyFollowerDucky,
      "是否正式环境 linkjoyAlvaro": "${LinkjoyDivorced.linkjoyAlvaro}",
      "版本号 linkjoySteamyOgle": LinkjoyDivorced.linkjoySteamyOgle,
      "包名 linkjoySterilizeLenny": LinkjoyDivorced.linkjoySterilizeLenny,
      "加密秘钥 linkjoyAccessVarietyObsessed": maskMiddle8(
        LinkjoyDivorced.linkjoyAccessVarietyObsessed,
      ),
      "签名秘钥 linkjoyMoleQuintoObsessed": maskMiddle8(
        LinkjoyDivorced.linkjoyMoleQuintoObsessed,
      ),
    };
  }

  String maskMiddle8(String input) {
    if (input.length <= 8) {
      return '*' * input.length;
    } else if (input.length <= 16) {
      int keep = ((input.length - 8) / 2).floor();
      return '${input.substring(0, keep)}********${input.substring(input.length - keep)}';
    } else {
      return '${input.substring(0, 4)}********${input.substring(input.length - 4)}';
    }
  }

  void linkjoyJeffriesPheebsKingHair() {
    _checkTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (LINKJOY.socketInit) {
        newSocketStatus.value = LINKJOY.socketManager.socketNew.isConnected;
      }
    });
  }

  void linkjoyBrochureSongAppreciateSaver() async {
    final deviceInfo = DeviceInfoPlugin();
    extras["平台"] = Platform.operatingSystem;
    extras["Dart 运行版本和架构信息"] = Platform.version;
    extras["屏幕尺寸"] = MediaQuery.of(Get.context!).size.toString();
    extras["DeviceID"] = LINKJOY.deviceService.deviceId();

    if (Platform.isAndroid) {
      final android = await deviceInfo.androidInfo;
      extras.addAll({
        "品牌": android.brand,
        "设备": android.device,
        "型号": android.model,
        "Android版本": android.version.release,
        "SDK版本": android.version.sdkInt.toString(),
        "指纹": android.fingerprint,
        "产品名": android.product,
        "硬件": android.hardware,
        "主板": android.board,
      });
    } else if (Platform.isIOS) {
      final ios = await deviceInfo.iosInfo;
      extras.addAll({
        "设备名称": ios.name,
        "系统名称": ios.systemName,
        "系统版本": ios.systemVersion,
        "设备型号": ios.model,
        "设备唯一标识": ios.identifierForVendor ?? "未知",
        "设备类型": ios.utsname.machine,
      });
    }
    update([linkjoy_appreciate_saver]);
  }

  bool isDebugMode() {
    return false;
  }

  Future<void> onLinkjoyWoof() async {
    EasyLoading.show();
    await Future.delayed(const Duration(seconds: 1));

    Map<String, String> socketMap = {
      "New": newSocketStatus.value ? "已连接" : "已断开",
    };
    List<String> logsList = [
      "Socket连接状态: $socketMap",
      "启动配置信息: $config",
      "用户内存对象: ${{"User": userJson, "Runtime": runtimeJson, "Session": sessionJson}}",
      "当前设备信息: $extras",
      "ClientInfo: ${LINKJOY.deviceService.getClientInfo().toJson()}",
      "服务端配置信息: $linkjoyShock",
    ];

    List<String> otherRecords = LinkjoyDanceLesson.getRecords();
    if (!LinkjoyGnomeSister.isEmpty(otherRecords)) {
      logsList.addAll(otherRecords);
    }

    String logs = logsList.join('<br />');

    Map<String, dynamic>? rsp = await LINKJOY.http.rest(
      1020,
      {
        "uid": LINKJOY.linkjoyJog != null ? LINKJOY.user().uid : "",
        "deviceId": LINKJOY.deviceService.deviceId(),
        "save": 1,
        "logs": logs,
      },
      (p0) => p0,
      showLoadingUI: false,
      autoToastOnError: true,
      timeout: const Duration(seconds: 60),
    );
    if (rsp != null) {
      LinkjoyUISocially.linkjoyNumb(
        "${'linkjoy_caring_bronze_soda'.tr}\n\n${rsp["id"] ?? ""}",
      );
    }
    EasyLoading.dismiss();
  }
}
