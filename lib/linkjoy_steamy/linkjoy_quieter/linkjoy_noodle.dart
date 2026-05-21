import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_deli.pb.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class LinkjoyNoodle extends StatefulWidget {
  final int trackCount;

  final double height;

  const LinkjoyNoodle({Key? key, this.trackCount = 5, this.height = 200})
    : super(key: key);

  @override
  State<LinkjoyNoodle> createState() => LinkjoyNoodleStatus();
}

class LinkjoyNoodleStatus extends State<LinkjoyNoodle> {
  final List<_DanmakuItem> _items = [];
  final Random _random = Random();

  void addDanmaku(AwardNoticePSH text) {
    final track = _random.nextInt(widget.trackCount);

    final item = _DanmakuItem(
      key: UniqueKey(),
      psh: text,
      track: track,
      duration: Duration(seconds: 5 + _random.nextInt(3)),
    );

    setState(() {
      _items.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: Stack(
        children: _items.map((item) {
          return Positioned(
            key: item.key,
            top: item.track * 30,
            left: 0,
            right: 0,
            child: _linkjoySubjective(item),
          );
        }).toList(),
      ),
    );
  }

  Widget _linkjoySubjective(_DanmakuItem item) {
    return Align(
      alignment: Alignment.centerLeft,
      child:
          Container(
                padding: EdgeInsets.symmetric(
                  horizontal: LinkjoyGarage.s4,
                  vertical: LinkjoyGarage.s4,
                ),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(
                    LinkjoyDiscard.radiusFull,
                  ),
                ),
                child: _linkjoyFourth(item.psh),
              )
              .animate(
                onComplete: (_) {
                  if (mounted) {
                    setState(() {
                      _items.remove(item);
                    });
                  }
                },
              )
              .slideX(
                begin: 1.1,
                end: -1.1,
                duration: item.duration,
                curve: Curves.linear,
              ),
    );
  }

  Widget _linkjoyFourth(AwardNoticePSH psh) {
    String txt;
    if (psh.action == 'gift_coin_back') {
      txt = "linkjoy_caring_michelle_countdown_flashy".tr;
    } else if (psh.action == 'task_award') {
      txt = "linkjoy_caring_michelle_wave_vicious".tr;
    } else {
      txt = psh.action;
    }

    List<InlineSpan> items = [];

    items.add(
      WidgetSpan(
        alignment: PlaceholderAlignment.middle,
        baseline: TextBaseline.alphabetic,
        child: LinkjoyFasten.circle(psh.avatar, size: LinkjoyDiscard.iconSmall),
      ),
    );
    items.add(WidgetSpan(child: LinkjoyFeynman.h4));
    items.add(
      WidgetSpan(
        child: Text(
          psh.name,
          style: LinkjoyMarshaTriplet.captionNormal,
          maxLines: 1,
        ).maxWidth(LinkjoyGarage.s64),
      ),
    );
    items.add(WidgetSpan(child: LinkjoyFeynman.h4));
    items.add(
      WidgetSpan(child: Text(txt, style: LinkjoyMarshaTriplet.captionNormal)),
    );
    items.add(WidgetSpan(child: LinkjoyFeynman.h2));

    if (psh.coin > 0) {
      items.add(WidgetSpan(child: LinkjoyFeynman.h2));
      items.add(
        WidgetSpan(
          child: LinkjoyFridgeLightbulb.linkjoyChipmunk(
            LinkjoyDiscard.iconSmall,
          ),
        ),
      );
      items.add(
        WidgetSpan(
          child: Text(" x${psh.coin}", style: LinkjoyMarshaTriplet.captionBold),
        ),
      );
    }

    if (psh.cardVideo > 0) {
      items.add(WidgetSpan(child: LinkjoyFeynman.h2));
      items.add(
        WidgetSpan(
          child: LinkjoyFastenIndustrial.asset(
            "linkjoy_toe_decide_convict",
            width: LinkjoyDiscard.iconSmall,
            height: LinkjoyDiscard.iconSmall,
          ),
        ),
      );
      items.add(
        WidgetSpan(
          child: Text(
            " x${psh.cardVideo}",
            style: LinkjoyMarshaTriplet.captionBold,
          ),
        ),
      );
    }

    if (psh.cardMatch > 0) {
      items.add(WidgetSpan(child: LinkjoyFeynman.h2));
      items.add(
        WidgetSpan(
          child: LinkjoyFastenIndustrial.asset(
            "linkjoy_toe_decide_penmanship",
            width: LinkjoyDiscard.iconSmall,
            height: LinkjoyDiscard.iconSmall,
          ),
        ),
      );
      items.add(
        WidgetSpan(
          child: Text(
            " x${psh.cardMatch}",
            style: LinkjoyMarshaTriplet.captionBold,
          ),
        ),
      );
    }

    if (psh.cardIm > 0) {
      items.add(WidgetSpan(child: LinkjoyFeynman.h2));
      items.add(
        WidgetSpan(
          child: LinkjoyFastenIndustrial.asset(
            "linkjoy_toe_decide_ancestor",
            width: LinkjoyDiscard.iconSmall,
            height: LinkjoyDiscard.iconSmall,
          ),
        ),
      );
      items.add(
        WidgetSpan(
          child: Text(
            " x${psh.cardIm}",
            style: LinkjoyMarshaTriplet.captionBold,
          ),
        ),
      );
    }

    if (psh.cardKey > 0) {
      items.add(WidgetSpan(child: LinkjoyFeynman.h2));
      items.add(
        WidgetSpan(
          child: LinkjoyFastenIndustrial.asset(
            "linkjoy_toe_decide_obsessed",
            width: LinkjoyDiscard.iconSmall,
            height: LinkjoyDiscard.iconSmall,
          ),
        ),
      );
      items.add(
        WidgetSpan(
          child: Text(
            " x${psh.cardKey}",
            style: LinkjoyMarshaTriplet.captionBold,
          ),
        ),
      );
    }

    return Text.rich(TextSpan(children: items));
  }
}

class _DanmakuItem {
  final Key key;
  final AwardNoticePSH psh;
  final int track;
  final Duration duration;

  _DanmakuItem({
    required this.key,
    required this.psh,
    required this.track,
    required this.duration,
  });
}
