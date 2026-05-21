import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:android_id/android_id.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_embarrass_passionate_ad_saver.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_stool_saver.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_elope.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile_device_identifier/mobile_device_identifier.dart';
import 'package:uuid/uuid.dart';
import 'package:vpn_connection_detector/vpn_connection_detector.dart';

import 'linkjoy_steamy_clam_oily.dart';

class LinkjoyAppreciateSailor {
  late LinkjoyElope storage;

  late LinkjoyFondnessStoolSaver _clientInfo;

  bool _linkjoyCocaineVetoPassionateSaver = false;

  LinkjoyFondnessPassionateAdSaver? _adjustAdInfo;

  LinkjoyAppreciateSailor(this.storage);

  Future<LinkjoyAppreciateSailor> init() async {
    _clientInfo = await _initClientInfo();
    return this;
  }

  void initAdjust(String appId) {
    return;
  }

  void onResume() {}

  void onPause() {}

  String deviceId() {
    return _clientInfo.device_id!;
  }

  LinkjoyFondnessStoolSaver getClientInfo() {
    return _clientInfo;
  }

  Future<LinkjoyFondnessStoolSaver> _initClientInfo() async {
    LinkjoyFondnessStoolSaver? ci = storage.clientInfo();
    if (ci != null) {
      Locale locale = PlatformDispatcher.instance.locale;
      ci.shortLang = locale.languageCode;
      ci.lang = "${locale.languageCode}_${locale.countryCode}";
      ci.version = LinkjoyDivorced.linkjoySteamyOgle;
      ci.appPackage = LinkjoyDivorced.linkjoySterilizeLenny;
      return ci;
    }

    ci = LinkjoyFondnessStoolSaver();
    ci.version = LinkjoyDivorced.linkjoySteamyOgle;
    ci.appPackage = LinkjoyDivorced.linkjoySterilizeLenny;

    try {
      FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
      Size size = view.physicalSize;
      ci.screen_width = size.width.toInt();
      ci.screen_height = size.height.toInt();
      ci.px_ratio = view.devicePixelRatio;
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10062, e, stack);
    }

    int utc = DateTime.now().timeZoneOffset.inHours;
    ci.timeZoneId = utc < 0 ? "$utc" : "+$utc";
    ci.timeOffset = "${DateTime.now().timeZoneOffset.inMinutes}";

    Locale locale = PlatformDispatcher.instance.locale;
    ci.shortLang = locale.languageCode;
    ci.lang = "${locale.languageCode}_${locale.countryCode}";
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    String? deviceId;
    if (Platform.isAndroid) {
      ci.platform = "android";

      AndroidDeviceInfo? info;
      try {
        info = await deviceInfo.androidInfo;
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(10063, e, stack);
      }
      ci.brand = info?.brand ?? "";
      ci.model = info?.model ?? "";
      ci.system = "Android(${info?.version.sdkInt.toString() ?? ""})";

      if (info != null) {
        Map<String, dynamic> map = info.toMap();
        map.remove("systemFeatures");
        ci.infoPlus = json.encode(map);
      } else {
        ci.infoPlus = "";
      }
      ci.vm = info == null ? 0 : (info.isPhysicalDevice ? 0 : 1);
      ci.low_mem = info == null ? 0 : (info.isLowRamDevice ? 1 : 0);
      deviceId = await const AndroidId().getId();
    } else {
      ci.platform = "ios";

      IosDeviceInfo? info;
      try {
        info = await deviceInfo.iosInfo;
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(10064, e, stack);
      }

      ci.brand = info?.systemVersion ?? "";
      ci.model = info?.model ?? "";
      ci.system = info?.systemName ?? "";
      ci.infoPlus = info == null ? "" : json.encode(info.data);
      ci.vm = info == null ? 0 : (info.isPhysicalDevice ? 0 : 1);
    }

    deviceId = await _safeDeviceId(deviceId);
    ci.device_id = "${ci.appPackage}$deviceId";

    bool vpn = await VpnConnectionDetector.isVpnActive();
    ci.vpn = vpn ? 1 : 0;

    storage.saveClientInfo(ci);

    return ci;
  }

  static Future<String> _safeDeviceId(String? deviceId) async {
    if (deviceId == null) {
      deviceId = await MobileDeviceIdentifier().getDeviceId();

      deviceId ??= const Uuid().v4();
    }

    return deviceId;
  }

  void uploadAdjustInfo() async {
    return;
  }
}
