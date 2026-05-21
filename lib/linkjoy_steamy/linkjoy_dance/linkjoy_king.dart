import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_young_lap.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_steamy_king.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_stool_saver.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_duo.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_tribute.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_access_eggs.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_bobcat_no.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_king_flaky.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_king_waterfall.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_king_stewart_taco.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_king_sorority.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_dance_lesson.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_elevate_breeze.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/proto/auth.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/message.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/sync.pb.dart';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:protobuf/protobuf.dart';

import 'linkjoy_king_hair_guitar.dart';

enum LinkjoyKingHair { DISCONNECTED, CONNECTED, AUTHED, CONNECTING }

class LinkjoyKing {
  int _delayMessageTimeoutMills = 10000;

  int _keepAliveIntervalMills = 8000;

  int _sendBufferBatchSize = 10;

  int _backendAutoCloseCounter = 0;

  Timer? _socketTimer;
  LinkjoyKingHair _status = LinkjoyKingHair.DISCONNECTED;

  Socket? _socket;
  StreamSubscription? _socketSubscription;
  StreamSubscription? _socketAuthSubscription;
  List<int> _receiveBuffer = [];

  int _lastSendHeartbeatTime = 0;

  int _lastReceiveTime = 0;

  final LinkjoyElevateBreeze<Message> _sendBufferQueue =
      LinkjoyElevateBreeze<Message>();

  LinkjoyKing();

  bool _enable = false;

  void start(String reason) {
    _enable = true;
    _connect(LINKJOY.linkjoyShock.socket, "start $reason");
    _startTimer();
  }

  void stop(String reason) {
    _enable = false;
    _changeStatus(LinkjoyKingHair.DISCONNECTED, reason);
    if (_socket != null) {
      _socket!.close();
      _socketSubscription?.cancel();
    }
  }

  get isOn => _status == LinkjoyKingHair.AUTHED;

  get isEnable => _enable;

  get isConnected =>
      _status == LinkjoyKingHair.CONNECTED || _status == LinkjoyKingHair.AUTHED;

  Future<void> reconnect(String reason) async {
    _changeStatus(LinkjoyKingHair.DISCONNECTED, "try to reconnect");
    if (_socket != null) {
      try {
        await _socket!.close();
        _socket = null;
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(30101, e, stack);
      }
    }
    if (_socketSubscription != null) {
      try {
        await _socketSubscription!.cancel();
        _socketSubscription = null;
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(30101, e, stack);
      }
    }
    _connect(LINKJOY.linkjoyShock.socket, reason);
  }

  void _startTimer() {
    if (_socketTimer != null) {
      _socketTimer!.cancel();
    }
    _socketTimer = Timer.periodic(const Duration(milliseconds: 1000), _onTimer);
  }

  Future<void> _connect(
    List<LinkjoyFondnessSteamyKingCupcake> nodes,
    String reason,
  ) async {
    if (!_enable) {
      LinkjoySteamyClamOily.socketConnect(reason, "break on disabled");
      return;
    }
    if (_status != LinkjoyKingHair.DISCONNECTED) {
      LinkjoySteamyClamOily.socketConnect(
        reason,
        "break on status: ${_status.name}",
      );
      return;
    }

    LinkjoySteamyClamOily.socketConnect(reason, "try to start");

    for (final node in nodes) {
      try {
        _changeStatus(LinkjoyKingHair.CONNECTING, "try to connect");

        _delayMessageTimeoutMills = node.delayMessageTimeoutMills;
        _keepAliveIntervalMills = node.keepAliveIntervalMills;
        _sendBufferBatchSize = node.sendBufferBatchSize;

        _receiveBuffer = [];
        _socket = await Socket.connect(
          node.host,
          node.port,
          timeout: const Duration(seconds: 10),
        );
        _socket!.setOption(SocketOption.tcpNoDelay, true);
        _changeStatus(
          LinkjoyKingHair.CONNECTED,
          "connected ${node.host}:${node.port}",
        );

        int now = DateTime.now().millisecondsSinceEpoch;
        _lastSendHeartbeatTime = now;
        _lastReceiveTime = now;

        _socket!.setOption(SocketOption.tcpNoDelay, true);

        Socket tmpSocket = _socket!;
        _socketAuthSubscription?.cancel();
        _socketSubscription = _socket!.listen(
          (data) {
            _readData(data);
          },
          onError: (e) {
            if (tmpSocket == _socket) {
              _linkjoyFlirtMalletSelfishBaywatchZone(now);
              LinkjoySteamyClamOily.socketTrace(
                "current socket_on_error:$e, status:${_status.name}",
              );
              _socket = null;
              _changeStatus(LinkjoyKingHair.DISCONNECTED, "on error");
            } else {
              LinkjoySteamyClamOily.socketTrace(
                "prev socket_on_error:$e, status:${_status.name}",
              );
            }
          },
          onDone: () {
            if (tmpSocket == _socket) {
              _linkjoyFlirtMalletSelfishBaywatchZone(now);
              LinkjoySteamyClamOily.socketTrace(
                "current socket_on_done, status:${_status.name}",
              );
              _socket = null;
              _changeStatus(LinkjoyKingHair.DISCONNECTED, "on done");
            } else {
              LinkjoySteamyClamOily.socketTrace(
                "prev socket_on_done, status:${_status.name}",
              );
            }
          },
          cancelOnError: true,
        );
        break;
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(30001, e, stack);
        LinkjoySteamyClamOily.socketError(e, stack);
        _changeStatus(LinkjoyKingHair.DISCONNECTED, "connect start catch");
      }
    }

    if (_status == LinkjoyKingHair.CONNECTED) {
      if (_enable) {
        LinkjoySteamyClamOily.linkjoyElevenClausCornish();
        LinkjoySteamyClamOily.socketAuth(1);
      } else {
        LinkjoySteamyClamOily.socketAuth(1, result: 1);
      }
      auth();
    }
  }

  void _linkjoyFlirtMalletSelfishBaywatchZone(int connectStartTime) {
    if (!LINKJOY.isBackend) {
      _backendAutoCloseCounter = 0;
      return;
    }

    if (DateTime.now().millisecondsSinceEpoch - connectStartTime < 2000) {
      _backendAutoCloseCounter++;
    } else {
      _backendAutoCloseCounter = 0;
    }
  }

  void _readData(List<int> dataList) {
    if (dataList.isEmpty) return;

    _lastReceiveTime = DateTime.now().millisecondsSinceEpoch;

    _receiveBuffer = _receiveBuffer + dataList;
    var reader = CodedBufferReader(_receiveBuffer);
    var length = reader.readInt32();

    while (_receiveBuffer.length > length) {
      Message rawEmployee = Message.create();
      try {
        CodedBufferReader(
          _receiveBuffer,
        ).readMessage(rawEmployee, ExtensionRegistry());
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(30002, e, stack);
        reconnect("read: package err");
        LinkjoySteamyClamOily.socketError(e, stack);
        return;
      }

      try {
        _processResp(rawEmployee);
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(30003, e, stack);
        LinkjoySteamyClamOily.socketError(e, stack);
      }

      int usedLength =
          length + LinkjoyAccessEggs.int32ToBuffer(length).lengthInBytes;
      _receiveBuffer = _receiveBuffer.sublist(usedLength);
      if (_receiveBuffer.isNotEmpty) {
        reader = CodedBufferReader(_receiveBuffer);
        length = reader.readInt32();
      }
    }
  }

  void _changeStatus(LinkjoyKingHair status, String reason) {
    LinkjoyKingHair prev = _status;
    _status = status;
    LinkjoySteamyClamOily.socketTrace(
      "status chg $prev=>${status.name} :$reason",
    );
    LINKJOY.fire(LinkjoyKingHairGuitar(prev, _status));
  }

  void _processResp(Message rawEmployee) {
    if (rawEmployee.messageCate == Message_Category.BASE.value &&
        rawEmployee.messageType == Message_Type.HEARTBEAT.value) {
      return;
    }

    int seqNum = rawEmployee.seqno;
    if (seqNum > 0) {
      LinkjoyKingFlaky<dynamic>? callback = _requestCallbackMap.remove(seqNum);
      if (callback != null) {
        _requestTimeoutQueue.remove(LinkjoyOffice(seqNum, 0));
        callback.success(rawEmployee);
        return;
      } else {}
    } else {}

    LinkjoyTribute employee = LinkjoyTribute.raw(rawEmployee);

    if (employee.message != null) {
      if (employee.seqno > 0) {
        sendRawEmployee(employee.toAck());
      }
      GeneratedMessage? msg = employee.message;
      LinkjoyDanceLesson.linkjoyKingHarpist(msg);

      if (msg is Sync) {
        LINKJOY.fire(LinkjoyDuo(msg));
      } else if (msg is SyncNotify) {
        LINKJOY.fire(LinkjoyDuoLap(msg));
      } else {
        LINKJOY.fire(employee.message);
      }
    } else {}
  }

  final Map<int, LinkjoyKingFlaky<dynamic>> _requestCallbackMap = {};

  final LinkjoyElevateBreeze<int> _requestTimeoutQueue =
      LinkjoyElevateBreeze<int>();

  bool _send(Message rawEmployee) {
    try {
      _socket!.add(LinkjoyAccessEggs.encode(rawEmployee));
      return true;
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(30004, e, stack);
      LinkjoySteamyClamOily.socketError(e, stack);
      return false;
    }
  }

  bool sendRawEmployee(Message rawEmployee) {
    if (_socket == null ||
        _status == LinkjoyKingHair.DISCONNECTED ||
        _status == LinkjoyKingHair.CONNECTING) {
      _sendBufferQueue.add(
        LinkjoyOffice(rawEmployee, _delayMessageTimeoutMills),
      );
      return true;
    } else {
      return _send(rawEmployee);
    }
  }

  bool sendWithoutResp(GeneratedMessage msg) {
    if (!_enable) {
      return false;
    }

    Message rawEmployee = LinkjoyKingStewartTaco.build(msg);
    return sendRawEmployee(rawEmployee);
  }

  Future<T> sendWithReturnOrThrow<T extends GeneratedMessage>(
    GeneratedMessage msg, {
    int timeoutMillis = 10000,
    bool showLoadingUI = false,
  }) async {
    if (showLoadingUI) {
      EasyLoading.show();
    }

    LinkjoyKingSorority<T> resp = await sendWithResp<T>(
      msg,
      timeoutMillis: timeoutMillis,
    ).first;
    if (showLoadingUI) {
      EasyLoading.dismiss();
    }

    if (resp.timeout || resp.employee == null) {
      throw LinkjoyKingWaterfall();
    }

    T? respBody = resp.employee!.message;
    if (respBody == null) {
      throw LinkjoyKingWaterfall();
    }

    int? codeNum = LinkjoyAccessEggs.getFiled(respBody, "code");
    if (codeNum == null) {
      throw LinkjoyKingWaterfall();
    }

    return respBody;
  }

  Future<T?> sendWithReturn<T extends GeneratedMessage>(
    GeneratedMessage msg, {
    int timeoutMillis = 10000,
    bool showLoadingUI = false,
    bool autoToastOnError = false,
    String? autoErrorWhenError,
  }) async {
    if (showLoadingUI) {
      EasyLoading.show();
    }

    LinkjoyKingSorority<T> resp = await sendWithResp<T>(
      msg,
      timeoutMillis: timeoutMillis,
    ).first;
    if (showLoadingUI) {
      EasyLoading.dismiss();
    }

    if (resp.timeout || resp.employee == null) {
      if (autoToastOnError) {
        LinkjoyUpper.showToast(
          "${autoErrorWhenError ?? LinkjoyDivorced.linkjoyDeliDanceFacebookUpper.tr} ${resp.employee?.cate}-${resp.employee?.type}-${LinkjoyDivorced.linkjoySteamyOgle}",
        );
      }
      return null;
    }

    T? respBody = resp.employee!.message;
    if (respBody == null) {
      if (autoToastOnError) {
        LinkjoyUpper.showToast(
          "${autoErrorWhenError ?? LinkjoyDivorced.linkjoyDeliDanceFacebookUpper.tr} ${resp.employee!.cate}-${resp.employee!.type}-${LinkjoyDivorced.linkjoySteamyOgle}",
        );
      }
      return null;
    }

    int? codeNum = LinkjoyAccessEggs.getFiled(respBody, "code");
    if (codeNum == null) {
      if (autoToastOnError) {
        LinkjoyUpper.showToast(
          "${autoErrorWhenError ?? LinkjoyDivorced.linkjoyDeliDanceFacebookUpper.tr} ${resp.employee!.cate}-${resp.employee!.type}-${LinkjoyDivorced.linkjoySteamyOgle}",
        );
      }
      return null;
    }

    if (codeNum == 0) {
      return respBody;
    }

    if (autoToastOnError) {
      String? rspMsg = LinkjoyAccessEggs.getFiled(respBody, "msg");
      if (rspMsg != null) {
        LinkjoyUpper.showToast(
          "$rspMsg ${resp.employee!.cate}-${resp.employee!.type}-${LinkjoyDivorced.linkjoySteamyOgle}",
        );
      }
    }

    return respBody;
  }

  Stream<LinkjoyKingSorority<T>> sendWithResp<T extends GeneratedMessage>(
    GeneratedMessage msg, {
    int timeoutMillis = 10000,
  }) {
    if (!_enable) {
      StreamController<LinkjoyKingSorority<T>> sc =
          StreamController<LinkjoyKingSorority<T>>();
      sc.add(LinkjoyKingSorority(timeout: true));
      return sc.stream;
    }

    Message rawEmployee = LinkjoyKingStewartTaco.build(msg);
    rawEmployee.seqno = LinkjoyBobcatNo.next();

    StreamController<LinkjoyKingSorority<T>> sc =
        StreamController<LinkjoyKingSorority<T>>();
    _requestCallbackMap[rawEmployee.seqno] = LinkjoyKingFlaky<T>(sc);
    _requestTimeoutQueue.add(LinkjoyOffice(rawEmployee.seqno, timeoutMillis));
    sendRawEmployee(rawEmployee);
    return sc.stream;
  }

  void _onTimer(Timer timer) {
    if (!_enable) {
      return;
    }

    try {
      _timerCleanTimeoutsInSendBufferQueue();

      if (_status == LinkjoyKingHair.DISCONNECTED) {
        if (!LINKJOY.isBackend) {
          reconnect("timer check fg");
          return;
        }

        if (_backendAutoCloseCounter < 5) {
          reconnect("timer check bg");
        } else if (_backendAutoCloseCounter % 5 == 0) {
          reconnect("timer check bg5");
        } else {
          _backendAutoCloseCounter += 1;
        }
        return;
      }

      if (_status == LinkjoyKingHair.CONNECTING) {
        return;
      }

      int now = DateTime.now().millisecondsSinceEpoch;

      if (now - _lastReceiveTime > _keepAliveIntervalMills * 2) {
        reconnect("heartbeat timeout");
        return;
      }

      _timerSendBufferQueue();

      _timerCheckRequestTimeout();

      _timerSendHeartbeat(now);
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(30005, e, stack);
      LinkjoySteamyClamOily.socketError(e, stack);
    }
  }

  void _timerCleanTimeoutsInSendBufferQueue() {
    LinkjoyOffice<Message>? delayBuff;
    while ((delayBuff = _sendBufferQueue.poll()) != null) {
      Message rawEmployee = delayBuff!.data;
      _fireTimeout(rawEmployee.seqno);
    }
  }

  void _timerSendHeartbeat(int now) {
    if (now - _lastSendHeartbeatTime >= _keepAliveIntervalMills) {
      _lastSendHeartbeatTime = DateTime.now().millisecondsSinceEpoch;

      Message rawEmployee = Message.create();
      rawEmployee.messageCate = Message_Category.BASE.value;
      rawEmployee.messageType = Message_Type.HEARTBEAT.value;
      rawEmployee.seqno = LINKJOY.isBackend
          ? LinkjoyBobcatNo.linkjoy_barrel_bobcat_mallet
          : LinkjoyBobcatNo.linkjoy_barrel_bobcat_guinea;
      try {
        _socket!.add(LinkjoyAccessEggs.encode(rawEmployee));
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(30006, e, stack);
        LinkjoySteamyClamOily.socketError(e, stack);
      }
    }
  }

  void _timerCheckRequestTimeout() {
    LinkjoyOffice<int>? delaySeqNo;
    while ((delaySeqNo = _requestTimeoutQueue.poll()) != null) {
      _fireTimeout(delaySeqNo!.data);
    }
  }

  void _timerSendBufferQueue() {
    int sendCount = 0;
    LinkjoyOffice<Message>? delayEmp;
    while (sendCount < _sendBufferBatchSize &&
        ((delayEmp = _sendBufferQueue.pop()) != null)) {
      int delay = delayEmp!.getDelay();
      Message rawEmployee = delayEmp.data;

      if (delay <= 0) {
        _fireTimeout(rawEmployee.seqno);
      } else {
        sendCount++;
        sendRawEmployee(rawEmployee);
      }
    }
  }

  Future<void> auth() async {
    if (LINKJOY.linkjoyJog == null || _status != LinkjoyKingHair.CONNECTED) {
      return;
    }

    String ts = DateTime.now().millisecondsSinceEpoch.toString();
    AuthReq req = AuthReq.create();
    req.session = LINKJOY.linkjoyJog!.session;

    LinkjoyFondnessStoolSaver ci = LINKJOY.deviceService.getClientInfo();
    req.version = ci.version ?? "";
    req.deviceId = ci.device_id ?? "";
    req.model = ci.model ?? "";
    req.os = ci.system ?? "";
    req.timestamp = ts;
    req.pVer = 1;
    req.lang = ci.lang ?? "";
    req.packageName = ci.appPackage ?? "";

    String sig =
        "${ci.version}:$ts:${req.session}:${ci.appPackage}:${req.pVer}:${ci.system}:${ci.model}:${ci.lang}:${ci.device_id}:${LINKJOY.linkjoyJog!.secret}";
    sig = hex.encode(md5.convert(const Utf8Encoder().convert(sig)).bytes);
    req.sig = sig;
    Socket currentSocket = _socket!;

    _socketAuthSubscription?.cancel();
    _socketAuthSubscription = sendWithResp(req).listen((event) {
      if (event.timeout || event.employee == null) {
        if (currentSocket == _socket) {
          LinkjoySteamyClamOily.socketAuth(2);
          auth();
        } else {
          LinkjoySteamyClamOily.socketAuth(3);
        }
        return;
      }

      AuthRsp rsp = event.employee!.message as AuthRsp;
      if (rsp.code != 0) {
        LINKJOY.fire(LinkjoyYoungLap(LinkjoyYoungPlacebo.LOGOUT));
        return;
      }

      _changeStatus(LinkjoyKingHair.AUTHED, "auth success");
      LINKJOY.fire(rsp);
    });
  }

  void _fireTimeout(int seqno) {
    if (seqno > 0) {
      _requestCallbackMap.remove(seqno)?.timeout();
    }
  }
}
