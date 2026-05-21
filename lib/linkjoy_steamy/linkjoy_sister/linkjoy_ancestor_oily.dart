import 'dart:async';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_ancestor_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_hors.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_degrasse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_blanc.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ofour.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_duo.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_access_eggs.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_fetus_im_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_statue_marsha_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/auth.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/chatbox.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/im_object.pb.dart' as ImOB;
import 'package:linkjoy/linkjoy_steamy/proto/im_object.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/object.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/snap.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/sync.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:get/get.dart';

import 'linkjoy_ancestor_ofour_eleven_breeze.dart';

class LinkjoyAncestorOily {
  LinkjoyAncestorOily._internal();

  static LinkjoyAncestorOily? _instance;

  static LinkjoyAncestorOily get instance => _getInstance();

  factory LinkjoyAncestorOily() => _getInstance();

  static LinkjoyAncestorOily _getInstance() {
    return _instance ??= LinkjoyAncestorOily._internal();
  }

  static LinkjoyOfourElevenBreeze sendQueue = LinkjoyOfourElevenBreeze();
  StreamSubscription<LinkjoyDuo>? _imSync;
  StreamSubscription<LinkjoyDuoLap>? _imNotify;
  StreamSubscription? _authSubscription;

  Timer? _imSyncDelayTimer;

  int _currentChatId = 0;

  get currentChatId => _currentChatId;

  set currentChatId(id) {
    _currentChatId = id;
    linkjoyEskimoAncestorSupercoolHonorableFbiPun(id);
  }

  void init() {
    _imSync = LINKJOY.listen<LinkjoyDuo>((event) {
      if (event.sync.type == SyncType.SNAP) {
        _linkjoyHonOfourDuoPlacebo(event.sync);
      }
    });

    _imNotify = LINKJOY.listen<LinkjoyDuoLap>((event) {
      if ((event.notify.types & (1 << SyncType.SNAP.value)) != 0) {
        _linkjoyDegreeOfourDuoLap(SyncType.SNAP);
      }
    });

    _authSubscription = LINKJOY.listen<AuthRsp>((event) {
      _imSyncDelayTimer = Timer(
        const Duration(
          milliseconds: LinkjoyFetusImHand.DELAY_INIT_SECONDS * 1000 + 500,
        ),
        () {
          _initSyncMsg();
        },
      );

      _showUpdateDialogIfNeeded(event);
    });
  }

  void dispose() {
    _imSync?.cancel();
    _imNotify?.cancel();
    _authSubscription?.cancel();
    _imSyncDelayTimer?.cancel();
  }

  void linkjoyHonAncestorSupercoolDuo(Sync sync, bool isNew) async {
    Int64 syncKey = Int64(
      LINKJOY.linkjoyElope.userChatBoxLastSyncKey(LINKJOY.uid()),
    );
    if (sync.baseKey != syncKey) {
      _linkjoyDegreeOfourDuoLap(SyncType.CHATBOX);
      return;
    }

    Map<String, List<LinkjoyAncestorSupercool>> affects = {};
    if (sync.add.isNotEmpty) {
      List<LinkjoyAncestorSupercool> adds = [];
      for (var any in sync.add) {
        final Chatbox? chatBox = LinkjoyAccessEggs.unpackMessage(
          Chatbox.create(),
          any,
        );
        if (chatBox != null) {
          adds.add(convertChatBoxProto(chatBox));
        }
      }
      if (adds.isNotEmpty) {
        affects[LinkjoyAncestorGuitar.AFFECT_ADD] = adds;
        await LINKJOY.linkjoyDb.chatBoxDao.saveOrUpdateModels(adds);
      }
    }

    if (sync.update.isNotEmpty) {
      List<LinkjoyAncestorSupercool> updates = [];
      for (var any in sync.update) {
        final p = LinkjoyAccessEggs.unpackMessage(Chatbox.create(), any);
        if (p != null) {
          final l = convertChatBoxProto(p);
          updates.add(l);
        }
      }
      if (updates.isNotEmpty) {
        affects[LinkjoyAncestorGuitar.AFFECT_UPDATE] = updates;
        await LINKJOY.linkjoyDb.chatBoxDao.saveOrUpdateModels(updates);
      }
    }

    if (sync.delete.isNotEmpty) {
      List<LinkjoyAncestorSupercool> deletes = [];
      for (var any in sync.delete) {
        final p = LinkjoyAccessEggs.unpackMessage(Chatbox.create(), any);
        if (p != null) {
          deletes.add(convertChatBoxProto(p));
        }
      }
      if (deletes.isNotEmpty) {
        affects[LinkjoyAncestorGuitar.AFFECT_DELETE] = deletes;
        await LINKJOY.linkjoyDb.chatBoxDao.deleteChatBoxes(deletes);
      }
    }

    LINKJOY.linkjoyElope.saveUserChatBoxLastSyncKey(
      LINKJOY.uid(),
      sync.lastKey.toInt(),
    );
    if (affects.isEmpty) return;

    LINKJOY.eventBus.fire(
      LinkjoyAncestorGuitar(ChatEventType.chatBoxSync, affects: affects),
    );
  }

  void _linkjoyDegreeOfourDuoLap(SyncType syncType) {
    int lastKey = LINKJOY.linkjoyElope.userSnapLastSyncKey(LINKJOY.uid());

    Sync sync = Sync(type: syncType, lastKey: Int64(lastKey));
    LINKJOY.socketManager.sendWithoutResp(sync);
    return;
  }

  LinkjoyAncestorSupercool convertChatBoxProto(Chatbox p) {
    LinkjoyAncestorSupercool l = LinkjoyAncestorSupercool();
    l.id = p.id.toInt();
    l.type = p.type.value;
    l.name = p.name;
    l.coverURL = p.coverUrl;
    l.owner = p.owner.toInt();
    l.qrCodeURL = p.qrcodeUrl;
    l.weight = p.weight;
    l.muted = p.muted;
    l.unreadCount = p.unreadCount;
    l.updateTime = p.updateTime.toInt();
    l.additionalInfo = p.additionalInfo;
    l.desc = p.description;
    l.hasChat = true;

    l.members = [];
    final currentUid = LINKJOY.uid();
    for (var e in p.members) {
      l.members?.add(convertUserProto(e));
      final uid = e.uid.toInt();
      if (uid != currentUid && l.partnerId == null) {
        l.partnerId = uid;

        l.chatUser = LinkjoyAncestorUnborn()
          ..uid = uid
          ..nickName = e.nickName
          ..avatarUrl = e.avatarUrl;
      }
    }
    return l;
  }

  LinkjoyAncestorUnborn convertUserProto(User p) {
    LinkjoyAncestorUnborn l = LinkjoyAncestorUnborn();
    l.uid = p.uid.toInt();
    l.nickName = p.nickName;
    l.avatarUrl = p.avatarUrl;
    l.gender = p.gender.toInt();
    l.signature = p.signature;
    return l;
  }

  Future linkjoyMorganIndustrialOfour(LinkjoyOfour? snap) async {
    if (snap == null) return;
    return linkjoyMorganIndustrialStripper([snap]);
  }

  Future linkjoyMorganIndustrialStripper(List<LinkjoyOfour>? snaps) async {
    if (snaps == null || snaps.isEmpty) return;

    for (var s in snaps) {
      s.sendStatus = ChatSnapSendStatus.sending.index;
      LINKJOY.eventBus.fire(
        LinkjoyAncestorGuitar(ChatEventType.snapSendStatus, object: s),
      );
    }

    await LINKJOY.linkjoyDb.snapDao.saveOrUpdateModels(snaps);
    LINKJOY.eventBus.fire(
      LinkjoyAncestorGuitar(
        ChatEventType.chatBoxReloadByIds,
        chatIds: [snaps.first.chatBoxId!],
      ),
    );
  }

  Future linkjoyEskimoIndustrialOfour(LinkjoyOfour snap) async {
    return LINKJOY.linkjoyDb.snapDao.saveOrUpdateModels([snap]);
  }

  Future linkjoyEskimoIndustrialOfourWheatonCambridgeId(
    LinkjoyOfour snap,
    int serverId,
  ) async {
    snap.id = serverId;
    return linkjoyEskimoIndustrialOfourWheatonElevenHair(
      snap,
      ChatSnapSendStatus.success,
    );
  }

  Future linkjoyEskimoIndustrialOfourWheatonElevenHair(
    LinkjoyOfour snap,
    ChatSnapSendStatus status,
  ) async {
    snap.sendStatus = status.index;
    await linkjoyEskimoIndustrialOfour(snap);
    LINKJOY.eventBus.fire(
      LinkjoyAncestorGuitar(
        ChatEventType.chatBoxReloadByIds,
        chatIds: [snap.chatBoxId!],
      ),
    );
    LINKJOY.eventBus.fire(
      LinkjoyAncestorGuitar(ChatEventType.snapSendStatus, object: snap),
    );
  }

  Future<CreateSnapRsp?> sendSnap(LinkjoyOfour snap) async {
    final req = CreateSnapReq.create();
    if (snap.chatBoxId != null) req.chatboxId = Int64(snap.chatBoxId!);
    if (snap.type != null) req.snapType = Snap_SnapType.valueOf(snap.type!)!;
    if (snap.textContent != null) req.textContent = snap.textContent!;
    if (snap.jsonContent != null) req.jsonContent = snap.jsonContent!;
    if (snap.image?.id != null) req.imgId = Int64(snap.image!.id!);
    if (snap.video?.id != null) req.videoId = Int64(snap.video!.id!);
    if (snap.voice?.id != null) req.voiceId = Int64(snap.voice!.id!);
    if (snap.localId != null) req.localId = Int64(snap.localId!);
    if (snap.repliedSnapId != null)
      req.repliedSnapId = Int64(snap.repliedSnapId!);
    if (snap.toUid != null) req.toUid = Int64(snap.toUid!);

    return await LINKJOY.socketManager.sendWithReturn<CreateSnapRsp>(
      req,
      autoToastOnError: false,
    );
  }

  void linkjoyJazzHonStripper(List<LinkjoyOfour>? snaps) {
    if (LinkjoyGnomeSister.isEmptyList(snaps)) return;
    for (var e in snaps!) {
      linkjoyJazzHonOfour(e);
    }
  }

  Future<void> linkjoyJazzHonOfour(LinkjoyOfour snap) async {
    var snapType = Snap_SnapType.valueOf(snap.type ?? -1);
    if (Snap_SnapType.TXT_SNAP == snapType) {
      snap.richTexts = LinkjoyStatueMarshaSister.getRichText(
        snap.textContent,
        style: snap.isMine
            ? LinkjoyDivorced.outgoingTextStyle
            : LinkjoyDivorced.incomingTextStyle,
      );
    } else if (Snap_SnapType.WEAK_SNAP == snapType) {
      snap.richTexts ??= LinkjoyStatueMarshaSister.getRichText(
        snap.textContent,
        style: LinkjoyMarshaGreen.style(
          color: LinkjoyCondensateSister.b1,
          fontSize: 14.0,
        ),
      );
    }
  }

  void _linkjoyHonOfourDuoPlacebo(Sync sync) async {
    final Int64 localKey = Int64(
      LINKJOY.linkjoyElope.userSnapLastSyncKey(LINKJOY.uid()),
    );

    if (!_isSnapBaseKeyAligned(sync, localKey)) return;

    LINKJOY.linkjoyElope.saveUserSnapLastSyncKey(
      LINKJOY.uid(),
      sync.lastKey.toInt(),
    );

    await _linkjoyHonOfourPlacebo(sync);
  }

  bool _isSnapBaseKeyAligned(Sync sync, Int64 localKey) {
    if (sync.baseKey == localKey) {
      return true;
    }
    _linkjoyDegreeOfourDuoLap(SyncType.SNAP);
    return false;
  }

  _linkjoyHonOfourPlacebo(Sync sync) async {
    List<LinkjoyOfour> addSnaps = _unpackSnaps(sync.add);
    if (addSnaps.isEmpty) return;

    await LINKJOY.linkjoyDb.snapDao.saveOrUpdateModels(addSnaps);

    Map<int, LinkjoyOfour> latestSnapsByCid = {};
    Map<int, LinkjoyOfour> friendSnapsByCid = {};
    Map<int, int> unreadIncrements = {};

    for (LinkjoyOfour snap in addSnaps) {
      LinkjoyOfour? current = latestSnapsByCid[snap.chatBoxId];

      if (current == null ||
          (snap.createTime ?? 0) >= (current.createTime ?? 0)) {
        latestSnapsByCid[snap.chatBoxId!] = snap;
      }

      if (snap.ownerId != null && snap.ownerId != LINKJOY.uid()) {
        unreadIncrements.update(
          snap.chatBoxId!,
          (value) => value + 1,
          ifAbsent: () => 1,
        );
        friendSnapsByCid[snap.ownerId!] = snap;
      }
    }

    List<LinkjoyAncestorSupercool> existingChaBoxList =
        await LINKJOY.linkjoyDb.chatBoxDao.modelsByIds(latestSnapsByCid.keys) ??
        [];
    Map<int, LinkjoyAncestorSupercool> existingChatBoxMap = {};
    for (var e in existingChaBoxList) {
      existingChatBoxMap[e.id!] = e;
    }

    Map<int, LinkjoyAncestorUnborn> userMap = await _collectSaveUser(
      existingChaBoxList,
    );

    Iterable<int> allChatBoxIds = latestSnapsByCid.keys;

    List<LinkjoyAncestorSupercool> updateChatBoxes = [];

    List<LinkjoyAncestorSupercool> insertChatBoxes = [];
    List<LinkjoyAncestorUnborn> insertUsers = [];

    List<int> toBeSyncChatBoxIds = [];

    for (int boxId in allChatBoxIds) {
      LinkjoyAncestorSupercool? box = existingChatBoxMap[boxId];
      if (box != null) {
        _updateChatboxInfo(box, unreadIncrements, latestSnapsByCid);

        if (_fixWhenNoPartnerId(box, friendSnapsByCid, boxId)) {
          updateChatBoxes.add(box);
        } else {
          toBeSyncChatBoxIds.add(boxId);
        }
      } else {
        LinkjoyOfour? fridSnap = friendSnapsByCid[boxId];
        if (fridSnap != null &&
            fridSnap.ownerName != null &&
            fridSnap.ownerHead != null) {
          LinkjoyAncestorSupercool box = _newChatboxWithFriendSnap(
            boxId,
            fridSnap,
          );
          _updateChatboxInfo(box, unreadIncrements, latestSnapsByCid);
          insertChatBoxes.add(box);

          if (!userMap.containsKey(fridSnap.ownerId)) {
            LinkjoyAncestorUnborn newUser = _newChatUserWithFriendSnap(
              box,
              fridSnap,
            );
            insertUsers.add(newUser);
          }
        } else {
          toBeSyncChatBoxIds.add(boxId);
        }
      }
    }

    if (toBeSyncChatBoxIds.isNotEmpty) {
      List<LinkjoyAncestorSupercool> netBoxes = await batchGetChatBoxInfo(
        cIds: toBeSyncChatBoxIds.toList(),
      );
      for (LinkjoyAncestorSupercool box in netBoxes) {
        _updateChatboxInfo(box, unreadIncrements, latestSnapsByCid);

        insertChatBoxes.add(box);

        if (box.members != null) {
          int meUid = LINKJOY.uid();
          for (LinkjoyAncestorUnborn u in box.members!) {
            if (u.uid != meUid) {
              if (!userMap.containsKey(u.uid)) {
                insertUsers.add(u);
              }
            }
          }
        }
      }
    }

    Set<int> uiReloadBoxIds = {};

    if (updateChatBoxes.isNotEmpty) {
      LINKJOY.linkjoyDb.chatBoxDao.updateChatBoxes(updateChatBoxes);
      uiReloadBoxIds.addAll(updateChatBoxes.map((e) => e.id!).toSet());
    }

    if (insertChatBoxes.isNotEmpty) {
      LINKJOY.linkjoyDb.chatBoxDao.saveOrUpdateChatBoxes(insertChatBoxes);
      uiReloadBoxIds.addAll(insertChatBoxes.map((e) => e.id!).toSet());
    }

    if (insertUsers.isNotEmpty) {
      LINKJOY.linkjoyDb.userDao.saveOrUpdateModels(insertUsers);
    }

    _emitSnapSyncEvents(addSnaps, uiReloadBoxIds);
  }

  LinkjoyAncestorUnborn _newChatUserWithFriendSnap(
    LinkjoyAncestorSupercool box,
    LinkjoyOfour fridSnap,
  ) {
    LinkjoyAncestorUnborn newUser = LinkjoyAncestorUnborn()
      ..uid = box.partnerId!
      ..nickName = fridSnap.ownerName!
      ..avatarUrl = fridSnap.ownerHead!;
    return newUser;
  }

  LinkjoyAncestorSupercool _newChatboxWithFriendSnap(
    int boxId,
    LinkjoyOfour fridSnap,
  ) {
    LinkjoyAncestorSupercool box = LinkjoyAncestorSupercool()
      ..id = boxId
      ..type = Chatbox_Type.SINGLE.value
      ..owner = fridSnap.ownerId
      ..unreadCount = 0
      ..updateTime = fridSnap.createTime
      ..hasChat = true
      ..lastSnapType = fridSnap.type
      ..lastSnapTextContent = fridSnap.textContent
      ..lastSnapJsonContent = fridSnap.jsonContent
      ..lastSnapCreateTime = fridSnap.createTime
      ..partnerId = fridSnap.ownerId;
    return box;
  }

  bool _fixWhenNoPartnerId(
    LinkjoyAncestorSupercool box,
    Map<int, LinkjoyOfour> friendSnapsByCid,
    int boxId,
  ) {
    if (box.partnerId == null || box.partnerId == 0) {
      LinkjoyOfour? fridSnap = friendSnapsByCid[boxId];
      if (fridSnap != null) {
        box.partnerId = fridSnap.ownerId;
        return true;
      } else {
        return false;
      }
    }
    return true;
  }

  void _updateChatboxInfo(
    LinkjoyAncestorSupercool box,
    Map<int, int> unreadIncrements,
    Map<int, LinkjoyOfour> latestSnapsByCid,
  ) {
    final unreadCount = unreadIncrements[box.id] ?? 0;
    final latestSnap = latestSnapsByCid[box.id];

    box.unreadCount = (box.unreadCount ?? 0) + unreadCount;
    box.lastSnapTextContent = latestSnap?.textContent;
    box.lastSnapJsonContent = latestSnap?.jsonContent;
    box.lastSnapType = latestSnap?.type;
    box.lastSnapCreateTime = latestSnap?.createTime;
    box.updateTime = (latestSnap != null && box.updateTime != null)
        ? max(latestSnap.createTime!, box.updateTime!)
        : (latestSnap?.createTime ?? box.updateTime);
  }

  void _emitSnapSyncEvents(
    List<LinkjoyOfour> syncSnaps,
    Set<int> reloadChatBoxIds,
  ) {
    Map<String, List<LinkjoyOfour>> affects = {
      LinkjoyAncestorGuitar.AFFECT_ADD: syncSnaps,
    };

    LINKJOY.eventBus.fire(
      LinkjoyAncestorGuitar(ChatEventType.snapSync, affects: affects),
    );

    if (reloadChatBoxIds.isNotEmpty) {
      LINKJOY.eventBus.fire(
        LinkjoyAncestorGuitar(
          ChatEventType.chatBoxReloadByIds,
          chatIds: reloadChatBoxIds.toList(),
        ),
      );
    }
  }

  LinkjoyOfour convertChatSnapProto(Snap p) {
    LinkjoyOfour l = LinkjoyOfour();
    l.id = p.id.toInt();
    l.chatBoxId = p.chatboxId.toInt();
    l.ownerId = p.owner.toInt();
    l.ownerName = p.ownerName;
    l.ownerHead = p.ownerHead;
    l.unread = p.unread != 0;
    l.createTime = p.createTime.toInt();
    l.prevSnapId = p.prevSnapId.toInt();
    l.type = p.type.value;
    l.textContent = p.textContent;
    l.jsonContent = p.jsonContent;
    l.localId = p.localId.toInt();
    l.repliedSnapId = p.repliedSnapId.toInt();
    l.status = p.status;

    if (p.type == Snap_SnapType.IMG_SNAP ||
        p.type == Snap_SnapType.STICKER_SNAP) {
      l.image = convertImageProto(p.image);
    } else if (p.type == Snap_SnapType.VIDEO_SNAP) {
      l.video = convertVideoProto(p.video);
    } else if (p.type == Snap_SnapType.VOICE_SNAP) {
      l.voice = convertVoiceProto(p.voice);
      l.unread = true;
    }
    return l;
  }

  List<LinkjoyOfour> _unpackSnaps(Iterable<dynamic> entries) {
    List<LinkjoyOfour> snaps = <LinkjoyOfour>[];
    for (final any in entries) {
      final snapProto = LinkjoyAccessEggs.unpackMessage(Snap.create(), any);
      if (snapProto == null) {
        continue;
      }
      final snap = convertChatSnapProto(snapProto);
      snaps.add(snap);
    }
    return snaps;
  }

  void recordChatBoxUpdateTime(
    Map<int, int> chatBoxUpdateTimes,
    LinkjoyOfour snap,
  ) {
    final cid = snap.chatBoxId;
    final createTime = snap.createTime;
    if (cid == null || createTime == null) return;
    final cached = chatBoxUpdateTimes[cid];
    if (cached == null || createTime > cached) {
      chatBoxUpdateTimes[cid] = createTime;
    }
  }

  LinkjoyFondnessFasten convertImageProto(ImOB.Image p) {
    LinkjoyFondnessFasten l = LinkjoyFondnessFasten();
    l.id = p.id.toInt();
    l.imgUrl = p.imgUrl;
    l.width = p.weight;
    l.height = p.height;
    l.mimeType = p.mimeType;
    return l;
  }

  LinkjoyFondnessBlanc convertVoiceProto(Voice p) {
    LinkjoyFondnessBlanc l = LinkjoyFondnessBlanc();
    l.id = p.id.toInt();
    l.voiceUrl = p.voiceUrl;
    l.duration = p.duration;
    return l;
  }

  LinkjoyFondnessDegrasse convertVideoProto(Video p) {
    LinkjoyFondnessDegrasse l = LinkjoyFondnessDegrasse();
    l.id = p.id.toInt();
    l.videoUrl = p.videoUrl;
    l.coverUrl = p.coverUrl;
    l.duration = p.duration;
    l.width = p.width;
    l.height = p.height;
    return l;
  }

  Future<List<LinkjoyAncestorSupercool>> batchGetChatBoxInfo({
    List<int>? cIds,
    List<LinkjoyAncestorSupercool>? chatBoxes,
    Function? callback,
  }) {
    final req = BatchGetChatboxInfoReq.create();
    if (cIds != null) {
      for (var id in cIds) {
        req.chatboxIds.add(Int64(id));
      }
    } else if (chatBoxes != null) {
      for (var cb in chatBoxes) {
        req.chatboxIds.add(Int64(cb.id!));
      }
    }

    return LINKJOY.socketManager
        .sendWithReturn<BatchGetChatboxInfoRsp>(req)
        .then((resp) {
          var result = <LinkjoyAncestorSupercool>[];
          var infos = resp?.chatboxInfos;
          if (!LinkjoyGnomeSister.isEmptyList(infos)) {
            for (var c in infos!) {
              result.add(convertChatBoxProto(c));
            }
          }
          return result;
        });
  }

  Future<List<LinkjoyOfour>?> querySnapList(int cid, int time) async {
    List<LinkjoyOfour>? snaps = await LINKJOY.linkjoyDb.snapDao.querySnapList(
      cid,
      time,
    );

    if (snaps != null && snaps.isNotEmpty) {
      _linkjoyStripperByPheebsElevenHair(snaps);
    }
    return snaps;
  }

  Future<List<LinkjoyOfour>?> linkjoyStripperGeographyAncestorSupercoolByPun(
    int? cid, [
    int? fromTime,
    int? toTime,
    int size = 20,
  ]) async {
    Future future = LINKJOY.linkjoyDb.snapDao.modelsByTimeForChatBox(
      cid,
      fromTime,
      toTime,
      size,
    );
    return future.then((snaps) {
      return _linkjoyStripperByPheebsElevenHair(snaps);
    });
  }

  List<LinkjoyOfour>? _linkjoyStripperByPheebsElevenHair(
    List<LinkjoyOfour>? snaps,
  ) {
    if (LinkjoyGnomeSister.isEmptyList(snaps)) return null;
    for (final s in snaps!.toList()) {
      if (s.sendStatus == ChatSnapSendStatus.sending.index) {
        final sending = sendQueue.sendingSnap(s);
        if (sending == null) {
          s.sendStatus = ChatSnapSendStatus.failed.index;
        } else {
          final index = snaps.indexOf(s);
          if (index > -1) {
            snaps.removeAt(index);
            snaps.insert(index, sending);
          }
        }
      }
    }
    return snaps;
  }

  bool linkjoyElevenFbiOfourFugitive(int cId, {List<int>? snapIds}) {
    final req = ReadSnapReq.create();
    req.chatboxId = Int64(cId);
    if (snapIds != null && snapIds.isNotEmpty) {
      for (var snapId in snapIds) {
        req.snapIds.add(Int64(snapId));
      }
    }
    return LINKJOY.socketManager.sendWithoutResp(req);
  }

  void linkjoyEskimoAncestorSupercoolFbiHair({required int cId}) {
    final req = UpdateChatboxReadedStatusReq.create();
    req.chatboxId = Int64(cId);
    req.lastChatboxKey = Int64(
      LINKJOY.linkjoyElope.userChatBoxLastSyncKey(LINKJOY.uid()),
    );

    LINKJOY.socketManager.sendWithoutResp(req);
  }

  bool linkjoyElevenHepatitisAncestorSupercoolDuo({
    required int cId,
    int? uid,
    List<LinkjoyAncestorSupercool>? chatBoxes,
  }) {
    final req = RemoveChatboxReq.create();
    req.chatboxId = Int64(cId);

    req.lastChatboxKey = Int64(
      LINKJOY.linkjoyElope.userChatBoxLastSyncKey(LINKJOY.uid()),
    );
    return LINKJOY.socketManager.sendWithoutResp(req);
  }

  void linkjoyPatterBostonAncestorIdByFatId(int checkId) {
    if (_currentChatId == checkId) _currentChatId = 0;
    linkjoyEskimoAncestorSupercoolHonorableFbiPun(checkId);
  }

  void linkjoyEskimoAncestorSupercoolHonorableFbiPun(int? id) async {
    if (id == null) return;

    final lastSnap = await LINKJOY.linkjoyDb.snapDao.lastModelForChatBox(id);

    if (lastSnap == null) return;

    int updateTime = lastSnap.createTime!;
    LINKJOY.linkjoyDb.chatBoxDao
        .linkjoyEskimoHorsEskimoPun(id, updateTime)
        .then((ret) {
          if (ret) {
            LINKJOY.eventBus.fire(
              LinkjoyAncestorGuitar(
                ChatEventType.chatBoxReloadByIds,
                chatIds: [id],
              ),
            );
          }
        });
  }

  Future<LinkjoyAncestorSupercool?> createChatBox(
    int meUid,
    int tgtUid, {
    String? name,
    String? desc,
    int? coverId,
    CreateChatboxReq_SourceType? srcType,
  }) {
    final req = CreateChatboxReq.create();

    req.memberIds.add(Int64(meUid));
    req.memberIds.add(Int64(tgtUid));

    if (name != null) req.name = name;
    if (desc != null) req.description = desc;
    if (coverId != null) req.coverId = Int64(coverId);
    if (srcType != null) req.sourceType = srcType;

    req.lastChatboxKey = Int64(
      LINKJOY.linkjoyElope.userChatBoxLastSyncKey(LINKJOY.uid()),
    );

    return LINKJOY.socketManager
        .sendWithReturn<CreateChatboxRsp>(req, autoToastOnError: true)
        .then((resp) {
          if (resp != null && resp.code == 0) {
            LinkjoyAncestorSupercool localChatBox = convertChatBoxProto(
              resp.chatbox,
            );
            return localChatBox;
          }
          return null;
        });
  }

  Future<void> linkjoyAncestorStripperPatterHair(int cId) async {
    await LINKJOY.linkjoyDb.chatBoxDao.resetModelUnread(cId);
    LINKJOY.eventBus.fire(
      LinkjoyAncestorGuitar(ChatEventType.chatBoxReloadByIds, chatIds: [cId]),
    );
  }

  Future<LinkjoyAncestorSupercool?> getChatBoxInfo(int cId) {
    final req = GetChatboxInfoReq.create();
    req.chatboxId = Int64(cId);

    req.lastChatboxKey = Int64(
      LINKJOY.linkjoyElope.userChatBoxLastSyncKey(LINKJOY.uid()),
    );
    return LINKJOY.socketManager.sendWithReturn<GetChatboxInfoRsp>(req).then((
      resp,
    ) {
      if (resp != null) {
        return convertChatBoxProto(resp.chatboxInfo);
      }
      return null;
    });
  }

  void _initSyncMsg() {
    if (LINKJOY.socketManager.isConnected) {
      _linkjoyDegreeOfourDuoLap(SyncType.SNAP);
    }
  }

  _showUpdateDialogIfNeeded(AuthRsp authRsp) {
    if (Get.context != null) {
      LinkjoyUISocially.showAppUpdateDialog(Get.context!, authRsp);
    }
  }

  Future<bool> hasChatForMe(int chatBoxId) async {
    return await LINKJOY.linkjoyDb.snapDao.hasSnapWithOwner(
      chatBoxId,
      LINKJOY.uid(),
    );
  }

  Future<void> linkjoyEskimoAncestorSupercoolTrainer(
    LinkjoyAncestorUnborn? user,
  ) async {
    if (user == null) return;
    await LINKJOY.linkjoyDb.chatBoxDao.updateChatBoxMember(user);
  }

  LinkjoyAncestorUnborn? checkBoxUserNeedToSave(
    LinkjoyAncestorSupercool chatBox,
    Map<int, LinkjoyOfour> latestSnapsByCid, {
    Map<int, LinkjoyAncestorUnborn>? userMap,
  }) {
    if (chatBox.partnerId == 0) return null;

    LinkjoyAncestorUnborn? chatUser;
    if (userMap != null && chatBox.partnerId != null) {
      chatUser = userMap[chatBox.partnerId!];
    }

    if (chatUser == null) {
      if (chatBox.chatUser != null) {
        return chatBox.chatUser;
      }
      LinkjoyOfour? latestSnap = latestSnapsByCid[chatBox.id];
      if (latestSnap != null) {
        return LinkjoyAncestorUnborn()
          ..uid = chatBox.partnerId!
          ..nickName = latestSnap.ownerName ?? ''
          ..avatarUrl = latestSnap.ownerHead ?? '';
      }
    }
    return null;
  }

  Future<Map<int, LinkjoyAncestorUnborn>> _collectSaveUser(
    List<LinkjoyAncestorSupercool> existingChaBoxList,
  ) async {
    Set<int> needQueryUserIds = {};
    for (final box in existingChaBoxList) {
      if (box.partnerId != null && box.partnerId != 0) {
        needQueryUserIds.add(box.partnerId!);
      }
    }

    Map<int, LinkjoyAncestorUnborn> userMap = {};
    if (needQueryUserIds.isNotEmpty) {
      final userList = await LINKJOY.linkjoyDb.userDao.modelsByIds(
        needQueryUserIds.toList(),
      );
      for (final user in userList) {
        userMap[user.uid] = user;
      }
    }
    return userMap;
  }
}
