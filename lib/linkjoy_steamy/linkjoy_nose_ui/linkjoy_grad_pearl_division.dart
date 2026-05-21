import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_pearl.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_grad_pearl_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_therapist_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';

class LinkjoyGradPearlDivision
    extends LinkjoyDivisionAgency<LinkjoyGradPearlHand> {
  const LinkjoyGradPearlDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      logic.region.name,
      actions: [
        Icon(
          Icons.group_outlined,
          size: LinkjoyDiscard.iconSmall,
          color: LinkjoyAve.textSecondary,
        ),
        LinkjoyFeynman.h4,
        Text(
          "${logic.region.user_count}",
          style: LinkjoyMarshaTriplet.bodySecondary,
        ),
        LinkjoyFeynman.h12,
      ],
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return _linkjoyTheseStubbornNarrate();
  }

  Widget _linkjoyTheseStubbornNarrate() {
    return LinkjoyInviteVulcanNarrate<LinkjoySororityPearl>(
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
                SliverPadding(
                  padding: const EdgeInsets.all(
                    LinkjoyDivorced.linkjoyDivisionPearlKidneyShout,
                  ),
                  sliver: _linkjoyPearlKidneyNarrate(),
                ),
              ],
            );
          },
    );
  }

  SliverGrid _linkjoyPearlKidneyNarrate() {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: LinkjoyDivorced.linkjoyDivisionPearlKidneyShout,
        crossAxisSpacing: LinkjoyDivorced.linkjoyDivisionPearlKidneyShout,
        childAspectRatio:
            LinkjoyDivorced.linkjoyDivisionPearlKidneyDecideAcrossSlacker,
      ),
      itemBuilder: (BuildContext context, int index) {
        LinkjoyUnborn user = logic.records[index];
        CountryVO? country = logic.discoverCountryMap[user.countryId];
        if (user.uid == 0) {
          return LinkjoyTherapistSister.linkjoyTileMushyDecide(
            logic.bannersMap[user.ucode]!,
          );
        } else {
          return LinkjoyTherapistSister.linkjoyOughtaPearlDecide(
            user,
            country,
            suggested: true,
          );
        }
      },
      itemCount: logic.records.length,
    );
  }
}
