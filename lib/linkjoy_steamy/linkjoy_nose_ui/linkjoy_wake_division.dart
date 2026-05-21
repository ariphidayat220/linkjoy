import 'dart:io';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_lifelong_marsha_wherever.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wake_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_pact_stubborn_subjective_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_harpist_convict_doubt.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_marsha_hater.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyWakeDivision extends LinkjoyDivisionAgency<LinkjoyWakeHand> {
  const LinkjoyWakeDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam("linkjoy_caring_tot".tr);
  }

  @override
  Widget buildBody(BuildContext context) {
    List<Widget> widgets = [];

    if (!LINKJOY.isLinkjoyFoolishly &&
        !LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()) {
      widgets.add(
        GetBuilder<LinkjoyWakeHand>(
          init: logic,
          id: LinkjoyWakeHand.linkjoy_unlock,
          builder: (_) => LinkjoyPactStubbornSubjectiveFridge(
            text: 'linkjoy_caring_do_greeting_farrah_embarrass'.tr,
            extra: LinkjoyHarpistConvictDoubt.create(),
          ),
        ),
      );
      widgets.add(_linkjoyPeephole());
    }

    if (!LinkjoyGnomeSister.isEmpty(logic.menuItemList)) {
      for (LinkjoyFondnessLifelongMarshaWherever item in logic.menuItemList) {
        widgets.add(
          LinkjoyPactStubbornSubjectiveNarrate(item: item, badge: false),
        );
        widgets.add(_linkjoyPeephole());
      }
    }

    widgets.add(
      GetBuilder<LinkjoyWakeHand>(
        init: logic,
        id: LinkjoyWakeHand.linkjoy_unlock,
        builder: (_) => InkWell(
          onTap: logic.linkjoyPressureUnlock,
          child: LinkjoyPactStubbornSubjectiveFridge(
            text: 'linkjoy_caring_pressure_unlock'.tr,
            extra: Text(
              logic.linkjoyTheirBookshelf(logic.cacheSize),
              style: LinkjoyMarshaTriplet.bodyThird,
            ),
          ),
        ),
      ),
    );
    widgets.add(_linkjoyPeephole());

    widgets.add(
      InkWell(
        onTap: logic.onLinkjoyGoCrawfordSaver,
        child: LinkjoyPactStubbornSubjectiveFridge(
          text: 'linkjoy_caring_ogle'.tr,
          extra: Text(
            'V${LinkjoyDivorced.linkjoySteamyOgle}',
            style: LinkjoyMarshaTriplet.bodyThird,
          ),
        ),
      ),
    );
    widgets.add(_linkjoyPeephole());

    widgets.add(
      InkWell(
        onTap: logic.onLinkjoyInseam,
        child: LinkjoyPactStubbornSubjectiveFridge(
          text: 'linkjoy_caring_inseam'.tr,
        ),
      ),
    );
    widgets.add(_linkjoyPeephole());

    if (!Platform.isAndroid) {
      widgets.add(
        InkWell(
          onTap: logic.onLinkjoyModerately,
          child: LinkjoyPactStubbornSubjectiveFridge(
            text: 'linkjoy_caring_moderately'.tr,
          ),
        ),
      );
    }
    widgets.add(_linkjoyPeephole());
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s8),
      child: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        children: widgets,
      ),
    );
  }

  Widget _linkjoyPeephole() => SizedBox.shrink();
}
