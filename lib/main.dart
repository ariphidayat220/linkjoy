import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_industrial_insight.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'linkjoy_steamy/linkjoy_steamy.dart';
import 'linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';

void main() {
  runZonedGuarded(
    () async {
      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.presentError(details);
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(
          2,
          details.exception,
          details.stack,
        );
      };

      ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
        return Center(
          child: CupertinoButton(
            child: const Text(
              "Something bad happen!",
              style: TextStyle(
                height: 1.3,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white10,
              ),
            ),
            onPressed: () {
              Get.back();
            },
          ),
        );
      };

      PlatformDispatcher.instance.onError = (error, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(3, error, stack);
        return true;
      };

      LinkjoyIndustrialInsight.instance.init();

      runApp(const LinkjoySteamy());

      _linkjoySteamyWake();
    },
    (Object error, StackTrace stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(1, error, stack);
    },
  );
}

void _linkjoySteamyWake() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
}
