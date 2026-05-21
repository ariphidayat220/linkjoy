import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_phillips_mushy_subjective.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_madness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_protocol_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_phillips_fail_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyPhillipsFailDivision
    extends LinkjoyDivisionAgency<LinkjoyPhillipsFailHand> {
  const LinkjoyPhillipsFailDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYamWheatonFridge(
      Column(
        children: [
          GetBuilder<LinkjoyPhillipsFailHand>(
            id: logic.linkjoy_phillips_stubborn,
            builder: (logic) {
              return Text(
                logic.isSubscription
                    ? "linkjoy_caring_among".tr
                    : "linkjoy_caring_phillips".tr,
                style: LinkjoyMarshaTriplet.title,
              );
            },
          ),

          GetBuilder<LinkjoyPhillipsFailHand>(
            id: logic.linkjoy_phillips_hair,
            builder: (logic) {
              return LINKJOY.linkjoyUnbornDeposit!.vip()
                  ? Text(
                      LinkjoyDestineSister.getFormatDateTime(
                        LINKJOY.linkjoyUnbornDeposit!.vipExpire,
                        formats: LinkjoyDestineSister.FORMAT_YYYYMMDD,
                      ),
                      style: LinkjoyMarshaTriplet.caption,
                    )
                  : Text(
                      "linkjoy_caring_mouse_phillips_intolerant".tr,
                      style: LinkjoyMarshaTriplet.captionBold.copyWith(
                        color: LinkjoyAve.textImportant1,
                      ),
                    );
            },
          ),
        ],
      ),
      actions: [
        GetBuilder<LinkjoyPhillipsFailHand>(
          id: logic.linkjoy_phillips_stubborn,
          builder: (logic) {
            return Visibility(
              visible:
                  logic.isSubscription &&
                  LINKJOY.linkjoyShock.isLinkjoyLengthOgle(),
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
      bottomLine: false,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        GetBuilder<LinkjoyPhillipsFailHand>(
          id: logic.linkjoy_phillips_stubborn,
          builder: (logic) {
            return Positioned.fill(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    _buildPlanCards(),

                    if (logic.isSubscription) linkjoyOughtaAmongLimbic(),
                  ],
                ),
              ),
            );
          },
        ),
        Positioned(bottom: 0, child: _linkjoySheldorMarsha(context)),
      ],
    );
  }

  Widget linkjoyOughtaAmongLimbic() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s16,
        vertical: LinkjoyGarage.s16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "linkjoy_caring_among_selfish_tale_divorce".tr,
            style: LinkjoyMarshaTriplet.bodySecondary,
          ),
          LinkjoyFeynman.v8,
          Text(
            "linkjoy_caring_among_selfish_tale_limbic".tr,
            style: LinkjoyMarshaTriplet.captionThin,
          ),
        ],
      ),
    );
  }

  Widget _linkjoySheldorMarsha(BuildContext context) {
    var normalStyle = LinkjoyMarshaTriplet.caption;
    var highStyle = LinkjoyMarshaTriplet.captionBold.copyWith(
      color: LinkjoyAve.textImportant1,
    );

    List<InlineSpan> children = [
      TextSpan(
        text: "linkjoy_caring_unborn_pameron".tr,
        style: highStyle,
        recognizer: TapGestureRecognizer()
          ..onTap = logic.goLinkjoyUnbornPameronSpit,
      ),
    ];
    if (logic.isSubscription) {
      children.add(
        TextSpan(
          text: ' ${"linkjoy_caring_scratcher".tr} ',
          style: normalStyle,
        ),
      );
      children.add(
        TextSpan(
          text: "linkjoy_caring_among_pameron".tr,
          style: highStyle,
          recognizer: TapGestureRecognizer()
            ..onTap = logic.goLinkjoyAmongPameronSpit,
        ),
      );
    }
    return Container(
      width: Get.width,
      color: LinkjoyAve.bgDark,
      child: Column(
        children: [
          LinkjoyFeynman.v12,
          LinkjoyFeynman.v8,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '${"linkjoy_caring_by_minus_biological_wildfire_to".tr} ',
                style: normalStyle,
                children: children,
              ),
            ),
          ),
          LinkjoyFeynman.v12,
          SizedBox(height: Get.mediaQuery.padding.bottom),
        ],
      ),
    );
  }

  Widget _buildPlanCards() {
    return SizedBox(
      height: 560.w,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsetsDirectional.only(
          start: LinkjoyGarage.s8,
          top: LinkjoyGarage.s16,
        ),
        children: [
          ...List.generate(logic.vipItems.length, (idx) {
            LinkjoyWedgieMadness data = logic.vipItems[idx];
            return _buildPlanCard(data, idx == 0);
          }),
          SizedBox(width: LinkjoyGarage.s20),
        ],
      ),
    );
  }

  Widget _buildPlanCard(LinkjoyWedgieMadness data, bool isPopular) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: isPopular ? 282.w : 280.w,
          margin: EdgeInsetsDirectional.only(
            start: LinkjoyGarage.s12,
            end: LinkjoyGarage.s8,
            top: LinkjoyGarage.s8,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: LinkjoyGarage.s12,
            vertical: LinkjoyGarage.s20,
          ),
          decoration: BoxDecoration(
            gradient: LinkjoyAve.cardGradient2,
            borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusXLarge),
            border: Border.all(
              color: isPopular
                  ? LinkjoyAve.primaryMain
                  : LinkjoyAve.borderLight,
              width: isPopular ? 2.w : 1.w,
            ),
            boxShadow: isPopular
                ? [
                    BoxShadow(
                      color: LinkjoyAve.primaryMain.withValues(alpha: 0.3),
                      blurRadius: 20.w,
                      offset: Offset(0, 8.w),
                    ),
                  ]
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              LinkjoyFeynman.v20,
              Center(
                child: Text(
                  data.linkjoyPhillipsDivorce,
                  style: LinkjoyMarshaTriplet.title,
                ),
              ),
              Center(
                child: Text(
                  "${data.vipDay} ${'linkjoy_caring_obviously'.tr}",
                  style: LinkjoyMarshaTriplet.bodySecondary.copyWith(
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double,
                  ),
                ),
              ),
              LinkjoyFeynman.v12,

              Wrap(children: _buildPackages(data)),
              LinkjoyFeynman.v4,
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ...LINKJOY.linkjoyShock.configs.linkjoyPebblePhillipsSki
                        .map((benefit) => _linkjoyPhillipsDeliver(benefit)),
                  ],
                ),
              ),
              _linkjoyAssume(data),
            ],
          ),
        ),

        PositionedDirectional(
          start: 0,
          top: 0,
          child: _linkjoyEnglishScratcherDemandKnock(
            data.linkjoyEnglishDestroyMarsha,
            data.linkjoyPhillipsKnockDemandMarsha,
          ),
        ),
      ],
    );
  }

  Widget _linkjoyEnglishScratcherDemandKnock(
    String discountOffText,
    String unitPrice,
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
      ),
      child: Row(
        children: [
          if (discountOffText.isNotEmpty)
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: LinkjoyGarage.s12,
                vertical: LinkjoyGarage.s6,
              ),
              decoration: BoxDecoration(
                color: LinkjoyAve.primaryMain,
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(LinkjoyDiscard.radiusMedium),
                  bottomStart: Radius.circular(LinkjoyDiscard.radiusMedium),
                ),
              ),
              child: Text(
                discountOffText,
                style: LinkjoyMarshaTriplet.bodyBold,
              ),
            ),
          if (unitPrice.isNotEmpty)
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: LinkjoyGarage.s12,
                vertical: LinkjoyGarage.s6,
              ),
              decoration: BoxDecoration(
                color: LinkjoyAve.infoDark,
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(LinkjoyDiscard.radiusMedium),
                  bottomEnd: Radius.circular(LinkjoyDiscard.radiusMedium),
                ),
              ),
              child: Row(
                children: [
                  Text(unitPrice, style: LinkjoyMarshaTriplet.bodyBold),
                  Text(
                    "/${"linkjoy_caring_capacity".tr}",
                    style: LinkjoyMarshaTriplet.caption,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  List<Widget> _buildPackages(LinkjoyWedgieMadness data) {
    List<LinkjoyProtocol> cards = LinkjoyProtocolOily.instance
        .getFirstPaymentRewards(data);
    List<Widget> list = [];
    for (var i = 0; i < cards.length; i++) {
      LinkjoyProtocol c = cards[i];
      list.add(_buildPackageItem(c, data, i));
    }
    return list;
  }

  Widget _buildPackageItem(
    LinkjoyProtocol card,
    LinkjoyWedgieMadness data,
    int index,
  ) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        bottom: LinkjoyGarage.s8,
        end: index % 2 == 0 ? LinkjoyGarage.s8 : 0,
      ),
      width: ((280.w - LinkjoyGarage.s12 * 2) - LinkjoyGarage.s12) / 2,
      decoration: LinkjoyAve.surfaceImportantDecoration,
      child: Column(
        children: [
          LinkjoyFeynman.v8,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinkjoyFeynman.h6,
              LinkjoyFasten.asset(
                card.url,
                width: LinkjoyDiscard.iconMedium,
                height: LinkjoyDiscard.iconMedium,
              ),
              LinkjoyFeynman.h4,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(card.name, style: LinkjoyMarshaTriplet.captionNormal),
                  LinkjoyFeynman.v6,
                  Row(
                    children: [
                      Text(
                        card.type == RewardKinds.coins ? "+" : "x",
                        style: LinkjoyMarshaTriplet.caption,
                      ),
                      LinkjoyFeynman.h2,
                      Text(
                        data.isLifetime
                            ? "${data.vipDay}"
                            : "${card.amount * data.vipDay}",
                        style: LinkjoyMarshaTriplet.bodyLargeBold,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: LinkjoyGarage.edgeH6V2,
            margin: EdgeInsets.only(top: LinkjoyGarage.s6),
            decoration: LinkjoyAve.surfaceDecoration.copyWith(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(LinkjoyDiscard.radiusMedium),
                bottomRight: Radius.circular(LinkjoyDiscard.radiusMedium),
              ),
            ),
            child: Text(
              "${card.amount} ${card.type == RewardKinds.coins ? 'linkjoy_caring_incense'.tr : 'linkjoy_caring_cern'.tr} ${'linkjoy_caring_phillips_frown_capacity'.tr}",
              style: LinkjoyMarshaTriplet.small,
            ),
          ),
        ],
      ),
    ).click(() {
      LinkjoyUISocially.linkjoyProtocolLimbic(card);
    });
  }

  Widget _linkjoyPhillipsDeliver(LinkjoyFondnessPhillipsMushySubjective item) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: LinkjoyGarage.s32,
          height: LinkjoyGarage.s32,
          decoration: BoxDecoration(
            color: LinkjoyAve.primaryMain.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
          ),
          child: LinkjoyFasten.asset(
            item.img,
            width: LinkjoyDiscard.iconMedium,
            height: LinkjoyDiscard.iconMedium,
          ),
        ),
        LinkjoyFeynman.h12,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.title.tr, style: LinkjoyMarshaTriplet.captionBold),
              LinkjoyFeynman.v2,
              Text(item.desc.tr, style: LinkjoyMarshaTriplet.smallThin),
            ],
          ),
        ),
      ],
    );
  }

  Widget _linkjoyAssume(LinkjoyWedgieMadness data) {
    return LinkjoyEllen.round(
      size: LinkjoyBookshelf.lg,
      Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: data.linkjoyKnockMarsha,
                style: LinkjoyMarshaTriplet.bodyBold,
              ),
              TextSpan(
                text: ' ${data.linkjoyKnitKnockMarsha}',
                style: LinkjoyMarshaTriplet.caption.copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ),
      ),
      () {
        logic.onLinkjoyWailMadness(data);
      },
    );
  }
}
