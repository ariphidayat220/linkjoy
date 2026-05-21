import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_east.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_young_unborn_greet_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_young.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_steamy_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_young_lap.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_young_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_stool_saver.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_jog.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit_eskimo_lap.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ogle_financial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_peanuts.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_king_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_king_stewart_taco.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_liberty_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_young_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_heather_steamy.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_frosty_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_appreciate_sailor.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_guitar_despite.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_caring_america.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_circus_stipulate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_wail_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_fourth_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_select_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair_oily.dart';
import 'package:linkjoy/linkjoy_steamy/proto/common.pb.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart' as Path;
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'linkjoy_db.dart';
import 'linkjoy_elope.dart';

class LinkjoyFlattered {
  EventBus eventBus = EventBus(sync: false);

  void fire(dynamic event) {
    eventBus.fire(event);
  }

  StreamSubscription<T> listen<T>(
    void Function(T event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return eventBus.on<T>().listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }

  late LinkjoyElope linkjoyElope;

  late LinkjoyPeanuts http;

  late LinkjoyAppreciateSailor deviceService;

  bool socketInit = false;
  late LinkjoyKingOily socketManager;

  late MethodChannel? methodChannel;

  late String filePath;
  late String cachePath;
  late String rootPath;

  late String userPath;

  late LinkjoyDb linkjoyDb;

  LinkjoyJog? linkjoyJog;

  LinkjoyUnbornDeposit? linkjoyUnbornDeposit;

  late LinkjoyShock linkjoyShock;

  bool isInitDone = false;

  bool isDBInitDone = false;

  bool isBackend = false;

  Future<void> init() async {
    linkjoyElope = await LinkjoyElope().init(
      LinkjoyDivorced.linkjoySteamyLenny,
    );
    filePath = (await getApplicationDocumentsDirectory()).path;
    cachePath = (await getApplicationCacheDirectory()).path;
    rootPath = Path.join(filePath, "app");

    linkjoyJog = linkjoyElope.session();
    if (linkjoyJog != null) {
      linkjoyUnbornDeposit = linkjoyElope.userRuntime(linkjoyJog!.user.uid);
    }

    deviceService = await LinkjoyAppreciateSailor(linkjoyElope).init();

    LinkjoySororityShock? cachedConfig = linkjoyElope.respConfig();

    _linkjoyBurdenLinkjoyPeanuts(
      cachedConfig?.router.http,
      cachedConfig?.httpConfig,
      null,
    );

    if (linkjoyJog != null) {
      await _linkjoyCuffUnbornNauseate();
    }

    await refreshLinkjoyShock(
      quickRefresh: false,
      onResume: false,
      cachedConfig: cachedConfig,
    );

    if (linkjoyJog != null) {
      _linkjoyCaitlinPulpHappilyUnbornSaver();
    }

    LinkjoyFourthOily.instance.init(
      linkjoyShock.configs.linkjoyPaw.linkjoyFourthObsessed,
    );

    deviceService.initAdjust(
      linkjoyShock.configs.linkjoyPaw.linkjoyPassionateSteamyId,
    );

    LinkjoyRTCOily.instance.init(
      linkjoyShock.configs.linkjoyPaw.linkjoyLifeSteamyId,
    );

    if (!socketInit) {
      LinkjoyKingStewartTaco.init();
      socketManager = LinkjoyKingOily();
      socketManager.start("init");
      socketInit = true;
    }

    eventBus.on<LinkjoyYoungLap>().listen(_onLinkjoyYoungLap);
    eventBus.on<UserRuntimePSH>().listen(_onLinkjoyUnbornDepositPSH);

    LinkjoyGuitarDespite().linkjoyCaitlin(eventBus);

    LinkjoyUnbornChickenHairOily().start();

    _initMethodChannelCall();
    if (Platform.isAndroid) {
      _loadInstallReferrer();
    }

    isInitDone = true;

    LinkjoySteamyClamOily.linkjoyOnSteamySocketUp();
  }

  void _linkjoyCaitlinPulpHappilyUnbornSaver() {
    if (!LINKJOY.linkjoyJog!.isLinkjoyFoolishly()) {
      LinkjoyWailOily.instance.linkjoyTaco();
      LinkjoyWailOily.instance.linkjoyHappilyBellyCompromise(
        scene: LinkjoyWailMadnessVulcanDollhouse.async_auto,
      );
    }
  }

  String rootRouteName = LinkjoyGet.LinkjoyCrouchDivision;

  goto(String routeUrl) {
    if (routeUrl.startsWith("/")) {
      LINKJOY.toNamed(routeUrl);
    } else if (routeUrl.startsWith(LinkjoyHeatherSteamy.SCHEMA)) {
      LinkjoyHeatherSteamy? app = LinkjoyHeatherSteamy.fromUrl(routeUrl);
      if (app != null) {
        LINKJOY.toNamed(
          LinkjoyGet.LinkjoyHeatherSteamyDivision,
          arguments: app,
          preventDuplicates: false,
        );
      }
    } else if (routeUrl.startsWith("http")) {
      LINKJOY.toNamed(
        LinkjoyGet.LinkjoyThawDivision,
        arguments: LinkjoyThawJaw(
          "",
          routeUrl,
          showHtmlTitle: true,
          showNavbar: true,
        ),
        preventDuplicates: false,
      );
    } else if (routeUrl.startsWith("xhttp")) {
      String url = routeUrl.substring(1);
      try {
        final Uri? uri = Uri.tryParse(url.trimLeft());
        if (uri != null) {
          launchUrl(uri);
        }
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(50001, e, stack);
      }
    } else if (routeUrl.startsWith("t://")) {
      try {
        String url = routeUrl.substring("t://".length);
        launch(url);
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(50002, e, stack);
      }
    } else {}
  }

  toRoot(String newRouteName, {dynamic arguments}) {
    if (rootRouteName != newRouteName) {
      rootRouteName = newRouteName;
    }

    if (Get.currentRoute != newRouteName) {
      return Get.offAllNamed(newRouteName, arguments: arguments);
    }
  }

  Future<T?> toNamed<T>(
    String page, {
    dynamic arguments,
    int? id,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
  }) async {
    if (LinkjoyGet.perCheck(page)) {
      return null;
    }
    return Get.toNamed<T>(
      page,
      arguments: arguments,
      id: id,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
    );
  }

  Future<T?>? offNamed<T>(
    String page, {
    dynamic arguments,
    int? id,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
  }) {
    if (LinkjoyGet.perCheck(page)) {
      return null;
    }
    return Get.offNamed<T>(
      page,
      arguments: arguments,
      id: id,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
    );
  }

  void toTabUp(String routeName) {
    Get.offNamedUntil(routeName, (Route<dynamic> route) {
      if (route.settings.name == LinkjoyGet.LinkjoyFrostyDivision) {
        return true;
      }
      return false;
    });
  }

  void linkjoyIncapableToTherapistFetusPearl() {
    Get.until(
      (route) => ((route.settings.name == LinkjoyGet.LinkjoyFrostyDivision)),
    );
    Get.find<LinkjoyFrostyHand>().gotoTab(LinkjoyGet.LinkjoyFetusPearlDivision);
  }

  void linkjoyIncapableToTherapistToPenmanship() {
    Get.until(
      (route) => ((route.settings.name == LinkjoyGet.LinkjoyFrostyDivision)),
    );
    Get.find<LinkjoyFrostyHand>().linkjoyPatchFetusPenmanshipToner();
  }

  void home() {
    toRoot(LinkjoyGet.LinkjoyFrostyDivision);
  }

  Future<void> _onLinkjoyYoungLap(LinkjoyYoungLap event) async {
    if (event.result == LinkjoyYoungPlacebo.INIT) {
      toRoot(LinkjoyGet.LinkjoyYoungDivision);
      return;
    }

    if (event.result == LinkjoyYoungPlacebo.SUCC) {
      if (event.respLogin != null) {
        await _onLinkjoySororityYoung(event.respLogin!);
      }

      home();
      socketManager.auth();

      return;
    }

    if (event.result == LinkjoyYoungPlacebo.LOGOUT ||
        event.result == LinkjoyYoungPlacebo.RELOGIN_AUTO) {
      if (isDBInitDone) {
        linkjoyDb.dispose();
      }
      LinkjoyAncestorOily.instance.dispose();
      linkjoyElope.removeSession();
      linkjoyJog = null;
      _linkjoyBurdenLinkjoyPeanuts(
        linkjoyShock.http,
        linkjoyShock.httpConfig,
        http,
      );

      socketManager.logout("logout");

      toRoot(
        LinkjoyGet.LinkjoyYoungDivision,
        arguments: event.result == LinkjoyYoungPlacebo.RELOGIN_AUTO
            ? LinkjoyYoungHand.linkjoy_adjourn_finger_selfish
            : null,
      );
      return;
    }

    if (event.result == LinkjoyYoungPlacebo.BLOCK) {
      toRoot(LinkjoyGet.LinkjoyCrouchDivision);
      EasyLoading.show(status: "linkjoy_caring_wrench".tr, dismissOnTap: false);
      return;
    }

    {
      toRoot(LinkjoyGet.LinkjoyYoungDivision);
      return;
    }
  }

  void onLinkjoyFoolishlyFootPlimpton() {
    linkjoyJog!.regProgress = EnumLinkjoyFoolishlyFootAye.COMPLETE.index;
    linkjoyJog!.user.status =
        EnumLinkjoyUnbornHair.ANCHOR_DETECT_COMPLETE.index;

    linkjoyElope.saveSession(linkjoyJog!);
  }

  void onSelectMale() {
    linkjoyJog!.user.status = EnumLinkjoyUnbornHair.OK.index;
    linkjoyJog!.regProgress = EnumLinkjoyFoolishlyFootAye.COMPLETE.index;

    LINKJOY.fire(LinkjoyYoungLap(LinkjoyYoungPlacebo.SUCC));
  }

  void onSelectFemale() {
    linkjoyJog!.role = 1;
    linkjoyJog!.user.status = EnumLinkjoyUnbornHair.ANCHOR_REG.index;
    linkjoyJog!.regProgress = EnumLinkjoyFoolishlyFootAye.FILL_INFO.index;
    linkjoyElope.saveSession(linkjoyJog!);

    LINKJOY.fire(LinkjoyYoungLap(LinkjoyYoungPlacebo.SUCC));
  }

  void onFemaleToMale() {
    linkjoyJog!.role = EnumLinkjoyUnbornPurple.USER.value;
    linkjoyJog!.user.status = EnumLinkjoyUnbornHair.OK.index;
    linkjoyJog!.regProgress = EnumLinkjoyFoolishlyFootAye.COMPLETE.index;
    linkjoyElope.saveSession(linkjoyJog!);

    LINKJOY.fire(LinkjoyYoungLap(LinkjoyYoungPlacebo.RELOGIN_AUTO));
  }

  Future<void> _onLinkjoySororityYoung(LinkjoySororityYoung resp) async {
    _linkjoyMorganSororityYoung(resp);

    await _linkjoyCuffUnbornNauseate();

    _linkjoyBurdenLinkjoyPeanuts(
      linkjoyShock.http,
      linkjoyShock.httpConfig,
      http,
    );

    if (!LINKJOY.linkjoyJog!.isLinkjoyFoolishly()) {
      _linkjoyCaitlinPulpHappilyUnbornSaver();
    }

    if (linkjoyJog!.isLinkjoyFoolishly()) {
      await refreshLinkjoyShock(quickRefresh: true, onResume: false);
    }
  }

  void _linkjoyMorganSororityYoung(LinkjoySororityYoung resp) {
    if (linkjoyJog == null) {
      linkjoyJog = LinkjoyJog()
        ..secret = resp.secret
        ..session = resp.session
        ..user = resp.user
        ..role = resp.role
        ..regProgress = resp.regProgress;
    } else {
      linkjoyJog!.linkjoyEskimoWheatonYoungSorority(
        resp.secret,
        resp.session,
        resp.user,
        resp.role,
        resp.regProgress,
      );
    }

    linkjoyUnbornDeposit = resp.runtime;

    linkjoyElope.saveSession(linkjoyJog!);
    linkjoyElope.saveUserRuntime(linkjoyJog!.user.uid, resp.runtime);
  }

  void updateLocalUserBirthday(String birthday) {
    if (linkjoyJog == null || LinkjoyGnomeSister.isEmpty(birthday)) {
      return;
    }
    linkjoyJog!.user.birthday = birthday;
    linkjoyElope.saveSession(linkjoyJog!);
  }

  void _linkjoyBurdenLinkjoyPeanuts(
    List<HttpServerVO>? httpServers,
    HttpConfig? httpConfig,
    LinkjoyPeanuts? old,
  ) {
    String apiAddress = LinkjoyDivorced.linkjoyFollowerHawk;
    if (httpServers != null && httpServers.isNotEmpty) {
      int random = Random.secure().nextInt(100);
      for (HttpServerVO vo in httpServers) {
        random -= vo.weight;
        if (random <= 0) {
          apiAddress =
              "${vo.url}:${vo.port}${LinkjoyDivorced.linkjoyFollowerDucky}";
          break;
        }
      }
    }

    Duration timeout = Duration(
      seconds: httpConfig == null
          ? LinkjoyPeanuts.linkjoy_mole_cab_patent
          : httpConfig.readTimeout,
    );
    LinkjoyPeanuts httpNew = LinkjoyPeanuts.create(
      linkjoyJog == null
          ? LinkjoyDivorced.linkjoyMoleQuintoObsessed
          : linkjoyJog!.secret,
      linkjoyJog?.session,
      apiAddress,
      deviceService.getClientInfo().userAgent,
      timeout: timeout,
    );
    http = httpNew;
    old?.dispose();
  }

  Future<LinkjoyShock> refreshLinkjoyShock({
    bool quickRefresh = false,
    bool onResume = false,
    LinkjoySororityShock? cachedConfig,
  }) async {
    cachedConfig ??= linkjoyElope.respConfig();
    if (cachedConfig != null) {
      _copyConfig(cachedConfig);
    }

    LinkjoySororityShock freshConfig = await _refreshLinkjoySororityShock(
      cachedConfig,
      quickRefresh,
    );

    LinkjoyCaringAmerica().updateWithUpgradeResponse(freshConfig.i18ns);

    _copyConfig(freshConfig);

    int prevAppConfigVersion = cachedConfig != null
        ? cachedConfig.configs.version
        : 0;
    if (onResume) {
      if (prevAppConfigVersion != freshConfig.configs.version) {
        fire(linkjoyShock.configs);
      }
    }

    return linkjoyShock;
  }

  void _copyConfig(LinkjoySororityShock freshConfig) {
    linkjoyShock = LinkjoyShock()
      ..iav = freshConfig.iav != LinkjoyEast.linkjoy_gendered_jammies
      ..dbg = freshConfig.dbg == 1
      ..ai = freshConfig.ai == 1
      ..httpConfig = freshConfig.httpConfig
      ..trackTypes = freshConfig.trackTypes
      ..busyPageConfig = freshConfig.busyPageConfig
      ..socket = freshConfig.router.socket
      ..http = freshConfig.router.http
      ..cdn = freshConfig.router.cdn
      ..ngc = freshConfig.ngc
      ..configs = LinkjoySteamyShock.fromJson(freshConfig.configs.val)
      ..gifts = (freshConfig.gifts.val as List<dynamic>)
          .map((e) => VoGift.fromJson(e))
          .toList()
      ..imageSize = freshConfig.imageSize
      ..mas = freshConfig.mas
      ..live = freshConfig.live;
  }

  Future<LinkjoySororityShock> _refreshLinkjoySororityShock(
    LinkjoySororityShock? cfg,
    bool quickRefresh,
  ) async {
    LinkjoyFondnessStoolSaver clientInfo = deviceService.getClientInfo();

    String lang = clientInfo.shortLang;
    int i18nVersion = 0;
    int cfgVersion = 0;
    int giftVersion = 0;

    late Duration timeout;
    if (cfg != null) {
      if (!cfg.i18ns.linkjoyCaringBud(lang)) {
        cfg.i18ns = LinkjoyOgleFinancial.i18n();
        timeout = const Duration(seconds: 5);
      } else {
        timeout = const Duration(seconds: 2);
      }

      i18nVersion = cfg.i18ns.version;
      cfgVersion = cfg.configs.version;
      giftVersion = cfg.gifts.version;
    } else {
      timeout = const Duration(seconds: 5);
    }

    do {
      int apiId;
      Map<String, dynamic> params = {
        "iav": cfg == null ? LinkjoyEast.linkjoy_gendered_app : cfg.iav,
        "i18n_version": i18nVersion,
        "cfg_version": cfgVersion,
        "gift_version": giftVersion,
      };

      if (kDebugMode) {
        params["debug"] = 1;
      }

      if (quickRefresh && cfg != null && linkjoyJog != null) {
        apiId = 1012;
        params["package_name"] = LinkjoyDivorced.linkjoySterilizeLenny;
        params["client_version"] = LinkjoyDivorced.linkjoySteamyOgle;
        params["device_id"] = clientInfo.device_id;
        params["lang"] = clientInfo.lang;
      } else {
        apiId = 1010;
        params["client_info"] = clientInfo.toJsonString();
      }

      LinkjoySororityShock? rsp = await http.rest(
        apiId,
        params,
        (p) {
          return LinkjoySororityShock.fromJson(p);
        },
        autoToastOnError: cfg == null,
        timeout: timeout,
      );

      if (rsp != null) {
        if (cfg != null) {
          cfg.upgrade(rsp);
        } else {
          cfg = rsp;
        }

        linkjoyElope.saveRespConfig(cfg, i18nVersion != cfg.i18ns.version);
      } else {
        if (cfg == null || cfg.i18ns.version == 0) {
          await 1.delay();
        }
      }
    } while (cfg == null || cfg.i18ns.version == 0);

    return cfg;
  }

  int uid() {
    if (linkjoyJog == null) {
      fire(LinkjoyYoungLap(LinkjoyYoungPlacebo.LOGOUT));
      return 0;
    }
    return linkjoyJog!.user.uid;
  }

  int uidOrZero() {
    if (linkjoyJog == null) {
      return 0;
    }
    return linkjoyJog!.user.uid;
  }

  bool isVip() {
    return linkjoyUnbornDeposit != null && linkjoyUnbornDeposit!.vip();
  }

  bool get isLinkjoyFoolishly => linkjoyJog?.isLinkjoyFoolishly() == true;

  int uCodeInt() {
    if (linkjoyJog == null) {
      fire(LinkjoyYoungLap(LinkjoyYoungPlacebo.LOGOUT));
      return 0;
    }
    return LinkjoyGnomeSister.stringToInt(linkjoyJog!.user.ucode) ?? 0;
  }

  LinkjoyYoungUnborn user() {
    if (linkjoyJog == null) {
      fire(LinkjoyYoungLap(LinkjoyYoungPlacebo.LOGOUT));
      return LinkjoyYoungUnborn();
    }
    return linkjoyJog!.user;
  }

  Future<void> _linkjoyCuffUnbornNauseate() async {
    userPath = Path.join(filePath, LINKJOY.uid().toString());
    LinkjoyDb dbServices = LinkjoyDb();
    await dbServices.init();
    linkjoyDb = dbServices;

    LinkjoyAncestorOily.instance.init();
    LinkjoyFourthOily.instance.pushUserExternalId();

    isDBInitDone = true;
  }

  Future<void> onLinkjoyInseam() async {
    await LINKJOY.http.submit(
      2015,
      {},
      showLoadingUI: true,
      autoToastOnError: true,
      timeout: const Duration(seconds: 3),
    );
    LINKJOY.fire(LinkjoyYoungLap(LinkjoyYoungPlacebo.LOGOUT));
  }

  Future<void> onLinkjoyCircusDestroy() async {
    await LINKJOY.http.submit(
      2016,
      {},
      showLoadingUI: true,
      autoToastOnError: true,
      timeout: const Duration(seconds: 3),
    );
    LINKJOY.fire(LinkjoyYoungLap(LinkjoyYoungPlacebo.LOGOUT));
  }

  Future<void> linkjoyVulcanMe() async {
    LinkjoySororityYoung? resp = await LINKJOY.http.rest(
      2020,
      {},
      (p0) => LinkjoySororityYoung.fromJson(p0),
      showLoadingUI: false,
      autoToastOnError: false,
      timeout: const Duration(seconds: 3),
    );
    if (resp != null) {
      _linkjoyMorganSororityYoung(resp);
      fire(LinkjoyUnbornDepositEskimoLap(linkjoyUnbornDeposit!));
      fire(LinkjoyYoungUnbornGreetGuitar());
    }
  }

  bool get hasMatchCard => LINKJOY.linkjoyUnbornDeposit?.hasMatchCard ?? false;

  bool get hasVideoCard => LINKJOY.linkjoyUnbornDeposit?.hasVideoCard ?? false;

  bool get notYetRecharged =>
      (LINKJOY.linkjoyUnbornDeposit?.chargeCount ?? 0) <= 0;

  void _onLinkjoyUnbornDepositPSH(UserRuntimePSH psh) {
    if (linkjoyUnbornDeposit == null || linkjoyJog == null) {
      return;
    }

    if (psh.type & (1 << 0) != 0) {
      linkjoyUnbornDeposit!.balance = psh.balance.toInt();
      linkjoyUnbornDeposit!.chargeCount = psh.chargeCount.toInt();
      linkjoyUnbornDeposit!.chargeTotal = psh.chargeTotal.toInt();
    }

    if (psh.type & (1 << 1) != 0) {
      linkjoyUnbornDeposit!.vipExpire = DateTime.fromMillisecondsSinceEpoch(
        psh.vipExpire.toInt(),
      );
    }
    if (psh.type & (1 << 2) != 0) {
      linkjoyUnbornDeposit!.cardVideo = psh.cardVideo;
      linkjoyUnbornDeposit!.cardMatch = psh.cardMatch;
      linkjoyUnbornDeposit!.cardIm = psh.cardIm;
      linkjoyUnbornDeposit!.cardKey = psh.cardKey;
    }

    if (psh.type & (1 << 3) != 0) {
      if (linkjoyUnbornDeposit!.level != psh.level) {
        linkjoyUnbornDeposit!.level = psh.level;
        linkjoyVulcanMe();
      }
    }

    if (psh.type & (1 << 4) != 0) {
      linkjoyUnbornDeposit!.todayIncome = psh.todayIncome.toInt();
      linkjoyUnbornDeposit!.totalIncome = psh.totalIncome.toInt();
    }

    if (psh.type & (1 << 5) != 0) {
      linkjoyUnbornDeposit!.matchMode = psh.matchMode;
    }

    if (psh.type & (1 << 6) != 0) {
      linkjoyUnbornDeposit!.noDisturbExpire =
          DateTime.fromMillisecondsSinceEpoch(psh.noDisturbExpire.toInt());
    }

    linkjoyElope.saveUserRuntime(uid(), linkjoyUnbornDeposit!);
    fire(LinkjoyUnbornDepositEskimoLap(linkjoyUnbornDeposit!, type: psh.type));
  }

  Future<dynamic> callPlatformMethod(
    String methodName, [
    dynamic arguments,
  ]) async {
    try {
      return await methodChannel?.invokeMethod(methodName, arguments);
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(50004, e, stack);
    }
  }

  void _initMethodChannelCall() {
    methodChannel = const MethodChannel(
      LinkjoyDivorced.linkjoyInsuranceWeenieKryptonian,
    );
    methodChannel?.setMethodCallHandler((call) async {
      if (Platform.isAndroid) {
        if (call.method == 'installReferrer') {
          String installReferrer = call.arguments['installReferrer'];
          if (!LinkjoyGnomeSister.isEmpty(installReferrer)) {
            linkjoyElope.setInstallReferrer(installReferrer);
          }
          _requestUpdateInstallReferrer();
        }
      }
    });
  }

  void _loadInstallReferrer() {
    callPlatformMethod("getInstallReferrer");
  }

  void _requestUpdateInstallReferrer() {
    String installReferrer = linkjoyElope.getInstallReferrer();
    if (linkjoyJog == null || LinkjoyGnomeSister.isEmpty(installReferrer)) {
      return;
    }

    LINKJOY.http.submit(1018, {"install_referrer": installReferrer});
  }

  bool isLowMem() {
    return LINKJOY.deviceService.getClientInfo().low_mem == 1;
  }
}

final LinkjoyFlattered LINKJOY = LinkjoyFlattered();

class LinkjoyColdPainful extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return kDebugMode;
  }
}

final Logger logger = Logger(
  filter: LinkjoyColdPainful(),
  printer: HybridPrinter(
    LinkjoyCircusStipulate(),
    error: PrettyPrinter(
      methodCount: 10,
      errorMethodCount: 8,
      lineLength: 160,
      colors: true,
      printEmojis: false,
      printTime: true,
    ),
  ),
);
