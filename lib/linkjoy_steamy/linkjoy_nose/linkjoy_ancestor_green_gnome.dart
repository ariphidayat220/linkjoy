import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';

enum LinkjoyAncestorGreenGnome {
  VIDEO_BUTTON_INPUTTOOL,

  VDIEO_BUTTON_NAV,

  VDIEO_BUTTON_NAV_HAS_TEXT,

  VIDEO_CALL_BOTTOM;

  static LinkjoyAncestorGreenGnome valueOf(int? statusIndex) {
    try {
      return statusIndex == null
          ? LinkjoyAncestorGreenGnome.VIDEO_BUTTON_INPUTTOOL
          : LinkjoyAncestorGreenGnome.values[statusIndex];
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(40012, e, stack);
    }

    return LinkjoyAncestorGreenGnome.VIDEO_BUTTON_INPUTTOOL;
  }
}
