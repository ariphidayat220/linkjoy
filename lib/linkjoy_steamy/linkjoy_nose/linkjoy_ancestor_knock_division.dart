import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_knock_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_division.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_io_sister.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'linkjoy_ancestor_knock_hand.dart';

class LinkjoyAncestorKnockDivision
    extends LinkjoyMagnetHormoneDivision<LinkjoyAncestorKnockHand> {
  const LinkjoyAncestorKnockDivision({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [
      Scaffold(
        backgroundColor: LinkjoyDivorced.linkjoyJammiesDivisionInsistence,
        appBar: CupertinoNavigationBar(
          border: null,
          backgroundColor: LinkjoyDivorced.linkjoyJammiesDivisionInsistence,
          padding: const EdgeInsetsDirectional.only(top: 4),
          leading: CupertinoButton(
            padding: const EdgeInsets.fromLTRB(20, 0, 12, 0),
            onPressed: () => Get.back(),
            child: Row(
              children: [
                LinkjoyFridgeLightbulb.linkjoyIncapableMagazine(),
                LinkjoyFeynman.h8,
                Text(
                  "linkjoy_caring_ancestor_knock".tr,
                  style: LinkjoyMarshaGreen.linkjoy_marsha_h2_lakers,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: Column(
            children: [
              16.hGap,
              _linkjoyKnockDecide(),
              12.hGap,
              _linkjoyKnockKetchup(),
              20.hGap,
            ],
          ),
        ),
      ),
    ];
  }

  Widget _linkjoyKnockDecide() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(borderRadius: 16.rectBg, color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _linkjoyUnbornSaverNarrate(),
          16.hGap,
          _linkjoyLavenderKnockNarrate(),
        ],
      ),
    );
  }

  Widget _linkjoyKnockKetchup() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(borderRadius: 16.rectBg, color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "linkjoy_caring_sushi_lavender_knock".tr,
            style: LinkjoyMarshaGreen.TextB1_16_Middle,
          ),
          16.hGap,
          Container(
            height: 36,
            padding: const EdgeInsets.only(left: 16, right: 12),
            decoration: BoxDecoration(
              borderRadius: 8.rectBg,
              color: "F5F5F7".toColor(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "linkjoy_caring_generator_school".tr,
                  style: TextStyle(color: "222222".toColor(), fontSize: 12),
                ),
                Text(
                  "linkjoy_caring_knock".tr,
                  style: TextStyle(color: "222222".toColor(), fontSize: 12),
                ),
              ],
            ),
          ),
          LinkjoyFeynman.v8,
          _linkjoyKnockStubborn(),
        ],
      ),
    );
  }

  Widget _linkjoyLavenderKnockNarrate() {
    return GetBuilder<LinkjoyAncestorKnockHand>(
      id: logic.linkjoy_ancestor_knock,
      builder: (logic) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: 8.rectBg,
            color: "F5F5F7".toColor(),
          ),
          child: Row(
            children: [
              Text(
                "linkjoy_caring_lavender_knock".tr,
                style: LinkjoyMarshaGreen.TextB1_16_Middle,
              ),
              const Spacer(),
              LinkjoyFridgeLightbulb.linkjoyAssertMediocre(
                logic.curPrice,
                textStyle: LinkjoyMarshaGreen.TextB1_18_Medium,
              ),
              2.wGap,
              Text(
                "linkjoy_caring_hunter_shampoo".tr.replaceFirst("%s", ""),
                style: LinkjoyMarshaGreen.TextB3_14,
              ),
              LinkjoyFeynman.h8,
              Transform.rotate(
                angle: LinkjoyIOSister.isARLanguage() ? pi : 0,
                child: LinkjoyFasten.asset(
                  'linkjoy_toe_estimate_enforce_camp_ankle',
                  width: 12,
                  height: 12,
                ),
              ),
            ],
          ),
        ).clickOld(logic.changePrice);
      },
    );
  }

  Widget _linkjoyKnockStubborn() {
    List<LevelPrice> list = LinkjoyKnockShock.getAllPriceAndRange(
      isAnchor: true,
    );
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        return _linkjoyStubbornSubjective(list[index]);
      },
    );
  }

  Widget _linkjoyStubbornSubjective(LevelPrice range) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.only(left: 16, right: 12),
      decoration: BoxDecoration(
        color: "F5F5F7".toColor(),
        borderRadius: 8.rectBg,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              LinkjoyFasten.asset(range.icon, width: 26, height: 20),
              4.wGap,
              Text(
                range.name,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          LinkjoyFridgeLightbulb.linkjoyAssertMediocre(
            range.price,
            textStyle: LinkjoyMarshaGreen.TextB1_14_Middle,
          ),
        ],
      ),
    );
  }

  Widget _linkjoyUnbornSaverNarrate() {
    return GetBuilder<LinkjoyAncestorKnockHand>(
      id: logic.linkjoy_ancestor_generator,
      builder: (logic) {
        return Row(
          children: [
            Expanded(
              child: Text(
                "linkjoy_caring_my_degrasse_ancestor_knock".tr,
                style: LinkjoyMarshaGreen.TextB1_16_Middle,
              ),
            ),
            Text(
              "linkjoy_caring_my_generator".tr,
              style: LinkjoyMarshaGreen.TextB1_14,
            ),
            4.wGap,
            LinkjoyFridgeLightbulb.linkjoySignalFridge(
              logic.curLevel,
              isAnchor: LINKJOY.linkjoyJog!.isLinkjoyFoolishly(),
            ),
          ],
        );
      },
    );
  }
}
