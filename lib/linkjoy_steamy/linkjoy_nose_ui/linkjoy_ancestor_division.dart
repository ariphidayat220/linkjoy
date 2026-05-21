import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_degrasse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_ancestor_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wail_degree_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose_ui/linkjoy_ancestor_ointment.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_shredder.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_division.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_ofour_ahold_ketchup.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_io_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_ancestor_arouse_backfire.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_flashy_polish_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_crisp_dribble_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_mozzarella_shredder.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as lib_path;

import '../linkjoy_ui/linkjoy_division_ui.dart';
import '../linkjoy_sister/linkjoy_ancestor_sister.dart';
import 'linkjoy_ancestor_ointment_infection_narrate.dart';

enum LinkjoyAncestorSimulationZack { start, end, offset }

class LinkjoyAncestorDivision
    extends LinkjoyMagnetHormoneDivision<LinkjoyAncestorHand>
    with ChatInputToolBarObserver {
  final _chatInputToolBarKey = GlobalKey<LinkjoyAncestorArouseBackfireStatus>();

  LinkjoyAncestorDivision({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [
      Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: buildAppBar(context),

        body: SafeArea(child: buildBody(context)),
      ),
    ];
  }

  AppBar buildAppBar(BuildContext context) {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      logic.toUserName,
      actions: _actions(context),
      bottomLine: false,
    );
  }

  Widget buildBackground(BuildContext context) {
    return LinkjoyDivisionUI.bgSecondary;
  }

  Widget buildBody(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: <Widget>[
            _linkjoyTheseFridge(),
            LinkjoyAncestorArouseBackfire(
              key: _chatInputToolBarKey,
              observer: this,
              cachePath: _voicePath(logic.chatId),
              chatStyleType: logic.showStyleType,
            ),
          ],
        ),

        GetBuilder<LinkjoyAncestorHand>(
          id: LinkjoyAncestorHand.linkjoy_flashy_polish,
          builder: (logic) {
            if (!logic.isShowGiftShop) {
              return const SizedBox.shrink();
            }
            return logic.isShowGiftShop
                ? LinkjoyFlashyPolishNarrate(
                    LINKJOY.isLinkjoyFoolishly
                        ? LinkjoyFlashyPolishNarrateGnome.beg_gift
                        : LinkjoyFlashyPolishNarrateGnome.send_gift,
                    onConfirm: logic.linkjoyElevenFlashyWarlord,
                    payFromType: LinkjoyWailImitateGnome.FROM_IM_SEND_GIFT,
                    chatUser: logic.oppositeUser,
                  ).click(logic.linkjoyDoubtElevenFlashy)
                : const SizedBox.shrink();
          },
        ),

        LinkjoyCrispDribbleNarrate(controller: logic.giftsAnimationController),
      ],
    );
  }

  List<Widget> _actions(BuildContext context) {
    return [
      if (!LinkjoyAncestorSister.isLinkjoySailorProcessing(logic.toUid))
        GetBuilder<LinkjoyAncestorHand>(
          id: LinkjoyAncestorHand.linkjoy_vw_ancestor_unborn_saver,
          builder: (logic) {
            return logic.oppositeUser != null
                ? LinkjoyFridgeLightbulb.linkjoySillinessMagazine(
                    Icons.more_vert_outlined,
                    () => onSelectInputFunc(
                      ChatInputFuncType.more,
                      context: context,
                    ),
                    color: LinkjoyAve.textThird,
                  )
                : const SizedBox.shrink();
          },
        ),
    ];
  }

  Widget _linkjoySubjectiveForget(BuildContext context, int index) {
    final item = logic.itemAtIndex(index);
    if (item is ChatDateItem) {
      return LinkjoyAncestorOintmentInfectionNarrate(item: item);
    } else {
      return LinkjoyAncestorOintment(
        snap: item,
        uid: logic.toUid,
        nickName: logic.toUserName,
        avatarUrl: logic.toAvatar,
        level: logic.oppositeUser == null ? 0 : logic.oppositeUser!.level,
      );
    }
  }

  @override
  void onActiveInputMethod(ChatInputMethod method) {
    logic.linkjoySimulationToSilly();
  }

  @override
  void onSelectInputFunc(ChatInputFuncType type, {BuildContext? context}) {
    switch (type) {
      case ChatInputFuncType.more:
        context ??= Get.context;
        if (context != null) {
          onLinkjoyMarketingDirectShredder(context);
        }
        break;
      case ChatInputFuncType.video:
        break;
      default:
        break;
    }
  }

  @override
  void onSendGift() {
    _chatInputToolBarKey.currentState?.linkjoyEpicArouseInsurance();
    logic.linkjoyDoubtElevenFlashy();
  }

  @override
  void onSendSticker(LinkjoyFondnessFasten sticker) {}

  @override
  void onSendText(String text) {
    logic.linkjoyElevenMarshaSatellite(text);
  }

  @override
  void onSendVoice(String path) {
    logic.linkjoyElevenBlancSatellite(path);
  }

  @override
  void onTextChanged(String text) {
    _linkjoyElevenEskimoFbiHairIfClutch();
  }

  void _linkjoyElevenEskimoFbiHairIfClutch() {
    if (logic.hasNewSnap) {
      logic.hasNewSnap = false;
      LinkjoyAncestorOily.instance.linkjoyEskimoAncestorSupercoolFbiHair(
        cId: logic.chatId,
      );
    }
  }

  Widget _linkjoyTheseFridge() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          _chatInputToolBarKey.currentState?.linkjoyEpicArouseInsurance();
        },
        child: Stack(
          alignment: AlignmentGeometry.topCenter,
          children: [
            Positioned.fill(
              child: SizedBox(width: Get.width, height: double.infinity),
            ),
            CustomScrollView(
              controller: logic.scrollController,
              reverse: true,
              shrinkWrap: true,
              slivers: [
                GetBuilder<LinkjoyAncestorHand>(
                  id: LinkjoyAncestorHand.linkjoy_vw_ancestor_stubborn,
                  builder: (logic) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => Padding(
                          padding: EdgeInsets.only(
                            top: (index == logic.itemCount - 1) ? 20 : 0,
                            bottom: index == 0 ? 100 : 20,
                          ),
                          child: _linkjoySubjectiveForget(context, index),
                        ),
                        childCount: logic.itemCount,
                      ),
                    );
                  },
                ),
              ],
            ),

            GetBuilder<LinkjoyAncestorHand>(
              id: LinkjoyAncestorHand.linkjoy_vw_ancestor_unborn_saver_decide,
              builder: (logic) {
                return _linkjoyUnbornSaverDecide();
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> onLinkjoyMarketingDirectShredder(BuildContext context) async {
    bool isFollowed = logic.oppositeUser?.isFollowed ?? false;
    int targetUid = logic.toUid;

    SheetAction<int>? action = await LinkjoyUIShredder.linkjoyDirectShredder([
      SheetAction(
        label: isFollowed
            ? "linkjoy_caring_pharmacist".tr
            : "linkjoy_caring_buzz".tr,
        key: 0,
      ),
      SheetAction(label: "linkjoy_caring_mozzarella".tr, key: 1),
      SheetAction(label: "linkjoy_caring_homeland".tr, key: 2),
    ]);
    switch (action?.key) {
      case 0:
        logic.linkjoyHonBuzz();
        break;
      case 1:
        LinkjoyMozzarellaShredder.showReportSheet(targetUid);
        break;
      case 2:
        LinkjoyUISocially.linkjoyWarlordHomeland(logic.onLinkjoySheetSilliness);
        break;
    }
  }

  String _voicePath(int? id) {
    String chatPath = id?.toString() ?? "voice_temp";
    var path = lib_path.join(LINKJOY.cachePath, 'chat');
    path = lib_path.join(path, chatPath);
    LinkjoyIOSister.makeSureDirectory(path);
    return path;
  }

  Widget _linkjoyUnbornSaverDecide() {
    return const SizedBox.shrink();
  }

  @override
  void onSendImage(String path, {LinkjoyFondnessFasten? image}) {
    logic.linkjoyElevenFastenSatellite(path, image);
  }

  @override
  void onSendVideo(String path, {LinkjoyFondnessDegrasse? video}) {
    logic.linkjoyElevenDegrasseSatellite(path, video);
  }
}
