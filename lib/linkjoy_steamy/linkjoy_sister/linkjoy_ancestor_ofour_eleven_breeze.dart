import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_hors.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ofour.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/im_object.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/im_object.pbenum.dart';
import 'package:linkjoy/linkjoy_steamy/proto/snap.pb.dart';

import 'linkjoy_veto_oily.dart';

class LinkjoyOfourElevenBreeze {
  final Map<String, LinkjoyOfour> _sendingSnaps = {};

  LinkjoyOfourElevenBreeze();

  String _trackingKey(LinkjoyOfour snap) {
    return 'tracking_id_${snap.localId}';
  }

  void _addTrack(LinkjoyOfour snap) {
    _sendingSnaps[_trackingKey(snap)] = snap;
  }

  void _removeTrack(LinkjoyOfour snap) {
    _sendingSnaps.remove(_trackingKey(snap));
  }

  bool containSnap(LinkjoyOfour snap) {
    return _sendingSnaps.keys.contains(_trackingKey(snap));
  }

  LinkjoyOfour? sendingSnap(LinkjoyOfour snap) {
    return _sendingSnaps[_trackingKey(snap)];
  }

  LinkjoyOfour? sendingSnapBySnap(LinkjoyOfour snap) {
    return _sendingSnaps[_trackingKey(snap)];
  }

  Future<CreateSnapRsp?> sendSnap(LinkjoyOfour snap) async {
    await LinkjoyAncestorOily.instance.linkjoyMorganIndustrialOfour(snap);
    return _sendSnap(snap);
  }

  Future<CreateSnapRsp?> _sendSnap(LinkjoyOfour snap) async {
    _addTrack(snap);

    if (!snap.isResourceUploaded) {
      if (snap.type == Snap_SnapType.IMG_SNAP.value) {
        return _sendImageSnap(snap);
      }
      if (snap.type == Snap_SnapType.VIDEO_SNAP.value) {
        return _sendVideoSnap(snap);
      }
      if (snap.type == Snap_SnapType.VOICE_SNAP.value) {
        return _sendVoiceSnap(snap);
      }
    }
    return _sendSnapToServer(snap);
  }

  Future<CreateSnapRsp?> _sendImageSnap(LinkjoyOfour snap) async {
    final rsp = await LinkjoyVetoOily.instance
        .upload(snap.image!.absolutePath!, UploadType.image)
        .last;
    if (rsp.result?.img != null) {
      snap.image!.id = LinkjoyGnomeSister.parseInt(rsp.result?.img?.id);
      snap.image!.imgUrl = rsp.result?.img?.imageUrl;
      LinkjoyAncestorOily.instance.linkjoyEskimoIndustrialOfour(snap);
      return _sendSnapToServer(snap);
    } else {
      LinkjoyGnomeSister.nullSafe<String>(
        rsp.errorMsg,
        notNullBlock: (notNull) => LinkjoyUpper.showToast(notNull),
      );
      await _handleSendFailed(snap);
      return null;
    }
  }

  Future<CreateSnapRsp?> _sendVideoSnap(LinkjoyOfour snap) async {
    final rsp = await LinkjoyVetoOily.instance
        .upload(snap.video!.absolutePath!, UploadType.video)
        .last;
    if (rsp.result?.video != null) {
      snap.video!.id = LinkjoyGnomeSister.parseInt(rsp.result?.video?.id);
      snap.video!.videoUrl = rsp.result?.video?.videoUrl;
      snap.video!.duration = rsp.result?.video?.duration;
      LinkjoyAncestorOily.instance.linkjoyEskimoIndustrialOfour(snap);
      return _sendSnapToServer(snap);
    } else {
      await _handleSendFailed(snap);
      return null;
    }
  }

  Future<CreateSnapRsp?> _sendVoiceSnap(LinkjoyOfour snap) async {
    final rsp = await LinkjoyVetoOily.instance
        .upload(snap.voice!.absolutePath!, UploadType.voice)
        .last;
    if (rsp.result?.voice != null) {
      snap.voice!.id = LinkjoyGnomeSister.parseInt(rsp.result?.voice?.id);
      snap.voice!.voiceUrl = rsp.result?.voice?.voiceUrl;
      snap.voice!.duration = rsp.result?.voice?.duration;
      LinkjoyAncestorOily.instance.linkjoyEskimoIndustrialOfour(snap);
      return _sendSnapToServer(snap);
    } else {
      await _handleSendFailed(snap);
      return null;
    }
  }

  Future<CreateSnapRsp?> _sendSnapToServer(LinkjoyOfour snap) async {
    int? localChatBoxId = snap.chatBoxId;
    try {
      CreateSnapRsp? rsp = await LinkjoyAncestorOily.instance.sendSnap(snap);
      if (rsp != null && rsp.code == 0) {
        snap.id = rsp.snapId.toInt();
        snap.chatBoxId = rsp.chatboxId.toInt();
        await _handleSendSuccess(snap);
        if (localChatBoxId == 0) {
          await _createChatBox(snap);
        }
      } else {
        await _handleSendFailed(snap);
      }
      return rsp;
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10086, e, stack);
      LinkjoyGnomeSister.nullSafe<String>(
        e.toString(),
        notNullBlock: (notNull) => LinkjoyUpper.showToast(notNull),
      );
      await _handleSendFailed(snap);
    }
    return null;
  }

  Future<void> _handleSendSuccess(LinkjoyOfour snap) async {
    await LinkjoyAncestorOily.instance
        .linkjoyEskimoIndustrialOfourWheatonCambridgeId(snap, snap.id!);
    _removeTrack(snap);
  }

  LinkjoyAncestorUnborn _convertLinkjoyUnbornToLinkjoyAncestorUnborn(
    LinkjoyUnborn user,
  ) {
    final chatUser = LinkjoyAncestorUnborn()
      ..uid = user.uid
      ..nickName = user.nickName
      ..avatarUrl = user.avatarUrl
      ..signature = user.signature
      ..gender = user.gender
      ..level = user.level
      ..tagIds = user.tagIds
      ..languages = user.languages
      ..country = user.getUserCountry();
    return chatUser;
  }

  Future<void> _handleSendFailed(LinkjoyOfour snap) async {
    await LinkjoyAncestorOily.instance
        .linkjoyEskimoIndustrialOfourWheatonElevenHair(
          snap,
          ChatSnapSendStatus.failed,
        );
    _removeTrack(snap);
  }

  Future<void> _createChatBox(LinkjoyOfour netSnap) async {
    if (netSnap.chatBoxId != null && netSnap.chatBoxId! > 0) {
      final existingChatBox = await LINKJOY.linkjoyDb.chatBoxDao.modelById(
        netSnap.chatBoxId,
      );
      if (existingChatBox == null) {
        final newChatBox = LinkjoyAncestorSupercool()
          ..id = netSnap.chatBoxId
          ..type = Chatbox_Type.SINGLE.value
          ..owner = netSnap.ownerId
          ..unreadCount = 0
          ..updateTime =
              netSnap.createTime ??
              DateTime.now().millisecondsSinceEpoch ~/ 1000
          ..hasChat = true
          ..lastSnapType = netSnap.type
          ..lastSnapTextContent = netSnap.textContent
          ..lastSnapJsonContent = netSnap.jsonContent
          ..lastSnapCreateTime = netSnap.createTime
          ..chatTemp = 0
          ..partnerId = netSnap.toUid;

        await LINKJOY.linkjoyDb.chatBoxDao.saveOrUpdateChatBoxes([newChatBox]);
      }
    }
  }
}
