import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_generator_vicious_fat.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_data_cruel.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_unborn_generator_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_unborn_generator_web_fridge.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_unborn_generator_up_operator_fridge.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_unborn_generator_mouse_fridge.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyUnbornGeneratorDivision
    extends LinkjoyDivisionAgency<LinkjoyUnbornGeneratorHand> {
  const LinkjoyUnbornGeneratorDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_my_generator".tr,
      bottomLine: false,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return LinkjoyInviteVulcanNarrate<
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
    );
  }

  List<Widget> buildSlivers() {
    if (logic.data == null) {
      return [SliverPadding(padding: EdgeInsets.all(LinkjoyGarage.s16))];
    }

    return [
      SliverToBoxAdapter(
        child: Column(
          children: [
            LinkjoyFeynman.v12,
            _linkjoyUnbornGenerator(),
            LinkjoyFeynman.v20,

            Padding(
              padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
              child: const LinkjoyUnbornGeneratorUpOperatorFridge(),
            ),

            LinkjoyFeynman.v24,
            _linkjoyGeneratorWeb(),

            LinkjoyFeynman.v24,
          ],
        ),
      ),
    ];
  }

  Widget _linkjoyUnbornGenerator() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
      child: LinkjoyUnbornGeneratorMouseFridge(
        uid: LINKJOY.user().uid,
        avatar: LINKJOY.user().avatarUrl,
        coinsTotal: logic.data!.coinsTotal,
        width: Get.width - LinkjoyGarage.s16 * 2,
      ),
    );
  }

  Widget _linkjoyGeneratorWeb() {
    return (logic.data == null)
        ? const SizedBox.shrink()
        : const LinkjoyUnbornGeneratorWebFridge();
  }
}
