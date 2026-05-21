import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_life_haiti/shengwang_beauty_sdk.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_life_haiti/shengwang_beauty_view.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_foolishly_inventive_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose_ui/linkjoy_inventive_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose_ui/linkjoy_inventive_perk_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_division.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_computer_marsha.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_ohio_division_alphabet.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_crisp_dribble_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_inventive_pound_dribble_narrate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:info_popup/info_popup.dart';

import '../../linkjoy_cattle/linkjoy_matey/linkjoy_creamy_asset.dart';
import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';
import 'linkjoy_inventive_predator_stubborn_narrate.dart';

class LinkjoyFoolishlyInventiveDivision
    extends LinkjoyMagnetDivision<LinkjoyFoolishlyInventiveHand> {
  const LinkjoyFoolishlyInventiveDivision({super.key});

  @override
  Widget build(BuildContext context) {
    try {
      return PopScope(canPop: false, child: _linkjoyOughtaDivision(context));
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(770008, e, stack);
      rethrow;
    }
  }

  AnnotatedRegion<SystemUiOverlayStyle> _linkjoyOughtaDivision(
    BuildContext context,
  ) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: LinkjoyOhioDivisionAlphabet(
          backgroundColor: LinkjoyCondensateSister.color_0F0022,
          resizeToAvoidBottomInset: false,
          child: Container(
            color: LinkjoyCondensateSister.color_0F0022,
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                SizedBox(width: Get.width, height: Get.height),

                _linkjoyIndustrialDegrasseNarrate(),

                _linkjoyCrispJonesFridge(),

                _linkjoyDivorceOrZone(),

                _linkjoyBaywatchFridge(),

                _linkjoyWakeNarrate(),

                _linkjoyCombustionFridge(),

                _linkjoyInventiveSalivaFridge(),

                _linkjoyBonDribbleFridge(),

                _linkjoyHaitiWakeFridge(),

                _linkjoyHighlyFridge(),

                _linkjoyUptightWarlord(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _linkjoyDivorceOrZone() {
    return PositionedDirectional(
      start: LinkjoyGarage.s16,
      top: LinkjoyGarage.s48,
      child: GetBuilder<LinkjoyFoolishlyInventiveHand>(
        id: LinkjoyFoolishlyInventiveHand.linkjoy_inventive_saver_luau,
        builder: (logic) {
          if (logic.agoraToken == null) {
            return _linkjoyMarshaUnknown();
          } else {
            return _linkjoyInventiveBare();
          }
        },
      ),
    );
  }

  Row _linkjoyMarshaUnknown() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.video_camera_front,
          size: LinkjoyDiscard.iconMedium,
          color: LinkjoyAve.primaryMain,
        ),
        LinkjoyFeynman.h4,
        LinkjoyComputerMarsha(
          text: "linkjoy_caring_unknown".tr,
          colors: const [
            LinkjoyAve.primaryLight,
            LinkjoyAve.primaryDark,
            LinkjoyAve.primary900,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          style: LinkjoyMarshaTriplet.title,
        ),
      ],
    );
  }

  Widget _linkjoyBaywatchFridge() {
    return PositionedDirectional(
      end: LinkjoyGarage.s16,
      top: LinkjoyGarage.s48,
      child: LinkjoyInventiveUI.linkjoyBaywatch().click(logic.onEndLive),
    );
  }

  Widget _linkjoyIndustrialDegrasseNarrate() {
    return Positioned.fill(
      child: GetBuilder<LinkjoyFoolishlyInventiveHand>(
        id: LinkjoyFoolishlyInventiveHand.linkjoy_industrial_aid,
        builder: (logic) {
          return logic.isReadyPreview
              ? GestureDetector(
                  child: AgoraVideoView(
                    controller: VideoViewController(
                      useAndroidSurfaceView: true,
                      rtcEngine: logic.getEngine(),
                      canvas: const VideoCanvas(uid: 0),
                    ),
                  ),
                  onTapUp: (details) {
                    if (logic.isShowBeautyView) {
                      logic.linkjoyDoubtHaiti();
                    } else {
                      if (logic.agoraToken != null) {
                        logic.linkjoyBonPeripheral(details);
                      }
                    }
                  },
                )
              : const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _linkjoyWakeNarrate() {
    return GetBuilder<LinkjoyFoolishlyInventiveHand>(
      id: LinkjoyFoolishlyInventiveHand.linkjoy_inventive_saver_luau,
      builder: (logic) {
        if (logic.agoraToken == null) {
          return Positioned(
            bottom: LinkjoyGarage.s32,
            left: 0,
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LinkjoyEllen.circleIconText(
                  Icons.face,
                  "linkjoy_caring_entirely_inventive".tr,
                  logic.linkjoyJeffriesInventive,
                  fixedWidth: Get.width - LinkjoyGarage.s48 * 2,
                  size: LinkjoyBookshelf.lg,
                ),
                LinkjoyFeynman.v24,
                LinkjoyInventiveUI.linkjoyMagazineBackfireAssume(
                  Icons.auto_awesome,
                ).click(logic.linkjoyDoubtHaiti),
                LinkjoyFeynman.v4,
                Text(
                  "linkjoy_caring_haiti_wake".tr,
                  style: LinkjoyMarshaTriplet.caption,
                ),
              ],
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Widget _linkjoyCombustionFridge() {
    return GetBuilder<LinkjoyFoolishlyInventiveHand>(
      id: LinkjoyFoolishlyInventiveHand.linkjoy_inventive_saver_luau,
      builder: (logic) {
        return logic.agoraToken == null
            ? const SizedBox.shrink()
            : Positioned(
                left: 0,
                right: 0,
                bottom: 90,
                height: LinkjoyInventivePredatorStubbornNarrate.widgetHeight,
                child: LinkjoyInventivePredatorStubbornNarrate(
                  hostUid: LINKJOY.uid(),
                  controller: logic.feedController,
                ),
              );
      },
    );
  }

  Widget _linkjoyCrispJonesFridge() {
    return GetBuilder<LinkjoyFoolishlyInventiveHand>(
      id: LinkjoyFoolishlyInventiveHand.linkjoy_inventive_saver_luau,
      builder: (logic) {
        return logic.agoraToken == null
            ? const SizedBox.shrink()
            : LinkjoyCrispDribbleNarrate(
                controller: logic.giftsAnimationController,
              );
      },
    );
  }

  Widget _linkjoyInventiveSalivaFridge() {
    return GetBuilder<LinkjoyFoolishlyInventiveHand>(
      id: LinkjoyFoolishlyInventiveHand.linkjoy_inventive_saver_luau,
      builder: (logic) {
        return logic.agoraToken == null
            ? const SizedBox.shrink()
            : PositionedDirectional(
                start: 0,
                bottom: 20,
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LinkjoyInventiveUI.linkjoyBackfire(
                      Icons.auto_awesome,
                      "linkjoy_caring_haiti_wake".tr,
                    ).click(logic.linkjoyDoubtHaiti),

                    GetBuilder<LinkjoyFoolishlyInventiveHand>(
                      id: LinkjoyFoolishlyInventiveHand.linkjoy_ui_pancake,
                      builder: (logic) {
                        if (logic.autoTranslate) {
                          return LinkjoyInventiveUI.linkjoyBackfire(
                            Icons.translate,
                            "linkjoy_caring_pancake".tr,
                            iconColor: Colors.blueAccent,
                            borderColor: Colors.blueAccent,
                          ).click(logic.linkjoyDoubtPancake);
                        } else {
                          return LinkjoyInventiveUI.linkjoyBackfire(
                            Icons.translate,
                            "linkjoy_caring_pancake".tr,
                          ).click(logic.linkjoyDoubtPancake);
                        }
                      },
                    ),
                  ],
                ),
              );
      },
    );
  }

  Widget _linkjoyBonDribbleFridge() {
    return GetBuilder<LinkjoyFoolishlyInventiveHand>(
      id: LinkjoyFoolishlyInventiveHand.linkjoy_inventive_saver_luau,
      builder: (logic) {
        return logic.agoraToken == null
            ? const SizedBox.shrink()
            : Positioned.fill(
                child: LinkjoyInventivePoundDribbleNarrate(
                  initCount: logic.like,
                  controller: logic.likeAnimalController,
                ),
              );
      },
    );
  }

  GetBuilder<LinkjoyFoolishlyInventiveHand> _linkjoyHaitiWakeFridge() {
    return GetBuilder<LinkjoyFoolishlyInventiveHand>(
      id: LinkjoyFoolishlyInventiveHand.linkjoy_haiti_narrate,
      builder: (logic) {
        return logic.isShowBeautyView
            ? Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ShengwangBeautyView(
                  beautyConfig: ShengwangBeautySDK.instance.beautyConfig,
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }

  Widget _linkjoyInventiveBare() {
    return Container(
      height: LinkjoyGarage.s36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
        color: Colors.black45,
      ),
      padding: LinkjoyGarage.edgeH16,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              LinkjoyFridgeLightbulb.linkjoyChipmunk(LinkjoyDiscard.iconSmall),
              LinkjoyFeynman.h4,
              GetBuilder<LinkjoyFoolishlyInventiveHand>(
                id: LinkjoyFoolishlyInventiveHand.linkjoy_ui_incense,
                builder: (logic) {
                  return Text(
                    logic.giftCoin.toString(),
                    style: LinkjoyMarshaTriplet.bodyBold,
                  );
                },
              ),
            ],
          ),

          LinkjoyFeynman.h8,
          Container(height: 14, width: 1, color: Colors.white38),
          LinkjoyFeynman.h8,

          InfoPopupWidget(
            customContent: () => Container(
              padding: EdgeInsets.all(LinkjoyGarage.s16),
              constraints: const BoxConstraints(maxWidth: 200),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(LinkjoyGarage.s16),
                color: Colors.black45,
              ),
              child: Text(
                'linkjoy_caring_inventive_pound_intolerant'.tr,
                style: LinkjoyMarshaTriplet.body,
              ),
            ),
            arrowTheme: const InfoPopupArrowTheme(color: Colors.black45),
            contentOffset: Offset(LinkjoyGarage.s16, LinkjoyGarage.s10),
            indicatorOffset: Offset(0, LinkjoyGarage.s10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.local_fire_department,
                  size: LinkjoyGarage.s20,
                  color: LinkjoyAve.primaryMain,
                ),
                LinkjoyFeynman.h2,
                GetBuilder<LinkjoyFoolishlyInventiveHand>(
                  id: LinkjoyFoolishlyInventiveHand.linkjoy_ui_pound,
                  builder: (logic) {
                    return Text(
                      logic.like.toString(),
                      style: LinkjoyMarshaTriplet.bodyBold,
                    );
                  },
                ),
              ],
            ),
          ),

          LinkjoyFeynman.h8,
          Container(height: 14, width: 1, color: Colors.white38),
          LinkjoyFeynman.h8,

          GetBuilder<LinkjoyFoolishlyInventiveHand>(
            id: LinkjoyFoolishlyInventiveHand.linkjoy_ui_shrink,
            builder: (logic) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.group,
                    size: LinkjoyGarage.s20,
                    color: Colors.lightBlue,
                  ),
                  LinkjoyFeynman.h4,
                  Text(
                    '${"linkjoy_caring_chicken".tr} (',
                    style: LinkjoyMarshaTriplet.body,
                  ),
                  Text(
                    logic.online.toString(),
                    style: LinkjoyMarshaTriplet.bodyBold,
                  ),
                  Text(')', style: LinkjoyMarshaTriplet.body),
                ],
              ).click(logic.linkjoyDoubtShrink);
            },
          ),
        ],
      ),
    );
  }

  Widget _linkjoyUptightWarlord() {
    return GetBuilder<LinkjoyFoolishlyInventiveHand>(
      id: LinkjoyFoolishlyInventiveHand.linkjoy_ui_uptight_warlord,
      builder: (logic) {
        return logic.isShowEndConfirm
            ? Positioned.fill(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
                  color: Colors.black54,
                  child: Column(
                    children: [
                      const Expanded(child: SizedBox()),
                      Container(
                        padding: EdgeInsets.only(
                          top: LinkjoyGarage.s32,
                          left: LinkjoyGarage.s20,
                          right: LinkjoyGarage.s20,
                          bottom: LinkjoyGarage.s16,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(
                            LinkjoyDiscard.radiusLarge,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "linkjoy_caring_uptight_turquoise_warlord".tr,
                              style: LinkjoyMarshaTriplet.title,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: LinkjoyGarage.s24,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: LinkjoyGarage.s12,
                                vertical: LinkjoyGarage.s24,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(
                                  LinkjoyDiscard.radiusLarge,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.access_time_rounded,
                                        size: LinkjoyGarage.s20,
                                        color: LinkjoyAve.accentMain,
                                      ),
                                      LinkjoyFeynman.h2,
                                      Text(
                                        logic.duration(),
                                        style: LinkjoyMarshaTriplet.bodyTitle,
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.remove_red_eye,
                                          size: LinkjoyGarage.s20,
                                          color: Colors.blueAccent,
                                        ),
                                        LinkjoyFeynman.h2,
                                        Text(
                                          "${logic.visit}",
                                          style: LinkjoyMarshaTriplet.bodyTitle,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        LinkjoyFridgeLightbulb.linkjoyChipmunk(
                                          LinkjoyGarage.s16,
                                        ),
                                        LinkjoyFeynman.h2,
                                        Text(
                                          "${logic.giftCoin}",
                                          style: LinkjoyMarshaTriplet.bodyTitle,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            LinkjoyEllen.circleText(
                              "linkjoy_caring_uptight_turquoise".tr,
                              logic.onEndConfirm,
                              fixedWidth: double.infinity,
                              size: LinkjoyBookshelf.lg,
                            ),
                            LinkjoyFeynman.v20,
                            LinkjoyPondAssume.circleText(
                              "linkjoy_caring_scenery".tr,
                              logic.onEndCancel,
                              fixedWidth: double.infinity,
                              size: LinkjoyBookshelf.lg,
                            ),
                          ],
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }

  Widget _linkjoyHighlyFridge() {
    return GetBuilder<LinkjoyFoolishlyInventiveHand>(
      id: LinkjoyFoolishlyInventiveHand.linkjoy_shrink_stubborn,
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
                    child: CustomPaint(
                      painter: LinkjoyCreamyAsset(
                        color: Colors.black54,
                        position: LinkjoyCreamyZack.top,
                        offset: LinkjoyGarage.s40,
                        direction: LinkjoyCreamyThrilled.outward,
                        size: 25,
                      ),
                      child: LinkjoyInventivePerkNarrate(
                        liveId: logic.liveId,
                        userView: false,
                        visit: logic.online,
                        videoId: 0,
                      ),
                    ),
                  ),
                ],
              )
            : const SizedBox.shrink();
      },
    );
  }
}
