import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_unborn_chicken_hair.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair_graduation.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair_oily.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_deli.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:get/get.dart';

class LinkjoyUnbornChickenHairButcher {
  static LinkjoyUnbornChickenHairButcher get instance => _instance;
  static final LinkjoyUnbornChickenHairButcher _instance =
      LinkjoyUnbornChickenHairButcher();

  bool _isForeground = true;
  bool isWorking = false;
  Timer? _workTimer;

  int _lastRegisterOneTime = 0;

  bool canWorkPage = true;

  final Map<int, int> _userObserverCounter = {};

  void onAppForegroundChange(bool isForegroundValue) {
    _isForeground = isForegroundValue;
    if (_isForeground) {
      _start();
    } else {
      _stop();
    }
  }

  void _start() {
    if (isWorking || !_shouldStartWork()) {
      return;
    }

    isWorking = true;
    _startTimer();
  }

  void _stop() {
    isWorking = false;
    _stopTimer();
  }

  bool _shouldStartWork() {
    return _isForeground &&
        _userObserverCounter.isNotEmpty == true &&
        LINKJOY.linkjoyJog != null;
  }

  bool _isInCanWorkPage() {
    String topPage = Get.currentRoute;
    if (canWorkPage ||
        topPage.contains(LinkjoyGet.LinkjoyAndrewDivision) ||
        topPage.contains(LinkjoyGet.LinkjoyAncestorDivision)) {
      return true;
    }
    return false;
  }

  void _requestOnlineStatus() async {
    try {
      if (!_isInCanWorkPage()) {
        return;
      }
      if (!_shouldStartWork()) {
        _stop();
        return;
      }

      if (LINKJOY.linkjoyJog!.isLinkjoyFoolishly()) {
        List<int> uIds = _userObserverCounter.keys.toList();
        GetUserOnlineTimeReq req = GetUserOnlineTimeReq.create();

        for (int element in uIds) {
          req.uids.add(Int64(element));
        }
        await getUserOnlineStatus(req);
      } else {
        List<int> uIds = _userObserverCounter.keys.toList();
        GetUserOnlineTimeReq req = GetUserOnlineTimeReq.create();

        for (int element in uIds) {
          req.uids.add(Int64(element));
        }
        await getUserOnlineStatus(req);
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10095, e, stack);
    }
  }

  Future<void> getUserOnlineStatus(GetUserOnlineTimeReq req) async {
    GetUserOnlineTimeRsp? resp = await LINKJOY.socketManager
        .sendWithReturn<GetUserOnlineTimeRsp>(req);
    if (resp != null) {
      List<LinkjoyFondnessUnbornChickenHair> list = resp.onlineTimes
          .map((e) => LinkjoyFondnessUnbornChickenHair.fromProto(e))
          .toList();
      for (LinkjoyFondnessUnbornChickenHair element in list) {
        if (element.uid != null) {
          LinkjoyUnbornChickenHairGraduation status;
          if (element.isBusy) {
            status = LinkjoyUnbornChickenHairGraduation.on_call;
          } else if (element.isOnline) {
            status = LinkjoyUnbornChickenHairGraduation.online;
          } else {
            status = LinkjoyUnbornChickenHairGraduation.offline;
          }

          LinkjoyUnbornChickenHair newStatus = LinkjoyUnbornChickenHair(
            status,
            element.roomId ?? 0,
          );
          LinkjoyUnbornChickenHairOily().saveStatus(element.uid!, newStatus);

          LINKJOY.fire(
            LinkjoyUnbornChickenHairEskimoGuitar(element.uid!, newStatus),
          );
        }
      }
    }
  }

  void register(int uid) {
    if (uid <= 0) return;
    _registerOne(uid);
    _start();
    _delayRefresh();
  }

  void registerList(List<int> uids) {
    for (var element in uids) {
      _registerOne(element);
    }
    _start();
    _delayRefresh();
  }

  void _registerOne(int uid) {
    int? observerCount = _userObserverCounter[uid];
    observerCount ??= 0;
    _userObserverCounter[uid] = observerCount + 1;
  }

  void _delayRefresh() {
    int nowTime = DateTime.now().millisecondsSinceEpoch;
    if (nowTime - _lastRegisterOneTime > 500) {
      _lastRegisterOneTime = nowTime;
      Future.delayed(const Duration(milliseconds: 500), () {
        _requestOnlineStatus();
      });
    }
  }

  void unRegister(int uid) {
    int? observerCount = _userObserverCounter[uid];
    if (observerCount == null) {
      return;
    }

    observerCount = observerCount - 1;
    if (observerCount <= 0) {
      _userObserverCounter.remove(uid);
    } else {
      _userObserverCounter[uid] = observerCount;
    }

    if (!_shouldStartWork()) {
      _stop();
    }
  }

  void _stopTimer() {
    if (_workTimer?.isActive ?? false) {
      _workTimer?.cancel();
    }
  }

  void _startTimer() {
    _stopTimer();
    _workTimer = Timer.periodic(
      Duration(
        seconds:
            LINKJOY
                .linkjoyShock
                .configs
                .linkjoyPebbleChickenHairClearlySpaghetti ??
            5,
      ),
      (Timer timer) {
        _requestOnlineStatus();
      },
    );
    _requestOnlineStatus();
  }
}
