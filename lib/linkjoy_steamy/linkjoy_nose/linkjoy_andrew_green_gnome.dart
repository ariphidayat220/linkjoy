import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';

enum LinkjoyAndrewGreenGnome {
  NORMAL,

  SWIPER_BIG;

  static LinkjoyAndrewGreenGnome valueOf(int? statusIndex) {
    try {
      return statusIndex == null
          ? LinkjoyAndrewGreenGnome.NORMAL
          : LinkjoyAndrewGreenGnome.values[statusIndex];
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(40011, e, stack);
    }
    return LinkjoyAndrewGreenGnome.NORMAL;
  }
}
