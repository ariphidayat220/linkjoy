import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_shredder.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyMozzarellaShredder {
  static void showReportSheet(int? targetUid, {bool showOthers = true}) async {
    if (targetUid == null) {
      return;
    }
    List<SheetAction<int>> actions = _actions(showOthers);

    SheetAction<int>? result = await LinkjoyUIShredder.linkjoyDirectShredder(
      actions,
    );

    int? key = result?.key;
    if (result == null || key == null) {
      return;
    }
    if (key == 99) {
      BuildContext? context = Get.context;
      if (context == null) {
        return;
      }
      String? reason = await LinkjoyUIShredder.linkjoyArouseShredder(
        hintText: "linkjoy_caring_how".tr,
      );
      if (reason == null || reason.isEmpty) {
        return;
      }
      _reportUser(targetUid, key, reason: reason);
    } else {
      _reportUser(targetUid, key);
    }
  }

  static _reportUser(
    int targetUid,
    int type, {
    VoidCallback? reportEnd,
    String reason = '',
  }) async {
    Map<String, dynamic> params = {
      "uid": targetUid,
      "type": type,
      "reason": reason,
    };
    bool resp = await LINKJOY.http.submit(7019, params);
    if (resp) {
      LinkjoyUpper.showSuccess("linkjoy_caring_mozzarella_soda".tr);
    } else {
      LinkjoyUpper.showToast("linkjoy_caring_mozzarella_midnight".tr);
    }
    reportEnd?.call();
  }

  static List<SheetAction<int>> _actions(bool showOthers) {
    List<SheetAction<int>> actions = [];
    actions.add(SheetAction(label: "linkjoy_caring_ann_cindy".tr, key: 1));
    actions.add(
      SheetAction(label: "linkjoy_caring_talented_origin_assault".tr, key: 2),
    );
    actions.add(
      SheetAction(label: "linkjoy_caring_vulnerable_missile".tr, key: 3),
    );
    actions.add(
      SheetAction(label: "linkjoy_caring_cemetery_seclude".tr, key: 4),
    );
    if (showOthers) {
      actions.add(SheetAction(label: "linkjoy_caring_ladder".tr, key: 99));
    }
    return actions;
  }
}
