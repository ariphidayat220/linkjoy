import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit.dart';

class LinkjoyUnbornDepositEskimoLap {
  late LinkjoyUnbornDeposit runtime;
  late int type;

  LinkjoyUnbornDepositEskimoLap(
    this.runtime, {
    this.type = LinkjoyUREskimoGnome.all,
  });

  bool updateBalance() {
    return type & LinkjoyUREskimoGnome.balance != 0;
  }

  bool updateVipExpire() {
    return type & LinkjoyUREskimoGnome.vipExpire != 0;
  }

  bool updateCards() {
    return type & LinkjoyUREskimoGnome.cards != 0;
  }

  bool updateLevel() {
    return type & LinkjoyUREskimoGnome.level != 0;
  }

  bool updateIncome() {
    return type & LinkjoyUREskimoGnome.income != 0;
  }

  bool updateMatchMode() {
    return type & LinkjoyUREskimoGnome.matchMode != 0;
  }

  bool updateNoDisturb() {
    return type & LinkjoyUREskimoGnome.noDisturb != 0;
  }
}
