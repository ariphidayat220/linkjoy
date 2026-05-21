import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_data_cruel.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_convict_falcon.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wart_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_therapist_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_unborn_silliness_hair.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_unborn_chicken_hair.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_marsha_hater.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyWartDivision extends LinkjoyDivisionAgency<LinkjoyWartHand> {
  const LinkjoyWartDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYamWheatonFridge(
      _linkjoyImFetusNarrate(),
      centerTitle: true,
      actions: [LinkjoyFeynman.h32],
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: _linkjoyTheseStubbornNarrate(),
      ),
    );
  }

  Widget _linkjoyImFetusNarrate() {
    Widget tabBar = TabBar(
      controller: logic.tabController,
      isScrollable: true,
      tabs: logic.topList.map((e) => _linkjoyFetusNarrate(e)).toList(),
      labelStyle: LinkjoyDivorced.linkjoyImWartFetusYamAboveGreen,
      unselectedLabelStyle: LinkjoyDivorced.linkjoyImWartFetusYamUnAboveGreen,
      padding: const EdgeInsets.all(0),
      onTap: (index) => logic.onTabPageChanged(index),
      indicator: const BoxDecoration(color: LinkjoyAve.primaryMain),
      indicatorPadding: EdgeInsets.only(
        top: LinkjoyGarage.s40,
        left: LinkjoyGarage.s8,
        right: LinkjoyGarage.s8,
      ),
      labelPadding: EdgeInsets.only(
        left: LinkjoyGarage.s8,
        right: LinkjoyGarage.s8,
        bottom: 0,
        top: 0,
      ),
      tabAlignment: TabAlignment.center,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: LinkjoyCondensateSister.black_10p,
            ),
          ),
        ),
        child: tabBar,
      ),
    );
  }

  Widget _linkjoyTheseStubbornNarrate() {
    return GetBuilder<LinkjoyWartHand>(
      id: LinkjoyWartHand.linkjoy_stubborn_skintight,
      builder: (logic) {
        return _linkjoyOughtaStubborn(logic.onTabId, logic.onLoadData);
      },
    );
  }

  Widget _linkjoyOughtaStubborn(
    LinkjoyWartOverweightFetusEnter onTabId,
    Future<LinkjoyMoleculeFinancial<LinkjoySororityDataCruel<LinkjoyUnborn>>>
    Function(int page)
    onLoadResultFriends,
  ) {
    return LinkjoyInviteVulcanNarrate<LinkjoySororityDataCruel<LinkjoyUnborn>>(
      key: ValueKey(logic.onTabId),
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
            List<LinkjoyConvictFalcon> list =
                logic.onTabId == LinkjoyWartOverweightFetusEnter.videoCalls
                ? logic.callsList
                : logic.matchedList;
            return state.linkjoyOughtaHoward(
              context,
              physics,
              viewStatus,
              paddingTop,
              paddingBottom,
              pullRefreshOnStart,
              list.length,
              [
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return _buildCallItem(list[index]);
                  }, childCount: list.length),
                ),
              ],
            );
          },
    );
  }

  Widget _buildCallItem(LinkjoyConvictFalcon callRecord) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: LinkjoyGarage.s12,
            horizontal: LinkjoyGarage.s16,
          ),
          decoration: LinkjoyDivisionUI.linkjoyJellySillyCornea(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  LinkjoyFasten.circle(
                    callRecord.avatarUrl ?? "",
                    size: LinkjoyGarage.s56,
                    clip: ImageClipType.small,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: LinkjoyFridgeUnbornChickenHair(
                      uid: callRecord.uid,
                      showLive: true,
                      nickName: callRecord.nickName,
                      avatar: callRecord.avatarUrl,
                    ),
                  ),
                ],
              ),
              LinkjoyFeynman.h16,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      callRecord.nickName,
                      style: LinkjoyMarshaTriplet.bodyLarge,
                    ),
                    LinkjoyFeynman.v2,
                    LinkjoyDivisionUI.linkjoyConvictFalconSaver(callRecord),
                  ],
                ),
              ),
              LinkjoyFridgeUnbornSillinessHair(user: callRecord, freeTag: true),
            ],
          ),
        ).clickOld(() {
          LinkjoyTherapistSister.onLinkjoyWizardAndrew(callRecord);
        }),
      ],
    );
  }

  Widget _linkjoyFetusNarrate(LinkjoyWartFetusFondness tab) {
    return GetBuilder<LinkjoyWartHand>(
      id: LinkjoyWartHand.linkjoy_fetus,
      builder: (logic) {
        TextStyle onStyle = LinkjoyDivorced.linkjoyImWartFetusYamUnAboveGreen;
        if (logic.onTabId == tab.type) {
          onStyle = LinkjoyDivorced.linkjoyImWartFetusYamAboveGreen;
        }
        return Tab(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text(tab.title, style: onStyle)],
          ),
        );
      },
    );
  }
}
