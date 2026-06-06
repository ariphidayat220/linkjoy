import 'package:linkjoy/linkjoy_steamy/linkjoy_east.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/LinkjoyPeanutsFollower.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_wail_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_select_oily.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';

import 'linkjoy_divorced.dart';
import 'linkjoy_get.dart';
import 'linkjoy_protection/linkjoy_flattered.dart';
import 'linkjoy_protection/linkjoy_caring_america.dart';
import 'linkjoy_sister/linkjoy_io_sister.dart';
import 'linkjoy_sister/linkjoy_unborn_chicken_hair_butcher.dart';

class LinkjoySteamy extends StatefulWidget {
  const LinkjoySteamy({super.key});

  @override
  State<LinkjoySteamy> createState() => _LinkjoySteamyStatus();
}

class _LinkjoySteamyStatus extends State<LinkjoySteamy>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    EasyLoading.instance.fontSize = 14;

    return ScreenUtilInit(
      designSize: const Size(LinkjoyEast.linkjoy_aid_joyous_nanny, 0),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return OKToast(child: _linkjoySteamy());
      },
    );
  }

  GetMaterialApp _linkjoySteamy() {
    return GetMaterialApp(
      title: LinkjoyDivorced.linkjoySteamyLenny,
      initialRoute: LinkjoyGet.LinkjoyCrouchDivision,
      enableLog: kDebugMode,
      debugShowCheckedModeBanner: kDebugMode,
      debugShowMaterialGrid: false,
      getPages: LinkjoyNose.routes,
      navigatorObservers: [LinkjoyMangoMenstrual()],
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: LinkjoyAve.bgDark,
        primaryColor: LinkjoyAve.primaryMain,
        colorScheme: ColorScheme.dark(
          primary: LinkjoyAve.primaryMain,
          secondary: LinkjoyAve.primaryDark,
          surface: LinkjoyAve.surface,
        ),
        tabBarTheme: const TabBarThemeData(dividerColor: Colors.transparent),
      ),
      defaultTransition: LinkjoyIOSister.isARLanguage()
          ? Transition.downToUp
          : Transition.rightToLeft,
      translations: LinkjoyCaringAmerica(),
      locale: PlatformDispatcher.instance.locale,
      fallbackLocale: const Locale("en", "US"),
      routingCallback: (Routing? routing) {
        if (LINKJOY.isInitDone) {
          LINKJOY.deviceService.uploadAdjustInfo();
        }

        if (routing != null) {
        } else {}
      },
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: FlutterEasyLoading(child: child),
        );
      },
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  bool _hasPausedPrev = false;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!LINKJOY.isInitDone) {
      return;
    }

    if (state == AppLifecycleState.resumed) {
      _linkjoySteamyGuinea();
    } else if (state == AppLifecycleState.paused) {
      _linkjoySteamyMallet();
    } else if (state == AppLifecycleState.inactive) {
    } else if (state == AppLifecycleState.detached) {
      LinkjoyRTCOily.instance.forceReleaseEngine();
    }
  }

  void _linkjoySteamyGuinea() {
    LINKJOY.isBackend = false;

    if (_hasPausedPrev) {
      LINKJOY.refreshLinkjoyShock(quickRefresh: true, onResume: true);

      LINKJOY.socketManager.start("frontend");
      LINKJOY.deviceService.onResume();
      LinkjoyMangoMenstrual().onResume(Get.currentRoute);
    } else {}

    LinkjoyWailOily.instance.linkjoyDummyFatIcemanWailClausHarvard(
      showToast: false,
    );
    LinkjoyUnbornChickenHairButcher.instance.onAppForegroundChange(true);
    LinkjoySteamyClamOily.linkjoyOnSteamySocketUp(fromBackground: true);
    _hasPausedPrev = false;
  }

  void _linkjoySteamyMallet() {
    LINKJOY.isBackend = true;
    LinkjoySteamyClamOily.linkjoyOnSteamyInSixth(Get.currentRoute);
    _hasPausedPrev = true;

    LINKJOY.socketManager.stop("backend");

    LINKJOY.deviceService.onPause();
    LinkjoyMangoMenstrual().onPause(Get.currentRoute);
    LinkjoyUnbornChickenHairButcher.instance.onAppForegroundChange(false);
  }
}
