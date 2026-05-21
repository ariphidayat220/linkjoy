import 'dart:convert';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_degrasse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_blanc.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_ofour_specific_skintight_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/im_object.pbenum.dart';
import 'package:flutter/cupertino.dart';

import 'linkjoy_ancestor_ofour_specific_skintight.dart';

enum ChatSnapSendStatus { success, failed, sending }

class LinkjoyOfour {
  int? id;
  int? chatBoxId;
  int? ownerId;
  String? ownerHead;
  String? ownerName;
  bool? unread;
  int? createTime;
  int? prevSnapId;
  int? type;
  String? textContent;
  String? jsonContent;
  int? localId;
  Map? extensions;
  int? repliedSnapId;
  LinkjoyOfour? repliedSnap;
  int? status;

  LinkjoyFondnessBlanc? voice;
  LinkjoyFondnessFasten? image;
  LinkjoyFondnessDegrasse? video;

  int? sendStatus;
  List<InlineSpan>? richTexts;
  LinkjoyAncestorOfourSpecificSkintight? _jsonContentObj;
  int? clearCacheTime;

  List<LinkjoyFondnessFasten>? images;
  String? translate;

  int? toUid;

  bool autoTranslate = false;

  @override
  int get hashCode => '$id$localId'.hashCode;

  bool get isUserSnap {
    bool userRelated = true;
    if (type != null) {
      var snapType = Snap_SnapType.valueOf(type!);
      if (snapType == Snap_SnapType.WEAK_SNAP) {
        userRelated = false;
      } else if (snapType == Snap_SnapType.JSON_SNAP) {
        userRelated = LinkjoyAncestorOfourSpecificSkintightSister.isUserRelated(
          jsonContentObj,
        );
      } else {}
    }
    return userRelated;
  }

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    if (other is! LinkjoyOfour) return false;
    if (isIdValid && other.isIdValid) {
      return id == other.id;
    } else {
      return isMine && other.isMine && localId == other.localId;
    }
  }

  bool get isMine => ownerId == LINKJOY.uid();

  bool get isIdValid => (id ?? 0) > 0;

  bool get isRepliedIdValid => repliedSnapId != null && repliedSnapId! > 0;

  bool get hasRepliedSnap => isRepliedIdValid && repliedSnap != null;

  bool get isUnread => unread != null && unread!;

  bool get isResourceUploaded {
    bool? uploaded = true;
    if (type != null) {
      var snapType = Snap_SnapType.valueOf(type!);

      if (snapType == Snap_SnapType.IMG_SNAP) {
        uploaded = image?.isIdValid;
      } else if (snapType == Snap_SnapType.VIDEO_SNAP) {
        uploaded = video?.isIdValid;
      } else if (snapType == Snap_SnapType.VOICE_SNAP) {
        uploaded = voice?.isIdValid;
      }
    }
    return uploaded ?? false;
  }

  bool get isSupportType {
    bool support = false;
    if (type != null) {
      var snapType = Snap_SnapType.valueOf(type!);
      if (snapType == Snap_SnapType.VIDEO_SNAP ||
          snapType == Snap_SnapType.TXT_SNAP ||
          snapType == Snap_SnapType.IMG_SNAP ||
          snapType == Snap_SnapType.WEAK_SNAP ||
          snapType == Snap_SnapType.VOICE_SNAP) {
        support = true;
      } else if (snapType == Snap_SnapType.JSON_SNAP) {
        support = LinkjoyAncestorOfourSpecificSkintight.isSupported(
          jsonContentObj,
        );
      }
    }
    return support;
  }

  bool get isSnackShowType {
    bool support = false;
    if (type != null) {
      var snapType = Snap_SnapType.valueOf(type!);
      if (snapType == Snap_SnapType.VIDEO_SNAP ||
          snapType == Snap_SnapType.TXT_SNAP ||
          snapType == Snap_SnapType.IMG_SNAP) {
        support = true;
      }
    }
    return support;
  }

  bool get isLocalIdValid => isMine && localId != null && localId! > 0;

  LinkjoyAncestorOfourSpecificSkintight? get jsonContentObj {
    if (_jsonContentObj == null &&
        type == Snap_SnapType.JSON_SNAP.value &&
        jsonContent != null) {
      final jsonObj = (jsonDecode(jsonContent!) as Map).cast<String, dynamic>();
      _jsonContentObj = LinkjoyAncestorOfourSpecificSkintight.fromJson(jsonObj);

      if (_jsonContentObj != null &&
          (_jsonContentObj!.userId == null || _jsonContentObj!.userId == 0)) {
        _jsonContentObj!.userId = ownerId;
      }
    }
    return _jsonContentObj;
  }

  bool get isCallJsonSnap =>
      type == Snap_SnapType.JSON_SNAP.value &&
      LinkjoyAncestorOfourSpecificSkintightSister.isCallCategory(
        jsonContentObj,
      );

  bool get isGiftJsonSnap =>
      type == Snap_SnapType.JSON_SNAP.value &&
      LinkjoyAncestorOfourSpecificSkintightSister.isGiftCategory(
        jsonContentObj,
      );

  @override
  String toString() {
    return 'LinkjoyOfour{id: $id, chatBoxId: $chatBoxId, ownerId: $ownerId, type: $type, textContent: $textContent, localId: $localId, sendStatus: $sendStatus, toUid: $toUid}';
  }
}
