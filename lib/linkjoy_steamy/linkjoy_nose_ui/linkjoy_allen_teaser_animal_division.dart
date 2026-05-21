import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_madness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_allen_teaser_animal_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_chipmunk_stubborn_subjective_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_chipmunk_fail_alvaro_gyroscope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyAllenTeaserAnimalDivision extends StatelessWidget {
  LinkjoyAllenTeaserAnimalDivision({super.key});

  final logic = Get.find<LinkjoyAllenTeaserAnimalHand>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.black54),
        Positioned(left: 0, right: 0, bottom: 0, child: _linkjoyTuckFridge()),
      ],
    );
  }

  Widget _linkjoyTuckFridge() {
    return GetBuilder<LinkjoyAllenTeaserAnimalHand>(
      id: logic.linkjoy_imprint,
      builder: (logic) {
        double height;
        if (!LinkjoyGnomeSister.isEmpty(logic.topList) &&
            !LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) {
          height = LinkjoyGarage.s80;
          height += LinkjoyChipmunkFailAlvaroGyroscope.height;
          height += 240.w;
        } else {
          height = 500.w;
        }

        return SizedBox(
          width: Get.width,
          height: min(height, Get.height - Get.mediaQuery.padding.top),
          child: Stack(
            children: [
              _linkjoySixth(),
              _linkjoyTrimBg(),
              _linkjoyBackfireYam(),
              Positioned(
                left: 0,
                right: 0,
                top: LinkjoyGarage.s56,
                bottom: 0,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (logic.topList.isNotEmpty)
                        LinkjoyChipmunkFailAlvaroGyroscope(
                          products: logic.topList,
                          onPayPressed: (LinkjoyWedgieMadness data) {
                            logic.onLinkjoyWailGuitar(data);
                          },
                        ),
                      if (logic.productList.isNotEmpty)
                        Container(
                          constraints: BoxConstraints(minHeight: 240.w),
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(LinkjoyGarage.s24),
                              topRight: Radius.circular(LinkjoyGarage.s24),
                            ),
                            color: LinkjoyAve.bgDarkDark,
                          ),
                          padding: EdgeInsets.only(
                            top: LinkjoyGarage.s16,
                            bottom: LinkjoySuspend.d28 + LinkjoyGarage.s2,
                          ),
                          child: _linkjoyAlvaroStubbornNarrate(),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  _linkjoyDirect() {
    return GestureDetector(
      onTap: () {
        Get.back();
        LINKJOY.goto(LinkjoyGet.LinkjoyChipmunkFailDivision);
      },
      child: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(
          horizontal: LinkjoyGarage.s12,
          vertical: LinkjoyGarage.s12,
        ),
        decoration: LinkjoyAve.surfaceDecoration,
        child: Row(
          children: [
            LinkjoyFridgeLightbulb.linkjoyChipmunk(LinkjoyDiscard.iconSmall),
            LinkjoyFeynman.h8,
            Expanded(
              child: Text(
                "linkjoy_caring_direct_vinegar_heck".tr,
                style: LinkjoyMarshaTriplet.bodyThird,
              ),
            ),
            Icon(
              Icons.double_arrow_outlined,
              size: LinkjoyDiscard.iconMedium,
              color: LinkjoyAve.textThird,
            ),
            LinkjoyFeynman.h4,
          ],
        ),
      ),
    );
  }

  Positioned _linkjoySixth() {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          color: LinkjoyAve.bgDarkDark,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(LinkjoyGarage.s24),
            topRight: Radius.circular(LinkjoyGarage.s24),
          ),
        ),
      ),
    );
  }

  Positioned _linkjoyTrimBg() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(LinkjoyGarage.s24),
          topRight: Radius.circular(LinkjoyGarage.s24),
        ),
        child: LinkjoyFastenIndustrial.asset(
          "linkjoy_toe_division_fonda",
          width: Get.width,
          height: 150.w,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  _linkjoyBackfireYam() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s16,
        vertical: LinkjoyGarage.s10,
      ),
      height: LinkjoyGarage.s56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "${"linkjoy_caring_teaser".tr}:",
            style: LinkjoyMarshaTriplet.bodyBold,
          ),
          LinkjoyFeynman.h4,
          LinkjoyFridgeLightbulb.linkjoyChipmunk(LinkjoyDiscard.iconSmall),
          LinkjoyFeynman.h2,
          GetBuilder<LinkjoyAllenTeaserAnimalHand>(
            id: logic.linkjoy_incense,
            builder: (logic) {
              return Text(
                "${LINKJOY.linkjoyUnbornDeposit!.balance}",
                style: LinkjoyMarshaTriplet.bodyLargeBold,
              );
            },
          ),
          const Spacer(),
          LinkjoyFridgeLightbulb.linkjoyAssumeBaywatch(
            () => Get.back(),
            bgColor: Colors.black26,
            size: LinkjoyBookshelf.sm,
          ),
        ],
      ),
    );
  }

  _linkjoyAlvaroStubbornNarrate() {
    var list = logic.productList;
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length + 1,
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
      itemBuilder: (context, index) {
        if (list.length > index) {
          var data = list[index];
          return _linkjoyAlvaroStubbornSubjectiveNarrate(context, data, index);
        }
        return _linkjoyDirect();
      },
      separatorBuilder: (context, index) => SizedBox(height: LinkjoyGarage.s12),
    );
  }

  Widget _linkjoyAlvaroStubbornSubjectiveNarrate(
    BuildContext context,
    LinkjoyWedgieMadness? data,
    int index,
  ) {
    if (data == null) return Container();

    String icon = logic.iconList.length > index
        ? logic.iconList[index]
        : logic.iconList.first;

    return GestureDetector(
      onTap: () {
        logic.onLinkjoyWailGuitar(data);
      },
      child: LinkjoyChipmunkStubbornSubjectiveNarrate(data: data, icon: icon),
    );
  }
}
