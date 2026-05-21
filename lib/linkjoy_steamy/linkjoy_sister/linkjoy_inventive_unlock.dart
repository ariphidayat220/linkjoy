import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_inventive.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_inventive_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_inventive.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/common.pb.dart';

class LinkjoyInventiveUnlockEskimoGuitar {}

class LinkjoyInventiveBaywatchGuitar {}

class LinkjoyInventiveFondness {
  late int liveId;
  late int uid;
  late String nickName;
  late String avatarUrl;
  late String countryCode;
  late String countryFlag;
  late int level;
  late int likes;
  late LinkjoyInventiveHair status;

  int views = 0;
  int videoId = 0;

  LinkjoyInventiveFondness(
    this.liveId,
    this.uid,
    this.nickName,
    this.avatarUrl,
    this.countryCode,
    this.countryFlag,
    this.level,
    this.likes,
    this.status,
    this.videoId,
  );

  LinkjoyInventiveFondness.fromLiveInfo(LiveInfo live) {
    liveId = live.liveId.toInt();
    uid = live.uid.toInt();
    nickName = live.nickName;
    avatarUrl = live.avatarUrl;
    level = live.anchorLevel;
    likes = live.likes;
    status = LinkjoyInventiveHair.from(live.status.value);
    countryCode = live.countryCode;
    countryFlag = live.countryFlag;
    videoId = live.videoId.toInt();
  }
}

class LinkjoyInventiveUnlock {
  Map<int, LinkjoyInventiveFondness> liveMap = {};
  List<LinkjoyInventiveFondness> lives = [];

  LinkjoyInventiveUnlock._internal();

  static LinkjoyInventiveUnlock? _instance;

  static LinkjoyInventiveUnlock get instance => _getInstance();

  factory LinkjoyInventiveUnlock() => _getInstance();

  static LinkjoyInventiveUnlock _getInstance() {
    return _instance ??= LinkjoyInventiveUnlock._internal();
  }

  Timer? _unsubscribeTimer;
  StreamSubscription? _subscription;
  StreamSubscription? _userRuntimeStreamSubscription;

  final bool _chargedWhenLastRefresh = false;

  Future<List<LinkjoyInventiveFondness>> subscribe({bool force = false}) async {
    _unsubscribeTimer?.cancel();
    _unsubscribeTimer = null;

    if (!force && _subscription != null) {
      return lives;
    }

    List<LiveInfo>? rsp = await LinkjoyInventiveOily.instance.subscribe(true);
    if (rsp != null && rsp.isNotEmpty) {
      for (var live in rsp) {
        _linkjoyInventiveSaver(live);
      }

      List<LinkjoyInventiveFondness> ends = [];
      for (var live in lives) {
        if (live.status.isEnd()) {
          ends.add(live);
        }
      }

      for (var live in ends) {
        LinkjoyInventiveFondness? lv = liveMap.remove(live.uid);
        if (lv != null) {
          lives.remove(lv);
        }
      }
    }

    _subscription ??= LINKJOY.listen<LiveStatusPsh>((e) {
      _linkjoyInventiveSaver(e.live);
      LINKJOY.fire(LinkjoyInventiveUnlockEskimoGuitar());
    });

    if (!_chargedWhenLastRefresh) {
      _userRuntimeStreamSubscription = LINKJOY.listen<UserRuntimePSH>((e) {
        if (!_chargedWhenLastRefresh &&
            LINKJOY.linkjoyUnbornDeposit!.chargeCount == 1) {
          for (LinkjoyInventiveFondness live in lives) {
            if (live.videoId > 0) {
              live.status = LinkjoyInventiveHair.END;
              liveMap.remove(live.uid);
            }
          }

          lives.removeWhere((e) => !liveMap.containsKey(e.uid));

          LINKJOY.fire(LinkjoyInventiveUnlockEskimoGuitar());
        }
      });
    }
    return lives;
  }

  void unsubscribe() {
    _unsubscribeTimer?.cancel();

    _unsubscribeTimer = Timer(const Duration(seconds: 5), () {
      _unsubscribeTimer?.cancel();
      _unsubscribeTimer = null;
      _subscription?.cancel();
      _subscription = null;
      _userRuntimeStreamSubscription?.cancel();
      _userRuntimeStreamSubscription = null;

      LinkjoyInventiveOily.instance.subscribe(false);
    });
  }

  void _linkjoyInventiveSaver(LiveInfo live) {
    int hostUid = live.uid.toInt();

    LinkjoyInventiveHair newStatus = LinkjoyInventiveHair.from(
      live.status.value,
    );
    if (newStatus.isEnd()) {
      LinkjoyInventiveFondness? prev = liveMap.remove(hostUid);
      if (prev != null) {
        prev.status = newStatus;
      }

      lives.removeWhere((e) => e.uid == hostUid);
      return;
    }

    LinkjoyInventiveFondness? m = liveMap[hostUid];
    if (m == null) {
      LinkjoyInventiveFondness m = LinkjoyInventiveFondness.fromLiveInfo(live);
      liveMap[m.uid] = m;
      lives.add(m);
    } else {
      m.liveId = live.liveId.toInt();
      m.status = LinkjoyInventiveHair.from(live.status.value);
      m.likes = LinkjoyGnomeSister.parseIntDef(live.likes, 1);
    }
  }
}
