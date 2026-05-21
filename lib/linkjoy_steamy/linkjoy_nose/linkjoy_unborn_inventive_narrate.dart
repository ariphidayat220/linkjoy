import 'dart:ui';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_east.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_inventive.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose_ui/linkjoy_inventive_predator_stubborn_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose_ui/linkjoy_inventive_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose_ui/linkjoy_inventive_perk_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_yum.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_supercool.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_flashy_polish_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_crisp_dribble_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_inventive_pound_dribble_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_degrasse_style.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';
import '../linkjoy_get.dart';
import 'linkjoy_meanwhile_playful_decide.dart';
import 'linkjoy_wail_degree_jaw.dart';
import 'linkjoy_unborn_inventive_narrate_mario.dart';
import 'linkjoy_unborn_inventive_narrate_hand.dart';

class LinkjoyUnbornInventiveNarrate extends StatefulWidget {
  final int pageIndex;
  final int liveId;
  final int hostUid;
  final String hostAvatarUrl;
  final String hostNickName;
  final LinkjoyInventiveHair status;
  final int videoId;

  final LinkjoyUnbornInventiveNarrateMario controller;

  const LinkjoyUnbornInventiveNarrate(
    this.pageIndex,
    this.liveId,
    this.hostUid,
    this.hostNickName,
    this.hostAvatarUrl,
    this.status,
    this.videoId,
    this.controller, {
    super.key,
  });

  @override
  State<LinkjoyUnbornInventiveNarrate> createState() =>
      _LinkjoyUnbornInventiveNarrateStatus();
}

class _LinkjoyUnbornInventiveNarrateStatus
    extends State<LinkjoyUnbornInventiveNarrate> {
  late String tag;

  _LinkjoyUnbornInventiveNarrateStatus();

  late LinkjoyUnbornInventiveNarrateHand logic;

  @override
  void initState() {
    super.initState();
    tag = widget.pageIndex.toString();

    logic = Get.put(
      LinkjoyUnbornInventiveNarrateHand(
        widget.pageIndex,
        widget.liveId,
        widget.hostUid,
        widget.hostNickName,
        widget.hostAvatarUrl,
        widget.status,
        widget.videoId,
      ),
      tag: tag,
    );
    logic.onCreate();

    widget.controller.pageHandlers[widget.pageIndex] =
        LinkjoyUnbornInventiveNarrateDegree(
          logic.onPageResume,
          logic.onPagePause,
        );
  }

  @override
  void dispose() {
    widget.controller.pageHandlers.remove(widget.pageIndex);
    logic.onDestroy();
    Get.delete<LinkjoyUnbornInventiveNarrateHand>(tag: tag);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _linkjoyBinocularsDegrasseFridge(),

        _linkjoyIndustrialDegrasseFridge(),

        _linkjoyFoolishlySaverFridge(),

        _linkjoyShrinkScratcherBaywatchFridge(),

        _linkjoyCombustionFridge(),

        _linkjoySalivaFridge(),

        _linkjoyBonDribbleFridge(),

        _linkjoyAncestorFridge(),

        _linkjoyHairCameraNarrate(),

        _linkjoyHairUptightNarrate(),

        _linkjoyShrinkFridge(),

        _linkjoyMeanwhilePlayfulNarrate(),

        _linkjoyOughtaStewartArouse(context),

        _linkjoyFlashyPolish(),

        _linkjoyCrispJonesFridge(),
      ],
    );
  }

  Widget _linkjoyCombustionFridge() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_inventive_saver_luau,
      tag: tag,
      builder: (logic) {
        return logic.isLiving()
            ? Positioned(
                left: 0,
                right: 0,
                bottom: 90,
                height: LinkjoyInventivePredatorStubbornNarrate.widgetHeight,
                child: LinkjoyInventivePredatorStubbornNarrate(
                  hostUid: widget.hostUid,
                  controller: logic.feedController,
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }

  GetBuilder<LinkjoyUnbornInventiveNarrateHand>
  _linkjoyIndustrialDegrasseFridge() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_degrasse_narrate,
      tag: tag,
      builder: (logic) {
        return logic.isReadyPreview
            ? Positioned(
                left: 0,
                top: 0,
                width: 1,
                height: 1,
                child: AgoraVideoView(
                  controller: VideoViewController(
                    useAndroidSurfaceView: true,
                    rtcEngine: logic.rtcManager.getRtcEngine(),
                    canvas: const VideoCanvas(
                      uid: 0,
                      setupMode: VideoViewSetupMode.videoViewSetupAdd,
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }

  GetBuilder<LinkjoyUnbornInventiveNarrateHand>
  _linkjoyBinocularsDegrasseFridge() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_degrasse_narrate,
      tag: tag,
      builder: (logic) {
        if (logic.isReadyPreview) {
          return Positioned.fill(
            child: GestureDetector(
              onTapUp: (tap) {
                if (logic.agoraToken != null) {
                  logic.linkjoyBonPeripheral(tap);
                }
              },
              child: logic.videoPlayerController == null
                  ? AgoraVideoView(
                      controller: VideoViewController.remote(
                        useAndroidSurfaceView: true,
                        rtcEngine: logic.rtcManager.getRtcEngine(),
                        canvas: VideoCanvas(uid: logic.hostUcode!),
                        connection: logic.rtcConnection!,
                      ),
                    )
                  : LinkjoyDegrasseStyle(logic.videoPlayerController!),
            ),
          );
        }

        return Positioned.fill(
          child: Stack(
            alignment: Alignment.center,
            children: [
              logic.hostAvatarUrl.isNotEmpty
                  ? LinkjoyFasten.middle(
                      logic.hostAvatarUrl,
                      placeHolder: (BuildContext context, String url) =>
                          const SizedBox.shrink(),
                    )
                  : const SizedBox.shrink(),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(color: LinkjoyCondensate.black_60p),
                ),
              ),
              GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
                tag: tag,
                id: LinkjoyUnbornInventiveNarrateHand.linkjoy_inventive_uptight,
                builder: (logic) {
                  return logic.liveStatus.isEnd()
                      ? const SizedBox.shrink()
                      : const SpinKitThreeBounce(color: Colors.white, size: 24);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  _linkjoyFoolishlySaverFridge() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_inventive_saver_luau,
      tag: tag,
      builder: (logic) {
        return PositionedDirectional(
          start: LinkjoyGarage.s16,
          top: LinkjoyGarage.s48,
          height: LinkjoyGarage.s48,
          child: Container(
            padding: EdgeInsets.all(LinkjoyGarage.s4),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
              border: Border.all(color: Colors.white12, width: 1),
            ),
            child: Row(
              children: [
                LinkjoyFasten.circle(
                  logic.hostAvatarUrl,
                  size: LinkjoyDiscard.iconLarge,
                ),
                LinkjoyFeynman.h6,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: LinkjoyGarage.s72),
                      child: Text(
                        logic.hostNickName,
                        style: LinkjoyMarshaTriplet.bodyBold,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_fire_department,
                          size: LinkjoyGarage.s16,
                          color: LinkjoyAve.primaryMain,
                        ),
                        LinkjoyFeynman.h2,
                        GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
                          tag: tag,
                          id: LinkjoyUnbornInventiveNarrateHand
                              .linkjoy_ui_pound,
                          builder: (logic) {
                            return Text(
                              "${logic.like}",
                              style: LinkjoyMarshaTriplet.captionNormal,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                LinkjoyFeynman.h8,
                _linkjoyBuzzAssume(),
              ],
            ),
          ).click(logic.linkjoyFoolishlyAndrew),
        );
      },
    );
  }

  Widget _linkjoyShrinkScratcherBaywatchFridge() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      tag: tag,
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_inventive_saver_luau,
      builder: (logic) {
        return PositionedDirectional(
          end: LinkjoyGarage.s16,
          top: LinkjoyGarage.s40,
          child: Row(
            children: [
              _linkjoyMeanwhilePlayfulScratcherPerk(),
              LinkjoyFeynman.h16,
              Padding(
                padding: EdgeInsets.only(top: LinkjoyGarage.s4),
                child: LinkjoyFridgeLightbulb.linkjoyAssumeBaywatch(
                  logic.onLeave,
                  size: LinkjoyBookshelf.md,
                  bgColor: Colors.black45,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  GetBuilder<LinkjoyUnbornInventiveNarrateHand>
  _linkjoyMeanwhilePlayfulScratcherPerk() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      tag: tag,
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_ui_shrink_playful,
      builder: (logic) {
        if (logic.boss == null) {
          return LinkjoySupercool()
              .margin(
                EdgeInsets.only(
                  top: LinkjoyGarage.s8,
                  left: LinkjoyGarage.s8,
                  bottom: LinkjoyGarage.s8,
                ),
              )
              .padding(
                EdgeInsets.only(
                  right: LinkjoyGarage.s16,
                  left: LinkjoyGarage.s16,
                ),
              )
              .r24()
              .align(Alignment.center)
              .h(LinkjoyGarage.s48)
              .color(LinkjoyCondensateSister.black_40p)
              .border(Border.all(color: LinkjoyCondensate.white_20p, width: 1))
              .build(
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.remove_red_eye,
                      size: 20,
                      color: LinkjoyCondensate.white_70p,
                    ),
                    LinkjoyFeynman.h4,
                    _linkjoyPerk(true),
                  ],
                ),
              )
              .clickOld(logic.linkjoyDoubtShrink);
        } else {
          return Stack(
            alignment: Alignment.centerLeft,
            children: [
              LinkjoySupercool()
                  .align(Alignment.center)
                  .margin(
                    EdgeInsets.only(
                      top: LinkjoyGarage.s8,
                      bottom: LinkjoyGarage.s8,
                      left: LinkjoyGarage.s32,
                    ),
                  )
                  .h(LinkjoyGarage.s48)
                  .padding(
                    EdgeInsets.only(
                      right: LinkjoyGarage.s16,
                      left: LinkjoyGarage.s48,
                    ),
                  )
                  .r24()
                  .color(LinkjoyCondensateSister.black_40p)
                  .border(
                    Border.all(color: LinkjoyCondensate.white_20p, width: 1),
                  )
                  .build(_linkjoyPerk(false))
                  .clickOld(logic.linkjoyDoubtShrink),
              Positioned(
                left: 0,
                top: 0,
                width: LinkjoyGarage.s64,
                height: LinkjoyGarage.s64,
                child: LinkjoyInventiveUI.linkjoyMeanwhilePlayfulVent(
                  logic.boss!.avatarUrl,
                  LinkjoyGarage.s8,
                ).clickOld(logic.linkjoyDoubtMeanwhilePlayful),
              ),
            ],
          );
        }
      },
    );
  }

  Widget _linkjoyMeanwhilePlayfulNarrate() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_meanwhile_playful,
      tag: tag,
      builder: (logic) {
        return logic.isShowBisBossView && logic.boss != null
            ? Stack(
                children: [
                  Positioned.fill(
                    child: const SizedBox().clickOld(
                      logic.linkjoyDoubtMeanwhilePlayful,
                    ),
                  ),
                  PositionedDirectional(
                    end: LinkjoyGarage.s16,
                    top: 80.w,
                    child: Container(
                      padding: EdgeInsets.all(LinkjoyGarage.s24),
                      child: LinkjoyMeanwhilePlayfulDecide(
                        logic.boss!.nickName,
                        logic.boss!.avatarUrl,
                        logic.boss!.level,
                        logic.boss!.vip,
                      ),
                    ),
                  ),
                ],
              )
            : const SizedBox.shrink();
      },
    );
  }

  Widget _linkjoyHairCameraNarrate() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      tag: tag,
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_ui_camera,
      builder: (logic) {
        return logic.agoraToken != null &&
                logic.liveStatus == LinkjoyInventiveHair.PAUSE
            ? Positioned(
                top: 260.w,
                width: Get.width * 0.8,
                left: Get.width * 0.1,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment.bottomCenter,
                      radius: 0.8,
                      colors: [
                        LinkjoyAve.primaryMain,
                        LinkjoyAve.primaryDark.withValues(alpha: 0.5),
                      ],
                      stops: [0.0, 1.0],
                    ),
                    borderRadius: BorderRadius.circular(
                      LinkjoyDiscard.radiusXLarge,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: LinkjoyAve.primaryMain.withValues(alpha: 0.3),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  padding: LinkjoyGarage.edgeH16V20,
                  child: Column(
                    children: [
                      SpinKitPouringHourGlassRefined(color: Colors.white),
                      LinkjoyFeynman.v20,
                      Text(
                        "linkjoy_caring_inventive_camera_intolerant".tr,
                        style: LinkjoyMarshaTriplet.bodyLargeBold,
                      ),
                    ],
                  ),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }

  Widget _linkjoyHairUptightNarrate() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      tag: tag,
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_inventive_uptight,
      builder: (logic) {
        return logic.liveStatus.isEnd()
            ? Positioned.fill(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: LinkjoyGarage.s24,
                        vertical: LinkjoyGarage.s32,
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: LinkjoyGarage.s16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(LinkjoyGarage.s24),
                      ),
                      child: logic.liveStatus == LinkjoyInventiveHair.ERROR_END
                          ? Text(
                              LinkjoyDivorced.linkjoyDeliDanceFacebookUpper.tr,
                              style: LinkjoyMarshaTriplet.body,
                            )
                          : Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "linkjoy_caring_inventive_uptight".tr,
                                  style: LinkjoyMarshaTriplet.subtitle,
                                ),
                                LinkjoyFeynman.v32,

                                Column(
                                  children: [
                                    SizedBox(
                                      child: Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(54.w),
                                              border: Border.all(
                                                width: 4.w,
                                                color: Colors.white,
                                              ),
                                            ),
                                            clipBehavior: Clip.hardEdge,
                                            child: LinkjoyFasten.circle(
                                              logic.hostAvatarUrl,
                                              size: 100.w,
                                            ),
                                          ),

                                          PositionedDirectional(
                                            end: 0,
                                            bottom: 0,
                                            child: _linkjoyBuzzAssume(),
                                          ),
                                        ],
                                      ),
                                    ),
                                    LinkjoyFeynman.v16,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          logic.hostNickName,
                                          style: LinkjoyMarshaTriplet.subtitle,
                                        ),
                                        LinkjoyFridgeLightbulb.linkjoySignalFridge(
                                          logic.hostLevel,
                                          isAnchor: true,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                LinkjoyFeynman.v64,
                                LinkjoyUiYum.linkjoyOughtaSatelliteAssume(
                                  LinkjoyUnborn.mini(
                                    logic.hostUid,
                                    logic.hostNickName,
                                    logic.hostAvatarUrl,
                                  ),
                                  size: LinkjoyBookshelf.xl,
                                  fixedWidth: 160.w,
                                ),
                              ],
                            ),
                    ),
                  ],
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }

  GetBuilder<LinkjoyUnbornInventiveNarrateHand> _linkjoyBuzzAssume() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      tag: tag,
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_procreate_hair,
      builder: (logic) {
        if (logic.relation == 1 || logic.relation == 3) {
          return const SizedBox.shrink();
        }

        return LinkjoyEllen.circleIconText(
          Icons.person_add_alt_1_rounded,
          "linkjoy_caring_buzz".tr,
          logic.linkjoyDoubtBuzz,
          size: LinkjoyBookshelf.sm,
        );
      },
    );
  }

  GetBuilder<LinkjoyUnbornInventiveNarrateHand> _linkjoyPerk(bool label) {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      tag: tag,
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_ui_shrink,
      builder: (logic) {
        return Text("${logic.visit}", style: LinkjoyMarshaHater.w_body_M);
      },
    );
  }

  Widget _linkjoySalivaFridge() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_inventive_saver_luau,
      tag: tag,
      builder: (logic) {
        return logic.isLiving() && logic.isReadyPreview == true
            ? Positioned(
                bottom: 0,
                height: LinkjoySuspend.d72,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    SizedBox(
                      width: Get.width,
                      height: LinkjoyGarage.s48,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          LinkjoyFeynman.h16,
                          Expanded(
                            child:
                                _linkjoyOughtaDeliBg(
                                  height: LinkjoyGarage.s48,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 8,
                                  ),
                                  child: AutoSizeText(
                                    "linkjoy_caring_soothe_hash".tr,
                                    style: const TextStyle(
                                      fontSize: AppDimen.font_c1,
                                      fontWeight: FontWeight.w400,
                                      color: LinkjoyCondensateSister.white_40p,
                                      fontFamily: AppText.fontFamily,
                                      decoration: TextDecoration.none,
                                    ),
                                    maxLines: 2,
                                  ),
                                  width: null,
                                ).clickOld(() {
                                  logic.changeInputShowing(true);
                                }),
                          ),
                          LinkjoyFeynman.h12,
                          LinkjoyInventiveUI.linkjoyFastenBackfireAssume(
                            "linkjoy_toe_magazine_flashy",
                          ).click(logic.linkjoyDoubtElevenFlashy),
                          LinkjoyFeynman.h12,
                          LinkjoyInventiveUI.linkjoyFastenBackfireAssume(
                            "linkjoy_toe_ancestor_vinegar",
                          ).click(() {
                            LinkjoyUISocially.linkjoyAllenTeaserAnimal(
                              fromType:
                                  LinkjoyWailImitateGnome.FROM_LIVE_RECHARGE,
                              fromUid: logic.hostUid,
                            );
                          }),
                          LinkjoyFeynman.h16,
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }

  Widget _linkjoyOughtaKnockKryptonian() {
    return Container(
      height: LinkjoyGarage.s24,
      decoration: BoxDecoration(
        color: const Color(0xFFFFF6CA),
        border: BoxBorder.all(color: const Color(0xFFFFDE91), width: 1),
        borderRadius: BorderRadius.circular(LinkjoyGarage.s12),
      ),
      padding: EdgeInsets.all(LinkjoyGarage.s4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinkjoyFridgeLightbulb.linkjoyChipmunk(LinkjoyDiscard.iconSmall),
          Text(
            "${logic.hostPrice}/${'linkjoy_caring_hunter'.tr}",
            style: LinkjoyMarshaHater.caption2_M,
          ),
        ],
      ),
    );
  }

  Widget _linkjoyOughtaStewartArouse(context) {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      tag: tag,
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_satellite_arouse,
      builder: (logic) {
        double bottom = MediaQuery.of(context).viewInsets.bottom;
        if (bottom == 0) {
          if (logic.inputStatus == LinkjoyArouseHair.closing)
            logic.inputStatus = LinkjoyArouseHair.closed;
          if (logic.inputStatus == LinkjoyArouseHair.opened) {
            logic.inputStatus = LinkjoyArouseHair.closed;
            logic.showInput = false;
          }
        } else {
          if (logic.inputStatus == LinkjoyArouseHair.opening)
            logic.inputStatus = LinkjoyArouseHair.opened;
          if (logic.inputStatus == LinkjoyArouseHair.closed) {
            logic.inputStatus = LinkjoyArouseHair.opened;
            logic.showInput = true;
          }
        }
        return logic.isLiving() && logic.showInput
            ? Positioned.fill(
                child: Column(
                  children: [
                    Expanded(
                      child: RawGestureDetector(
                        behavior: HitTestBehavior.opaque,
                        gestures: {
                          HorizontalDragGestureRecognizer:
                              GestureRecognizerFactoryWithHandlers<
                                HorizontalDragGestureRecognizer
                              >(() => HorizontalDragGestureRecognizer(), (
                                HorizontalDragGestureRecognizer instance,
                              ) {
                                instance.onStart = (_) {};
                                instance.onUpdate = (_) {};
                                instance.onEnd = (_) {};
                                instance.onDown = (_) {
                                  logic.changeInputShowing(false);
                                };
                              }),
                        },
                        child: Container(
                          width: Get.width,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(bottom: bottom),
                        child: _linkjoyOughtaDeliBg(
                          width: Get.width - (LinkjoyGarage.s8 * 2),
                          padding: EdgeInsets.symmetric(
                            horizontal: LinkjoyGarage.s16,
                          ),
                          alignment: AlignmentDirectional.centerStart,
                          child: TextField(
                            style: LinkjoyMarshaHater.w_body_M,
                            maxLength: 40,
                            focusNode: logic.focusNode,
                            controller: logic.textEditingController,
                            textInputAction: TextInputAction.send,
                            onSubmitted: (text) => logic.sendMessage(text),
                            decoration: null,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }

  Widget _linkjoyBonDribbleFridge() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_inventive_saver_luau,
      tag: tag,
      builder: (logic) {
        return logic.isLiving()
            ? Positioned.fill(
                child: GestureDetector(
                  onTapUp: logic.linkjoyBonPeripheral,
                  child: LinkjoyInventivePoundDribbleNarrate(
                    initCount: logic.like,
                    controller: logic.likeAnimalController,
                  ),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }

  Widget _linkjoyCrispJonesFridge() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_inventive_saver_luau,
      tag: tag,
      builder: (logic) {
        return logic.agoraToken == null
            ? const SizedBox.shrink()
            : LinkjoyCrispDribbleNarrate(
                controller: logic.giftsAnimationController,
              );
      },
    );
  }

  Widget _linkjoyShrinkFridge() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_shrink_stubborn,
      tag: tag,
      builder: (logic) {
        return logic.isShowVisitorsView
            ? Stack(
                children: [
                  Positioned.fill(
                    child: const SizedBox().clickOld(logic.linkjoyDoubtShrink),
                  ),
                  PositionedDirectional(
                    end: LinkjoyGarage.s16,
                    top: 100.w,
                    child: LinkjoyInventivePerkNarrate(
                      liveId: logic.liveId,
                      userView: true,
                      visit: logic.visit,
                      videoId: logic.videoId,
                    ),
                  ),
                ],
              )
            : const SizedBox.shrink();
      },
    );
  }

  _linkjoyAncestorFridge() {
    return const SizedBox.shrink();
  }

  Widget _linkjoyOughtaDeliBg({
    Widget? child,
    EdgeInsets? margin,
    EdgeInsets? padding,
    double? width = 50,
    double height = 50,
    AlignmentGeometry? alignment = Alignment.center,
  }) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: LinkjoyCondensateSister.black_40p,
        borderRadius: 25.rectBg,
        border: Border.all(color: LinkjoyCondensateSister.white_20p, width: 1),
      ),
      alignment: alignment,
      child: child,
    );
  }

  Widget _linkjoyFlashyPolish() {
    return GetBuilder<LinkjoyUnbornInventiveNarrateHand>(
      tag: tag,
      id: LinkjoyUnbornInventiveNarrateHand.linkjoy_flashy_polish,
      builder: (logic) {
        return logic.isShowGiftShop
            ? Positioned.fill(
                child: LinkjoyFlashyPolishNarrate(
                  LinkjoyFlashyPolishNarrateGnome.send_gift,
                  onConfirm: logic.linkjoyElevenFlashyWarlord,
                  payFromType: LinkjoyWailImitateGnome.FROM_LIVE_SEND_GIFT,
                  chatUser: LinkjoyAncestorUnborn()
                    ..uid = logic.hostUid
                    ..nickName = logic.hostNickName
                    ..avatarUrl = logic.hostAvatarUrl
                    ..temp = logic.temp,
                ).clickOld(logic.linkjoyDoubtElevenFlashy),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
