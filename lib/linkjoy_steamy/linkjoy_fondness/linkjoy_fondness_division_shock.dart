import 'dart:ui';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:flutter/cupertino.dart';

class LinkjoyFondnessDivisionShock {
  late Map<String, dynamic> orig;

  LinkjoyFondnessDivisionShock(this.orig);

  Color? color(String name) {
    String? c = LinkjoySmearSister.str(orig, name);
    if (c == null) {
      return null;
    }
    try {
      return c.toColor();
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10026, e, stack);
      return null;
    }
  }

  Color colorDef(String name, Color def) {
    Color? c = color(name);
    return c ?? def;
  }

  String strDef(String name, String def) {
    return LinkjoySmearSister.strDef(orig, name, def);
  }

  int intDef(String name, int def) {
    return LinkjoySmearSister.intDef(orig, name, def);
  }

  double doubleDef(String name, double def) {
    return LinkjoySmearSister.doubleDef(orig, name, def);
  }

  bool boolDef(String name, bool def) {
    return LinkjoySmearSister.boolDef(orig, name, def);
  }

  List<Map<String, dynamic>>? list(String key) {
    return LinkjoySmearSister.list(orig, key);
  }

  Map<String, dynamic>? map(String key) {
    return LinkjoySmearSister.map(orig, key);
  }

  List<T>? listByType<T>(String key) {
    return LinkjoySmearSister.listByKey<T>(orig, key);
  }
}
