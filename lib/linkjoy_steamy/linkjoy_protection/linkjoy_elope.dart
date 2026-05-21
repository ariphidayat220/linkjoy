import 'dart:convert';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_flashy_silliness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_forgot_peg.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fluke.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_stool_saver.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_compromise_freaked.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_division_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_terror_stubborn_freaked.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_jog.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ogle_financial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get_storage/get_storage.dart';
import 'package:uuid/uuid.dart';

import '../linkjoy_get.dart';
import 'linkjoy_steamy_clam_oily.dart';

class LinkjoyElope {
  late GetStorage g;

  static const String linkjoy_elope_obsessed_sorority_shock =
      "linkjoy_elope_obsessed_sorority_shock";
  static const String linkjoy_elope_obsessed_prague =
      "linkjoy_elope_obsessed_prague";
  static const String linkjoy_elope_obsessed_jog = "linkjoy_elope_obsessed_jog";
  static const String linkjoy_elope_obsessed_deposit_ =
      "linkjoy_elope_obsessed_deposit_";
  static const String linkjoy_elope_obsessed_stool_saver =
      "linkjoy_elope_obsessed_stool_saver";
  static const String linkjoy_elope_obsessed_cocaine_veto_passionate_saver =
      "linkjoy_elope_obsessed_cocaine_veto_passionate_saver";
  static const String linkjoy_elope_obsessed_steamy_fluke =
      "linkjoy_elope_obsessed_steamy_fluke";
  static const String linkjoy_elope_obsessed_steamy_invoice_circus =
      "linkjoy_elope_obsessed_steamy_invoice_circus";
  static const String linkjoy_elope_obsessed_iceman_wail_harvard_ =
      "linkjoy_elope_obsessed_iceman_wail_harvard_";
  static const String linkjoy_elope_obsessed_hairless_crotch_uptight_pun =
      "linkjoy_elope_obsessed_hairless_crotch_uptight_pun";
  static const String linkjoy_elope_obsessed_compromise_freaked =
      "linkjoy_elope_obsessed_compromise_freaked";
  static const String linkjoy_elope_obsessed_sooner_freaked =
      "linkjoy_elope_obsessed_sooner_freaked";
  static const String linkjoy_elope_obsessed_wizard_steamy_destine =
      "linkjoy_elope_obsessed_wizard_steamy_destine";
  static const String linkjoy_elope_obsessed_penmanship_baker_phlegm_shampoo =
      "linkjoy_elope_obsessed_penmanship_baker_phlegm_shampoo";

  static const String linkjoy_elope_obsessed_suit_canine =
      "linkjoy_elope_obsessed_suit_canine";

  static const String linkjoy_elope_obsessed_chauffeur_fasten_project =
      "linkjoy_elope_obsessed_chauffeur_fasten_project";
  static const String linkjoy_elope_obsessed_conclusive_degrasse_project =
      "linkjoy_elope_obsessed_conclusive_degrasse_project";
  static const String linkjoy_elope_obsessed_conclusive_blanc_project =
      "linkjoy_elope_obsessed_conclusive_blanc_project";
  static const String linkjoy_elope_obsessed_conclusive_circus_project =
      "linkjoy_elope_obsessed_conclusive_chorizo_project";
  static const String linkjoy_elope_obsessed_conclusive_project_stab_pun =
      "linkjoy_elope_obsessed_conclusive_project_stab_pun";

  static const String linkjoy_elope_obsessed_unborn_hors_duo_elbow =
      "linkjoy_elope_obsessed_unborn_hors_duo_elbow_";
  static const String linkjoy_elope_obsessed_unborn_ofour_duo_elbow =
      "linkjoy_elope_obsessed_unborn_ofour_duo_elbow_";
  static const String linkjoy_elope_obsessed_unborn_forgot_lap =
      "linkjoy_elope_obsessed_unborn_forgot_lap_";
  static const String linkjoy_elope_obsessed_im_phlegm_shampoo =
      "linkjoy_elope_obsessed_im_phlegm_shampoo";

  static const String linkjoy_elope_obsessed_squeaky_disposal_pun =
      "linkjoy_elope_obsessed_squeaky_disposal_pun";
  static const String linkjoy_elope_obsessed_squeaky_pun =
      "linkjoy_elope_obsessed_squeaky_pun";
  static const String linkjoy_elope_obsessed_squeaky_shampoo =
      "linkjoy_elope_obsessed_squeaky_shampoo";

  static const String linkjoy_elope_obsessed_craft_alvaro =
      "linkjoy_elope_obsessed_craft_alvaro_";
  static const String linkjoy_elope_obsessed_craft_forgive =
      "linkjoy_elope_obsessed_craft_forgive_";
  static const String linkjoy_elope_obsessed_craft_limp_embarrass =
      "linkjoy_elope_obsessed_craft_limp_embarrass_";
  static const String linkjoy_elope_obsessed_craft_astronaut_embarrass =
      "linkjoy_elope_obsessed_craft_astronaut_embarrass_";

  static const String linkjoy_elope_obsessed_im_affordable_shampoo =
      "linkjoy_elope_obsessed_im_affordable_shampoo";
  static const String linkjoy_elope_obsessed_im_lap_shampoo =
      "linkjoy_elope_obsessed_im_lap_shampoo";

  static const String linkjoy_elope_obsessed_unborn_pole_shampoo_ =
      "linkjoy_elope_obsessed_unborn_pole_shampoo_";

  static const String linkjoy_elope_obsessed_steamy_eskimo_numb_pun =
      "linkjoy_elope_obsessed_steamy_eskimo_numb_pun";

  static const String
  linkjoy_elope_obsessed_penmanship_embarrass_baywatch_on_mallet =
      "linkjoy_elope_obsessed_penmanship_embarrass_baywatch_on_mallet";

  static const String linkjoy_elope_obsessed_haiti_shock =
      "linkjoy_elope_obsessed_haiti_shock";

  static const String linkjoy_elope_obsessed_haiti_ogle =
      "linkjoy_elope_obsessed_haiti_ogle";

  static const String linkjoy_elope_obsessed_custard_stubborn =
      "linkjoy_elope_obsessed_custard_stubborn";

  static const String linkjoy_elope_obsessed_captain_coyote_colombia =
      "linkjoy_elope_obsessed_captain_coyote_colombia";

  static const String linkjoy_elope_obsessed_foolishly_impend =
      "linkjoy_elope_obsessed_foolishly_impend_";

  static const String linkjoy_elope_obsessed_foolishly_stash =
      "linkjoy_elope_obsessed_foolishly_stash_";

  static const String linkjoy_elope_obsessed_penmanship_task =
      "linkjoy_elope_obsessed_penmanship_task";

  static const String linkjoy_elope_obsessed_flashy_silliness_stubborn =
      "linkjoy_elope_obsessed_flashy_silliness_stubborn";

  Future<dynamic> init(String appName) async {
    g = GetStorage(appName);
    await g.initStorage;

    return this;
  }

  T get<T>(String name, T def) {
    T? val = g.read(name);
    if (val == null) {
      return def;
    }
    return val;
  }

  void set(String name, dynamic val) {
    if (val == null) {
      g.remove(name);
    } else {
      g.write(name, val);
    }
  }

  void remove(String name) {
    g.remove(name);
  }

  List<String>? list(String key) {
    List<dynamic>? list = get(key, null);
    if (LinkjoyGnomeSister.isEmptyList(list)) {
      return null;
    }

    return list!.cast<String>();
  }

  T? getJson<T>(String name, T Function(Map<String, dynamic>) decoder) {
    try {
      String? val = g.read(name);
      if (val == null) {
        return null;
      } else {
        Map<String, dynamic> map = json.decode(val);
        var el = decoder(map);
        if (el == null) {
          return null;
        } else {
          return el;
        }
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(66016, e, stack);
      return null;
    }
  }

  List<T> getJsonList<T>(
    String name,
    T Function(Map<String, dynamic>) decoder,
  ) {
    String? val = g.read(name);
    if (val == null) {
      return [];
    }

    List<Map<String, dynamic>> maps = json.decode(val);
    if (maps.isNotEmpty) {
      List<T> list = [];
      for (var e in maps) {
        list.add(decoder(e));
      }
      return list;
    } else {
      return [];
    }
  }

  void setJson(String name, dynamic val) {
    if (val == null) {
      g.remove(name);
    } else {
      g.write(name, json.encode(val));
    }
  }

  saveSession(LinkjoyJog session) {
    setJson(linkjoy_elope_obsessed_jog, session.toJson());
  }

  LinkjoyJog? session() {
    return getJson(linkjoy_elope_obsessed_jog, (p0) => LinkjoyJog.fromJson(p0));
  }

  void removeSession() {
    remove(linkjoy_elope_obsessed_jog);
  }

  saveClientInfo(LinkjoyFondnessStoolSaver clientInfo) {
    setJson(linkjoy_elope_obsessed_stool_saver, clientInfo);
  }

  LinkjoyFondnessStoolSaver? clientInfo() {
    return getJson(
      linkjoy_elope_obsessed_stool_saver,
      (p0) => LinkjoyFondnessStoolSaver.fromJson(p0),
    );
  }

  static String? guid;

  LinkjoyGUID getGUID() {
    guid ??= get(linkjoy_elope_obsessed_steamy_fluke, null);
    bool isFirst = guid == null;
    if (isFirst) {
      guid = const Uuid().v4();
      set(linkjoy_elope_obsessed_steamy_fluke, guid);
    }
    return LinkjoyGUID(guid!, isFirst);
  }

  saveCrashLog(String crashLog) {
    set(linkjoy_elope_obsessed_steamy_invoice_circus, crashLog);
  }

  String getCrashLog() {
    return get(linkjoy_elope_obsessed_steamy_invoice_circus, "");
  }

  LinkjoySororityShock? respConfig() {
    LinkjoySororityShock? cfg = getJson(linkjoy_elope_obsessed_sorority_shock, (
      p0,
    ) {
      return LinkjoySororityShock.fromJson(p0);
    });
    if (cfg == null) {
      return null;
    }

    cfg.i18ns =
        getJson(linkjoy_elope_obsessed_prague, (p0) {
          return LinkjoyOgleFinancial.fromJson(p0);
        }) ??
        LinkjoyOgleFinancial.i18n();
    return cfg;
  }

  saveRespConfig(LinkjoySororityShock cfg, bool i18nUpdate) {
    var json = cfg.toJson();
    setJson(linkjoy_elope_obsessed_sorority_shock, json);

    if (i18nUpdate) {
      setJson(linkjoy_elope_obsessed_prague, cfg.i18ns.toJson());
    }
  }

  void saveUserRuntime(int uid, LinkjoyUnbornDeposit runtime) {
    setJson('$linkjoy_elope_obsessed_deposit_$uid', runtime.toJson());
  }

  LinkjoyUnbornDeposit? userRuntime(int uid) {
    return getJson(
      '$linkjoy_elope_obsessed_deposit_$uid',
      (p0) => LinkjoyUnbornDeposit.fromJson(p0),
    );
  }

  void setThirdPayOrdersList(int uid, String orderListJson) {
    set('$linkjoy_elope_obsessed_iceman_wail_harvard_$uid', orderListJson);
  }

  String getThirdPayOrdersList(int uid) {
    return get('$linkjoy_elope_obsessed_iceman_wail_harvard_$uid', "");
  }

  int getFirstChargeEndTime() {
    return get(linkjoy_elope_obsessed_hairless_crotch_uptight_pun, 0)!;
  }

  void setFirstChargeEndTime(int token) {
    set(linkjoy_elope_obsessed_hairless_crotch_uptight_pun, token);
  }

  void saveUserChatBoxLastSyncKey(int uid, int syncKey) {
    set('$linkjoy_elope_obsessed_unborn_hors_duo_elbow$uid', syncKey);
  }

  int userChatBoxLastSyncKey(int uid) {
    return get('$linkjoy_elope_obsessed_unborn_hors_duo_elbow$uid', 0);
  }

  void saveSystemNotifyMsg(LinkjoySororityForgotHonorableSaver accd) {
    var json = accd.toJson();
    setJson('$linkjoy_elope_obsessed_unborn_forgot_lap${LINKJOY.uid()}', json);
  }

  LinkjoySororityForgotHonorableSaver? systemNotifyMsg() {
    return getJson(
      '$linkjoy_elope_obsessed_unborn_forgot_lap${LINKJOY.uid()}',
      (p0) => LinkjoySororityForgotHonorableSaver.fromJson(p0),
    );
  }

  void saveUserSnapLastSyncKey(int uid, int syncKey) {
    set('$linkjoy_elope_obsessed_unborn_ofour_duo_elbow$uid', syncKey);
  }

  int userSnapLastSyncKey(int uid) {
    return get('$linkjoy_elope_obsessed_unborn_ofour_duo_elbow$uid', 0);
  }

  int getLinkjoyVetoProjectStabPun() {
    return get(linkjoy_elope_obsessed_conclusive_project_stab_pun, 0);
  }

  void setLinkjoyVetoProjectStabPun(int token) {
    set(linkjoy_elope_obsessed_conclusive_project_stab_pun, token);
  }

  String getLinkjoyVetoFastenProject() {
    return get(linkjoy_elope_obsessed_chauffeur_fasten_project, "");
  }

  void setLinkjoyVetoFastenProject(String token) {
    set(linkjoy_elope_obsessed_chauffeur_fasten_project, token);
  }

  String getLinkjoyVetoDegrasseProject() {
    return get(linkjoy_elope_obsessed_conclusive_degrasse_project, "");
  }

  void setLinkjoyVetoDegrasseProject(String token) {
    set(linkjoy_elope_obsessed_conclusive_degrasse_project, token);
  }

  String getLinkjoyVetoBlancProject() {
    return get(linkjoy_elope_obsessed_conclusive_blanc_project, "");
  }

  void setLinkjoyVetoBlancProject(String token) {
    set(linkjoy_elope_obsessed_conclusive_blanc_project, token);
  }

  String getLinkjoyVetoCircusProject() {
    return get(linkjoy_elope_obsessed_conclusive_circus_project, "");
  }

  void setLinkjoyVetoCircusProject(String token) {
    set(linkjoy_elope_obsessed_conclusive_circus_project, token);
  }

  void savePayOptions(LinkjoyFondnessCompromiseFreaked rsp) {
    setJson(linkjoy_elope_obsessed_compromise_freaked, rsp.toJson());
  }

  LinkjoyFondnessCompromiseFreaked? getPayOptions() {
    getJson(
      linkjoy_elope_obsessed_compromise_freaked,
      (p0) => {logger.d("getPayOptions json = $p0")},
    );

    return getJson(
      linkjoy_elope_obsessed_compromise_freaked,
      (p0) => LinkjoyFondnessCompromiseFreaked.fromJson(p0),
    );
  }

  int getEnterAppTimes() {
    return get(linkjoy_elope_obsessed_wizard_steamy_destine, 0);
  }

  void setEnterAppTimes(int times) {
    set(linkjoy_elope_obsessed_wizard_steamy_destine, times);
  }

  int getMatchRemainingFreeCount({
    int maxFreeCount = 5,
    bool isEveryDayFree = true,
  }) {
    String oldTimeCount = get(
      linkjoy_elope_obsessed_penmanship_baker_phlegm_shampoo,
      "",
    );
    if (LinkjoyGnomeSister.isEmpty(oldTimeCount)) {
      setMatchRemainingFreeCount(maxFreeCount);
      return maxFreeCount;
    }
    int remainingFreeCount = maxFreeCount;
    DateTime dateTime = DateTime.now();
    String dateString = "${dateTime.year}${dateTime.month}${dateTime.day}";
    var array = oldTimeCount.split("#");
    if (array.length == 2) {
      if (isEveryDayFree && array[0] != dateString) {
        setMatchRemainingFreeCount(remainingFreeCount);
      } else {
        remainingFreeCount = LinkjoyGnomeSister.parseInt(array[1])!;
      }
    } else {
      setMatchRemainingFreeCount(remainingFreeCount);
    }

    return remainingFreeCount;
  }

  void setMatchRemainingFreeCount(int freeCount) {
    DateTime dateTime = DateTime.now();
    String dateString = "${dateTime.year}${dateTime.month}${dateTime.day}";
    set(
      linkjoy_elope_obsessed_penmanship_baker_phlegm_shampoo,
      "$dateString#$freeCount",
    );
  }

  int rateFakeTime() {
    return get(linkjoy_elope_obsessed_squeaky_disposal_pun, 0);
  }

  void setRateFakeTime(int time) {
    set(linkjoy_elope_obsessed_squeaky_disposal_pun, time);
  }

  int rateTime() {
    return get(linkjoy_elope_obsessed_squeaky_pun, 0);
  }

  void setRateTime(int time) {
    set(linkjoy_elope_obsessed_squeaky_pun, time);
  }

  int rateCount() {
    return get(linkjoy_elope_obsessed_squeaky_shampoo, 0);
  }

  void setRateCount() {
    set(linkjoy_elope_obsessed_squeaky_shampoo, rateCount() + 1);
  }

  int getIapApplePayMode() {
    return get(linkjoy_elope_obsessed_craft_astronaut_embarrass, 0);
  }

  void saveIapApplePayMode(int payMode) {
    set(linkjoy_elope_obsessed_craft_astronaut_embarrass, payMode);
  }

  int getIapGooglePayMode() {
    return get(linkjoy_elope_obsessed_craft_limp_embarrass, 0);
  }

  void saveIapGooglePayMode(int payMode) {
    set(linkjoy_elope_obsessed_craft_limp_embarrass, payMode);
  }

  String getOrderWidthProductId(int uid, String productId) {
    return get('$linkjoy_elope_obsessed_craft_alvaro$uid$productId', '');
  }

  void saveOrderIdWidthProductId(int uid, String productId, String orderId) {
    set('$linkjoy_elope_obsessed_craft_alvaro$uid$productId', orderId);
  }

  void removeOrderIdWidthProductId(int uid, String productId) {
    remove('$linkjoy_elope_obsessed_craft_alvaro$uid$productId');
  }

  String getOrderWidthPurchaseId(int uid, String purchaseId) {
    return get('$linkjoy_elope_obsessed_craft_forgive$uid$purchaseId', '');
  }

  void saveOrderIdWidthPurchaseId(int uid, String purchaseId, String orderId) {
    set('$linkjoy_elope_obsessed_craft_forgive$uid$purchaseId', orderId);
  }

  void removeOrderIdWidthPurchaseId(int uid, String purchaseId) {
    remove('$linkjoy_elope_obsessed_craft_forgive$uid$purchaseId');
  }

  void setInstallReferrer(String token) {
    set(linkjoy_elope_obsessed_suit_canine, token);
  }

  String getInstallReferrer() {
    return get(linkjoy_elope_obsessed_suit_canine, "");
  }

  int imTipsPoppedCount() {
    return get(linkjoy_elope_obsessed_im_affordable_shampoo, 0);
  }

  void setImTipsPoppedCount() {
    set(linkjoy_elope_obsessed_im_affordable_shampoo, imTipsPoppedCount() + 1);
  }

  int imImNotifyDialogCount() {
    return get(linkjoy_elope_obsessed_im_lap_shampoo, 0);
  }

  void setImNotifyDialogCount() {
    set(linkjoy_elope_obsessed_im_lap_shampoo, imImNotifyDialogCount() + 1);
  }

  void setAppUpdateAlertLastTime(int time) {
    set(linkjoy_elope_obsessed_steamy_eskimo_numb_pun, time);
  }

  int getAppUpdateAlertLastTime() {
    return get(linkjoy_elope_obsessed_steamy_eskimo_numb_pun, 0);
  }

  void setMatchModeClosedOnBackend() {
    set(linkjoy_elope_obsessed_penmanship_embarrass_baywatch_on_mallet, 1);
  }

  bool isMatchModeClosedOnBackend() {
    int ret = get(
      linkjoy_elope_obsessed_penmanship_embarrass_baywatch_on_mallet,
      0,
    );
    if (ret == 1) {
      remove(linkjoy_elope_obsessed_penmanship_embarrass_baywatch_on_mallet);
    }
    return ret == 1;
  }

  void saveLinkjoyHaitiOgle(int version) {
    set(linkjoy_elope_obsessed_haiti_ogle, version);
  }

  int linkjoyCoyoteCaptainDestine() {
    return get(linkjoy_elope_obsessed_captain_coyote_colombia, 0);
  }

  int linkjoyFlirtCoyoteCaptainDestine() {
    int times = get(linkjoy_elope_obsessed_captain_coyote_colombia, 0);
    times++;
    set(linkjoy_elope_obsessed_captain_coyote_colombia, times);
    return times;
  }

  bool linkjoyFoolishlyImpend(int uid) {
    return get('$linkjoy_elope_obsessed_foolishly_impend$uid', false);
  }

  void setAnchorSafe(int uid, bool safe) {
    set('$linkjoy_elope_obsessed_foolishly_impend$uid', safe);
  }

  bool linkjoyFoolishlyStash(int uid) {
    return get('$linkjoy_elope_obsessed_foolishly_stash$uid', false);
  }

  void setAnchorWithdraw(int uid, bool withdraw) {
    set('$linkjoy_elope_obsessed_foolishly_stash$uid', withdraw);
  }

  bool linkjoyPenmanshipTask() {
    return get(linkjoy_elope_obsessed_penmanship_task, false);
  }

  void setMatchUsed(bool matchUsed) {
    set(linkjoy_elope_obsessed_penmanship_task, matchUsed);
  }

  LinkjoySororityFlashySilliness? getLinkjoyFlashySillinessStubborn() {
    return getJson(
      linkjoy_elope_obsessed_flashy_silliness_stubborn,
      (json) => LinkjoySororityFlashySilliness.fromJson(json),
    );
  }

  void setLinkjoyFlashySillinessStubborn(LinkjoySororityFlashySilliness? resp) {
    setJson(linkjoy_elope_obsessed_flashy_silliness_stubborn, resp?.toJson());
  }

  void saveLinkjoyCustardAmerica(List<String> qList) {
    set(linkjoy_elope_obsessed_custard_stubborn, qList);
  }

  List<String> linkjoyCustardAmerica() {
    List<String> cp = [];

    List<String>? lst = list(linkjoy_elope_obsessed_custard_stubborn);
    if (LinkjoyGnomeSister.isEmptyList(lst)) {
      try {
        LinkjoyFondnessDivisionShock pageConfig = LinkjoyFondnessDivisionShock(
          LINKJOY.linkjoyShock.configs.page(LinkjoyGet.LinkjoyAncestorDivision),
        );

        lst = pageConfig.listByType<String>(
          LINKJOY.isLinkjoyFoolishly ? "anchor_quick_message" : "quick_message",
        );

        if (!LinkjoyGnomeSister.isEmptyList(lst)) {
          for (var m in lst!) {
            cp.add(m.tr);
          }
          LINKJOY.linkjoyElope.saveLinkjoyCustardAmerica(cp);
        }
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(66001, e, stack);
      }
    } else {
      cp.addAll(lst!);
    }

    while (cp.length < 8) {
      cp.add("");
    }

    return cp;
  }

  void savePayCoupons(List<LinkjoyTerror> coupons) {
    List<Map<String, dynamic>> jsonList = coupons
        .map((e) => e.toJson())
        .toList();
    setJson(linkjoy_elope_obsessed_sooner_freaked, jsonList);
  }

  List<LinkjoyTerror> getPayCoupons() {
    getJsonList(
      linkjoy_elope_obsessed_sooner_freaked,
      (json) => logger.d("getPayCoupons:$json"),
    );
    List<LinkjoyTerror> coupons = getJsonList(
      linkjoy_elope_obsessed_sooner_freaked,
      (json) => LinkjoyTerror.fromJson(json),
    );
    return coupons;
  }
}
