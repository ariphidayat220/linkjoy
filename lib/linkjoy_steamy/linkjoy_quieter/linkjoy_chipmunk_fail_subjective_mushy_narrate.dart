import 'package:auto_size_text/auto_size_text.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_madness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_protocol_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_protocol_batting.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'linkjoy_hairless_crotch_cab_zone_fridge.dart';

class LinkjoyChipmunkFailSubjectiveMushyNarrate extends StatefulWidget {
  static double height = 175.w;

  final LinkjoyWedgieMadness data;
  final VoidCallback onPressed;

  final String? title;

  const LinkjoyChipmunkFailSubjectiveMushyNarrate({
    super.key,
    required this.data,
    required this.onPressed,
    this.title,
  });

  @override
  State<LinkjoyChipmunkFailSubjectiveMushyNarrate> createState() =>
      _LinkjoyChipmunkFailSubjectiveMushyNarrateStatus();
}

class _LinkjoyChipmunkFailSubjectiveMushyNarrateStatus
    extends State<LinkjoyChipmunkFailSubjectiveMushyNarrate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: LinkjoyChipmunkFailSubjectiveMushyNarrate.height,
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.data.isFirstRecharge
              ? [Color(0xFFD91EED), Color(0xFF2563EB), LinkjoyAve.primaryMain]
              : [Color(0xFF3B82F6), Color(0xFF2563EB), LinkjoyAve.primaryMain],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.5, 1.0],
        ),
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
        boxShadow: [
          BoxShadow(
            color: LinkjoyAve.primaryMain.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          LinkjoyFeynman.v12,
          SizedBox(
            height: LinkjoyGarage.s36,
            child: AutoSizeText(
              widget.title ?? widget.data.topTitle.toUpperCase(),
              style: LinkjoyMarshaTriplet.bodySecondary.copyWith(
                letterSpacing: 1.5,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double,
                decorationColor: Colors.white38,
                decorationThickness: 1.5,
              ),
              maxLines: 2,
              minFontSize: 12,
            ),
          ),
          const Spacer(),
          _linkjoyOughtaSkintight(),
          const Spacer(),
          Stack(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: LinkjoyGarage.s12),
                child: LinkjoyEllen.round(
                  _linkjoyKnockOughta(),
                  widget.onPressed,
                  size: LinkjoyBookshelf.xl,
                  elevation: 2,
                ),
              ),

              if (widget.data.linkjoyCocaineEnglishDestroy)
                PositionedDirectional(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: LinkjoyAve.accentMain,
                          borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(
                              LinkjoyDiscard.radiusMedium,
                            ),
                            bottomEnd: Radius.circular(
                              LinkjoyDiscard.radiusLarge,
                            ),
                          ),
                        ),
                        padding: LinkjoyGarage.edgeH8V2,
                        child: Text(
                          widget.data.linkjoyEnglishDestroyMarsha,
                          style: LinkjoyMarshaTriplet.captionBold,
                        ),
                      ),
                    ],
                  ),
                ),

              if (widget.data.isFirstRecharge)
                PositionedDirectional(
                  bottom: LinkjoyGarage.s4,
                  start: 0,
                  child: LinkjoyHairlessCrotchCabZoneFridge(),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _linkjoyOughtaSkintight() {
    List<LinkjoyProtocol> rewards = LinkjoyProtocolOily.instance
        .getFirstPaymentRewards(widget.data);

    if (widget.data.coin > 0) {
      List<Widget> cards = _linkjoyCern(rewards, true);

      return Row(
        mainAxisAlignment: rewards.length <= 1
            ? MainAxisAlignment.spaceEvenly
            : MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: LinkjoyAve.surfaceDecoration,
            padding: LinkjoyGarage.edgeH8V6,
            child: LinkjoyProtocolBatting.linkjoyOughta(
              LinkjoyProtocol.coin(widget.data.coin),
              cards.isEmpty
                  ? LinkjoyProtocolBattingSubjectiveGnome.detailRow
                  : LinkjoyProtocolBattingSubjectiveGnome.detailCol,
              (cards.length <= 3)
                  ? LinkjoyProtocolBattingGreen.lg()
                  : LinkjoyProtocolBattingGreen.md(),
            ),
          ),

          if (cards.isNotEmpty) ...cards,
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _linkjoyCern(rewards, false),
    );
  }

  List<Widget> _linkjoyCern(
    List<LinkjoyProtocol> rewards,
    bool withCoinPrefix,
  ) {
    if (rewards.isEmpty) {
      return [];
    }

    List<Widget> cards;
    if (rewards.length == 1) {
      cards = LinkjoyProtocolBatting.linkjoyModel(
        rewards,
        withCoinPrefix
            ? LinkjoyProtocolBattingSubjectiveGnome.detailCol
            : LinkjoyProtocolBattingSubjectiveGnome.detailRow,
        LinkjoyProtocolBattingGreen.lg(),
        LinkjoyAve.surfaceDecoration,
        LinkjoyGarage.edgeH12V8,
        null,
      );
    } else if (rewards.length == 2) {
      cards = LinkjoyProtocolBatting.linkjoyModel(
        rewards,
        withCoinPrefix
            ? LinkjoyProtocolBattingSubjectiveGnome.simpleRow
            : LinkjoyProtocolBattingSubjectiveGnome.detailCol,
        LinkjoyProtocolBattingGreen.lg(),
        LinkjoyAve.surfaceDecoration,
        LinkjoyGarage.edgeH12V8,
        null,
      );
    } else if (rewards.length == 3) {
      if (withCoinPrefix) {
        cards = LinkjoyProtocolBatting.linkjoyModel(
          rewards,
          LinkjoyProtocolBattingSubjectiveGnome.simpleCol,
          LinkjoyProtocolBattingGreen.md(),
          LinkjoyAve.surfaceDecoration,
          LinkjoyGarage.edgeH8V6,
          null,
        );
      } else {
        cards = LinkjoyProtocolBatting.linkjoyModel(
          rewards,
          LinkjoyProtocolBattingSubjectiveGnome.simpleRow,
          LinkjoyProtocolBattingGreen.lg(),
          LinkjoyAve.surfaceDecoration,
          LinkjoyGarage.edgeH12V8,
          null,
        );
      }
    } else {
      cards = [];
      cards.add(
        Column(
          children: LinkjoyProtocolBatting.linkjoyModel(
            rewards.sublist(0, 2),
            LinkjoyProtocolBattingSubjectiveGnome.detailRow,
            withCoinPrefix
                ? LinkjoyProtocolBattingGreen.sm()
                : LinkjoyProtocolBattingGreen.md(),
            LinkjoyAve.surfaceDecoration,
            withCoinPrefix ? LinkjoyGarage.edgeH6V2 : LinkjoyGarage.edgeH8V6,
            LinkjoyFeynman.v2,
          ),
        ),
      );

      cards.add(
        Column(
          children: LinkjoyProtocolBatting.linkjoyModel(
            rewards.sublist(2, 4),
            LinkjoyProtocolBattingSubjectiveGnome.detailRow,
            withCoinPrefix
                ? LinkjoyProtocolBattingGreen.sm()
                : LinkjoyProtocolBattingGreen.md(),
            LinkjoyAve.surfaceDecoration,
            withCoinPrefix ? LinkjoyGarage.edgeH6V2 : LinkjoyGarage.edgeH8V6,
            LinkjoyFeynman.v2,
          ),
        ),
      );
    }
    return cards;
  }

  Widget _linkjoyKnockOughta() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "linkjoy_caring_brochure_mysterious".tr.toUpperCase(),
          style: LinkjoyMarshaTriplet.bodyLargeBold.copyWith(
            fontStyle: FontStyle.italic,
            color: LinkjoyAve.textSecondary,
          ),
          textAlign: TextAlign.start,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                widget.data.linkjoyKnockMarsha,
                style: LinkjoyMarshaTriplet.subtitle,
              ),
              if (widget.data.linkjoyCocaineEnglishDestroy) ...[
                LinkjoyFeynman.v4,
                Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Text(
                    widget.data.linkjoyKnitKnockMarsha,
                    style: LinkjoyMarshaTriplet.bodySecondary.copyWith(
                      decoration: TextDecoration.lineThrough,
                      decorationColor: LinkjoyAve.textSecondary,
                      decorationThickness: 2,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
