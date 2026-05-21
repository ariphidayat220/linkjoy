import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit_eskimo_lap.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';

class LinkjoyPeanutsFollower {
  static Future<bool> linkjoyFoolishlyCustardPenmanship(
    bool on, {
    bool showLoadingUI = true,
    bool autoToastOnError = true,
  }) async {
    bool ret = await LINKJOY.http.submit(
      10100,
      {"status": on ? 1 : 0},
      showLoadingUI: showLoadingUI,
      autoToastOnError: autoToastOnError,
    );
    if (ret) {
      int status = on ? 1 : 0;
      LINKJOY.linkjoyUnbornDeposit!.matchMode = status;
      LINKJOY.fire(
        LinkjoyUnbornDepositEskimoLap(
          LINKJOY.linkjoyUnbornDeposit!,
          type: LinkjoyUREskimoGnome.matchMode,
        ),
      );
    }
    return ret;
  }

  static Future<bool> linkjoyFoolishlyMallet() {
    return LINKJOY.http.submit(
      10102,
      {},
      showLoadingUI: false,
      autoToastOnError: false,
    );
  }

  static Future<bool> linkjoyNoFarrah(bool noDisturb) async {
    bool ret = await LINKJOY.http.submit(
      6010,
      {"status": noDisturb ? 1 : 0},
      showLoadingUI: true,
      autoToastOnError: true,
    );
    if (ret) {
      LINKJOY.linkjoyUnbornDeposit!.linkjoyButlerDuoNoFarrah(noDisturb);
      LINKJOY.fire(
        LinkjoyUnbornDepositEskimoLap(
          LINKJOY.linkjoyUnbornDeposit!,
          type: LinkjoyUREskimoGnome.noDisturb,
        ),
      );
    }
    return ret;
  }
}
