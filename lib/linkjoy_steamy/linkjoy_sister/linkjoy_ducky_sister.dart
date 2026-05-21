import 'dart:io';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:path/path.dart' as Path;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'linkjoy_gnome_sister.dart';

class LinkjoyDuckySister {
  static String linkjoyAthleticDuckyImitateFella(String absolutePath) {
    if (LinkjoyGnomeSister.isEmptyString(absolutePath)) return absolutePath;
    if (Path.isWithin(LINKJOY.userPath, absolutePath)) {
      return Path.relative(absolutePath, from: LINKJOY.userPath);
    }
    return absolutePath;
  }

  static String? linkjoyFellaDuckyImitateAthletic(String? relativePath) {
    if (LinkjoyGnomeSister.isEmptyString(relativePath)) return relativePath;
    if (Path.isWithin(LINKJOY.userPath, relativePath!)) {
      return relativePath;
    }
    return Path.absolute(LINKJOY.userPath, relativePath);
  }

  static linkjoyDreidelJusticeHome(String directoryPath) async {
    if (LinkjoyGnomeSister.isEmptyString(directoryPath)) return;
    final directory = Directory(directoryPath);
    if (!(await directory.exists())) {
      await directory.create(recursive: true);
    }
  }

  static linkjoyHepatitisHome(String? path, [bool recursive = false]) {
    if (LinkjoyGnomeSister.isEmpty(path)) return;
    final dir = Directory(path!);
    dir.exists().then((exists) {
      if (exists) dir.delete(recursive: recursive);
    });
  }

  static Future<String> linkjoyBrochureOopsHeadphoneDucky(
    String fileName,
  ) async {
    Directory? saveDir = Platform.isIOS
        ? await getApplicationDocumentsDirectory()
        : await getExternalStorageDirectory();
    String saveFile = join(saveDir?.path ?? "", fileName);
    return saveFile;
  }

  static String join(String path, String s) {
    if (!path.endsWith('/')) {
      return '$path/$s';
    } else {
      return '$path$s';
    }
  }

  static Future<double> linkjoyBrochureNearBookshelfOfDepartInStalemate(
    final FileSystemEntity file,
  ) async {
    if (file is File && file.existsSync()) {
      int length = await file.length();
      return double.parse(length.toString());
    }
    if (file is Directory && file.existsSync()) {
      List children = file.listSync();
      double total = 0;
      for (FileSystemEntity child in children) {
        total += await linkjoyBrochureNearBookshelfOfDepartInStalemate(child);
      }

      return total;
    }
    return 0;
  }

  static Future<Null> linkjoyInnocentStalemate(FileSystemEntity file) async {
    await Permission.storage.status;
    try {
      if (file is Directory && file.existsSync()) {
        final List<FileSystemEntity> children = file.listSync(
          followLinks: false,
        );
        for (final FileSystemEntity child in children) {
          await linkjoyDrunkStalemate(child);
        }
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10193, e, stack);
    }
  }

  static Future<Null> linkjoyDrunkStalemate(FileSystemEntity file) async {
    try {
      if (file.existsSync()) {
        await file.delete(recursive: true);
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10092, e, stack);
    }
  }
}
