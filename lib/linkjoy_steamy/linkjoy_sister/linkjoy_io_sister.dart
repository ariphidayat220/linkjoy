import 'dart:io';
import 'dart:ui';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class LinkjoyIOSister {
  static Future<double> getTotalSizeOfFilesInDir(
    final FileSystemEntity file,
  ) async {
    if (file is File && file.existsSync()) {
      int length = await file.length();
      return double.parse(length.toString());
    }
    if (file is Directory && file.existsSync()) {
      List children = file.listSync();
      double total = 0;
      if (children.isNotEmpty)
        for (FileSystemEntity child in children) {
          total += await getTotalSizeOfFilesInDir(child);
        }

      return total;
    }
    return 0;
  }

  static Future<Null> requestPermission(FileSystemEntity file) async {
    PermissionStatus status = await Permission.storage.status;
    await delDir(file);
  }

  static Future<Null> delDir(FileSystemEntity file) async {
    if (file is Directory && file.existsSync()) {
      final List<FileSystemEntity> children = file.listSync(
        recursive: true,
        followLinks: true,
      );
      for (final FileSystemEntity child in children) {
        await delDir(child);
      }
    }
    try {
      if (file.existsSync()) {
        await file.delete(recursive: true);
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10088, e, stack);
    }
  }

  static makeSureDirectory(String directoryPath) async {
    if (LinkjoyGnomeSister.isEmptyString(directoryPath)) return;
    final directory = Directory(directoryPath);
    if (!(await directory.exists())) {
      await directory.create(recursive: true);
    }
  }

  static String? getParamFromUrl(String url, String paramName) {
    try {
      return Uri.parse(url).queryParameters[paramName];
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10089, e, stack);
    }
    return null;
  }

  static String getLang() {
    Locale? ret;
    try {
      ret = Get.deviceLocale;
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10090, e, stack);
      ret = window.locale;
    }
    return '${ret?.countryCode}_${ret?.languageCode}';
  }

  static bool isARLanguage() {
    return getLanguageCode() == 'ar' || getLanguageCode() == "ur";
  }

  static bool isIDLanguage() {
    return getLanguageCode() == 'id';
  }

  static String? getLanguageCode() {
    Locale? ret;
    try {
      ret = Get.deviceLocale;
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10091, e, stack);
      ret = window.locale;
    }
    return ret?.languageCode.toLowerCase();
  }

  static bool isRTL(BuildContext? context) {
    if (context == null) return false;
    return Directionality.of(context) == TextDirection.rtl;
  }
}
