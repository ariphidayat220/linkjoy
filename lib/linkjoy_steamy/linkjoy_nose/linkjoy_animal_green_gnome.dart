import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';

enum LinkjoyAnimalGreenGnome {
  Center,

  Bottom;

  static LinkjoyAnimalGreenGnome valueOf(int? statusIndex) {
    try {
      return statusIndex == null
          ? LinkjoyAnimalGreenGnome.Center
          : LinkjoyAnimalGreenGnome.values[statusIndex];
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(40015, e, stack);
    }

    return LinkjoyAnimalGreenGnome.Center;
  }
}
