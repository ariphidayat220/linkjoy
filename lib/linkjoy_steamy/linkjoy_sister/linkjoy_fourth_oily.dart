import 'dart:async';
import 'dart:collection';

import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_division_paw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:flutter/foundation.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class LinkjoyFourthOily {
  static const String linkjoy_fourth_therapist = '/home';
  static const String linkjoy_fourth_ancestor = '/chat';
  static const String linkjoy_fourth_degrasse = '/video';

  static const String linkjoy_fourth_execute = '/webview';

  static const String linkjoy_fourth_shanghai = '/route';

  static const String linkjoy_fourth_forgot = '/sysmsg';

  static const String linkjoy_fourth_spender_obsessed = 'go';
  static const String linkjoy_fourth_spender_anymore_obsessed = 'paramKey';
  static const String linkjoy_fourth_spender_anymore_mediocre = 'paramValue';
  static const String linkjoy_fourth_spender_anymore_gnome = 'paramType';

  LinkjoyFourthOily._internal();

  static LinkjoyFourthOily? _instance;

  static LinkjoyFourthOily get instance => _getInstance();

  factory LinkjoyFourthOily() => _getInstance();

  static LinkjoyFourthOily _getInstance() {
    return _instance ??= LinkjoyFourthOily._internal();
  }

  bool hasInit = false;
  bool hasUploadToken = false;

  void init(String key) {
    if (hasInit) {
      return;
    }

    if (key == "") {
      return;
    }

    try {
      OneSignal.initialize(key);
      if (kDebugMode) {
        OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
      }
      OneSignal.Notifications.clearAll();
      _initListener();
      hasInit = true;
      pushUserExternalId();
    } catch (e) {}
  }

  void _initListener() {
    OneSignal.User.pushSubscription.addObserver((stateChanges) {
      uploadToken();
    });

    OneSignal.User.addObserver((stateChanges) {});

    OneSignal.Notifications.addForegroundWillDisplayListener((event) {
      event.preventDefault();
    });

    OneSignal.Notifications.addClickListener((event) {
      OSNotification notification = event.notification;
      try {
        var actionUrl = notification.additionalData?["url"];
        if (!LinkjoyGnomeSister.isEmpty(actionUrl)) {
          LinkjoySteamyClamOily.pushNotificationClick(actionUrl);
          handlePushNotification(actionUrl!);
        }
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(10093, e, stack);
      }
      OneSignal.Notifications.clearAll();
    });
  }

  void pushUserExternalId() async {
    if (!hasInit) return;
    if (!LINKJOY.isInitDone) return;

    int uid = LINKJOY.user().uid;
    if (uid > 0) {
      OneSignal.login("$uid");
      uploadToken();
    }
  }

  void pushUserEmail() {
    OneSignal.User.addEmail("");
  }

  void pushUserRegion() {
    OneSignal.User.addTagWithKey("region", LINKJOY.user().regionCode);
  }

  void dispose() {
    OneSignal.Notifications.removeClickListener((event) {});
    OneSignal.Notifications.removeForegroundWillDisplayListener((event) {});
  }

  void logout() {}

  void handlePushNotification(String actionUrl) {
    if (!actionUrl.startsWith('http')) return;

    Uri actionUri = Uri.parse(actionUrl);
    Map queryParameters = _urlParameters(actionUri);

    if (actionUrl.contains(linkjoy_fourth_ancestor)) {
      String? goValue = _parseParameterValueFromKey(
        actionUri,
        linkjoy_fourth_spender_obsessed,
      );
      int cid = _parseIntByValue(goValue);
      if (cid > 0) {
        LinkjoyAncestorDivisionJeffriesUp.linkjoyCompletionWheatonSarcasm(cid);
      }
    } else if (actionUrl.contains(linkjoy_fourth_shanghai)) {
      Map<String, dynamic> qpMap = _parseAllKey2Value(queryParameters);
      if (LinkjoyGnomeSister.isEmptyMap(qpMap)) return;
      if (qpMap.containsKey(linkjoy_fourth_spender_obsessed)) {
        LINKJOY.toNamed(
          qpMap[linkjoy_fourth_spender_obsessed],
          arguments: qpMap,
        );
      }
    } else if (actionUrl.contains(linkjoy_fourth_forgot)) {
      LINKJOY.toNamed(LinkjoyGet.LinkjoyForgotLapDivision);
    } else {}
  }

  String? _parseParameterValueFromKey(Uri uri, String key) {
    Map urlParameters = _urlParameters(uri);
    if (urlParameters.containsKey(key)) {
      return uri.queryParameters[key];
    }
    return null;
  }

  Map _urlParameters(Uri uri) {
    Map queryParameters = uri.queryParameters;
    return queryParameters;
  }

  Map<String, dynamic> _parseAllKey2Value(Map queryParameters) {
    Map<String, dynamic> entry = HashMap();
    var entries = queryParameters.entries.iterator;
    while (entries.moveNext()) {
      var curr = entries.current;
      var currentKey = curr.key.toString();
      var currentValue = curr.value;
      entry[currentKey] = currentValue;
    }
    return entry;
  }

  int _parseIntByValue(String? value) {
    if (!LinkjoyGnomeSister.isEmpty(value)) {
      return LinkjoyGnomeSister.parseInt(value) ?? 0;
    }
    return 0;
  }

  Future<void> uploadToken() async {
    if (hasUploadToken) return;

    if (LINKJOY.linkjoyJog == null) return;

    var token = OneSignal.User.pushSubscription.token;

    if (token is! String || LinkjoyGnomeSister.isEmpty(token)) return;

    bool rsp = await LINKJOY.http.submit(1019, {"token": token});
    if (rsp) {
      hasUploadToken = true;
    }
  }
}
