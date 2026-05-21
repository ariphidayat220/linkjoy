import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_data_cruel.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_protocol_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_decide.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_gravity_stubborn_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_spock_fasten.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_magazine.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_bookshelf.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_marsha_hater.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyGravityStubbornDivision
    extends LinkjoyDivisionAgency<LinkjoyGravityStubbornHand> {
  const LinkjoyGravityStubbornDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYamWheatonFridge(
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(logic.reward.name, style: LinkjoyMarshaTriplet.title),
          LinkjoyFeynman.h12,
          Text('x', style: LinkjoyMarshaTriplet.bodySecondary),
          LinkjoyFeynman.h4,
          Text('${logic.reward.amount}', style: LinkjoyMarshaTriplet.title),
        ],
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return LinkjoyInviteVulcanNarrate<
      LinkjoySororityDataCruel<LinkjoyUnbornDecide>
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
              logic.cardList.length,
              [
                SliverToBoxAdapter(child: _buildCardIconSection()),
                SliverToBoxAdapter(child: LinkjoyFeynman.v24),

                SliverToBoxAdapter(child: _buildGetCardsFreeSection()),

                SliverToBoxAdapter(child: LinkjoyFeynman.v32),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: LinkjoyGarage.s20,
                      right: LinkjoyGarage.s20,
                      bottom: LinkjoyGarage.s10,
                    ),
                    child: Row(
                      children: [
                        LinkjoyWear.circle(
                          Icons.credit_card,
                          iconColor: LinkjoyAve.primaryMain,
                          size: LinkjoyBookshelf.sm,
                        ),
                        SizedBox(width: LinkjoyGarage.s8),
                        Text(
                          'linkjoy_caring_decide_bid'.tr,
                          style: LinkjoyMarshaTriplet.subtitle,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s20),
                    decoration: BoxDecoration(
                      color: LinkjoyAve.surface,
                      borderRadius: BorderRadius.circular(
                        LinkjoyDiscard.radiusLarge,
                      ),
                      border: Border.all(color: LinkjoyAve.borderLight),
                    ),
                    child: Column(
                      children: [
                        ...logic.cardList.map(
                          (item) => Column(
                            children: [
                              _linkjoySterilizeDecideFridge(item, logic.reward),
                              if (logic.cardList.indexOf(item) <
                                  logic.cardList.length - 1)
                                LinkjoyFridgeLightbulb.linkjoyPeephole(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SliverPadding(padding: EdgeInsets.only(bottom: 20)),
              ],
            );
          },
    );
  }

  Widget _buildCardIconSection() {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(
        vertical: LinkjoyGarage.s16,
        horizontal: LinkjoyGarage.s20,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: LinkjoyGarage.s64,
            height: LinkjoyGarage.s64,
            padding: EdgeInsets.all(LinkjoyGarage.s2),
            child: LinkjoySpockFasten(url: logic.reward.url),
          ),
          LinkjoyFeynman.h12,
          Expanded(
            child: Text(
              logic.reward.description,
              style: LinkjoyMarshaTriplet.bodyThird,
              maxLines: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGetCardsFreeSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              LinkjoyWear.circle(
                Icons.star,
                iconColor: LinkjoyAve.primaryMain,
                size: LinkjoyBookshelf.sm,
              ),
              SizedBox(width: LinkjoyGarage.s8),
              Text(
                'linkjoy_caring_brochure_phlegm_cern'.tr,
                style: LinkjoyMarshaTriplet.subtitle,
              ),
            ],
          ),
          LinkjoyFeynman.v10,
          LinkjoyFridgeLightbulb.linkjoyUnbornProtocolStay(),
        ],
      ),
    );
  }

  Widget _linkjoySterilizeDecideFridge(
    LinkjoyUnbornDecide card,
    LinkjoyProtocol? reward,
  ) {
    if (reward == null) return const SizedBox.shrink();

    String icon;
    TextStyle titleStyle;
    String status;
    TextStyle statusStyle;

    String desc =
        "${'linkjoy_caring_stab_pun'.tr}: ${LinkjoyDestineSister.formatDay(card.expireTime, formats: LinkjoyDestineSister.FORMAT_DATE3)}";

    if (card.isUsed) {
      icon = reward.expiredUrl;
      titleStyle = LinkjoyMarshaTriplet.bodyBold.copyWith(
        color: LinkjoyAve.textThird,
      );
      status = "linkjoy_caring_task".tr;
      statusStyle = LinkjoyMarshaTriplet.bodyThird;
    } else {
      if (card.isExpired) {
        icon = reward.expiredUrl;
        titleStyle = LinkjoyMarshaTriplet.bodyBold.copyWith(
          color: LinkjoyAve.textThird,
        );
        status = "linkjoy_caring_spray".tr;
        statusStyle = LinkjoyMarshaTriplet.bodyThird;
      } else {
        icon = reward.url;
        titleStyle = LinkjoyMarshaTriplet.bodyBold;
        status = "linkjoy_caring_joyful".tr;
        statusStyle = LinkjoyMarshaTriplet.bodyImportant;
      }
    }

    return _buildCardItem(
      icon,
      logic.reward.name,
      titleStyle,
      desc,
      LinkjoyMarshaTriplet.caption,
      status,
      statusStyle,
    );
  }

  Widget _buildCardItem(
    String icon,
    String title,
    TextStyle titleStyle,
    String subTitle,
    TextStyle subTitleStyle,
    String status,
    TextStyle statusStyle,
  ) {
    return Padding(
      padding: EdgeInsets.all(LinkjoyGarage.s12),
      child: Row(
        children: [
          LinkjoySpockFasten(url: icon, width: LinkjoyDiscard.iconMedium),
          SizedBox(width: LinkjoyGarage.s12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: titleStyle),
                SizedBox(height: LinkjoyGarage.s2),
                Text(subTitle, style: subTitleStyle),
              ],
            ),
          ),
          Text(status, style: statusStyle),
        ],
      ),
    );
  }
}
