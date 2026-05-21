import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_cocktail_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_amplitude.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_therapist_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_marsha_allow.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_marsha_hater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkjoyCocktailDivision
    extends LinkjoyDivisionAgency<LinkjoyCocktailHand> {
  const LinkjoyCocktailDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_cocktail".tr,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        LinkjoyFeynman.v16,
        _linkjoyCocktailYam(),
        LinkjoyFeynman.v16,
        GetBuilder<LinkjoyCocktailHand>(
          id: LinkjoyCocktailHand.linkjoy_placebo,
          builder: (LinkjoyCocktailHand logic) {
            if (logic.hasResult) {
              if (logic.foundUser != null) {
                final user = logic.foundUser!;
                return _linkjoyPlacebo(user);
              } else {
                return LinkjoyFridgeLightbulb.linkjoyNoFinancialMagazine(
                  error: false,
                );
              }
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ],
    );
  }

  Widget _linkjoyPlacebo(LinkjoyUnborn user) {
    return Container(
      decoration: LinkjoyAve.surfaceDecoration,
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s16,
        vertical: LinkjoyGarage.s12,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s16,
        vertical: LinkjoyGarage.s8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              LinkjoyFasten.circle(
                user.avatarUrl,
                size: LinkjoyGarage.s56,
                clip: ImageClipType.small,
                fit: BoxFit.cover,
              ),
            ],
          ),
          LinkjoyFeynman.h16,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.nickName,
                  style: LinkjoyMarshaTriplet.bodyLarge,
                  maxLines: 1,
                ).maxWidth(200.w),
                LinkjoyFeynman.h6,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    LinkjoyFridgeLightbulb.linkjoySignalFridge(user.level),
                    LinkjoyFeynman.h4,
                    LinkjoyFridgeLightbulb.linkjoyWantFridge(),
                  ],
                ),
              ],
            ),
          ),
          const Icon(Icons.keyboard_arrow_right),
        ],
      ),
    ).clickOld(() {
      LinkjoyTherapistSister.onLinkjoyWizardAndrew(user);
    });
  }

  Widget _linkjoyCocktailYam() {
    return GetBuilder<LinkjoyCocktailHand>(
      id: LinkjoyCocktailHand.linkjoy_exciting,
      builder: (logic) {
        return Container(
          padding: EdgeInsets.only(
            left: LinkjoyGarage.s16,
            right: LinkjoyGarage.s8,
          ),
          margin: LinkjoyAmplitude.h16,
          decoration: BoxDecoration(
            color: LinkjoyAve.transparent(LinkjoyAve.primaryMain, 0.05),
            borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
            border: Border.all(
              color: LinkjoyAve.transparent(LinkjoyAve.primaryMain, 0.3),
              width: 1.w,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  style: LinkjoyMarshaTriplet.bodyLargeBold,
                  controller: logic.linkjoyMarshaMario,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    hintText: 'linkjoy_caring_exciting_point'.tr,
                    hintStyle: LinkjoyMarshaTriplet.inputPlaceholder,
                    border: InputBorder.none,
                  ),
                  onChanged: logic.onTextChanged,
                  onSubmitted: (value) => logic.onLinkjoyCocktail(),
                ),
              ),
              if (logic.ucode.isNotEmpty) ...[
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: logic.onLinkjoyCocktail,
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
