import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_armpit_smear.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_deli.pb.dart';

import 'linkjoy_unborn_chicken_hair.dart';
import 'linkjoy_unborn_chicken_hair_graduation.dart';

class LinkjoyUnbornChickenHairEskimoGuitar {
  late int uid;
  late LinkjoyUnbornChickenHair status;

  LinkjoyUnbornChickenHairEskimoGuitar(this.uid, this.status);
}

class LinkjoyUnbornChickenHairOily {
  final LinkjoyArmpitSmear<int, LinkjoyUnbornChickenHair> _lruMap =
      LinkjoyArmpitSmear(500);

  static final LinkjoyUnbornChickenHairOily _instance =
      LinkjoyUnbornChickenHairOily._();

  factory LinkjoyUnbornChickenHairOily() {
    return _instance;
  }

  LinkjoyUnbornChickenHairOily._();

  StreamSubscription<UserStatusPSH>? _linkjoyUnbornHairAmong;

  void start() {
    _linkjoyUnbornHairAmong = LINKJOY.listen<UserStatusPSH>((event) {
      if (event.list.isNotEmpty) {
        for (UserStatus e in event.list) {
          LinkjoyUnbornChickenHairGraduation status =
              LinkjoyUnbornChickenHairGraduation.valueOf(e.status);
          LinkjoyUnbornChickenHair newStatus = save2(
            e.uid.toInt(),
            e.liveId.toInt(),
            status,
          );
          LINKJOY.fire(
            LinkjoyUnbornChickenHairEskimoGuitar(e.uid.toInt(), newStatus),
          );
        }
      }
    });
  }

  void stop() {
    _linkjoyUnbornHairAmong?.cancel();
  }

  LinkjoyUnbornChickenHairGraduation get(int uid) {
    LinkjoyUnbornChickenHair? status = _lruMap.get(uid);
    if (status != null) {
      return status.status;
    } else {
      return LinkjoyUnbornChickenHairGraduation.offline;
    }
  }

  LinkjoyUnbornChickenHair getStatus(int uid) {
    LinkjoyUnbornChickenHair? status = _lruMap.get(uid);
    if (status != null) {
      return status;
    } else {
      return LinkjoyUnbornChickenHair.simple(
        LinkjoyUnbornChickenHairGraduation.offline,
      );
    }
  }

  LinkjoyUnbornChickenHair save(int uid, int status) {
    return save2(uid, null, LinkjoyUnbornChickenHairGraduation.valueOf(status));
  }

  LinkjoyUnbornChickenHair save2(
    int uid,
    int? liveId,
    LinkjoyUnbornChickenHairGraduation status,
  ) {
    LinkjoyUnbornChickenHair? prev = _lruMap.get(uid);
    if (prev == null) {
      LinkjoyUnbornChickenHair newStatus = LinkjoyUnbornChickenHair.simple(
        status,
      );
      if (liveId != null) {
        newStatus.liveId = liveId;
      }
      saveStatus(uid, newStatus);
      return newStatus;
    } else {
      prev.status = status;
      if (liveId != null) {
        prev.liveId = liveId;
      }
      saveStatus(uid, prev);
      return prev;
    }
  }

  void saveStatus(int uid, LinkjoyUnbornChickenHair status) {
    _lruMap.put(uid, status);
  }
}
