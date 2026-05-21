import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_lifelong_marsha_wherever.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'linkjoy_spock_fasten.dart';

typedef LinkjoyPactStubbornSubjectiveNarrateMine =
    Function(LinkjoyFondnessLifelongMarshaWherever);

class LinkjoyPactStubbornSubjectiveNarrate extends StatelessWidget {
  static const String linkjoy_subjective_fruit = "LinkjoyFruit";
  static const String linkjoy_subjective_ancestor_knock = "/AnchorChatPrice";

  final LinkjoyFondnessLifelongMarshaWherever item;
  final bool badge;

  final LinkjoyPactStubbornSubjectiveNarrateMine? click;

  const LinkjoyPactStubbornSubjectiveNarrate({
    super.key,
    required this.item,
    required this.badge,
    this.click,
  });

  @override
  Widget build(BuildContext context) {
    Widget arrow = Icon(
      Icons.arrow_forward_ios,
      size: LinkjoyGarage.s12,
      color: LinkjoyAve.textSecondary,
    );

    String? info;
    if (item.url == linkjoy_subjective_ancestor_knock &&
        LINKJOY.linkjoyJog!.isLinkjoyFoolishly()) {
      info = "linkjoy_caring_hunter_shampoo".tr.replaceFirst(
        "%s",
        "${LINKJOY.user().price}",
      );
    }

    return LinkjoyPactStubbornSubjectiveFridge(
      img: item.img,
      text: item.text.tr,
      badge: badge,
      extra: arrow,
      info: info,
    ).clickOld(() {
      if (click != null) {
        click!(item);
        return;
      }
      switch (item.url) {
        case linkjoy_subjective_fruit:
          LINKJOY.goto(LinkjoyDivorced.linkjoyBicycleFruitCard);
          return;
      }

      if (item.url != "") {
        if (item.auth == 1 &&
            LinkjoyUISocially.linkjoyMarketingFoolishlyDoGel()) {
          return;
        }

        if (item.auth == 2 &&
            LinkjoyUISocially.linkjoyMarketingFoolishlySaverPayAnimal()) {
          return;
        }

        LINKJOY.goto(item.url);
      }
    });
  }
}

class LinkjoyPactStubbornSubjectiveFridge extends StatelessWidget {
  const LinkjoyPactStubbornSubjectiveFridge({
    super.key,
    this.img,
    required this.text,
    this.badge = false,
    this.extra,
    this.info,
  });

  final String? img;
  final String text;
  final bool badge;
  final Widget? extra;
  final String? info;

  @override
  Widget build(BuildContext context) {
    List<Widget> rows = [];
    if (img != null && img != "") {
      rows.add(
        LinkjoySpockFasten(
          url: img!,
          width: LinkjoyGarage.s32,
          height: LinkjoyGarage.s32,
        ),
      );
      rows.add(LinkjoyFeynman.h4);
    }

    rows.add(
      Expanded(
        child: Text(
          text,
          style: LinkjoyMarshaTriplet.bodyLarge,
          maxLines: 1,
          overflow: TextOverflow.visible,
        ),
      ),
    );

    if (badge) {
      rows.add(
        Container(
          width: LinkjoyGarage.s8,
          height: LinkjoyGarage.s8,
          margin: EdgeInsets.only(right: LinkjoyGarage.s8),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: LinkjoyAve.badgeCounter,
          ),
        ),
      );
    }

    if (info != null) {
      rows.add(
        Container(
          margin: EdgeInsets.only(right: LinkjoyGarage.s8),
          child: Text(info!, style: LinkjoyMarshaTriplet.bodySecondary),
        ),
      );
    }

    if (extra != null) {
      rows.add(extra!);
    }

    return Container(
      height: LinkjoyGarage.s56,
      padding: EdgeInsetsDirectional.only(
        start: LinkjoyGarage.s12,
        end: LinkjoyGarage.s16,
      ),
      decoration: BoxDecoration(
        color: LinkjoyAve.overlayLight,
        border: Border(bottom: BorderSide(color: LinkjoyAve.borderLight)),
      ),
      child: Row(children: rows),
    );
  }
}
