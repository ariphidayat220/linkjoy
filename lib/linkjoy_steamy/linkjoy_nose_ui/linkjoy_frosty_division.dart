import 'package:linkjoy/linkjoy_steamy/linkjoy_east.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fetus.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_frosty_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_io_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_select_oily.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LinkjoyFrostyDivision extends StatelessWidget {
  LinkjoyFrostyDivision({super.key});

  final LinkjoyFrostyHand logic = Get.find<LinkjoyFrostyHand>();

  @override
  Widget build(BuildContext context) {
    try {
      return keepMainLive(
        Scaffold(
          backgroundColor: LinkjoyAve.bgDark,
          extendBodyBehindAppBar: true,
          body: SafeArea(
            top: false,
            child: GetX<LinkjoyFrostyHand>(
              builder: (_) {
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 64),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          IndexedStack(
                            index: logic.tabIndex.value,
                            children: logic.tabPages,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: 64,
                      decoration: const BoxDecoration(
                        color: LinkjoyAve.bgDark,
                        border: Border(
                          top: BorderSide(color: Colors.black12, width: 0.5),
                        ),
                      ),
                    ),

                    SizedBox(height: 64, child: _tabbar()),
                  ],
                );
              },
            ),
          ),
        ),
      );
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(770003, e, stack);
      rethrow;
    }
  }

  TabBar _tabbar() {
    return TabBar(
      controller: logic.tabController,
      labelPadding: const EdgeInsets.all(0),
      labelStyle: LinkjoyMarshaGreen.style(
        color: LinkjoyDivorced.linkjoyFetusYamMarshaAboveInsistence,
        fontSize: LinkjoyIOSister.isIDLanguage()
            ? (LinkjoyDivorced.linkjoyFetusYamMarshaAboveWomb - 2)
            : LinkjoyDivorced.linkjoyFetusYamMarshaAboveWomb,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: LinkjoyMarshaGreen.style(
        color: LinkjoyDivorced.linkjoyFetusYamMarshaUnAboveInsistence,
        fontSize: LinkjoyDivorced.linkjoyFetusYamMarshaUnAboveWomb,
        fontWeight: FontWeight.bold,
      ),
      onTap: (index) {
        logic.linkjoyEskimoFetusShut(index);
      },
      tabs: logic.tabsConfig.map((e) => onLinkjoyFetusNarrate(e)).toList(),
    );
  }

  Widget keepMainLive(Scaffold scaffold) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) async {
        if (didPop) return;
        LinkjoyRTCOily.instance.forceReleaseEngine();
        SystemNavigator.pop();
      },
      child: scaffold,
    );
  }

  Widget onLinkjoyFetusNarrate(LinkjoyFondnessFetus tab) {
    bool selected = tab.id == logic.tabsConfig[logic.tabIndex.value].id;

    Widget showIcon = tab.iconWidget(selected);
    int badgeNum = badgeNumber(tab.id);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Tab(
        height: 64,
        text: logic.showTabName ? tab.name.tr : null,
        iconMargin: const EdgeInsets.all(0),
        icon: showIcon.badgeCount(badgeNum),
      ),
    );
  }

  int badgeNumber(String tabId) {
    return 0;
  }
}
