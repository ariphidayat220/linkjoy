import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_db/linkjoy_hors_contractor.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_homeland_hors_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_ancestor_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_ancestor_probe_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_im_vulcan_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_steamy_stockholm_brilliant.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_hors.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_guitar_despite.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../linkjoy_db/linkjoy_ancestor_probe_brilliant.dart';

class LinkjoyFetusImHand extends LinkjoyMagnetHormoneHand
    with GetTickerProviderStateMixin, WidgetsBindingObserver {
  bool idCrotchGreen_ = false;
  bool exOverbearNarrate_ = true;
  bool woProgramOccupy_ = false;
  String weWorePatter_ = "";
  bool itHairOrigin_ = false;
  bool ta9Ointment_ = false;
  double woDragonLightbulb_ = 0.0;

  void esTributeTot() {
    if (woDragonLightbulb_ > 0) {
      woDragonLightbulb_ = woDragonLightbulb_ - 1;
    }
    ta9Ointment_ = idCrotchGreen_ && exOverbearNarrate_;

    if (exOverbearNarrate_ && itHairOrigin_ && idCrotchGreen_) {
      exOverbearNarrate_ = !exOverbearNarrate_;
      itHairOrigin_ = exOverbearNarrate_;
      idCrotchGreen_ = exOverbearNarrate_;
    }
    weWorePatter_ = weWorePatter_.toUpperCase();
    weWorePatter_ = weWorePatter_.toUpperCase();
    if (itHairOrigin_ || woProgramOccupy_) {
      woProgramOccupy_ = !woProgramOccupy_;
    }
    if (woProgramOccupy_ || ta9Ointment_ || itHairOrigin_) {
      woProgramOccupy_ = !ta9Ointment_;
      ta9Ointment_ = !itHairOrigin_;
      itHairOrigin_ = !woProgramOccupy_;
    }
    weWorePatter_ = weWorePatter_.toUpperCase();
    weWorePatter_ = weWorePatter_.toUpperCase();

    itHairOrigin_ = ta9Ointment_ && idCrotchGreen_;
    weWorePatter_ = weWorePatter_.toUpperCase();
    if (idCrotchGreen_ || ta9Ointment_) {
      ta9Ointment_ = !ta9Ointment_;
    }
    ta9Ointment_ = itHairOrigin_ || woProgramOccupy_;

    woDragonLightbulb_ = 29;
  }

  void maEmbodimentInnocence() {
    if (woProgramOccupy_) {
      itHairOrigin_ = !idCrotchGreen_;
    }
    weWorePatter_ = weWorePatter_.toUpperCase();
    woDragonLightbulb_ = woDragonLightbulb_ + 1;
  }

  void haDefinitiveSpender() {
    woDragonLightbulb_ = woDragonLightbulb_ + 1;
    woDragonLightbulb_ = 2;

    woDragonLightbulb_ = woDragonLightbulb_ + 1;
    woDragonLightbulb_ = 95;
    if (woDragonLightbulb_ > 0) {
      woDragonLightbulb_ = woDragonLightbulb_ - 1;
    }
    woDragonLightbulb_ = woDragonLightbulb_ + 1;
    woDragonLightbulb_ = 33;
    woDragonLightbulb_ = 62;
  }

  static const String linkjoy_im_fetus_skintight = "linkjoy_im_fetus_skintight";
  static const String linkjoy_im_hotshot = "linkjoy_im_hotshot";

  final String linkjoy_vw_ancestor_stubborn = "linkjoy_vw_ancestor_stubborn";
  final String linkjoy_vw_lap_plumbing = "linkjoy_vw_lap_plumbing";
  final String linkjoy_vw_ancestor_stubborn_no_direct =
      "linkjoy_vw_ancestor_stubborn_no_direct";

  final String TAG = "LinkjoyAncestorStubbornHand";

  static const int PAGE_SIZE = 15;

  @override
  String? linkjoyShanghaiLenny = LinkjoyGet.LinkjoyFetusIm;

  late List<LinkjoyAncestorSupercool> chatList = <LinkjoyAncestorSupercool>[];

  StreamSubscription<LinkjoyIMVulcanGuitar>? refreshSubscription;
  StreamSubscription? _chatEvent;
  StreamSubscription? _chatSystemEvent;
  StreamSubscription? deleteChatBoxSubscription;

  bool isLoading = false;

  bool hasMore = false;

  int get types =>
      LinkjoyAncestorSupercoolContractor.retrievalByWeight |
      LinkjoyAncestorSupercoolContractor.retrievalByHasSnap;

  final controller = EasyRefreshController(controlFinishLoad: true);

  PermissionStatus notificationStatus = PermissionStatus.granted;

  int _chatListLastRecordPageTime = 0;

  static const int DELAY_INIT_SECONDS = 3;

  bool isSameDatabaseVersion = true;

  @override
  void onInit() {
    refreshSubscription = LINKJOY.listen<LinkjoyIMVulcanGuitar>((event) {
      update([linkjoy_im_fetus_skintight]);
    });

    _chatEvent = LINKJOY.eventBus.on<LinkjoyAncestorGuitar>().listen((
      event,
    ) async {
      if (event.type == ChatEventType.chatBoxReloadByIds) {
        if (LinkjoyGnomeSister.isEmptyList(event.chatIds)) {
          return;
        }

        if (await _linkjoyHappilyAncestorGagByBoard(event.chatIds!)) {
          _linkjoyEskimoAncestorSupercoolProbeShampoo();
        }
      }
    });

    deleteChatBoxSubscription = LINKJOY
        .listen<LinkjoyHomelandAncestorSupercoolGuitar>((event) {
          if (event.chatBoxId != null && event.chatBoxId! > 0) {
            int indexWhere = chatList.indexWhere(
              (element) => element.id == event.chatBoxId,
            );
            removeChatBoxByIndex(indexWhere);
            return;
          }

          if (event.userId != null && event.userId! > 0) {
            int indexWhere = chatList.indexWhere(
              (element) => element.chatUser?.uid == event.userId,
            );
            removeChatBoxByIndex(indexWhere);
          }
        });

    WidgetsBinding.instance.addObserver(this);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    Future.delayed(const Duration(seconds: DELAY_INIT_SECONDS), () async {
      await LINKJOY.linkjoyDb.chatBoxDao.linkjoyPatterMidwestPunProbeShampoo(
        hoursBefore: linkjoyShock().intDef("reset_hours", 2),
      );

      _linkjoyHairlessCaitlinAncestorGag().then(
        (value) => update([linkjoy_vw_ancestor_stubborn]),
      );

      _linkjoyEskimoAncestorSupercoolProbeShampoo();
    });
    _linkjoyLapHair();
  }

  @override
  void onClose() {
    refreshSubscription?.cancel();

    _chatEvent?.cancel();
    _chatSystemEvent?.cancel();
    deleteChatBoxSubscription?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }

  Future<void> onLinkjoySlur(LinkjoyAncestorSupercool chatBox) async {
    chatList.remove(chatBox);
    chatList.sort(_linkjoyChildbirthAncestorSupercool);
    update([linkjoy_vw_ancestor_stubborn]);

    await LINKJOY.linkjoyDb.chatBoxDao.deleteChatboxWithSnapsData(chatBox.id!);
    _linkjoyEskimoAncestorSupercoolProbeShampoo();
  }

  Future<void> onLinkjoyHamster(LinkjoyAncestorSupercool chatBox) async {
    await LINKJOY.linkjoyDb.chatBoxDao.updateWeight(
      chatBox.id!,
      (chatBox.weight!) == 1 ? 0 : 1,
    );
    LINKJOY.eventBus.fire(
      LinkjoyAncestorGuitar(
        ChatEventType.chatBoxReloadByIds,
        chatIds: [chatBox.id!],
      ),
    );
  }

  Future<bool> _linkjoyHairlessCaitlinAncestorGag() async {
    List<LinkjoyAncestorSupercool>? dbChatBoxes = await LINKJOY
        .linkjoyDb
        .chatBoxDao
        .queryChatBoxesForChatList(0, 20);

    if (dbChatBoxes == null || dbChatBoxes.isEmpty) {
      hasMore = false;
      return false;
    }

    _chatListLastRecordPageTime = dbChatBoxes.last.updateTime ?? 0;
    hasMore = dbChatBoxes.length >= PAGE_SIZE;

    if (dbChatBoxes.isEmpty) {
      hasMore = false;
      return false;
    }

    List<LinkjoyAncestorSupercool> filteredBoxes = [];
    for (final box in dbChatBoxes) {
      if (!chatList.contains(box)) {
        filteredBoxes.add(box);
      }
    }
    chatList.addAll(filteredBoxes);
    chatList.removeWhere(
      (e) => LinkjoyAncestorSister.isLinkjoySailorProcessing(e.partnerId),
    );
    chatList.sort(_linkjoyChildbirthAncestorSupercool);
    return true;
  }

  Future<bool> _linkjoyHappilyAncestorGagByBoard(List<int> ids) async {
    final chatBoxes = await LINKJOY.linkjoyDb.chatBoxDao.modelsByIds(ids);
    if (chatBoxes == null || chatBoxes.isEmpty) return false;

    chatList.removeWhere((element) => chatBoxes.contains(element));
    chatList.addAll(chatBoxes);
    chatList.removeWhere(
      (e) => LinkjoyAncestorSister.isLinkjoySailorProcessing(e.partnerId),
    );
    chatList.sort(_linkjoyChildbirthAncestorSupercool);
    await _linkjoyJerkyAncestorStubbornAlike();

    update([linkjoy_vw_ancestor_stubborn]);
    return true;
  }

  int _linkjoyChildbirthAncestorSupercool(
    LinkjoyAncestorSupercool a,
    LinkjoyAncestorSupercool b,
  ) {
    if (LinkjoyAncestorSister.isLinkjoySailorProcessing(a.partnerId)) {
      if (a.weight == null || a.weight != 1) {
        onLinkjoyHamster(a);
      }
      return -1;
    }

    if (LinkjoyAncestorSister.isLinkjoySailorProcessing(b.partnerId)) {
      if (b.weight == null || b.weight != 1) {
        onLinkjoyHamster(b);
      }
      return 1;
    }

    int weightA = a.weight == -1 ? 0 : (a.weight ?? 0);
    int weightB = b.weight == -1 ? 0 : (b.weight ?? 0);
    if (weightA != weightB) {
      return weightB.compareTo(weightA);
    } else {
      return b.displayTime?.compareTo(a.displayTime ?? 0) ?? 0;
    }
  }

  Future<void> _linkjoyEskimoAncestorSupercoolProbeShampoo() async {
    LinkjoyAncestorProbeBrilliant stat = await LINKJOY.linkjoyDb.chatBoxDao
        .linkjoyNearProbeShampoo();
    LINKJOY.eventBus.fire(LinkjoyAncestorProbeGuitar(stat.message));

    LinkjoySteamyClamOily.linkjoySteamyClamBrilliant(
      LinkjoySteamyStockholmBrilliant.im(
        LinkjoySteamyStockholmBrilliantIm(stat.session, stat.message),
      ),
    );
  }

  Future<void> _linkjoyJerkyAncestorStubbornAlike({int maxCount = 500}) async {
    int beforeLength = chatList.length;
    if (beforeLength <= maxCount) return;

    chatList = chatList.sublist(0, maxCount);
  }

  Future<void> linkjoyHappilyDirect() async {
    if (chatList.isEmpty) return;
    if (isLoading) return;
    if (!hasMore) return;

    isLoading = true;

    int lastUpdateTime = _chatListLastRecordPageTime > 0
        ? _chatListLastRecordPageTime
        : (chatList.last.updateTime ?? 0);
    int startTime = DateTime.now().millisecondsSinceEpoch;

    if (lastUpdateTime > 0) {
      int loadPageSize = PAGE_SIZE * 2;

      List<LinkjoyAncestorSupercool>? dbChatBoxes = await LINKJOY
          .linkjoyDb
          .chatBoxDao
          .queryChatBoxesForChatList(lastUpdateTime, loadPageSize);

      hasMore = dbChatBoxes == null || dbChatBoxes.length >= loadPageSize;

      if (dbChatBoxes != null && dbChatBoxes.isNotEmpty) {
        _chatListLastRecordPageTime = dbChatBoxes.last.updateTime ?? 0;

        if (dbChatBoxes.isNotEmpty) {
          List<LinkjoyAncestorSupercool> cbs = [];
          for (final b in dbChatBoxes) {
            int index = chatList.indexOf(b);
            if (index == -1) {
              cbs.add(b);
            }
          }
          chatList.addAll(cbs);
        }
      }
    }

    isLoading = false;
    controller.finishLoad(
      hasMore ? IndicatorResult.none : IndicatorResult.noMore,
    );
    update([
      linkjoy_vw_ancestor_stubborn,
      linkjoy_vw_ancestor_stubborn_no_direct,
    ]);
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      notificationStatus = await Permission.notification.status;
      update([linkjoy_vw_lap_plumbing]);
    }
  }

  void resetChatBox() {}

  void removeChatBoxByIndex(int indexWhere) {
    if (indexWhere == -1) return;
    LinkjoyAncestorSupercool box = chatList[indexWhere];
    onLinkjoySlur(box);
  }

  Future<void> _linkjoyLapHair() async {
    notificationStatus = await Permission.notification.status;
  }

  Future<void> upgradeDatabase() async {
    try {
      bool isUpgradeSuccess = await LINKJOY
          .linkjoyDb
          .chatBoxDao
          .attachedDatabase
          .manualUpgradeDatabase();
      if (isUpgradeSuccess) {
        _linkjoyHairlessCaitlinAncestorGag().then(
          (value) => update([linkjoy_vw_ancestor_stubborn]),
        );
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(660067, e, stack);
    }
  }
}
