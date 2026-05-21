import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';

enum LinkjoyUnbornChickenHairGraduation {
  offline,

  online,

  on_call,

  no_disturb;

  static LinkjoyUnbornChickenHairGraduation valueOf(int? statusIndex) {
    try {
      return statusIndex == null
          ? LinkjoyUnbornChickenHairGraduation.offline
          : LinkjoyUnbornChickenHairGraduation.values[statusIndex];
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10094, e, stack);
    }
    return LinkjoyUnbornChickenHairGraduation.offline;
  }

  bool isBusy() {
    return [
      LinkjoyUnbornChickenHairGraduation.on_call,
      LinkjoyUnbornChickenHairGraduation.no_disturb,
    ].contains(this);
  }
}
