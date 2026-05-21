import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_young_unborn_greet_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_impend_foolishly_foot.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

import 'linkjoy_young_unborn.dart';

enum EnumLinkjoyFoolishlyFootAye { NONE, FILL_INFO, FACE_DETECT, COMPLETE }

enum EnumLinkjoyUnbornPurple {
  ANCHOR(1),
  ANCHOR_R(2),
  USER(3),
  USER_R(4);

  final int value;

  const EnumLinkjoyUnbornPurple(this.value);

  static bool isLinkjoyFoolishly(int value) {
    return value == EnumLinkjoyUnbornPurple.ANCHOR.value ||
        value == EnumLinkjoyUnbornPurple.ANCHOR_R.value;
  }

  static bool isLinkjoyUnborn(int value) {
    return value == EnumLinkjoyUnbornPurple.USER.value ||
        value == EnumLinkjoyUnbornPurple.USER_R.value;
  }
}

class LinkjoyJog {
  late String session;

  late String secret;

  late LinkjoyYoungUnborn user;

  late int role;

  late int regProgress;

  bool isSafeAnchor = false;

  bool withdraw = false;

  static LinkjoyJog fromJson(Map<String, dynamic> json) {
    LinkjoyJog linkjoyJog = LinkjoyJog();
    linkjoyJog.session = json['session'];
    linkjoyJog.secret = json['secret'];
    linkjoyJog.user = LinkjoyYoungUnborn.fromJson(json['user']);
    linkjoyJog.regProgress = LinkjoySmearSister.intDef(json, "reg_process", 0);
    linkjoyJog.role = LinkjoySmearSister.intDef(
      json,
      "role",
      EnumLinkjoyUnbornPurple.USER.value,
    );
    linkjoyJog.isSafeAnchor = LINKJOY.linkjoyElope.linkjoyFoolishlyImpend(
      linkjoyJog.user.uid,
    );
    linkjoyJog.withdraw = LINKJOY.linkjoyElope.linkjoyFoolishlyStash(
      linkjoyJog.user.uid,
    );
    return linkjoyJog;
  }

  Map<String, dynamic> toJson() {
    return {
      "session": session,
      "secret": secret,
      "user": user.toJson(),
      "reg_process": regProgress,
      "role": role,
    };
  }

  bool isLinkjoyFoolishly() {
    return EnumLinkjoyUnbornPurple.isLinkjoyFoolishly(role);
  }

  bool get isAnchorInterception =>
      isLinkjoyFoolishly() &&
      (!isLinkjoyFootAyePlimpton || !isLinkjoyFoolishlySaverPay);

  bool get isAnchorRegDone => isLinkjoyFoolishly() && isLinkjoyFootAyePlimpton;

  bool get isAnchorRegDoing =>
      isLinkjoyFoolishly() && !isLinkjoyFootAyePlimpton;

  bool get isAnchorCompletedDoing =>
      isAnchorRegDone && !isLinkjoyFoolishlySaverPay;

  bool get isAnchorWaitFillInfo =>
      user.status == EnumLinkjoyUnbornHair.ANCHOR_DETECT_COMPLETE.index ||
      user.status == EnumLinkjoyUnbornHair.ANCHOR_INFO_REJECT.index;

  bool get isAnchorWaitVerifyInfo =>
      user.status == EnumLinkjoyUnbornHair.ANCHOR_INFO_COMPLETE.index;

  bool get isLinkjoyFootAyePlimpton =>
      regProgress == EnumLinkjoyFoolishlyFootAye.COMPLETE.index;

  bool get isLinkjoyFoolishlySaverPay =>
      user.status == EnumLinkjoyUnbornHair.OK.index;

  void refreshIsSaveAnchor() async {
    if (!isLinkjoyFoolishly()) {
      return;
    }
    if (isSafeAnchor && withdraw) {
      return;
    }
    LinkjoySororityImpendFoolishlyFoot? resp = await LINKJOY.http.rest(
      2018,
      {},
      (json) => LinkjoySororityImpendFoolishlyFoot.fromJson(json),
      showLoadingUI: false,
      autoToastOnError: false,
      timeout: const Duration(seconds: 3),
    );
    if (resp != null) {
      isSafeAnchor = resp.safe == "1";
      bool fireUpdate = withdraw == (resp.withdraw == "1");
      withdraw = resp.withdraw == "1";
      LINKJOY.linkjoyElope.setAnchorSafe(user.uid, isSafeAnchor);
      LINKJOY.linkjoyElope.setAnchorWithdraw(user.uid, withdraw);

      if (fireUpdate) LINKJOY.fire(LinkjoyYoungUnbornGreetGuitar());
    }
  }

  void linkjoyEskimoWheatonYoungSorority(
    String secret,
    String session,
    LinkjoyYoungUnborn user,
    int role,
    int regProgress,
  ) {
    this.secret = secret;
    this.session = session;
    this.user = user;
    this.role = role;
    this.regProgress = regProgress;
  }
}
