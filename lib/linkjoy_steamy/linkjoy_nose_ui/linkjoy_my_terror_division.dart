import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_my_terror_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_terror_subjective_narrate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../linkjoy_fondness/linkjoy_terror_stubborn_freaked.dart';
import '../linkjoy_ui/linkjoy_division_ui.dart';
import '../linkjoy_ui_cattle/linkjoy_suspend.dart';
import '../linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import '../linkjoy_ui_quieter/linkjoy_division_agency.dart';
import '../linkjoy_sister/linkjoy_terror_oily.dart';

class LinkjoyMyTerrorDivision
    extends LinkjoyDivisionAgency<LinkjoyMyTerrorHand> {
  const LinkjoyMyTerrorDivision({Key? key}) : super(key: key);

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYamWheatonFridge(
      LinkjoyDivisionUI.linkjoySteamyYamDivorce("linkjoy_caring_my_terror".tr),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: LinkjoyGarage.s16,
        horizontal: LinkjoyGarage.s16,
      ),
      child: _linkjoyVulcanStubbornNarrate(),
    );
  }

  Widget _linkjoyVulcanStubbornNarrate() {
    return GetBuilder<LinkjoyMyTerrorHand>(
      id: logic.linkjoy_stubborn_narrate,
      builder: (logic) {
        return LinkjoyInviteVulcanNarrate<
          LinkjoyMoleculeSorority<LinkjoyTerror>
        >(
          onLoadData: logic.onLoadResult,
          loadMore: false,
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
                  1,
                  [
                    SliverList(
                      delegate: SliverChildListDelegate([
                        if (LinkjoyTerrorOily
                            .instance
                            .availables
                            .isNotEmpty) ...[
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: LinkjoyGarage.s16,
                            ),
                            child: Text(
                              "linkjoy_caring_settler".tr,
                              style: LinkjoyMarshaTriplet.bodyLargeBold,
                            ),
                          ),
                          LinkjoyFeynman.v4,
                          Text(
                            "linkjoy_caring_my_terror_dart".tr,
                            style: LinkjoyMarshaTriplet.caption,
                          ),
                          LinkjoyFeynman.v4,

                          ...List.generate(
                            LinkjoyTerrorOily.instance.availables.length,
                            (idx) {
                              LinkjoyTerror coupon =
                                  LinkjoyTerrorOily.instance.availables[idx];
                              return LinkjoyTerrorSubjectiveNarrate(
                                coupon: coupon,
                                marginBottom: LinkjoyGarage.s12,
                              );
                            },
                          ),
                        ],

                        LinkjoyFeynman.v20,
                        if (LinkjoyTerrorOily.instance.expireds.isNotEmpty) ...[
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: LinkjoyGarage.s16,
                            ),
                            child: Text(
                              "linkjoy_caring_spray".tr,
                              style: LinkjoyMarshaTriplet.bodyLargeBold,
                            ),
                          ),
                          LinkjoyFeynman.v4,
                          ...List.generate(
                            LinkjoyTerrorOily.instance.expireds.length,
                            (idx) {
                              LinkjoyTerror coupon =
                                  LinkjoyTerrorOily.instance.expireds[idx];
                              return LinkjoyTerrorSubjectiveNarrate(
                                coupon: coupon,
                                marginBottom: LinkjoyGarage.s12,
                              );
                            },
                          ),
                        ],
                      ]),
                    ),
                  ],
                );
              },
        );
      },
    );
  }
}
