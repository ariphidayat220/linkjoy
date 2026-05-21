import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';

enum LinkjoyFetusMeUnbornSaverGnome {
  HORIZONTAL,

  VERTICAL,

  VERTICAL_EDINT_IN_NAV;

  static LinkjoyFetusMeUnbornSaverGnome valueOf(int? statusIndex) {
    try {
      return statusIndex == null
          ? LinkjoyFetusMeUnbornSaverGnome.HORIZONTAL
          : LinkjoyFetusMeUnbornSaverGnome.values[statusIndex];
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(40013, e, stack);
    }

    return LinkjoyFetusMeUnbornSaverGnome.HORIZONTAL;
  }
}
