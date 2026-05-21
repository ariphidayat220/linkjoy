import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'linkjoy_invite_vulcan_hand.dart';

class LinkjoyMoleculeFinSorority extends LinkjoyMoleculeSorority<int> {}

class LinkjoyInviteVulcanDivision extends StatelessWidget {
  LinkjoyInviteVulcanDivision({super.key});

  final LinkjoyInviteVulcanHand logic = Get.find<LinkjoyInviteVulcanHand>();

  @override
  Widget build(BuildContext context) {
    return LinkjoyInviteVulcanNarrate<LinkjoyMoleculeFinSorority>(
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
                    return Container(
                      color: index % 2 == 0
                          ? Colors.white
                          : Colors.lightBlueAccent[2],
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "item $index   ---- ${DateTime.now().second}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }, childCount: logic.records.length),
                ),
              ],
            );
          },
    );
  }
}
