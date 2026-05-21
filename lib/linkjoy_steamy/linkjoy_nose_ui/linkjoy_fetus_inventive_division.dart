import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_fetus_inventive_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_unborn_inventive_adjourn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_time.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_inventive_unlock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_inventive_kryptonian.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkjoyFetusInventiveDivision
    extends LinkjoyDivisionTime<LinkjoyFetusInventiveHand> {
  const LinkjoyFetusInventiveDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyTimeSteamyYamWheatonFridge(
      title: LinkjoyDivisionUI.linkjoySteamyYamDivorce(
        "linkjoy_caring_fetus_inventive".tr,
      ),
      actions: buildActions(),
    );
  }

  List<Widget> buildActions() {
    return [
      LinkjoyEllen.circleIconText(
        Icons.video_camera_front,
        "linkjoy_caring_go_inventive".tr,
        logic.linkjoyJeffriesInventive,
      ),
      LinkjoyFeynman.h8,
    ];
  }

  @override
  Widget? buildBody(BuildContext context) {
    try {
      return GetBuilder<LinkjoyFetusInventiveHand>(
        id: LinkjoyFetusInventiveHand.linkjoy_stubborn,
        builder: (logic) {
          return LinkjoyInviteVulcanNarrate<
            LinkjoyMoleculeSorority<LinkjoyInventiveFondness>
          >(
            onLoadData: logic.onLoadResult,
            controller: logic.refreshController,
            refreshOnStartWithPullAnimation: false,
            refreshOnStartEnable: false,
            loadMore: false,
            onBuildView:
                (
                  BuildContext context,
                  ScrollPhysics physics,
                  LinkjoyInviteVulcanNarrateHair viewStatus,
                  double paddingTop,
                  double paddingBottom,
                  bool pullRefreshOnStart,
                  LinkjoyInviteVulcanNarrateStatus state,
                ) {
                  return state.linkjoyOughtaHoward(
                    context,
                    physics,
                    viewStatus,
                    paddingTop,
                    paddingBottom,
                    pullRefreshOnStart,
                    logic.lives.length,
                    [
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(
                          horizontal:
                              LinkjoyDivorced.linkjoyDivisionPearlKidneyShout,
                        ),
                        sliver: SliverGrid.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: LinkjoyDivorced
                                    .linkjoyDivisionPearlKidneyShout,
                                crossAxisSpacing: LinkjoyDivorced
                                    .linkjoyDivisionPearlKidneyShout,
                                childAspectRatio: LinkjoyDivorced
                                    .linkjoyDivisionPearlKidneyDecideAcrossSlacker,
                              ),
                          itemBuilder: (BuildContext context, int index) {
                            LinkjoyInventiveFondness live = logic.lives[index];
                            return linkjoyOughtaInventiveDecide(live);
                          },
                          itemCount: logic.lives.length,
                        ),
                      ),
                    ],
                  );
                },
          );
        },
      );
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(880094, e, stack);
      rethrow;
    }
  }

  static Widget linkjoyOughtaInventiveDecide(LinkjoyInventiveFondness live) {
    double width =
        (Get.width - LinkjoyDivorced.linkjoyDivisionPearlKidneyShout * 3) / 2;
    double height =
        width / LinkjoyDivorced.linkjoyDivisionPearlKidneyDecideAcrossSlacker;
    Size imageSize = Size(width, height);
    BorderRadius imageRadius = LinkjoyDivorced.linkjoyPearlDecideFrontal;
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        borderRadius: LinkjoyDivorced.linkjoyPearlDecideFrontal,
        color: Color(0xFFF0F0F0),
      ),
      child: Stack(
        children: [
          LinkjoyFasten.round(
            live.avatarUrl,
            width: imageSize.width,
            height: imageSize.height,
            fit: BoxFit.cover,
            borderRadius: imageRadius,
            clip: ImageClipType.middle,
            ignorePlaceHolder: true,
          ),
          Positioned(
            right: LinkjoyGarage.s8,
            top: LinkjoyGarage.s8,
            child: const LinkjoyInventiveKryptonian(),
          ),
          _linkjoyOughtaSaver(width, live),
        ],
      ),
    ).clickOld(() {
      Get.toNamed(
        LinkjoyGet.LinkjoyUnbornInventiveDivision,
        arguments: LinkjoyUnbornInventiveAdjourn(
          true,
          live.liveId,
          live.uid,
          live.nickName,
          live.avatarUrl,
          live.videoId,
        ),
      );
    });
  }

  static Positioned _linkjoyOughtaSaver(
    double width,
    LinkjoyInventiveFondness live,
  ) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      height: 65.w,
      child: Container(
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.w),
        alignment: Alignment.topLeft,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: LinkjoyDivorced.linkjoyPearlDecideFrontalMediocre,
            bottomRight: LinkjoyDivorced.linkjoyPearlDecideFrontalMediocre,
          ),
          color: LinkjoyCondensate.black_40p,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                2.wGap,
                Container(
                  constraints: BoxConstraints(maxWidth: width - 50),
                  child: Text(
                    live.nickName,
                    style: LinkjoyMarshaGreen.white16Bold,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                4.wGap,
                LinkjoyFridgeLightbulb.linkjoySignalFridge(
                  live.level,
                  isAnchor: true,
                ),
              ],
            ),
            Row(
              children: [
                _tag(
                  LinkjoyFastenDance.circle(
                    live.countryFlag.imgURL,
                    size: LinkjoyGarage.s12,
                  ),
                  live.countryCode,
                ),
                4.wGap,
                _tag(
                  Icon(
                    Icons.local_fire_department,
                    color: const Color(0xFFFF4848),
                    size: LinkjoyGarage.s16,
                  ),
                  "${live.likes}",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Container _tag(Widget icon, String text) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s8),
      height: LinkjoyGarage.s20,
      decoration: BoxDecoration(
        color: LinkjoyCondensate.white_20p,
        borderRadius: BorderRadius.circular(LinkjoyGarage.s12),
      ),
      child: Row(
        children: [
          icon,
          LinkjoyFeynman.h4,
          Text(text, style: LinkjoyMarshaHater.w_caption_M),
        ],
      ),
    );
  }
}
