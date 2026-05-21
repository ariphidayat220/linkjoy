import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_generator_vicious_fat.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_data_cruel.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_unborn_generator_vicious_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_unborn_generator_up_operator_fridge.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_unborn_generator_mouse_fridge.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../linkjoy_get.dart';
import '../linkjoy_sister/linkjoy_upper.dart';

class LinkjoyUnbornGeneratorViciousDivision
    extends LinkjoyDivisionAgency<LinkjoyUnbornGeneratorViciousHand> {
  const LinkjoyUnbornGeneratorViciousDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_olden_phlegm_incense".tr,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child:
              LinkjoyInviteVulcanNarrate<
                LinkjoySororityDataCruel<LinkjoyGeneratorViciousFat>
              >(
                onLoadData: logic.onLoadData,
                refreshOnStartWithPullAnimation: false,
                loadMore: false,
                controller: logic.refreshController,
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
                        logic.data == null ? 0 : 1,
                        buildSlivers(),
                      );
                    },
              ),
        ),

        GetBuilder<LinkjoyUnbornGeneratorViciousHand>(
          id: LinkjoyUnbornGeneratorViciousHand.linkjoy_ui_generator_up,
          builder: (logic) {
            if (logic.data == null) {
              return const SizedBox.shrink();
            }

            return LinkjoyUnbornGeneratorMouseFridge(
              uid: LINKJOY.user().uid,
              avatar: LINKJOY.user().avatarUrl,
              coinsTotal: logic.data!.coinsTotal,
              width: Get.width,
            );
          },
        ),
      ],
    );
  }

  List<Widget> buildSlivers() {
    if (logic.data == null) {
      return [SliverPadding(padding: EdgeInsets.all(LinkjoyGarage.s16))];
    }

    return [
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
          child: Column(
            children: [
              LinkjoyFeynman.v16,

              _linkjoySoft(),

              LinkjoyFeynman.v24,
              const LinkjoyUnbornGeneratorUpOperatorFridge(),
            ],
          ),
        ),
      ),
    ];
  }

  Container _linkjoySoft() {
    return Container(
      decoration: LinkjoyAve.surfaceImportantDecoration,
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s24,
        vertical: LinkjoyGarage.s24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LinkjoyFeynman.v16,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Lv.${LINKJOY.linkjoyUnbornDeposit!.userCurrLevel.level}",
                    style: LinkjoyMarshaTriplet.title.copyWith(
                      fontSize: LinkjoyGarage.s32,
                    ),
                  ),
                  Text(
                    "linkjoy_caring_my_generator".tr.toUpperCase(),
                    style: LinkjoyMarshaTriplet.bodySecondary,
                  ),
                ],
              ),
              LinkjoyFeynman.h24,
              Container(
                height: LinkjoyGarage.s40,
                width: 0.5,
                color: Colors.white24,
              ),
              LinkjoyFeynman.h24,
              Column(
                children: [
                  Row(
                    children: [
                      LinkjoyFridgeLightbulb.linkjoyChipmunk(
                        LinkjoyDiscard.iconMedium,
                      ),
                      LinkjoyFeynman.h8,
                      logic.data!.status == 2
                          ? Text(
                              "${logic.data!.todayReceived}",
                              style: LinkjoyMarshaTriplet.title.copyWith(
                                fontSize: LinkjoyGarage.s32,
                              ),
                            )
                          : Text(
                              "${LINKJOY.linkjoyUnbornDeposit!.userCurrLevel.dailyCoins}",
                              style: LinkjoyMarshaTriplet.title.copyWith(
                                fontSize: LinkjoyGarage.s32,
                              ),
                            ),
                    ],
                  ),
                  logic.data!.status == 2
                      ? Text(
                          "linkjoy_caring_alex".tr.toUpperCase(),
                          style: LinkjoyMarshaTriplet.bodyBold,
                        )
                      : Text(
                          "linkjoy_caring_alike_boob".tr.toUpperCase(),
                          style: LinkjoyMarshaTriplet.bodySecondary,
                        ),
                ],
              ),
            ],
          ),
          LinkjoyFeynman.v32,
          logic.data!.status == 0
              ? LinkjoyEllen.roundText(
                  "linkjoy_caring_dwarf_generator_up".tr,
                  () {
                    LINKJOY.goto(LinkjoyGet.LinkjoyChipmunkFailDivision);
                  },
                  size: LinkjoyBookshelf.lg,
                  fixedWidth: double.infinity,
                  bgColor: Colors.black38,
                  elevation: 0,
                  textColor: LinkjoyAve.textDisabled,
                )
              : (logic.data!.status == 1
                    ? LinkjoyEllen.roundText(
                        "linkjoy_caring_soft_protocol".tr,
                        () {
                          logic.onReceive();
                        },
                        size: LinkjoyBookshelf.lg,
                        fixedWidth: double.infinity,
                      )
                    : LinkjoyEllen.roundIconText(
                        Icons.check_circle,
                        "linkjoy_caring_alex".tr,
                        () {
                          LinkjoyUpper.showInfo(
                            "linkjoy_caring_olden_phlegm_warmth_intolerant".tr,
                          );
                        },
                        size: LinkjoyBookshelf.lg,
                        fixedWidth: double.infinity,
                        bgColor: Colors.black26,
                        elevation: 0,
                      )),
          LinkjoyFeynman.v16,
          _linkjoyPatterGhost(),
        ],
      ),
    );
  }

  Widget _linkjoyPatterGhost() {
    return GetBuilder<LinkjoyUnbornGeneratorViciousHand>(
      id: LinkjoyUnbornGeneratorViciousHand.linkjoy_ui_patter_ghost,
      builder: (logic) {
        int mills =
            logic.data!.nextTime - DateTime.now().millisecondsSinceEpoch;
        if (mills <= 0) {
          return const SizedBox.shrink();
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.access_time_filled, size: LinkjoyDiscard.iconMini),
            LinkjoyFeynman.h4,
            Text(
              "linkjoy_caring_badge_uptight_pun".tr.replaceFirst(
                "%s",
                LinkjoyDestineSister.formatDuration(
                  Duration(milliseconds: mills),
                ),
              ),
              style: LinkjoyMarshaTriplet.caption,
            ),
          ],
        );
      },
    );
  }
}
