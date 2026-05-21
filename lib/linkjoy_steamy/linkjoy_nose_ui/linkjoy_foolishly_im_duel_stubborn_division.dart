import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_foolishly_im_generic.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_foolishly_im_duel_stubborn_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyFoolishlyImDuelStubbornDivision
    extends LinkjoyDivisionAgency<LinkjoyFoolishlyImDuelStubbornHand> {
  const LinkjoyFoolishlyImDuelStubbornDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_duel".tr,
      actions: [
        GetBuilder<LinkjoyFoolishlyImDuelStubbornHand>(
          id: logic.linkjoy_duel_above_stubborn_eskimo,
          builder: (logic) {
            return Padding(
              padding: const EdgeInsetsDirectional.only(end: 16),
              child: Icon(
                logic.photoSelectedList.isNotEmpty
                    ? Icons.delete
                    : Icons.delete_outline,
                color: logic.photoSelectedList.isNotEmpty
                    ? Colors.red
                    : LinkjoyAve.disabled,
                size: LinkjoyDiscard.iconLarge,
              ),
            );
          },
        ).clickOld(() => logic.onDeletePhoto()),
      ],
      bottomLine: false,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        _linkjoySaver(),
        Expanded(child: _linkjoyTheseStubbornNarrate()),
        _linkjoyDwarf(),
      ],
    );
  }

  Container _linkjoyDwarf() {
    return Container(
      padding: LinkjoyGarage.edgeH16V20,
      child: GetBuilder<LinkjoyFoolishlyImDuelStubbornHand>(
        id: logic.linkjoy_duel_above_stubborn_eskimo,
        builder: (logic) {
          bool disabled =
              logic.photoSelectedList.isEmpty ||
              logic.hasPendingOrFailedReviewInSelectedList();

          return LinkjoyEllen.roundText(
            "${'linkjoy_caring_eleven'.tr} (${logic.photoSelectedList.length}/${logic.albumMax})",
            logic.onSendMedia,
            size: LinkjoyBookshelf.xl,
            fixedWidth: double.infinity,
            bgColor: disabled ? LinkjoyAve.disabled : Colors.green,
            disabled: disabled,
          );
        },
      ),
    );
  }

  Widget _linkjoyTheseStubbornNarrate() {
    return EasyRefresh.builder(
      onRefresh: logic.onLinkjoyStubbornVulcan,
      onLoad: logic.onLinkjoyStubbornHappilyDirect,
      controller: logic.refreshController,
      triggerAxis: Axis.vertical,
      resetAfterRefresh: false,
      header: LinkjoyFridgeLightbulb.linkjoyVulcanTail(),
      footer: LinkjoyFridgeLightbulb.linkjoyVulcanTenth(),
      childBuilder: (BuildContext context, ScrollPhysics physics) {
        return _linkjoyLoanKidneyNarrate(physics);
      },
    );
  }

  Widget _linkjoyLoanKidneyNarrate(ScrollPhysics physics) {
    return GetBuilder<LinkjoyFoolishlyImDuelStubbornHand>(
      id: logic.linkjoy_stubborn,
      builder: (logic) {
        return GridView.count(
          physics: physics,
          crossAxisCount: 3,
          children: List.generate(logic.photoList.length + 1, (index) {
            return index == 0
                ? _linkjoyNetflixFridge()
                : _linkjoySubjectiveNarrate(logic.photoList[index - 1]);
          }),
        );
      },
    );
  }

  Widget _linkjoyNetflixFridge() {
    return Container(
      margin: const EdgeInsets.all(4),
      color: Colors.grey[300],
      child: AspectRatio(
        aspectRatio: 1,
        child: Center(
          child: Icon(Icons.add, size: 40, color: Colors.grey[700]),
        ),
      ),
    ).clickOld(() => logic.onLinkjoyMandatoryNetflix());
  }

  Widget _linkjoySubjectiveNarrate(LinkjoyFoolishlyImGeneric media) {
    bool isSelect = logic.photoSelectedList.contains(media);
    return GestureDetector(
      onTap: () {
        logic.onSelectItem(media);
      },
      child: Container(
        margin: EdgeInsets.all(LinkjoyGarage.s4),
        color: Colors.grey[300],
        child: AspectRatio(
          aspectRatio: 1,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: LinkjoyFasten.middle(
                  media.isVideo() ? media.video!.coverUrl! : media.imgUrl!,
                  fit: BoxFit.cover,
                ),
              ),
              media.isVideo()
                  ? Icon(
                      Icons.play_circle_outline,
                      size: LinkjoyGarage.s48,
                      color: Colors.black54,
                    )
                  : const SizedBox(),
              _linkjoyTrademarkHair(media),
              Positioned(
                top: LinkjoyGarage.s6,
                right: LinkjoyGarage.s6,
                child: Icon(
                  color: isSelect ? Colors.green : LinkjoyAve.disabled,
                  isSelect ? Icons.check_circle : Icons.check_circle_outline,
                  size: LinkjoyDiscard.iconLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _linkjoySaver() {
    return Container(
      color: LinkjoyAve.surface,
      padding: LinkjoyGarage.edgeH16V12,
      margin: EdgeInsets.only(bottom: LinkjoyGarage.s12),
      child: Row(
        children: [
          Icon(
            Icons.info_outline,
            color: LinkjoyAve.textPrimary,
            size: LinkjoyDiscard.iconSmall,
          ),
          LinkjoyFeynman.h4,
          Text(
            "linkjoy_caring_foolishly_im_duel_trademark_divorce".tr,
            style: LinkjoyMarshaTriplet.body,
          ),
        ],
      ),
    ).click(logic.linkjoyMarketingImDuelTrademarkIntolerant);
  }

  Widget _linkjoyTrademarkHair(LinkjoyFoolishlyImGeneric media) {
    if (media.status == 1) {
      return const SizedBox();
    }
    Color color = (media.status == 0) ? Colors.white : LinkjoyAve.warning;
    return Container(
      color: Colors.black87,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            media.status == 0 ? Icons.pending_actions : Icons.error_rounded,
            size: LinkjoyBookshelf.sm.size(),
            color: color,
          ),
          Text(
            media.status == 0
                ? "linkjoy_caring_in_trademark".tr
                : "linkjoy_caring_trademark_assemble".tr,
            style: LinkjoyMarshaGreen.linkjoy_marsha_estimate,
          ),
        ],
      ),
    );
  }
}
