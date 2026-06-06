import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_young_lap.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_jog.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_peanuts_sorority.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_dance_lesson.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_variety.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_armpit_smear.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_deli.pb.dart';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as Path;

class LinkjoyPeanuts {
  static final LinkjoyVariety _aes = LinkjoyVariety.create(
    LinkjoyDivorced.linkjoyAccessVarietyObsessed,
  );
  static const linkjoy_mole_cab_patent = 8;

  late String? api;
  late Duration timeout;
  late String userAgent;

  LinkjoyArmpitSmear<int, GetConnect> pool = LinkjoyArmpitSmear(3);

  LinkjoyPeanuts(this.api, this.userAgent, this.timeout);

  GetConnect _connect(Duration? timeout) {
    timeout ??= this.timeout;
    int key = timeout.inSeconds;

    GetConnect? connect = pool.get(key);
    if (connect != null) {
      return connect;
    }

    connect = GetConnect(
      userAgent: userAgent,
      timeout: timeout,
      followRedirects: true,
      maxRedirects: 5,
      sendUserAgent: true,
      maxAuthRetries: 1,
      allowAutoSignedCert: false,
      withCredentials: false,
    );

    GetConnect? prev = pool.put(key, connect);
    if (prev != null) {
      const Duration(seconds: 90).delay(() {
        prev.dispose();
      });
    }

    return connect;
  }

  factory LinkjoyPeanuts.create(
    String api,
    String userAgent, {
    Duration timeout = const Duration(seconds: linkjoy_mole_cab_patent),
  }) {
    return LinkjoyPeanuts(api, userAgent, timeout);
  }

  Future<bool> submit(
    int apiId,
    Map<String, dynamic>? params, {
    bool showLoadingUI = false,
    bool autoToastOnError = false,
    Duration? timeout,
  }) async {
    bool? ret = await _rest<bool>(
      apiId,
      params,
      (p) {
        return true;
      },
      showLoadingUI: showLoadingUI,
      autoToastOnError: autoToastOnError,
      timeout: timeout,
    );

    if (ret == null) {
      return false;
    }
    return ret;
  }

  Future<R?> rest<R>(
    int apiId,
    Map<String, dynamic>? params,
    R Function(dynamic) decoder, {
    bool showLoadingUI = false,
    bool autoToastOnError = false,
    Duration? timeout,
    bool validSession = false,
  }) async {
    return _rest<R>(
      apiId,
      params,
      (p) {
        if (p == null) {
          return null;
        }
        return decoder.call(p);
      },
      showLoadingUI: showLoadingUI,
      autoToastOnError: autoToastOnError,
      timeout: timeout,
    );
  }

  Future<R?> _rest<R>(
    int apiId,
    Map<String, dynamic>? params,
    R? Function(dynamic) decoder, {
    bool showLoadingUI = false,
    bool autoToastOnError = false,
    Duration? timeout,
  }) async {
    int startTime = DateTime.now().millisecondsSinceEpoch;
    try {
      LinkjoyPeanutsSorority resp = await _req(
        apiId,
        params,
        showLoadingUI: showLoadingUI,
        autoToastOnError: autoToastOnError,
        startTime: startTime,
        timeout: timeout,
      );
      if (resp.hasError) {
        return null;
      }

      linkjoyCircusPervert(
        apiId.toString(),
        startTime: startTime,
        resultCode: resp.httpCode,
        decryptionTime: resp.decryptionTime,
      );

      if (resp.isSessionInvalid) {
        LINKJOY.fire(LinkjoyYoungLap(LinkjoyYoungPlacebo.LOGOUT));
        return null;
      }

      if (resp.isBlockRedirect) {
        if (resp.data != null && resp.data is String) {
          if (resp.msg != null) {
            LinkjoyUISocially.linkjoyNumb(
              resp.msg!,
              onConfirm: () => LINKJOY.goto(resp.data),
            );
          } else {
            LINKJOY.goto(resp.data);
          }
        }
        return null;
      }

      if (!resp.isSuccess) {
        return null;
      }

      return decoder.call(resp.data);
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(20001, e, stack);

      linkjoyCircusPervert(
        apiId.toString(),
        startTime: startTime,
        e: e,
        s: stack,
      );
      return null;
    }
  }

  Future<LinkjoyPeanutsSorority> req<R>(
    int apiId,
    Map<String, dynamic>? params, {
    bool showLoadingUI = false,
    bool autoToastOnError = false,
    Duration? timeout,
  }) async {
    int startTime = DateTime.now().millisecondsSinceEpoch;
    try {
      LinkjoyPeanutsSorority resp = await _req(
        apiId,
        params,
        showLoadingUI: showLoadingUI,
        autoToastOnError: autoToastOnError,
        startTime: startTime,
        timeout: timeout,
      );
      if (resp.hasError) {
        return LinkjoyPeanutsSorority(false, 500);
      }

      linkjoyCircusPervert(
        apiId.toString(),
        startTime: startTime,
        resultCode: resp.httpCode,
        decryptionTime: resp.decryptionTime,
      );

      if (resp.isSessionInvalid) {
        LINKJOY.fire(LinkjoyYoungLap(LinkjoyYoungPlacebo.LOGOUT));
        return LinkjoyPeanutsSorority(true, 401);
      }

      return resp;
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(20011, e, stack);

      linkjoyCircusPervert(
        apiId.toString(),
        startTime: startTime,
        e: e,
        s: stack,
      );
      return LinkjoyPeanutsSorority(false, 500);
    }
  }

  Future<LinkjoyPeanutsSorority> _req(
    int apiId,
    Map<String, dynamic>? params, {
    bool showLoadingUI = false,
    bool autoToastOnError = false,
    Duration? timeout,
    int startTime = 0,
  }) async {
    try {
      if (LINKJOY.isInitDone &&
          LINKJOY.linkjoyShock.httpConfig.socketApis.contains(apiId)) {
        LinkjoyPeanutsSorority? rsp = await _socket(
          apiId,
          params,
          showLoadingUI: showLoadingUI,
          timeout: timeout,
          startTime: startTime,
        );
        if (rsp != null) {
          return rsp;
        }
      }

      Map<String, dynamic> form = _sign(apiId, params);
      String reqJson = json.encode(form);
      LinkjoyDanceLesson.linkjoyPeanutsClearly(apiId, params);

      String reqBody = _aes.encrypt(reqJson);

      Response<dynamic> resp = await post(
        api,
        reqBody,
        showLoadingUI: showLoadingUI,
        timeout: timeout,
      );

      if (resp.hasError) {
        if (autoToastOnError) {
          showToast(
            apiId,
            resp.statusCode,
            "${LinkjoyDivorced.linkjoyDeliDanceFacebookUpper.tr} \n1-$apiId-${LinkjoyDivorced.linkjoySteamyOgle}-${resp.statusCode}-${resp.statusText}",
          );
        }
        LinkjoyDanceLesson.linkjoyPeanutsLookout(apiId, "${resp.statusText}");
        return LinkjoyPeanutsSorority(false, -1);
      }

      if (!resp.isOk) {
        if (autoToastOnError) {
          showToast(
            apiId,
            resp.statusCode,
            "${LinkjoyDivorced.linkjoyDeliDanceFacebookUpper.tr} \n2-$apiId-${LinkjoyDivorced.linkjoySteamyOgle}-${resp.statusCode}-${resp.statusText}",
          );
        }
        LinkjoyDanceLesson.linkjoyPeanutsLookout(apiId, "${resp.statusText}");
        return LinkjoyPeanutsSorority(
          false,
          resp.statusCode != null ? resp.statusCode! : -1,
        );
      }

      int decryptionTime = 0;

      Map<String, dynamic> bodyMap;
      dynamic body = resp.body;
      if (body == null) {
        if (autoToastOnError) {
          showToast(
            apiId,
            resp.statusCode,
            "${LinkjoyDivorced.linkjoyDeliDanceFacebookUpper.tr} \n3-$apiId-${LinkjoyDivorced.linkjoySteamyOgle}",
          );
        }
        LinkjoyDanceLesson.linkjoyPeanutsLookout(apiId, "null");
        return LinkjoyPeanutsSorority(
          false,
          resp.statusCode != null ? resp.statusCode! : -1,
        );
      } else if (body is Map) {
        bodyMap = body.cast<String, dynamic>();
      } else {
        int startDecryptionTime = DateTime.now().millisecondsSinceEpoch;
        String jsonString = _aes.decrypt(body as String);
        decryptionTime =
            DateTime.now().millisecondsSinceEpoch - startDecryptionTime;
        bodyMap = json.decode(jsonString);
      }

      LinkjoyPeanutsSorority rsp = LinkjoyPeanutsSorority.parse(bodyMap);
      if (autoToastOnError &&
          !rsp.isSuccess &&
          rsp.msg != null &&
          rsp.msg!.isNotEmpty) {
        showToast(apiId, rsp.code, "${rsp.msg} \n4-${rsp.code}-$apiId");
      }

      rsp.decryptionTime = decryptionTime;
      LinkjoyDanceLesson.linkjoyPeanutsLookoutTuck(apiId, rsp);
      return rsp;
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(20002, e, stack);
      if (autoToastOnError) {
        showToast(
          apiId,
          -1,
          "${LinkjoyDivorced.linkjoyDeliDanceFacebookUpper.tr} \n4-$apiId-${LinkjoyDivorced.linkjoySteamyOgle}",
        );
      }

      linkjoyCircusPervert(
        apiId.toString(),
        startTime: startTime,
        e: e,
        s: stack,
      );

      return LinkjoyPeanutsSorority(false, -1);
    }
  }

  void showToast(int apiId, int? errorCode, message) {
    if ([2010, 2011, 2014].contains(apiId)) {
      LinkjoyUpper.showError(message);
    } else {
      LinkjoyUpper.showToast(message);
    }
  }

  Future<Response<T>> post<T>(
    String? url,
    dynamic body, {
    String? contentType,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Decoder<T>? decoder,
    Progress? uploadProgress,
    bool showLoadingUI = false,
    Duration? timeout,
  }) async {
    if (showLoadingUI) {
      EasyLoading.show();
    }

    try {
      return await _connect(timeout).post<T>(
        url,
        body,
        contentType: contentType,
        headers: headers,
        query: query,
        decoder: decoder,
        uploadProgress: uploadProgress,
      );
    } finally {
      if (showLoadingUI) {
        EasyLoading.dismiss(animation: false);
      }
    }
  }

  Map<String, dynamic> _sign(int apiId, Map<String, dynamic>? params) {
    Map<String, dynamic> form = {};

    LinkjoyJog? linkjoyJog = LINKJOY.linkjoyJog;
    String signKey = linkjoyJog == null
        ? LinkjoyDivorced.linkjoyMoleQuintoObsessed
        : linkjoyJog.secret;
    String? sessionId = linkjoyJog?.session;

    if (params != null) {
      form.addAll(params);
    }

    form['id__'] = apiId;
    form['ts'] = DateTime.now().millisecondsSinceEpoch;
    if (sessionId != null) {
      form['session'] = sessionId!;
    }

    List<String> keys = <String>[];
    keys.addAll(form.keys);
    keys.sort((a, b) => b.compareTo(a));

    var buffer = StringBuffer();
    for (final elem in keys) {
      dynamic val = form[elem];
      String str = '';
      if (val is String) {
        str = val;
      } else {
        str = val.toString();
      }
      buffer.write(str);
      buffer.write(":");
    }
    buffer.write(signKey);
    form['sig'] = hex.encode(
      md5.convert(const Utf8Encoder().convert(buffer.toString())).bytes,
    );
    return form;
  }

  Future<File?> cache(
    String url, {
    String method = 'get',
    Map<String, dynamic>? header,
  }) async {
    String? filePath;
    try {
      Uri uri = Uri.parse(url);
      filePath = Path.join(
        LINKJOY.filePath,
        md5.convert(utf8.encode(url)).toString(),
      );
      String ext = Path.extension(uri.path);
      if (ext.isNotEmpty) {
        filePath = filePath + ext;
      }

      File file = File(filePath);

      if (await file.exists()) {
        return file;
      }

      if (await download(url, file.path)) {
        return file;
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(20003, e, stack);

      linkjoyCircusPervert(url, e: e, s: stack);
    }

    return null;
  }

  Future<bool> download(
    String url,
    String output, {
    String method = 'get',
    Duration timeout = const Duration(seconds: 30),
    Map<String, dynamic>? header,
  }) async {
    int startTime = DateTime.now().millisecondsSinceEpoch;
    final httpClient = HttpClient();
    httpClient.connectionTimeout = timeout;

    try {
      HttpClientRequest request;
      switch (method.toLowerCase()) {
        case 'get':
          request = await httpClient.getUrl(Uri.parse(url));
          break;
        case 'post':
          request = await httpClient.postUrl(Uri.parse(url));
          break;
        default:
          request = await httpClient.getUrl(Uri.parse(url));
          break;
      }

      header?.forEach((key, value) => request.headers.add(key, value));

      final HttpClientResponse response = await request.close();

      File tmpFile = File(
        "${output}_${DateTime.now().millisecond}_${Random().nextInt(100000)}",
      );
      if (await _consolidateHttpClientResponseBytes(response, tmpFile)) {
        await tmpFile.rename(output);
      }

      linkjoyCircusPervert(
        url,
        resultCode: response.statusCode,
        startTime: startTime,
      );
      return true;
    } catch (error, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(20004, e, stack);

      linkjoyCircusPervert(url, startTime: startTime, e: e, s: stack);
      return false;
    } finally {
      httpClient.close(force: true);
    }
  }

  Future<bool> _consolidateHttpClientResponseBytes(
    HttpClientResponse response,
    File output,
  ) {
    final Completer<bool> completer = Completer<bool>.sync();

    IOSink sink = output.openWrite();

    late final StreamSubscription<List<int>> subscription;
    subscription = response.listen(
      (List<int> chunk) {
        try {
          sink.add(chunk);
        } catch (error, stackTrace) {
          LinkjoySteamyClamOily.linkjoyInvoiceCircus(20005, e, stackTrace);
          linkjoyCircusPervert(output.uri.toString(), e: error, s: stackTrace);
          completer.completeError(error, stackTrace);
          subscription.cancel();
          return;
        }
      },
      onDone: () async {
        await sink.flush();
        await sink.close();
        completer.complete(true);
      },
      onError: completer.completeError,
      cancelOnError: true,
    );

    return completer.future;
  }

  void linkjoyCircusPervert(
    String url, {
    int? startTime,
    int resultCode = 200,
    int decryptionTime = 0,
    Object? e,
    StackTrace? s,
  }) {
    int durationTime = 0;
    if (startTime != null) {
      durationTime = DateTime.now().millisecondsSinceEpoch - startTime;
    }
    LinkjoySteamyClamOily.linkjoyPeanutsLookout(
      url,
      resultCode: resultCode,
      decryptionTime: decryptionTime,
      durationTime: durationTime,
      e: e,
      s: s,
    );
  }

  void dispose() {
    Future.delayed(const Duration(seconds: linkjoy_mole_cab_patent * 2), () {
      var tmp = pool.clear();
      for (var conn in tmp.values) {
        conn.dispose();
      }
    });
  }

  Future<LinkjoyPeanutsSorority?> _socket(
    int apiId,
    Map<String, dynamic>? params, {
    bool showLoadingUI = false,
    Duration? timeout,
    int startTime = 0,
  }) async {
    try {
      if (!LINKJOY.socketManager.isConnected) {
        return null;
      }

      HttpReq req = HttpReq.create()
        ..api = apiId
        ..params = jsonEncode(params);

      HttpRsp? rsp = await LINKJOY.socketManager.sendWithReturn(
        req,
        timeoutMillis: timeout == null
            ? linkjoy_mole_cab_patent * 1000
            : timeout.inMilliseconds,
        showLoadingUI: true,
      );
      if (rsp == null) {
        return null;
      }

      if (rsp.code == 0) {
        Map<String, dynamic> bodyMap = json.decode(rsp.result);
        LinkjoyPeanutsSorority ret = LinkjoyPeanutsSorority.parse(bodyMap);
        return ret;
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(209904, e, stack);
    }

    return null;
  }
}
