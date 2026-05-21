import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_data_cruel.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_forgot_lap_financial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_forgot_lap_stubborn_ointment.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_forgot_lap_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyForgotLapDivision
    extends LinkjoyDivisionAgency<LinkjoyForgotLapHand> {
  const LinkjoyForgotLapDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_forgot_lap".tr,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return LinkjoyInviteVulcanNarrate<
      LinkjoySororityDataCruel<LinkjoyForgotLapFinancial>
    >(
      onLoadData: logic.onLoadData,
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
              logic.records.length,
              [
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return LinkjoyForgotLapStubbornOintment(
                      item: logic.records[index],
                    );
                  }, childCount: logic.records.length),
                ),
              ],
            );
          },
    );
  }
}
