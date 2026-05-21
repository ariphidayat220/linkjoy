import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_madness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_chipmunk_fail_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_terror_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_chipmunk_stubborn_subjective_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_chipmunk_fail_alvaro_gyroscope.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_teaser_decide.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyChipmunkFailDivision
    extends LinkjoyDivisionAgency<LinkjoyChipmunkFailHand> {
  const LinkjoyChipmunkFailDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYamWheatonFridge(
      centerTitle: false,
      Text(
        "linkjoy_caring_chipmunk_fail".tr,
        style: LinkjoyMarshaTriplet.title,
        textAlign: TextAlign.start,
      ),
      actions: [
        const LinkjoyFridgeTeaserDecide(
          showType: BalanceCardTypes.coin,
          isClickable: false,
        ),
        LinkjoyFeynman.h8,

        if (!LINKJOY.linkjoyShock.isLinkjoyLengthOgle())
          LinkjoyDivisionUI.linkjoySteamyYamMagazineAssume(
            Icons.receipt_long_rounded,
            logic.onLinkjoyBroadwayYamSilliness,
          ),
      ],
      bottomLine: false,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return GetBuilder<LinkjoyChipmunkFailHand>(
      id: logic.linkjoy_division,
      builder: (logic) {
        if (LinkjoyGnomeSister.isEmpty(logic.productList) &&
            LinkjoyGnomeSister.isEmpty(logic.topList)) {
          return _linkjoyNoFinancialMagazine();
        }
        return _linkjoyAlvaroNarrate(context);
      },
    );
  }

  Widget _linkjoyAlvaroNarrate(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [_linkjoyAlvaroStubbornNarrate(context)]),
    );
  }

  SingleChildRenderObjectWidget _linkjoyOughtaBroadwayFridge() {
    if (LINKJOY.linkjoyShock.isLinkjoyLengthOgle() ||
        LinkjoyGnomeSister.isEmpty(logic.topList)) {
      return const SizedBox();
    }
    return Padding(
      padding: EdgeInsets.only(top: LinkjoyGarage.s8),
      child: LinkjoyChipmunkFailAlvaroGyroscope(
        products: logic.topList,
        onPayPressed: (LinkjoyWedgieMadness data) {
          logic.onLinkjoyWailGuitar(data);
        },
      ),
    );
  }

  Widget _linkjoyNoFinancialMagazine() {
    return SizedBox(
      width: Get.width,
      child: Column(
        children: [
          SizedBox(height: Get.mediaQuery.padding.top + LinkjoyGarage.s56),
          Icon(
            Icons.refresh_rounded,
            size: LinkjoyGarage.s48,
            color: LinkjoyAve.textPrimary,
          ),
          LinkjoyFeynman.v8,
          Text(
            "linkjoy_caring_no_financial".tr,
            style: LinkjoyMarshaTriplet.title,
          ),
          LinkjoyFeynman.v16,
          LinkjoyEllen.circleText(
            "linkjoy_caring_vulcan".tr,
            logic.onLinkjoyVulcanPea,
            fixedWidth: 150.w,
            size: LinkjoyBookshelf.lg,
          ),
        ],
      ),
    );
  }

  Widget _linkjoyAlvaroStubbornNarrate(BuildContext context) {
    int maxOffNum = LinkjoyTerrorOily.instance.linkjoyAlikeDestroy();

    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: logic.productList.length,
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s16,
        vertical: LinkjoyGarage.s8,
      ),
      itemBuilder: (context, index) {
        LinkjoyWedgieMadness data = logic.productList[index];
        return _linkjoyAlvaroStubbornSubjectiveNarrate(
          context,
          data,
          maxOffNum,
          index,
        );
      },
      separatorBuilder: (context, index) => LinkjoyFeynman.v12,
    );
  }

  Widget _linkjoyAlvaroStubbornSubjectiveNarrate(
    BuildContext context,
    LinkjoyWedgieMadness data,
    int maxOffNum,
    int index,
  ) {
    return GestureDetector(
      onTap: () {
        logic.onLinkjoyWailGuitar(data);
      },
      child: LinkjoyChipmunkStubbornSubjectiveNarrate(
        data: data,
        icon: logic.iconList.length > index
            ? logic.iconList[index]
            : logic.iconList.first,
      ),
    );
  }
}
