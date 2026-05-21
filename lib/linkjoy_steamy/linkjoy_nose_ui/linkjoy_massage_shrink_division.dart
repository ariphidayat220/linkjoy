import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_data_cruel.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_perk.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_massage_shrink_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_therapist_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_unborn_chicken_hair.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyMassageShrinkDivision
    extends LinkjoyDivisionAgency<LinkjoyMassageShrinkHand> {
  const LinkjoyMassageShrinkDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_massage_shrink".tr,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return _linkjoySkintightDivision();
  }

  Widget _linkjoySkintightDivision() {
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
                    return _linkjoyPerk(logic.records[index]);
                  }, childCount: logic.records.length),
                ),
              ],
            );
          },
    );
  }

  Widget _linkjoyPerk(LinkjoyPerk linkjoyPerk) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        LinkjoyGarage.s16,
        LinkjoyGarage.s12,
        LinkjoyGarage.s16,
        0,
      ),
      padding: LinkjoyGarage.edgeH12V12,
      decoration: LinkjoyAve.surfaceDecoration,
      child: Row(
        children: [
          Stack(
            children: [
              LinkjoyFasten.circle(
                linkjoyPerk.avatarUrl,
                size: LinkjoyGarage.s56,
                clip: ImageClipType.small,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: LinkjoyFridgeUnbornChickenHair(
                  uid: linkjoyPerk.uid,
                  showLive: true,
                  nickName: linkjoyPerk.nickName,
                  avatar: linkjoyPerk.avatarUrl,
                ),
              ),
            ],
          ),
          LinkjoyFeynman.h12,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        linkjoyPerk.nickName,
                        style: LinkjoyMarshaTriplet.body,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled,
                          color: LinkjoyAve.textSecondary,
                          size: LinkjoyDiscard.iconSmall,
                        ),
                        Text(
                          LinkjoyDestineSister.formatRecordsTimesShort(
                            linkjoyPerk.time,
                          ),
                          style: LinkjoyMarshaTriplet.caption,
                        ),
                      ],
                    ),
                  ],
                ),
                LinkjoyFeynman.v3,
                Row(
                  children: [
                    LinkjoyFridgeLightbulb.linkjoyEarplugVisa(
                      linkjoyPerk.gender,
                      linkjoyPerk.birthday,
                      height: LinkjoyGarage.s24,
                    ),
                    LinkjoyFeynman.h8,
                    LinkjoyFridgeLightbulb.linkjoyHilariousFridge(
                      linkjoyPerk.getUserCountry(),
                    ),
                  ],
                ),
                LinkjoyFeynman.v4,
                Text.rich(
                  TextSpan(
                    text: 'linkjoy_caring_pin_me'.tr,
                    style: LinkjoyMarshaTriplet.caption,
                    children: [
                      TextSpan(
                        text: " ${linkjoyPerk.count} ",
                        style: LinkjoyMarshaTriplet.captionBold,
                      ),
                      TextSpan(text: 'linkjoy_caring_pin_destine'.tr),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ).clickOld(() {
      LinkjoyTherapistSister.onLinkjoyWizardAndrew(linkjoyPerk);
    });
  }
}
