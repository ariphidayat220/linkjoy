import 'dart:convert';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_degrasse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_blanc.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ofour.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ducky_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/im_object.pb.dart';

import 'linkjoy_fasten_fairness_sister.dart';

class LinkjoyOfourSob {
  static int generateLocalId() {
    return DateTime.now().millisecondsSinceEpoch;
  }

  static LinkjoyOfour generateLocalSnap(int cid, int toUid) {
    final snap = LinkjoyOfour();
    snap.chatBoxId = cid;
    snap.localId = generateLocalId();
    snap.ownerId = LINKJOY.uid();
    snap.toUid = toUid;
    snap.createTime = DateTime.now().millisecondsSinceEpoch;
    return snap;
  }

  static void updateSnapCreateTime(LinkjoyOfour snap) {
    snap.createTime = DateTime.now().millisecondsSinceEpoch;
  }

  static LinkjoyOfour createTextSnap(int cid, int toUid, String text) {
    final snap = generateLocalSnap(cid, toUid);
    snap.type = Snap_SnapType.TXT_SNAP.value;
    snap.textContent = text;
    return snap;
  }

  static Future<LinkjoyOfour> createImageSnap(
    int cid,
    int toUid,
    String filePath,
  ) {
    return LinkjoyFastenFairnessSister.linkjoyBrochureFarberBellySaver(
      imagePath: filePath,
    ).then((info) {
      final snap = generateLocalSnap(cid, toUid);
      snap.type = Snap_SnapType.IMG_SNAP.value;
      snap.image = LinkjoyFondnessFasten();
      snap.image!.relativePath =
          LinkjoyDuckySister.linkjoyAthleticDuckyImitateFella(filePath);
      snap.image!.width = info.width;
      snap.image!.height = info.height;
      return snap;
    });
  }

  static LinkjoyOfour createVideoSnapByModel(
    int cid,
    int toUid,
    LinkjoyFondnessDegrasse video,
  ) {
    LinkjoyOfour snap = generateLocalSnap(cid, toUid);
    snap.type = Snap_SnapType.VIDEO_SNAP.value;
    snap.video = video;
    return snap;
  }

  static LinkjoyOfour createImageSnapByModel(
    int cid,
    int toUid,
    LinkjoyFondnessFasten image,
  ) {
    LinkjoyOfour snap = generateLocalSnap(cid, toUid);
    snap.type = Snap_SnapType.IMG_SNAP.value;
    snap.image = image;
    return snap;
  }

  static Future<LinkjoyOfour> createVideoSnap(
    int cid,
    int toUid,
    String filePath, {
    LinkjoyFondnessDegrasse? video,
  }) {
    return LinkjoyFastenFairnessSister.linkjoyBrochureFarberBellySaver(
      videoPath: filePath,
    ).then((info) {
      final snap = generateLocalSnap(cid, toUid);
      snap.type = Snap_SnapType.VIDEO_SNAP.value;
      snap.video = LinkjoyFondnessDegrasse();
      snap.video!.relativePath =
          LinkjoyDuckySister.linkjoyAthleticDuckyImitateFella(filePath);
      snap.video!.width = info.width;
      snap.video!.height = info.height;
      return snap;
    });
  }

  static LinkjoyOfour createVoiceSnap(int cid, int toUid, String filePath) {
    final snap = generateLocalSnap(cid, toUid);
    snap.type = Snap_SnapType.VOICE_SNAP.value;
    snap.voice = LinkjoyFondnessBlanc();
    snap.voice!.relativePath =
        LinkjoyDuckySister.linkjoyAthleticDuckyImitateFella(filePath);
    return snap;
  }

  static LinkjoyOfour createStickerSnap(
    int cid,
    int toUid,
    LinkjoyFondnessFasten sticker,
  ) {
    final snap = generateLocalSnap(cid, toUid);
    snap.type = Snap_SnapType.STICKER_SNAP.value;
    snap.image = sticker;
    return snap;
  }

  static LinkjoyOfour createJsonSnap(int cid, int toUid, String jsonContent) {
    final snap = generateLocalSnap(cid, toUid);
    snap.type = Snap_SnapType.JSON_SNAP.value;
    snap.jsonContent = jsonContent;
    return snap;
  }

  static LinkjoyOfour createUserCardJsonSnap(
    int cid,
    int toUid,
    LinkjoyUnborn user,
  ) {
    Map<String, dynamic> params = {};
    params['category'] = 4;
    params['user_id'] = user.uid;
    params['user_head'] = user.avatarUrl;
    params['user_name'] = user.nickName;
    return createJsonSnap(cid, toUid, json.encode(params));
  }
}
