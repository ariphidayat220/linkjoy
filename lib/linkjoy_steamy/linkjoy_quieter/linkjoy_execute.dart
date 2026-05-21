import 'dart:async';
import 'dart:collection';
import 'dart:io';

import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_division_paw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkjoySpitNarrateFrat {
  String? uniq;
}

class LinkjoySpitNarrate extends StatefulWidget {
  late final InAppWebViewSettings settings;

  PullToRefreshController? pullToRefreshController;

  late final void Function(InAppWebViewController controller, String? title)?
  onTitleChanged;
  late void Function() onNativeClose;

  late final void Function(bool isSuccess, int duration, String errorMessage)?
  onLoadResult;

  late String url;

  late String? uniq;

  late String? body;
  late String? miniAppId;

  final bool pullToRefresh;

  final bool miniCardMode;

  final bool thirdPage;

  final String? userAgent;

  LinkjoySpitNarrate({
    super.key,
    required this.url,
    this.body,
    this.miniAppId,
    this.onTitleChanged,
    Function()? onNativeClose,
    this.onLoadResult,
    this.pullToRefresh = false,
    this.miniCardMode = false,
    this.thirdPage = false,
    this.userAgent,
    this.uniq,
  }) {
    settings = InAppWebViewSettings(
      allowsLinkPreview: false,
      isInspectable: kDebugMode,
      javaScriptEnabled: true,
      supportMultipleWindows: true,
      useShouldInterceptRequest: true,
      mediaPlaybackRequiresUserGesture: false,
      allowsInlineMediaPlayback: true,
      useShouldOverrideUrlLoading: true,
      iframeAllow: "camera; microphone",
      disableLongPressContextMenuOnLinks: true,
      disableContextMenu: true,
      disableHorizontalScroll: false,
      disableVerticalScroll: false,
      useOnLoadResource: true,
      mixedContentMode: MixedContentMode.MIXED_CONTENT_ALWAYS_ALLOW,
      overScrollMode: OverScrollMode.NEVER,
      userAgent: userAgent ?? LINKJOY.deviceService.getClientInfo().userAgent,
      allowFileAccessFromFileURLs: true,
      allowUniversalAccessFromFileURLs: true,
      iframeAllowFullscreen: false,
      resourceCustomSchemes: ["app"],
      useHybridComposition: true,
    );

    this.onNativeClose = onNativeClose ?? Get.back;
  }

  @override
  State<LinkjoySpitNarrate> createState() => _LinkjoySpitNarrateStatus();
}

class _LinkjoySpitNarrateStatus extends State<LinkjoySpitNarrate> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;

  StreamSubscription? reloadStreamSubscription;

  PullToRefreshController? pullToRefreshController;

  bool onLoadStopInvoked = false;
  late int _startTime;

  late WebUri url;

  @override
  void initState() {
    super.initState();

    url = WebUri(widget.url);
    _startTime = DateTime.now().millisecondsSinceEpoch;

    if (widget.pullToRefresh) {
      pullToRefreshController = PullToRefreshController(
        settings: PullToRefreshSettings(color: Colors.blue),
        onRefresh: () {
          onRefresh();
        },
      );
    }

    reloadStreamSubscription = LINKJOY.listen<LinkjoySpitNarrateFrat>((event) {
      if (event.uniq == null ||
          event.uniq == widget.uniq ||
          event.uniq == widget.url) {
        onRefresh();
      }
    });
  }

  @override
  void dispose() {
    reloadStreamSubscription?.cancel();
    super.dispose();
  }

  Future<void> onRefresh() async {
    url = WebUri(
      "${widget.url}${widget.url.contains("?") ? "&" : "?"}_r=${DateTime.now().millisecondsSinceEpoch}",
    );
    onLoadStopInvoked = false;
    if (widget.body != null) {
      webViewController?.loadData(
        baseUrl: url,
        mimeType: 'text/html',
        encoding: 'utf-8',
        data: widget.body!,
      );
    } else {
      webViewController?.reload();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.body != null) {
      return InAppWebView(
        key: webViewKey,
        initialData: InAppWebViewInitialData(
          baseUrl: url,
          mimeType: 'text/html',
          encoding: 'utf-8',
          data: widget.body!,
        ),
        initialUserScripts: UnmodifiableListView<UserScript>([]),
        initialSettings: widget.settings,
        pullToRefreshController: widget.pullToRefreshController,
        onWebViewCreated: onWebViewCreated,
        onLoadStart: onLoadStart,
        onPermissionRequest: onPermissionRequest,
        shouldOverrideUrlLoading: shouldOverrideUrlLoading,
        onLoadStop: onLoadStop,
        onReceivedError: onReceivedError,
        onProgressChanged: onProgressChanged,
        onUpdateVisitedHistory: onUpdateVisitedHistory,
        onConsoleMessage: onConsoleMessage,
        onLoadResource: onLoadResource,
        onTitleChanged: widget.onTitleChanged,
        shouldInterceptRequest: (controller, request) async {
          Uri uri = request.url;
          if (uri.scheme == "file") {
            String filePath = uri.toFilePath();
            File file = File(filePath);

            if (await file.exists()) {
              String mimeType = _getMimeType(filePath);
              return WebResourceResponse(
                contentType: mimeType,
                data: await file.readAsBytes(),
              );
            } else {}
          }
          return null;
        },
        onLoadResourceWithCustomScheme: (controller, request) async {
          if (request.url.scheme == "app") {
            try {
              String asset =
                  "assets/${request.url.toString().replaceFirst("app://", "", 0)}";
              final bytes = await rootBundle.load(asset);
              final response = CustomSchemeResponse(
                data: bytes.buffer.asUint8List(),
                contentType: _getMimeType(asset),
                contentEncoding: "utf-8",
              );
              return response;
            } catch (e, stack) {
              LinkjoySteamyClamOily.linkjoyInvoiceCircus(13104, e, stack);
            }
          }
          return null;
        },
      );
    } else {
      return InAppWebView(
        key: webViewKey,
        initialUrlRequest: URLRequest(url: url),
        initialUserScripts: UnmodifiableListView<UserScript>([]),
        initialSettings: widget.settings,
        pullToRefreshController: widget.pullToRefreshController,
        onWebViewCreated: onWebViewCreated,
        onLoadStart: onLoadStart,
        onPermissionRequest: onPermissionRequest,
        shouldOverrideUrlLoading: shouldOverrideUrlLoading,
        onLoadStop: onLoadStop,
        onReceivedError: onReceivedError,
        onProgressChanged: onProgressChanged,
        onUpdateVisitedHistory: onUpdateVisitedHistory,
        onConsoleMessage: onConsoleMessage,
        onLoadResource: onLoadResource,
        onTitleChanged: widget.onTitleChanged,
      );
    }
  }

  String _getMimeType(String filePath) {
    if (filePath.endsWith('.jpg') || filePath.endsWith('.jpeg'))
      return 'image/jpeg';
    if (filePath.endsWith('.png')) return 'image/png';
    if (filePath.endsWith('.mp3')) return 'audio/mpeg';
    if (filePath.endsWith('.mp4')) return 'video/mp4';
    if (filePath.endsWith('.svga') || filePath.endsWith('.svg'))
      return 'image/svg+xml';
    if (filePath.endsWith('.html')) return 'text/html';
    if (filePath.endsWith('.js')) return 'application/javascript';
    if (filePath.endsWith('.css')) return 'text/css';
    if (filePath.endsWith('.json')) return 'application/json';
    return 'application/octet-stream';
  }

  void onWebViewCreated(controller) async {
    webViewController = controller;

    webViewController?.addJavaScriptHandler(
      handlerName: 'native_close',
      callback: (args) {
        widget.onNativeClose();
      },
    );
    webViewController?.addJavaScriptHandler(
      handlerName: 'goto',
      callback: (args) {
        String uri = args[0];
        if (uri.startsWith("/#/")) {
          if (widget.miniAppId != null && widget.url.startsWith("file://")) {
            uri = "m://${widget.miniAppId}$uri";
          } else {
            uri = linkjoySpenderPeanutsTournament(widget.url) + uri;
          }
        }
        LINKJOY.goto(uri);
      },
    );
    webViewController?.addJavaScriptHandler(
      handlerName: 'toast',
      callback: (args) {
        LinkjoyUpper.showToast(args[0]);
      },
    );
    webViewController?.addJavaScriptHandler(
      handlerName: 'utc8help',
      callback: (args) {
        LinkjoyUISocially.linkjoyMarketingOrganCountCarbon();
      },
    );

    if (!widget.thirdPage) {
      webViewController?.addJavaScriptHandler(
        handlerName: 'auth',
        callback: (args) async {
          Map<String, dynamic> auth = LINKJOY.linkjoyJog!.toJson();
          auth["ver"] = LinkjoyDivorced.linkjoySteamyOgle;
          auth["api"] = LinkjoyDivorced.linkjoyFollowerHawk;
          auth["pkg"] = LinkjoyDivorced.linkjoySterilizeLenny;
          auth["ios"] = Platform.isIOS;
          auth["aes"] = LinkjoyDivorced.linkjoyAccessVarietyObsessed;

          return auth;
        },
      );

      webViewController?.addJavaScriptHandler(
        handlerName: 'rest',
        callback: (args) {
          List<dynamic> list = args[0];
          int? appId = LinkjoyGnomeSister.parseInt(list[0]);
          if (appId == null) {
            return {"code": "9010"};
          }
          Map<String, dynamic> params;
          bool showLoadingUI = true;
          bool autoToastOnError = true;

          if (list.length > 1) {
            params = list[1] as Map<String, dynamic>;
          } else {
            params = {};
          }

          if (list.length > 2) {
            showLoadingUI = LinkjoyGnomeSister.parseBool(list[2]) ?? true;
          }
          if (list.length > 3) {
            autoToastOnError = LinkjoyGnomeSister.parseBool(list[3]) ?? true;
          }

          return LINKJOY.http.rest(
            appId,
            params,
            (p0) => p0,
            showLoadingUI: showLoadingUI,
            autoToastOnError: autoToastOnError,
          );
        },
      );

      webViewController?.addJavaScriptHandler(
        handlerName: 'req',
        callback: (args) {
          List<dynamic> list = args[0];
          int? appId = LinkjoyGnomeSister.parseInt(list[0]);
          if (appId == null) {
            return {"code": "9010"};
          }
          Map<String, dynamic> params;
          bool showLoadingUI = true;
          bool autoToastOnError = true;

          if (list.length > 1) {
            params = list[1] as Map<String, dynamic>;
          } else {
            params = {};
          }

          if (list.length > 2) {
            showLoadingUI = LinkjoyGnomeSister.parseBool(list[2]) ?? true;
          }
          if (list.length > 3) {
            autoToastOnError = LinkjoyGnomeSister.parseBool(list[3]) ?? true;
          }

          return LINKJOY.http.req(
            appId,
            params,
            showLoadingUI: showLoadingUI,
            autoToastOnError: autoToastOnError,
          );
        },
      );

      webViewController?.addJavaScriptHandler(
        handlerName: 'qa',
        callback: (args) {
          LinkjoyAncestorDivisionJeffriesUp.linkjoyCanadaSailor();
        },
      );

      webViewController?.addJavaScriptHandler(
        handlerName: 'reload',
        callback: (args) {
          String? url;
          if (args.isNotEmpty) {
            url = args[0];
          }
          LINKJOY.fire(LinkjoySpitNarrateFrat()..uniq = url);
        },
      );

      webViewController?.addJavaScriptHandler(
        handlerName: 'share',
        callback: (args) async {
          String content = args[0];
          ShareResult result = await SharePlus.instance.share(
            ShareParams(text: content),
          );
          return {"succ": result.status == ShareResultStatus.success ? 1 : 0};
        },
      );

      webViewController?.addJavaScriptHandler(
        handlerName: 'save_pic',
        callback: (args) {
          String imgBase64 = args[0];
          return {"succ": "1"};
        },
      );
    }
  }

  void onLoadStart(controller, url) async {
    _startTime = DateTime.now().millisecondsSinceEpoch;
  }

  Future<PermissionResponse> onPermissionRequest(controller, request) async {
    return PermissionResponse(
      resources: request.resources,
      action: PermissionResponseAction.GRANT,
    );
  }

  Future<NavigationActionPolicy> shouldOverrideUrlLoading(
    controller,
    navigationAction,
  ) async {
    var uri = navigationAction.request.url!;

    List<String> webViewInAppSchemeList = [
      "http",
      "https",
      "file",
      "chrome",
      "data",
      "javascript",
      "about",
    ];

    if (!LinkjoyGnomeSister.isEmpty(
      LINKJOY.linkjoyShock.webViewInAppSchemeList(),
    )) {
      webViewInAppSchemeList = LINKJOY.linkjoyShock.webViewInAppSchemeList();
    }

    if (!webViewInAppSchemeList.contains(uri.scheme)) {
      try {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(20010, e, stack);
      }
      return NavigationActionPolicy.CANCEL;
    }

    return NavigationActionPolicy.ALLOW;
  }

  void onLoadStop(controller, url) async {
    if (onLoadStopInvoked) {
      return;
    }

    onLoadStopInvoked = true;
    widget.pullToRefreshController?.endRefreshing();
    String js = '''
        window.WebViewJavascriptBridge=window.flutter_inappwebview;
        window.WebViewJavascriptBridge.init = function(){};
        document.dispatchEvent(new Event('WebViewJavascriptBridgeReady'));
        ''';
    controller.evaluateJavascript(source: js);

    int durationTime =
        (DateTime.now().millisecondsSinceEpoch - _startTime) ~/ 1000;
    if (widget.onLoadResult != null) {
      widget.onLoadResult!(true, durationTime, "");
    }
  }

  void onReceivedError(controller, request, error) {
    LinkjoySteamyClamOily.linkjoyExclusiveCircus("webview err: $error");
    widget.pullToRefreshController?.endRefreshing();

    int durationTime =
        (DateTime.now().millisecondsSinceEpoch - _startTime) ~/ 1000;
    if (widget.onLoadResult != null) {
      widget.onLoadResult!(false, durationTime, error.toString());
    }
  }

  void onProgressChanged(controller, progress) {
    if (progress == 100) {
      widget.pullToRefreshController?.endRefreshing();
    }
  }

  void onUpdateVisitedHistory(controller, url, isReload) {}

  Future<void> onConsoleMessage(controller, consoleMessage) async {
    InAppWebViewController c = controller;
    WebUri? url = await c.getUrl();
  }

  void onLoadResource(
    InAppWebViewController controller,
    LoadedResource resource,
  ) {}

  String linkjoySpenderPeanutsTournament(String url) {
    int protocolEndIndex = url.indexOf('://');
    protocolEndIndex += 3;

    int endIndex = url.indexOf('/', protocolEndIndex);

    if (endIndex == -1) {
      endIndex = url.indexOf('?');
    }

    if (endIndex == -1) {
      return url;
    }

    return url.substring(0, endIndex);
  }
}
