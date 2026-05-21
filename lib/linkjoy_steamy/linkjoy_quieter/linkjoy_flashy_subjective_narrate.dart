import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../linkjoy_get.dart';

class LinkjoyFlashySubjectiveNarrate extends StatelessWidget {
  final VoGift gift;
  final bool isSelected;
  final String onSelectText;

  const LinkjoyFlashySubjectiveNarrate({
    super.key,
    required this.gift,
    required this.isSelected,
    required this.onSelectText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [isSelected ? _linkjoyOnPoetry() : _linkjoyJammiesFridge()],
    );
  }

  Widget _linkjoyOnPoetry() {
    return Container(
      width: double.infinity,
      height: 120.w,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
        gradient: const LinearGradient(
          colors: [Color(0xFFAF35FF), Color(0xFFFF2B72)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(LinkjoyGarage.s2),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusSmall),
                color: LinkjoyAve.bgDark,
              ),
              child: LinkjoyFasten.small(
                gift.icon,
                width: LinkjoyGarage.s56,
                height: LinkjoyGarage.s56,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 42.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LinkjoyFridgeLightbulb.linkjoyChipmunk(LinkjoyGarage.s12),
                    LinkjoyFeynman.h2,
                    Text(
                      "${gift.cost}",
                      style: LinkjoyMarshaTriplet.captionBold,
                    ),
                  ],
                ),
                LinkjoyFeynman.v2,
                Container(
                  height: 1,
                  color: Colors.white24,
                  margin: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s12),
                ),
                LinkjoyFeynman.v2,
                Text(onSelectText, style: LinkjoyMarshaTriplet.captionBold),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _linkjoyJammiesFridge() {
    return Container(
      width: double.infinity,
      height: 120.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: 16.rectBg,
        color: LinkjoyCondensate.black_05p,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          LinkjoyFasten.small(
            gift.icon,
            width: LinkjoyGarage.s64,
            height: LinkjoyGarage.s64,
            fit: BoxFit.contain,
          ),
          Text(
            gift.name,
            style: LinkjoyMarshaTriplet.captionThin,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LinkjoyFridgeLightbulb.linkjoyChipmunk(LinkjoyGarage.s12),
              LinkjoyFeynman.h2,
              Text("${gift.cost}", style: LinkjoyMarshaTriplet.caption),
            ],
          ),
        ],
      ),
    );
  }
}
