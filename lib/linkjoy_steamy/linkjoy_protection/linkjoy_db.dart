import 'package:linkjoy/linkjoy_steamy/linkjoy_db/linkjoy_ancestor_kim.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_db/linkjoy_hors_contractor.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_db/linkjoy_ofour_contractor.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_db/linkjoy_unborn_contractor.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';

import 'linkjoy_steamy_clam_oily.dart';

class LinkjoyDb {
  late LinkjoyAncestorFinancialMagnet _chatDB;

  late LinkjoyUnbornContractor _userDao;

  LinkjoyUnbornContractor get userDao => _userDao;

  late LinkjoyOfourContractor _snapDao;

  LinkjoyOfourContractor get snapDao => _snapDao;

  late LinkjoyAncestorSupercoolContractor _chatBoxDao;

  LinkjoyAncestorSupercoolContractor get chatBoxDao => _chatBoxDao;

  Future<void> init() async {
    _chatDB = LinkjoyAncestorFinancialMagnet.database();

    _userDao = LinkjoyUnbornContractor(_chatDB);
    _snapDao = LinkjoyOfourContractor(_chatDB, LINKJOY.uid());
    _chatBoxDao = LinkjoyAncestorSupercoolContractor(
      _chatDB,
      _snapDao,
      _userDao,
    );
  }

  Future<void> dispose() async {
    try {
      await _chatDB.close();
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(50005, e, stack);
    }
  }
}
