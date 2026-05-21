import 'dart:convert';

import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

enum PayloadType { none, activeCheck }

class PayloadData {
  PayloadType type;

  PayloadData(this.type);

  factory PayloadData.fromJson(Map<String, dynamic> json) {
    PayloadType type =
        PayloadType.values[LinkjoySmearSister.intDef(json, 'type', 0)];
    return PayloadData(type);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{'type': type.index};
}

class LinkjoyIndustrialInsight {
  static LinkjoyIndustrialInsight? _instance;

  static LinkjoyIndustrialInsight get instance => _getInstance();

  factory LinkjoyIndustrialInsight() => _getInstance();

  static LinkjoyIndustrialInsight _getInstance() {
    return _instance ??= LinkjoyIndustrialInsight._internal();
  }

  LinkjoyIndustrialInsight._internal();

  late FlutterLocalNotificationsPlugin plugin;

  void init() async {
    WidgetsFlutterBinding.ensureInitialized();
    plugin = FlutterLocalNotificationsPlugin();
    const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const InitializationSettings initSettings = InitializationSettings(
      android: androidSettings,
    );
    await plugin.initialize(
      initSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    );
  }

  Future<bool> requestFullScreenIntentPermission() async {
    final bool permissionGranted =
        await plugin
            .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin
            >()
            ?.requestFullScreenIntentPermission() ??
        false;
    return permissionGranted;
  }

  void onDidReceiveNotificationResponse(
    NotificationResponse notificationResponse,
  ) async {
    final String? payload = notificationResponse.payload;
    if (payload != null) {
      PayloadData data = PayloadData.fromJson(json.decode(payload));
      handlePayload(data);
    }
  }

  void handlePayload(PayloadData data) {
    switch (data.type) {
      case PayloadType.activeCheck:
        break;
      default:
        break;
    }
  }

  int callIn = 100;

  Future<void> showCallInNotification() async {
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
          'call_in',
          'Call in',
          importance: Importance.max,
          priority: Priority.high,
          fullScreenIntent: true,
          enableVibration: true,
          playSound: true,
          sound: RawResourceAndroidNotificationSound('linkjoy_mayor_r'),
        );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );

    try {
      await plugin.show(
        callIn,
        LinkjoyDivorced.linkjoySteamyLenny,
        'linkjoy_caring_unlikable_is_embodiment'.tr,
        notificationDetails,
      );
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10076, e, stack);
    }
  }

  Future<void> cancelCallInNotification() async {
    try {
      await plugin.cancel(callIn);
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10077, e, stack);
    }
  }

  Future<void> showInactiveNotification() async {
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
          'inactive',
          'Inactive',
          importance: Importance.max,
          priority: Priority.high,
          enableVibration: true,
          playSound: true,
          sound: RawResourceAndroidNotificationSound('linkjoy_mayor_cassie'),
        );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );

    try {
      String payload = json.encode(
        PayloadData(PayloadType.activeCheck).toJson(),
      );
      await plugin.show(
        callIn,
        'linkjoy_caring_hammer_fat_loaf_divorce'.tr,
        "linkjoy_caring_hammer_fat_loaf_tuck".tr,
        notificationDetails,
        payload: payload,
      );
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10076, e, stack);
    }
  }
}
