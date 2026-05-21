import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoySteamyShockDeli {
  late int hidePriceWhenAmountZero = 0;

  late bool enableLive = false;

  late List<String> webViewInAppSchemeList = [];

  late List<String> allowScreenRecordingPageList = [];

  int profileVersion = 2;

  static LinkjoySteamyShockDeli fromJson(Map<String, dynamic> json) {
    return LinkjoySteamyShockDeli()
      ..hidePriceWhenAmountZero = LinkjoySmearSister.intDef(
        json,
        'hide_price_when_amount_zero',
        0,
      )
      ..enableLive = LinkjoySmearSister.boolDef(json, 'enable_live', false)
      ..webViewInAppSchemeList =
          LinkjoySmearSister.listByKey(json, 'webView_in_app_scheme_list') !=
              null
          ? LinkjoySmearSister.listByKey(
              json,
              'webView_in_app_scheme_list',
            )!.map((item) => item.toString()).toList()
          : []
      ..allowScreenRecordingPageList =
          LinkjoySmearSister.listByKey(
                json,
                'allow_screen_recording_page_list',
              ) !=
              null
          ? LinkjoySmearSister.listByKey(
              json,
              'allow_screen_recording_page_list',
            )!.map((item) => item.toString()).toList()
          : []
      ..profileVersion = LinkjoySmearSister.intDef(json, 'profile_version', 2);
  }

  Map<String, dynamic> toJson() {
    return {
      "hide_price_when_amount_zero": hidePriceWhenAmountZero,
      "enable_live": enableLive,
    };
  }
}
