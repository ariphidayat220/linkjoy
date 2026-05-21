import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_insurance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_madness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_protocol_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wail_degree_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyWailDegreeDivision
    extends LinkjoyDivisionAgency<LinkjoyWailDegreeHand> {
  const LinkjoyWailDegreeDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_wail".tr,
      actions: [
        GetBuilder<LinkjoyWailDegreeHand>(
          id: logic.linkjoy_marketing_lobby_assume,
          builder: (logic) {
            return Visibility(
              visible: logic.showRestoreButton,
              child: LinkjoyPondAssume.circleIconText(
                Icons.restore_rounded,
                "linkjoy_caring_lobby".tr,
                logic.onLinkjoyLobbyArchery,
                size: LinkjoyBookshelf.sm,
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
      child: Column(
        children: [
          LinkjoyFeynman.v8,
          GetBuilder<LinkjoyWailDegreeHand>(
            id: logic.linkjoy_madness_sickness_eskimo,
            builder: (logic) {
              return _linkjoyAlvaroSaverDecide(logic.option);
            },
          ),
          LinkjoyFeynman.v8,
          Expanded(
            child: GetBuilder<LinkjoyWailDegreeHand>(
              id: logic.linkjoy_madness_sickness_eskimo,
              builder: (logic) {
                return _linkjoyWedgieInsuranceStubborn(logic.option);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _linkjoyAlvaroSaverDecide(LinkjoyWedgieMadness optionDetail) {
    LinkjoyWedgieMadness data = logic.option;
    List<LinkjoyProtocol> list = LinkjoyProtocolOily.instance
        .getFirstPaymentRewards(data);
    return Stack(
      children: [
        Container(
          constraints: BoxConstraints(minHeight: 110.w),
          padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s12),
          decoration: LinkjoyAve.surfaceBanner,
          child: Row(
            mainAxisAlignment: optionDetail.isPackagedProduct
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: _linkjoyDivorceFridge(optionDetail, list),
                ),
              ),
              LinkjoyFeynman.h4,
              LinkjoyGnomeSister.isEmpty(list)
                  ? const SizedBox.shrink()
                  : Icon(
                      Icons.add_rounded,
                      size: LinkjoyGarage.s20,
                      color: Colors.white,
                    ),
              LinkjoyFeynman.h4,
              _cardRowWidget(),
            ],
          ),
        ),
        PositionedDirectional(
          start: 0,
          top: 0,
          child: Container(
            padding: LinkjoyGarage.edgeH8V6,
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(LinkjoyDiscard.radiusXLarge),
                bottomEnd: Radius.circular(LinkjoyDiscard.radiusXLarge),
              ),
            ),
            child: Text(
              logic.option.coupon != null
                  ? "${logic.option.coupon!.offNum}% ${'linkjoy_caring_destroy'.tr}"
                  : logic.option.linkjoyEnglishDestroyMarsha,
              style: LinkjoyMarshaTriplet.captionBold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _linkjoyDivorceFridge(
    LinkjoyWedgieMadness optionDetail,
    List<LinkjoyProtocol> list,
  ) {
    if (optionDetail.isPackagedProduct) {
      return const SizedBox.shrink();
    }
    Widget icon = LinkjoyFridgeLightbulb.linkjoyChipmunk(LinkjoyGarage.s48);
    String title = optionDetail.detailName ?? "";
    if (optionDetail.isVip) {
      icon = LinkjoyFridgeLightbulb.linkjoyPhillipsMagazine(48.w);
      title =
          "${optionDetail.unitValue} ${optionDetail.unitTitle} ${"linkjoy_caring_phillips".tr}";
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        LinkjoyFeynman.h4,
        Text(title, style: LinkjoyMarshaTriplet.title, maxLines: 1),
      ],
    );
  }

  Widget _linkjoyWedgieInsuranceStubborn(LinkjoyWedgieMadness optionDetail) {
    return ListView.separated(
      separatorBuilder: (context, index) => LinkjoyFeynman.v12,
      padding: EdgeInsets.symmetric(vertical: LinkjoyGarage.s8),
      itemCount: optionDetail.payModePrices != null
          ? optionDetail.payModePrices!.length
          : 0,
      itemBuilder: (context, index) {
        return _linkjoyOughtaSubjective(
          context,
          optionDetail.payModePrices![index],
          optionDetail,
          () {
            logic.onLinkjoyHonWail(optionDetail.payModePrices![index]);
          },
        );
      },
    );
  }

  Widget _linkjoyOughtaSubjective(
    BuildContext context,
    LinkjoyWedgieInsurance paymentMethod,
    LinkjoyWedgieMadness optionDetail,
    VoidCallback onPressed,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width - LinkjoyGarage.s16,
      height: LinkjoyGarage.s72,
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
      ),
      child: Row(
        children: [
          LinkjoyFeynman.h12,
          _linkjoyOughtaSubjectiveMagazine(paymentMethod),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              paymentMethod.name ?? "",
              style: LinkjoyMarshaTriplet.bodyBold,
              softWrap: true,
            ),
          ),
          LinkjoyEllen.round(
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  paymentMethod.isIapPay()
                      ? optionDetail.linkjoyKnockMarsha
                      : paymentMethod.priceStr,
                  style: const TextStyle(
                    color: LinkjoyCondensateSister.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                LinkjoyFeynman.h2,
                LinkjoyFridgeLightbulb.linkjoyCampUptight(
                  iconData: Icons.arrow_right,
                  color: LinkjoyAve.textPrimary,
                  size: LinkjoyBookshelf.md.size() * 0.5,
                ),
              ],
            ),
            padding: EdgeInsetsDirectional.only(
              start: LinkjoyGarage.s12,
              end: LinkjoyGarage.s4,
            ),
            onPressed,
          ),
          LinkjoyFeynman.h12,
        ],
      ),
    ).click(onPressed);
  }

  Widget _linkjoyOughtaSubjectiveMagazine(
    LinkjoyWedgieInsurance paymentMethod,
  ) {
    String? icon = paymentMethod.icon;
    if (icon == null || icon.isEmpty == true) {
      return SizedBox(width: LinkjoyGarage.s32, height: LinkjoyGarage.s32);
    }
    return LinkjoyFasten.circle(
      icon,
      size: LinkjoyGarage.s32,
      fit: BoxFit.contain,
    );
  }

  Widget _cardRowWidget() {
    LinkjoyWedgieMadness data = logic.option;
    List<LinkjoyProtocol> list = LinkjoyProtocolOily.instance
        .getFirstPaymentRewards(data);
    List<Widget> children = [];
    for (LinkjoyProtocol reward in list) {
      if (children.isNotEmpty) {
        children.add(SizedBox(width: 4.w));
      }
      int amount = reward.amount;
      if (reward.type == RewardKinds.coins) {
        if (data.isNormalCoin) {
          amount = data.linkjoyChipmunkOxfordWheatonTerror();
        } else if (data.isVip) {
          amount = data.coinExtra * data.vipDay;
        }
      } else {
        if (data.isVip) {
          amount = amount * data.vipDay;
        }
      }
      children.add(
        _cardWidget(
          reward.url,
          "+$amount",
          space: reward.type == RewardKinds.coins ? 0 : 2.w,
        ).click(() => LinkjoyUISocially.linkjoyProtocolLimbic(reward)),
      );
    }
    if (children.isNotEmpty) {
      return Wrap(runSpacing: LinkjoyGarage.s8, children: children);
    }
    return const SizedBox();
  }

  Widget _cardWidget(String icon, String title, {double space = 3}) {
    return Container(
      width: LinkjoyGarage.s48,
      height: LinkjoyGarage.s56,
      decoration: BoxDecoration(
        color: LinkjoyAve.primaryLight,
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LinkjoyFasten.asset(
            icon,
            width: LinkjoyGarage.s24,
            height: LinkjoyGarage.s24,
            fit: BoxFit.contain,
          ),
          SizedBox(height: space),
          Text(title, style: LinkjoyMarshaTriplet.captionBold),
        ],
      ),
    );
  }
}
