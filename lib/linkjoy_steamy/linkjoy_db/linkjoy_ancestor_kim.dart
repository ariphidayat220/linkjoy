import 'dart:io';

import 'package:linkjoy/linkjoy_steamy/linkjoy_db/linkjoy_hors_cite.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_db/linkjoy_ofour_cite.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_db/linkjoy_unborn_cite.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_degrasse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_blanc.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_db_supermodel.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as Path;

part 'linkjoy_ancestor_kim.g.dart';

@DriftDatabase(
  tables: [LinkjoyUnbornCite, LinkjoyAncestorSupercoolCite, LinkjoyOfourCite],
)
class LinkjoyAncestorFinancialMagnet extends _$LinkjoyAncestorFinancialMagnet {
  LinkjoyAncestorFinancialMagnet._(super.e);

  factory LinkjoyAncestorFinancialMagnet.database({
    bool logStatements = false,
  }) {
    final executor = LazyDatabase(() async {
      final dbFile = File(Path.join(LINKJOY.userPath, 'linkjoy_db.dat'));
      return NativeDatabase(dbFile, logStatements: true);
    });
    return LinkjoyAncestorFinancialMagnet._(executor);
  }

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        try {
          await m.database.transaction(() async {
            if (from < 2) {}
            if (from < 3) {}
          });
        } catch (e, stack) {
          LinkjoySteamyClamOily.linkjoyInvoiceCircus(770004, e, stack);
          throw Exception(e);
        }
      },
    );
  }

  Future<bool> manualUpgradeDatabase() async {
    try {
      await LINKJOY.linkjoyDb.dispose();
      await LINKJOY.linkjoyDb.init();
      var db = LINKJOY.linkjoyDb.chatBoxDao.attachedDatabase;

      QueryRow? row = await db
          .customSelect('PRAGMA user_version')
          .getSingleOrNull();
      int currentVersion = 0;
      if (row != null && row.data.isNotEmpty) {
        dynamic first = row.data.values.first;
        if (first is int) {
          currentVersion = first;
        } else if (first is String) {
          currentVersion = int.tryParse(first) ?? 0;
        }
      }

      int targetVersion = schemaVersion;
      if (currentVersion == targetVersion) {
        return true;
      }
      return false;
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(660066, e, stack);
    }
    return false;
  }
}
