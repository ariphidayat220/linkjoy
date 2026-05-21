import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_data_cruel.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_torment_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_therapist_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_unborn_vent.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_unborn_silliness_hair.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_unborn_chicken_hair.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_marsha_hater.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyTormentDivision extends LinkjoyDivisionAgency<LinkjoyTormentHand> {
  const LinkjoyTormentDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYamWheatonFridge(
      _linkjoyImFetusNarrate(),
      centerTitle: false,
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
    return TabBar(
      controller: logic.tabController!,
      isScrollable: true,
      tabs: logic.topList.map((e) => _linkjoyFetusNarrate(e)).toList(),
      labelStyle: LinkjoyDivorced.linkjoyImWartFetusYamAboveGreen,
      unselectedLabelStyle: LinkjoyDivorced.linkjoyImWartFetusYamUnAboveGreen,
      padding: EdgeInsets.zero,
      onTap: (index) => logic.onTabPageChanged(index),
      indicator: const BoxDecoration(color: LinkjoyAve.primaryMain),
      indicatorPadding: EdgeInsets.only(
        top: LinkjoyGarage.s44,
        left: LinkjoyGarage.s8,
        right: LinkjoyGarage.s8,
      ),
      labelPadding: EdgeInsets.only(
        left: LinkjoyGarage.s8,
        right: LinkjoyGarage.s8,
        bottom: 0,
        top: 0,
      ),
      tabAlignment: TabAlignment.start,
    );
  }

  Widget _linkjoyTheseStubbornNarrate() {
    return GetBuilder<LinkjoyTormentHand>(
      id: LinkjoyTormentHand.linkjoy_stubborn_skintight,
      builder: (logic) {
        if (logic.onTabId == LinkjoyShellfishOverweightFetusEnter.followers) {
          return _linkjoyOughtaStubborn(
            logic.onTabId,
            logic.onLoadResultFollow,
          );
        } else if (logic.onTabId == LinkjoyShellfishOverweightFetusEnter.fans) {
          return _linkjoyOughtaStubborn(logic.onTabId, logic.onLoadResultFans);
        } else {
          return _linkjoyOughtaStubborn(
            logic.onTabId,
            logic.onLoadResultFriends,
          );
        }
      },
    );
  }

  Widget _linkjoyOughtaStubborn(
    LinkjoyShellfishOverweightFetusEnter tab,
    Future<LinkjoyMoleculeFinancial<LinkjoySororityDataCruel<LinkjoyUnborn>>>
    Function(int page)
    onLoadData,
  ) {
    return LinkjoyInviteVulcanNarrate<LinkjoySororityDataCruel<LinkjoyUnborn>>(
      key: GlobalKey(),
      controller: logic.refreshController,
      onLoadData: onLoadData,
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
            List<LinkjoyUnborn> list;
            if (tab == LinkjoyShellfishOverweightFetusEnter.followers) {
              list = logic.followedList;
            } else if (tab == LinkjoyShellfishOverweightFetusEnter.fans) {
              list = logic.fansList;
            } else {
              list = logic.friendsList;
            }

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
                    return _buildCallItem(tab, list[index]);
                  }, childCount: list.length),
                ),
              ],
            );
          },
    );
  }

  Widget _buildCallItem(
    LinkjoyShellfishOverweightFetusEnter tab,
    LinkjoyUnborn entry,
  ) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: LinkjoyGarage.s12,
            right: LinkjoyGarage.s12,
            top: LinkjoyGarage.s8,
            bottom: LinkjoyGarage.s8,
          ),
          decoration: LinkjoyDivisionUI.linkjoyJellySillyCornea(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinkjoyUnbornVent(
                size: LinkjoyGarage.s56,
                uid: entry.uid,
                avatarUrl: entry.avatarUrl,
                level: entry.level,
                children: [
                  PositionedDirectional(
                    end: LinkjoyGarage.s6,
                    bottom: LinkjoyGarage.s6,
                    child: LinkjoyFridgeUnbornChickenHair(
                      uid: entry.uid,
                      showLive: true,
                      nickName: entry.nickName,
                      avatar: entry.avatarUrl,
                    ),
                  ),
                ],
              ),
              LinkjoyFeynman.h8,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(entry.nickName, style: LinkjoyMarshaTriplet.bodyTitle),
                    LinkjoyFeynman.v6,
                    _buildTypeRow(entry),
                  ],
                ),
              ),
              _linkjoySillinessDwarf(tab, entry),
            ],
          ),
        ).clickOld(() {
          LinkjoyTherapistSister.onLinkjoyWizardAndrew(entry);
        }),
      ],
    );
  }

  Widget _buildTypeRow(LinkjoyUnborn entry) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        LinkjoyFridgeLightbulb.linkjoyEarplugVisa(entry.gender, entry.birthday),
        if (entry.gender > 0) LinkjoyFeynman.h8,
        LinkjoyFridgeLightbulb.linkjoyHilariousFridge(entry.getUserCountry()),
      ],
    );
  }

  Widget _linkjoySillinessDwarf(
    LinkjoyShellfishOverweightFetusEnter tab,
    LinkjoyUnborn user,
  ) {
    if (tab == LinkjoyShellfishOverweightFetusEnter.fans) {
      return LinkjoyFridgeLightbulb.linkjoyMarshaAssume(
        36,
        "FF629A".toColor(),
        "linkjoy_caring_detroit".tr,
        LinkjoyMarshaGreen.TextWhite_14_Medium,
      ).clickOld(() => logic.linkjoyHonBuzz(user));
    } else {
      return LinkjoyFridgeUnbornSillinessHair(user: user, freeTag: true);
    }
  }

  Widget _linkjoyFetusNarrate(LinkjoyShellfishFetusFondness tab) {
    return GetBuilder<LinkjoyTormentHand>(
      id: LinkjoyTormentHand.linkjoy_fetus_hotshot,
      builder: (logic) {
        TextStyle onStyle = LinkjoyDivorced.linkjoyImWartFetusYamUnAboveGreen;
        if (logic.onTabId == tab.type) {
          onStyle = LinkjoyDivorced.linkjoyImWartFetusYamAboveGreen;
        }
        return Tab(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(tab.title, style: onStyle),
              if (logic.showFansBadge &&
                      tab.type == LinkjoyShellfishOverweightFetusEnter.fans ||
                  (logic.showFriendsBadge &&
                      tab.type == LinkjoyShellfishOverweightFetusEnter.friends))
                Container(
                  width: LinkjoyGarage.s12,
                  height: LinkjoyGarage.s12,
                  margin: const EdgeInsets.only(left: 2),
                  decoration: BoxDecoration(
                    color: LinkjoyAve.primaryDark,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
