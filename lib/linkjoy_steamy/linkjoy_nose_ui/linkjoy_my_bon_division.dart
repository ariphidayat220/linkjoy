import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_data_cruel.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_perk.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_my_bon_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyMyBonDivision extends LinkjoyDivisionAgency<LinkjoyMyBonHand> {
  const LinkjoyMyBonDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_john_pound_me".tr,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    try {
      return SafeArea(child: _linkjoyTheseStubbornNarrate());
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(66010, e, stack);
      rethrow;
    }
  }

  Widget _linkjoyTheseStubbornNarrate() {
    return LinkjoyInviteVulcanNarrate<LinkjoySororityDataCruel<LinkjoyPerk>>(
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
              logic.records.length,
              [
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final user = logic.records[index];
                    return Column(
                      children: [
                        LinkjoyFridgeLightbulb.buildCallItem(user),
                        4.hGap,
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(
                            color: LinkjoyCondensate.black_10p,
                            thickness: 0.5,
                            height: 2,
                          ),
                        ),
                      ],
                    );
                  }, childCount: logic.records.length),
                ),
              ],
            );
          },
    );
  }
}
