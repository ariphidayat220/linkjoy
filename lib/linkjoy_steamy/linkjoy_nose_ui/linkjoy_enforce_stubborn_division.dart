import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_enforce_stubborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_enforce_stubborn_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyEnforceStubbornDivision
    extends LinkjoyDivisionAgency<LinkjoyEnforceStubbornHand> {
  const LinkjoyEnforceStubbornDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam("linkjoy_caring_sheet".tr);
  }

  @override
  Widget buildBody(BuildContext context) {
    return Container(
      child: GetBuilder<LinkjoyEnforceStubbornHand>(
        id: LinkjoyEnforceStubbornHand.linkjoy_stubborn,
        builder: (logic) {
          return LinkjoyInviteVulcanNarrate<LinkjoySororityEnforceStubborn>(
            onLoadData: logic.onLoadResult,
            refreshOnStartWithPullAnimation: false,
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
                    logic.blackList.length,
                    [
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return _linkjoyUnbornKudos(index);
                        }, childCount: logic.blackList.length),
                      ),
                    ],
                  );
                },
          );
        },
      ),
    );
  }

  Widget _linkjoyUnbornKudos(int index) {
    LinkjoyUnborn user = logic.blackList[index];

    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: LinkjoyGarage.s12,
            horizontal: LinkjoyGarage.s16,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinkjoyFasten.circle(
                user.avatarUrl,
                size: LinkjoyGarage.s48,
                clip: ImageClipType.small,
                fit: BoxFit.cover,
              ),
              LinkjoyFeynman.h16,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.nickName,
                      style: LinkjoyMarshaTriplet.bodyLargeBold,
                    ).maxWidth(200),
                    LinkjoyFeynman.v6,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LinkjoyFridgeLightbulb.linkjoySignalFridge(user.level),
                        LinkjoyFeynman.h4,
                        LinkjoyFridgeLightbulb.linkjoyWantFridge(),
                      ],
                    ),
                  ],
                ),
              ),

              LinkjoyEllen.circleText("linkjoy_caring_slur".tr, () {
                logic.onLinkjoySlurEnforce(user, index);
              }, size: LinkjoyBookshelf.sm),
            ],
          ),
        ),
        LinkjoyFridgeLightbulb.linkjoyPeephole(),
      ],
    );
  }
}
