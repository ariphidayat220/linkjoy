import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_ancestor_question_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_marsha_hater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class LinkjoyAncestorQuestionDivision
    extends LinkjoyDivisionAgency<LinkjoyAncestorQuestionHand> {
  const LinkjoyAncestorQuestionDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      'linkjoy_caring_alrighty_question'.tr,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return SizedBox(
      height: Get.height,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: Column(
          children: [
            if (logic.friend != null) _linkjoyOops(),
            _linkjoyChopstick(),
            LinkjoyFeynman.v32,
          ],
        ),
      ),
    );
  }

  Widget _linkjoyOopsFridge(LinkjoyAncestorUnborn friend) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(LinkjoyGarage.s4),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: LinkjoyFasten.circle(
            friend.avatarUrl,
            size: LinkjoyGarage.s64,
            clip: ImageClipType.small,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitThreeInOut(
              size: LinkjoyGarage.s32,
              itemBuilder: (BuildContext context, int index) {
                return Icon(
                  Icons.favorite,
                  color: LinkjoyAve.textImportant1,
                  size: LinkjoyDiscard.iconSmall,
                );
              },
            ),
            Text(
              "${logic.friend!.temp}°C",
              style: LinkjoyMarshaTriplet.bodyImportant.copyWith(
                fontSize: LinkjoyGarage.s20,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: LinkjoyFasten.circle(
            LINKJOY.user().avatarUrl,
            size: LinkjoyGarage.s64,
            clip: ImageClipType.small,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _linkjoyChopstick() {
    BoxDecoration decoration = LinkjoyAve.surfaceDecoration;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'linkjoy_caring_chopstick_generator_up'.tr,
              style: LinkjoyMarshaTriplet.captionThin,
            ),
          ),
          LinkjoyFeynman.v16,
          _buildBoostItem(
            icon: LinkjoyFridgeLightbulb.linkjoyConvict(
              size: LinkjoyDiscard.iconMedium,
              color: LinkjoyAve.textSecondary,
            ),
            subtitle: 'linkjoy_caring_chopstick_generator_up_bell'.tr,
            decoration: decoration,
          ),
          LinkjoyFeynman.v12,
          _buildBoostItem(
            icon: LinkjoyFridgeLightbulb.linkjoyFlashy(
              size: LinkjoyDiscard.iconMedium,
              color: LinkjoyAve.textSecondary,
            ),
            subtitle: 'linkjoy_caring_chopstick_generator_up_blossom'.tr,
            decoration: decoration,
          ),
          LinkjoyFeynman.v12,
          _buildBoostItem(
            icon: LinkjoyFridgeLightbulb.linkjoyAncestor(
              size: LinkjoyDiscard.iconMedium,
              color: LinkjoyAve.textSecondary,
            ),
            subtitle: 'linkjoy_caring_chopstick_generator_up_yikes'.tr,
            decoration: decoration,
          ),
          LinkjoyFeynman.v24,
          _buildBoostItem(
            icon: Icon(
              Icons.info_outline_rounded,
              color: Colors.white,
              size: LinkjoyDiscard.iconMedium,
            ),
            subtitle: 'linkjoy_caring_chopstick_generator_up_bathroom'.tr,
            decoration: LinkjoyAve.surfaceDecoration.copyWith(
              color: LinkjoyAve.primaryMain,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBoostItem({
    required Widget icon,
    required String subtitle,
    required BoxDecoration decoration,
  }) {
    return Container(
      padding: EdgeInsets.all(LinkjoyGarage.s12),
      decoration: decoration,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: LinkjoyDiscard.iconXLarge,
            height: LinkjoyDiscard.iconXLarge,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
            ),
            child: icon,
          ),
          LinkjoyFeynman.h12,
          Expanded(
            child: Text(subtitle, style: LinkjoyMarshaTriplet.bodySecondary),
          ),
        ],
      ),
    );
  }

  Widget _linkjoyOops() {
    return Stack(
      alignment: Alignment.center,
      children: [
        LinkjoyFasten.asset(
          "linkjoy_toe_ancestor_division_fonda",
          width: Get.width,
          height: Get.width * 462 / 814,
          fit: BoxFit.fill,
        ),
        Column(
          children: [
            LinkjoyFeynman.v40,
            _linkjoyOopsFridge(logic.friend!),
            LinkjoyFeynman.v12,
            Text(
              "linkjoy_caring_alrighty_question_sam_capacity".tr.replaceFirst(
                "%s",
                "${logic.friend!.temp}",
              ),
              style: LinkjoyMarshaTriplet.body,
            ),
          ],
        ),
      ],
    );
  }
}
