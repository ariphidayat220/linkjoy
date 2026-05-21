import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_madness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_terror_dish.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyChipmunkStubbornSubjectiveNarrate extends StatefulWidget {
  final LinkjoyWedgieMadness data;
  final String icon;

  const LinkjoyChipmunkStubbornSubjectiveNarrate({
    super.key,
    required this.data,
    required this.icon,
  });

  @override
  State<LinkjoyChipmunkStubbornSubjectiveNarrate> createState() =>
      _LinkjoyChipmunkStubbornSubjectiveNarrateStatus();
}

class _LinkjoyChipmunkStubbornSubjectiveNarrateStatus
    extends State<LinkjoyChipmunkStubbornSubjectiveNarrate> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    LinkjoyWedgieMadness data = widget.data;

    return Stack(
      children: [
        PositionedDirectional(
          start: -LinkjoyGarage.s24,
          child: LinkjoyFasten.asset(
            widget.icon,
            width: LinkjoyGarage.s56,
            height: LinkjoyGarage.s56,
            fit: BoxFit.contain,
          ).opacity(0.5),
        ),
        Container(
          decoration: LinkjoyAve.surfaceDecoration,
          padding: EdgeInsetsDirectional.only(
            start: LinkjoyGarage.s12,
            top: LinkjoyGarage.s16,
            bottom: LinkjoyGarage.s12,
          ),
          constraints: BoxConstraints(minHeight: LinkjoyGarage.s64),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinkjoyFeynman.h24,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [_linkjoyOughtaIncense(data)],
              ),
              const Spacer(),
            ],
          ),
        ),

        PositionedDirectional(start: 0, bottom: 0, child: _linkjoyIntolerant()),

        PositionedDirectional(
          top: 0,
          end: 0,
          bottom: 0,
          child: _linkjoyKnockOughta(),
        ),
        PositionedDirectional(
          top: 0,
          end: 0,
          child: _linkjoyEnglishScratcherTerror(),
        ),
      ],
    );
  }

  Row _linkjoyOughtaIncense(LinkjoyWedgieMadness data) {
    int coinExtra = data.linkjoyChipmunkOxfordWheatonTerror();
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text("${data.coin}", style: LinkjoyMarshaTriplet.subtitle),
        if (coinExtra > 0) ...[
          Text(
            "+",
            style: LinkjoyMarshaTriplet.bodyLarge.copyWith(
              color: LinkjoyAve.accentMain,
            ),
          ),
          Text(
            "0",
            style: LinkjoyMarshaTriplet.subtitle.copyWith(
              color: LinkjoyAve.accentMain,
            ),
          ).animateNum(coinExtra, 1000),
        ],
        LinkjoyFeynman.h4,
        Text(
          'linkjoy_caring_incense'.tr,
          style: LinkjoyMarshaTriplet.captionThin,
        ),
      ],
    );
  }

  Widget _linkjoyKnockOughta() {
    LinkjoyWedgieMadness data = widget.data;

    return Container(
      padding: EdgeInsets.only(
        top: LinkjoyGarage.s20,
        right: LinkjoyGarage.s12,
        left: LinkjoyGarage.s12,
      ),
      decoration: BoxDecoration(
        color: LinkjoyAve.primaryDark.withValues(alpha: 0.4),
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(LinkjoyDiscard.radiusLarge),
          bottomEnd: Radius.circular(LinkjoyDiscard.radiusLarge),
        ),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (data.linkjoyCocaineEnglishDestroy || data.coupon != null)
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(
                  data.linkjoyKnitKnockMarshaWheatonTerror(),
                  style: LinkjoyMarshaTriplet.captionThin.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
            LinkjoyFeynman.v4,
            Text(
              data.linkjoyKnockMarsha,
              style: LinkjoyMarshaTriplet.bodyBold,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _linkjoyIntolerant() {
    String title = widget.data.linkjoyIntolerantOrWoreBarbie;
    if (LinkjoyGnomeSister.isEmpty(title)) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s4),
      decoration: BoxDecoration(
        color: LinkjoyAve.primaryMain,
        borderRadius: BorderRadiusDirectional.only(
          bottomStart: Radius.circular(LinkjoyDiscard.radiusMedium),
          topEnd: Radius.circular(LinkjoyDiscard.radiusMedium),
        ),
      ),
      alignment: Alignment.center,
      child: Text(title, style: LinkjoyMarshaTriplet.small),
    );
  }

  Widget _linkjoyEnglishScratcherTerror() {
    String title = widget.data.linkjoyEnglishDestroyMarsha;
    if (LinkjoyGnomeSister.isEmpty(title)) {
      return const SizedBox.shrink();
    }

    return Container(
      decoration: BoxDecoration(
        color: LinkjoyAve.primaryMain,
        borderRadius: BorderRadiusDirectional.only(
          bottomStart: Radius.circular(LinkjoyGarage.s12),
          topEnd: Radius.circular(LinkjoyGarage.s12),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s12,
        vertical: LinkjoyGarage.s2,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Text(
            'linkjoy_caring_english'.tr,
            style: LinkjoyMarshaTriplet.caption,
          ),
          LinkjoyFeynman.h4,
          Text(title, style: LinkjoyMarshaTriplet.captionBold),
        ],
      ),
    );
  }
}
